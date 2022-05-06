; ModuleID = '/llk/IR/fs/nfs/nfs4xdr.c_pt.bc'
source_filename = "../fs/nfs/nfs4xdr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs41_maxgetdevinfo_overhead:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs41_maxgetdevinfo_overhead\22\09\09\09\09\09"
module asm "__kstrtabns_nfs41_maxgetdevinfo_overhead:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rpc_procinfo = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.rpc_version = type { i32, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.anon.159 = type { i32, i32 }
%struct.nfs4_stateid_struct = type { %union.anon.133, i32 }
%union.anon.133 = type { %struct.anon.134 }
%struct.anon.134 = type { i32, [12 x i8] }
%struct.nfs_entry = type { i64, i64, i64, ptr, i32, i32, ptr, ptr, i8, ptr }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.130, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.130 = type { %struct.anon.132 }
%struct.anon.132 = type { i64 }
%struct.nfs_fsid = type { i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.nfs4_fs_locations = type { %struct.nfs_fattr, ptr, %struct.nfs4_pathname, i32, [10 x %struct.nfs4_fs_location] }
%struct.nfs4_pathname = type { i32, [512 x %struct.nfs4_string] }
%struct.nfs4_string = type { i32, ptr }
%struct.nfs4_fs_location = type { i32, [10 x %struct.nfs4_string], %struct.nfs4_pathname }
%struct.compound_hdr = type { i32, i32, ptr, i32, ptr, i32, i32 }
%struct.nfs4_session = type { %struct.nfs4_sessionid, i32, i32, i32, i32, %struct.nfs4_channel_attrs, %struct.nfs4_slot_table, %struct.nfs4_channel_attrs, %struct.nfs4_slot_table, ptr }
%struct.nfs4_sessionid = type { [16 x i8] }
%struct.nfs4_channel_attrs = type { i32, i32, i32, i32, i32 }
%struct.nfs4_slot_table = type { ptr, ptr, [32 x i32], %struct.spinlock, %struct.rpc_wait_queue, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__kernel_sockaddr_storage = type { %union.anon.124 }
%union.anon.124 = type { ptr, [124 x i8] }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.nfs_pgio_args = type { %struct.nfs4_sequence_args, ptr, ptr, ptr, %struct.nfs4_stateid_struct, i64, i32, i32, ptr, %union.anon.135 }
%struct.nfs4_sequence_args = type { ptr, i8 }
%union.anon.135 = type { %struct.anon.136 }
%struct.anon.136 = type { ptr, [3 x i32], i32 }
%struct.rpc_rqst = type { ptr, %struct.xdr_buf, %struct.xdr_buf, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.150, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.xdr_buf, i32, i32, i32, i64, i32, i32, %struct.atomic_t, i32, i64, i32, %struct.list_head, i32, %struct.list_head }
%union.anon.150 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.kvec = type { ptr, i32 }
%struct.nfs_pgio_res = type { %struct.nfs4_sequence_res, ptr, i64, i32, %union.anon.137 }
%struct.nfs4_sequence_res = type { ptr, i32, i32, i32, i32, i32 }
%union.anon.137 = type { %struct.anon.138 }
%struct.anon.138 = type { i32, i32 }
%struct.nfs_writeverf = type { %struct.nfs_write_verifier, i32 }
%struct.nfs_write_verifier = type { [8 x i8] }
%struct.nfs_commitargs = type { %struct.nfs4_sequence_args, ptr, i64, i32, ptr }
%struct.nfs_commitres = type { %struct.nfs4_sequence_res, i32, ptr, ptr, ptr }
%struct.nfs_openargs = type { %struct.nfs4_sequence_args, ptr, ptr, i32, i32, i32, i32, i64, %struct.stateowner_id, %union.anon.160, ptr, ptr, ptr, ptr, i32, i32, ptr, i16, ptr }
%struct.stateowner_id = type { i64, i32 }
%union.anon.160 = type { %struct.nfs4_stateid_struct }
%struct.nfs4_layoutget_args = type { %struct.nfs4_sequence_args, i32, %struct.pnfs_layout_range, i64, i32, ptr, ptr, %struct.nfs4_stateid_struct, %struct.nfs4_layoutdriver_data }
%struct.pnfs_layout_range = type { i32, i64, i64 }
%struct.nfs4_layoutdriver_data = type { ptr, i32, i32 }
%struct.nfs_openres = type { %struct.nfs4_sequence_res, %struct.nfs4_stateid_struct, %struct.nfs_fh, %struct.nfs4_change_info, i32, ptr, ptr, ptr, i32, %struct.nfs4_stateid_struct, i32, i32, [3 x i32], ptr, ptr, i32, i32, i32, ptr }
%struct.nfs4_change_info = type { i32, i64, i64 }
%struct.nfs_open_confirmargs = type { %struct.nfs4_sequence_args, ptr, ptr, ptr }
%struct.nfs_open_confirmres = type { %struct.nfs4_sequence_res, %struct.nfs4_stateid_struct, ptr }
%struct.nfs_closeargs = type { %struct.nfs4_sequence_args, ptr, %struct.nfs4_stateid_struct, ptr, i32, i32, ptr, [3 x i32], ptr }
%struct.nfs_closeres = type { %struct.nfs4_sequence_res, %struct.nfs4_stateid_struct, ptr, ptr, ptr, ptr, i32 }
%struct.nfs4_layoutreturn_res = type { %struct.nfs4_sequence_res, i32, %struct.nfs4_stateid_struct }
%struct.nfs_setattrargs = type { %struct.nfs4_sequence_args, ptr, %struct.nfs4_stateid_struct, ptr, ptr, ptr, ptr }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.rb_root = type { ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.nfs_setattrres = type { %struct.nfs4_sequence_res, ptr, ptr }
%struct.nfs4_fsinfo_arg = type { %struct.nfs4_sequence_args, ptr, ptr }
%struct.nfs4_fsinfo_res = type { %struct.nfs4_sequence_res, ptr }
%struct.nfs4_setclientid = type { ptr, i32, i32, [6 x i8], i32, [58 x i8], ptr, ptr }
%struct.nfs4_setclientid_res = type { i64, %struct.nfs4_verifier }
%struct.nfs_lock_args = type { %struct.nfs4_sequence_args, ptr, ptr, ptr, %struct.nfs4_stateid_struct, ptr, %struct.nfs4_stateid_struct, %struct.nfs_lowner, i8 }
%struct.nfs_lowner = type { i64, i64, i32 }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.123 }
%union.anon.123 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.nfs_lock_res = type { %struct.nfs4_sequence_res, %struct.nfs4_stateid_struct, ptr, ptr }
%struct.nfs_lockt_args = type { %struct.nfs4_sequence_args, ptr, ptr, %struct.nfs_lowner }
%struct.nfs_lockt_res = type { %struct.nfs4_sequence_res, ptr }
%struct.nfs_locku_args = type { %struct.nfs4_sequence_args, ptr, ptr, ptr, %struct.nfs4_stateid_struct }
%struct.nfs_locku_res = type { %struct.nfs4_sequence_res, %struct.nfs4_stateid_struct, ptr }
%struct.nfs4_accessargs = type { %struct.nfs4_sequence_args, ptr, ptr, i32 }
%struct.nfs4_accessres = type { %struct.nfs4_sequence_res, ptr, ptr, i32, i32 }
%struct.nfs4_getattr_arg = type { %struct.nfs4_sequence_args, ptr, ptr }
%struct.nfs4_getattr_res = type { %struct.nfs4_sequence_res, ptr, ptr }
%struct.nfs4_lookup_arg = type { %struct.nfs4_sequence_args, ptr, ptr, ptr }
%struct.nfs4_lookup_res = type { %struct.nfs4_sequence_res, ptr, ptr, ptr }
%struct.nfs4_lookup_root_arg = type { %struct.nfs4_sequence_args, ptr }
%struct.nfs_removeargs = type { %struct.nfs4_sequence_args, ptr, %struct.qstr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.anon.4 = type { i32, i32 }
%struct.nfs_removeres = type { %struct.nfs4_sequence_res, ptr, ptr, %struct.nfs4_change_info }
%struct.nfs_renameargs = type { %struct.nfs4_sequence_args, ptr, ptr, ptr, ptr }
%struct.nfs_renameres = type { %struct.nfs4_sequence_res, ptr, %struct.nfs4_change_info, ptr, %struct.nfs4_change_info, ptr }
%struct.nfs4_link_arg = type { %struct.nfs4_sequence_args, ptr, ptr, ptr, ptr }
%struct.nfs4_link_res = type { %struct.nfs4_sequence_res, ptr, ptr, %struct.nfs4_change_info, ptr }
%struct.nfs4_create_arg = type { %struct.nfs4_sequence_args, i32, %union.anon.162, ptr, ptr, ptr, ptr, ptr, ptr, i16 }
%union.anon.162 = type { %struct.anon.163 }
%struct.anon.163 = type { ptr, i32 }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.nfs4_create_res = type { %struct.nfs4_sequence_res, ptr, ptr, ptr, %struct.nfs4_change_info }
%struct.nfs4_pathconf_arg = type { %struct.nfs4_sequence_args, ptr, ptr }
%struct.nfs4_pathconf_res = type { %struct.nfs4_sequence_res, ptr }
%struct.nfs_pathconf = type { ptr, i32, i32 }
%struct.nfs4_statfs_arg = type { %struct.nfs4_sequence_args, ptr, ptr }
%struct.nfs4_statfs_res = type { %struct.nfs4_sequence_res, ptr }
%struct.nfs_fsstat = type { ptr, i64, i64, i64, i64, i64, i64 }
%struct.nfs4_readlink = type { %struct.nfs4_sequence_args, ptr, i32, i32, ptr }
%struct.nfs4_readdir_arg = type { %struct.nfs4_sequence_args, ptr, i64, %struct.nfs4_verifier, i32, ptr, i32, ptr, i8 }
%struct.nfs4_readdir_res = type { %struct.nfs4_sequence_res, %struct.nfs4_verifier, i32 }
%struct.nfs4_server_caps_arg = type { %struct.nfs4_sequence_args, ptr, ptr }
%struct.nfs4_server_caps_res = type { %struct.nfs4_sequence_res, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32 }
%struct.nfs4_delegreturnargs = type { %struct.nfs4_sequence_args, ptr, ptr, ptr, [3 x i32], ptr }
%struct.nfs4_delegreturnres = type { %struct.nfs4_sequence_res, ptr, ptr, ptr, i32 }
%struct.nfs_getaclargs = type { %struct.nfs4_sequence_args, ptr, i32, ptr }
%struct.nfs_getaclres = type { %struct.nfs4_sequence_res, i32, i32, i32, ptr }
%struct.nfs_setaclargs = type { %struct.nfs4_sequence_args, ptr, i32, ptr }
%struct.nfs4_fs_locations_arg = type { %struct.nfs4_sequence_args, ptr, ptr, ptr, ptr, ptr, i64, i8 }
%struct.nfs4_fs_locations_res = type { %struct.nfs4_sequence_res, ptr, i8 }
%struct.nfs_release_lockowner_args = type { %struct.nfs4_sequence_args, %struct.nfs_lowner }
%struct.nfs4_secinfo_arg = type { %struct.nfs4_sequence_args, ptr, ptr }
%struct.nfs4_fsid_present_arg = type { %struct.nfs4_sequence_args, ptr, i64, i8 }
%struct.nfs4_fsid_present_res = type { %struct.nfs4_sequence_res, ptr, i8 }
%struct.nfs41_exchange_id_args = type { ptr, %struct.nfs4_verifier, i32, %struct.nfs41_state_protection }
%struct.nfs41_state_protection = type { i32, %struct.nfs4_op_map, %struct.nfs4_op_map }
%struct.nfs4_op_map = type { %union.anon.165 }
%union.anon.165 = type { [3 x i32] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.117, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.97 }
%struct.llist_node = type { ptr }
%union.anon.97 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.98 }
%union.anon.98 = type { %struct.anon.99 }
%struct.anon.99 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.117 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.nfs41_exchange_id_res = type { i64, i32, i32, ptr, ptr, ptr, %struct.nfs41_state_protection }
%struct.nfs41_server_owner = type { i64, i32, [1024 x i8] }
%struct.nfs41_server_scope = type { i32, [1024 x i8] }
%struct.nfs41_impl_id = type { [1025 x i8], [1025 x i8], %struct.nfstime4 }
%struct.nfstime4 = type { i64, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.18, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [40 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [60 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.93, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.93 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, %union.anon.128, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.128 = type { %struct.work_struct }
%struct.nfs41_create_session_args = type { ptr, i64, i32, i32, i32, %struct.nfs4_channel_attrs, %struct.nfs4_channel_attrs }
%struct.nfs_net = type { ptr, ptr, %struct.bl_dev_msg, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.idr, i16, i16, [3 x i32], ptr, %struct.spinlock, i64, ptr }
%struct.bl_dev_msg = type { i32, i32, i32 }
%struct.nfs41_create_session_res = type { %struct.nfs4_sessionid, i32, i32, %struct.nfs4_channel_attrs, %struct.nfs4_channel_attrs }
%struct.nfs4_get_lease_time_res = type { %struct.nfs4_sequence_res, ptr }
%struct.nfs41_reclaim_complete_args = type { %struct.nfs4_sequence_args, i8 }
%struct.nfs4_getdeviceinfo_args = type { %struct.nfs4_sequence_args, ptr, i32 }
%struct.pnfs_device = type { %struct.nfs4_deviceid, i32, i32, i32, ptr, i32, i32, i8 }
%struct.nfs4_deviceid = type { [16 x i8] }
%struct.nfs4_getdeviceinfo_res = type { %struct.nfs4_sequence_res, ptr, i32 }
%struct.nfs4_layoutcommit_args = type { %struct.nfs4_sequence_args, %struct.nfs4_stateid_struct, i64, ptr, ptr, i32, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.151, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.152, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.153, ptr, %struct.address_space, %struct.list_head, %union.anon.154, i32, i32, ptr, ptr }
%union.anon.151 = type { i32 }
%union.anon.152 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.153 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.154 = type { ptr }
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
%struct.pnfs_layoutdriver_type = type { %struct.list_head, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfs4_layoutcommit_res = type { %struct.nfs4_sequence_res, ptr, ptr, i32 }
%struct.nfs4_layoutreturn_args = type { %struct.nfs4_sequence_args, ptr, ptr, %struct.pnfs_layout_range, %struct.nfs4_stateid_struct, i32, ptr }
%struct.nfs41_secinfo_no_name_args = type { %struct.nfs4_sequence_args, i32 }
%struct.nfs41_test_stateid_args = type { %struct.nfs4_sequence_args, ptr }
%struct.nfs41_test_stateid_res = type { %struct.nfs4_sequence_res, i32 }
%struct.nfs41_free_stateid_args = type { %struct.nfs4_sequence_args, %struct.nfs4_stateid_struct }
%struct.nfs41_free_stateid_res = type { %struct.nfs4_sequence_res, i32 }
%struct.nfs41_bind_conn_to_session_args = type { ptr, %struct.nfs4_sessionid, i32, i8, i32 }
%struct.nfs41_bind_conn_to_session_res = type { %struct.nfs4_sessionid, i32, i8 }
%struct.nfs42_seek_args = type { %struct.nfs4_sequence_args, ptr, %struct.nfs4_stateid_struct, i64, i32 }
%struct.nfs42_seek_res = type { %struct.nfs4_sequence_res, i32, i32, i64 }
%struct.nfs42_falloc_args = type { %struct.nfs4_sequence_args, ptr, %struct.nfs4_stateid_struct, i64, i64, ptr }
%struct.nfs42_falloc_res = type { %struct.nfs4_sequence_res, i32, ptr, ptr }
%struct.nfs42_layoutstat_args = type { %struct.nfs4_sequence_args, ptr, ptr, %struct.nfs4_stateid_struct, i32, ptr }
%struct.nfs42_layoutstat_devinfo = type { %struct.nfs4_deviceid, i64, i64, i64, i64, i64, i64, i32, %struct.nfs4_xdr_opaque_data }
%struct.nfs4_xdr_opaque_data = type { ptr, ptr }
%struct.nfs42_layoutstat_res = type { %struct.nfs4_sequence_res, i32, i32 }
%struct.nfs42_clone_args = type { %struct.nfs4_sequence_args, ptr, ptr, %struct.nfs4_stateid_struct, %struct.nfs4_stateid_struct, i64, i64, i64, ptr }
%struct.nfs42_clone_res = type { %struct.nfs4_sequence_res, i32, ptr, ptr }
%struct.nfs42_copy_args = type { %struct.nfs4_sequence_args, ptr, %struct.nfs4_stateid_struct, i64, ptr, %struct.nfs4_stateid_struct, i64, i64, i8, ptr }
%struct.nfs42_copy_res = type { %struct.nfs4_sequence_res, %struct.nfs42_write_res, i8, i8, %struct.nfs_commitres }
%struct.nfs42_write_res = type { %struct.nfs4_stateid_struct, i64, %struct.nfs_writeverf }
%struct.nfs42_offload_status_args = type { %struct.nfs4_sequence_args, ptr, %struct.nfs4_stateid_struct }
%struct.nfs4_lookupp_arg = type { %struct.nfs4_sequence_args, ptr, ptr }
%struct.nfs4_lookupp_res = type { %struct.nfs4_sequence_res, ptr, ptr, ptr }
%struct.nfs42_layouterror_args = type { %struct.nfs4_sequence_args, ptr, i32, [5 x %struct.nfs42_layout_error] }
%struct.nfs42_layout_error = type { i64, i64, %struct.nfs4_stateid_struct, [1 x %struct.nfs42_device_error] }
%struct.nfs42_device_error = type { %struct.nfs4_deviceid, i32, i32 }
%struct.nfs42_layouterror_res = type { %struct.nfs4_sequence_res, i32, i32 }
%struct.nfs42_copy_notify_args = type { %struct.nfs4_sequence_args, ptr, %struct.nfs4_stateid_struct, %struct.nl4_server }
%struct.nl4_server = type { i32, %union.anon.169 }
%union.anon.169 = type { %struct.anon.170 }
%struct.anon.170 = type { i32, [1025 x i8] }
%struct.nfs42_copy_notify_res = type { %struct.nfs4_sequence_res, %struct.nfstime4, %struct.nfs4_stateid_struct, %struct.nl4_server }
%struct.nfs42_getxattrargs = type { %struct.nfs4_sequence_args, ptr, ptr, i32, ptr }
%struct.nfs42_getxattrres = type { %struct.nfs4_sequence_res, i32 }
%struct.nfs42_setxattrargs = type { %struct.nfs4_sequence_args, ptr, ptr, i32, i32, ptr }
%struct.nfs42_setxattrres = type { %struct.nfs4_sequence_res, %struct.nfs4_change_info }
%struct.nfs42_listxattrsargs = type { %struct.nfs4_sequence_args, ptr, i32, i64, ptr }
%struct.nfs42_listxattrsres = type { %struct.nfs4_sequence_res, ptr, ptr, i32, i64, i8, i32 }
%struct.nfs42_removexattrargs = type { %struct.nfs4_sequence_args, ptr, ptr }
%struct.nfs42_removexattrres = type { %struct.nfs4_sequence_res, %struct.nfs4_change_info }
%struct.nfs4_threshold = type { i32, i32, i64, i64, i64, i64 }
%struct.nfs4_label = type { i32, i32, i32, ptr }
%struct.nfs4_slot = type { ptr, ptr, i32, i32, i32, i32, i32, i8 }
%struct.nfs_seqid_counter = type { i64, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.rpc_wait_queue }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.nfs4_layoutget_res = type { %struct.nfs4_sequence_res, i32, i32, %struct.pnfs_layout_range, i32, %struct.nfs4_stateid_struct, ptr }
%struct.nfs_fsinfo = type { ptr, i32, i32, i32, i32, i32, i32, i32, i64, %struct.timespec64, i32, i32, [8 x i32], i32, i32, i32, i32 }
%struct.nfs4_secinfo_res = type { %struct.nfs4_sequence_res, ptr }
%struct.nfs4_secinfo_flavors = type { i32, [0 x %struct.nfs4_secinfo4] }
%struct.nfs4_secinfo4 = type { i32, %struct.rpcsec_gss_info }
%struct.rpcsec_gss_info = type { %struct.rpcsec_gss_oid, i32, i32 }
%struct.rpcsec_gss_oid = type { i32, [32 x i8] }

@nfs41_maxwrite_overhead = dso_local local_unnamed_addr constant i32 1044, align 4
@nfs41_maxread_overhead = dso_local local_unnamed_addr constant i32 904, align 4
@nfs41_maxgetdevinfo_overhead = dso_local constant i32 480, align 4
@__kstrtab_nfs41_maxgetdevinfo_overhead = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs41_maxgetdevinfo_overhead = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs41_maxgetdevinfo_overhead = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs41_maxgetdevinfo_overhead to i32), ptr @__kstrtab_nfs41_maxgetdevinfo_overhead, ptr @__kstrtabns_nfs41_maxgetdevinfo_overhead }, section "___ksymtab_gpl+nfs41_maxgetdevinfo_overhead", align 4
@nfs42_maxsetxattr_overhead = dso_local local_unnamed_addr constant i32 1284, align 4
@nfs42_maxgetxattr_overhead = dso_local local_unnamed_addr constant i32 908, align 4
@nfs42_maxlistxattrs_overhead = dso_local local_unnamed_addr constant i32 916, align 4
@.str = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"COMMIT\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"OPEN\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"OPEN_CONFIRM\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"OPEN_NOATTR\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"OPEN_DOWNGRADE\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"CLOSE\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"SETATTR\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"FSINFO\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"RENEW\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"SETCLIENTID\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"SETCLIENTID_CONFIRM\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"LOCK\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"LOCKT\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"LOCKU\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"ACCESS\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"GETATTR\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"LOOKUP\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"LOOKUP_ROOT\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"REMOVE\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"RENAME\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"LINK\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"SYMLINK\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"CREATE\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"PATHCONF\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"STATFS\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"READLINK\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"READDIR\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"SERVER_CAPS\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"DELEGRETURN\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"GETACL\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"SETACL\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"FS_LOCATIONS\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"RELEASE_LOCKOWNER\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"SECINFO\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"FSID_PRESENT\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"EXCHANGE_ID\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"CREATE_SESSION\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"DESTROY_SESSION\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"SEQUENCE\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"GET_LEASE_TIME\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"RECLAIM_COMPLETE\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"LAYOUTGET\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"GETDEVICEINFO\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"LAYOUTCOMMIT\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"LAYOUTRETURN\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"SECINFO_NO_NAME\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"TEST_STATEID\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"FREE_STATEID\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"GETDEVICELIST\00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"BIND_CONN_TO_SESSION\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"DESTROY_CLIENTID\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"SEEK\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"ALLOCATE\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"DEALLOCATE\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"LAYOUTSTATS\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"CLONE\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"COPY\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"OFFLOAD_CANCEL\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"LOOKUPP\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"LAYOUTERROR\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"COPY_NOTIFY\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"GETXATTR\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"SETXATTR\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"LISTXATTRS\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"REMOVEXATTR\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"READ_PLUS\00", align 1
@nfs4_procedures = dso_local constant [69 x %struct.rpc_procinfo] [%struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_read, ptr @nfs4_xdr_dec_read, i32 54, i32 21, i32 0, i32 1, ptr @.str }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_write, ptr @nfs4_xdr_dec_write, i32 60, i32 136, i32 0, i32 2, ptr @.str.1 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_commit, ptr @nfs4_xdr_dec_commit, i32 50, i32 20, i32 0, i32 3, ptr @.str.2 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_open, ptr @nfs4_xdr_dec_open, i32 235, i32 1269, i32 0, i32 4, ptr @.str.3 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_open_confirm, ptr @nfs4_xdr_dec_open_confirm, i32 43, i32 11, i32 0, i32 5, ptr @.str.4 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_open_noattr, ptr @nfs4_xdr_dec_open_noattr, i32 234, i32 1234, i32 0, i32 6, ptr @.str.5 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_open_downgrade, ptr @nfs4_xdr_dec_open_downgrade, i32 324, i32 29, i32 0, i32 7, ptr @.str.6 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_close, ptr @nfs4_xdr_dec_close, i32 327, i32 143, i32 0, i32 8, ptr @.str.7 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_setattr, ptr @nfs4_xdr_dec_setattr, i32 138, i32 136, i32 0, i32 9, ptr @.str.8 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_fsinfo, ptr @nfs4_xdr_dec_fsinfo, i32 51, i32 42, i32 0, i32 10, ptr @.str.9 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_renew, ptr @nfs4_xdr_dec_renew, i32 7, i32 5, i32 0, i32 11, ptr @.str.10 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_setclientid, ptr @nfs4_xdr_dec_setclientid, i32 284, i32 28, i32 0, i32 12, ptr @.str.11 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_setclientid_confirm, ptr @nfs4_xdr_dec_setclientid_confirm, i32 9, i32 5, i32 0, i32 13, ptr @.str.12 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_lock, ptr @nfs4_xdr_dec_lock, i32 67, i32 59, i32 0, i32 14, ptr @.str.13 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_lockt, ptr @nfs4_xdr_dec_lockt, i32 59, i32 59, i32 0, i32 15, ptr @.str.14 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_locku, ptr @nfs4_xdr_dec_locku, i32 58, i32 22, i32 0, i32 16, ptr @.str.15 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_access, ptr @nfs4_xdr_dec_access, i32 53, i32 134, i32 0, i32 17, ptr @.str.16 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_getattr, ptr @nfs4_xdr_dec_getattr, i32 55, i32 132, i32 0, i32 18, ptr @.str.17 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_lookup, ptr @nfs4_xdr_dec_lookup, i32 118, i32 167, i32 0, i32 19, ptr @.str.18 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_lookup_root, ptr @nfs4_xdr_dec_lookup_root, i32 19, i32 165, i32 0, i32 20, ptr @.str.19 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_remove, ptr @nfs4_xdr_dec_remove, i32 112, i32 23, i32 0, i32 21, ptr @.str.20 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_rename, ptr @nfs4_xdr_dec_rename, i32 212, i32 32, i32 0, i32 22, ptr @.str.21 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_link, ptr @nfs4_xdr_dec_link, i32 153, i32 143, i32 0, i32 23, ptr @.str.22 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_symlink, ptr @nfs4_xdr_dec_symlink, i32 232, i32 175, i32 0, i32 24, ptr @.str.23 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_create, ptr @nfs4_xdr_dec_create, i32 203, i32 176, i32 0, i32 25, ptr @.str.24 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_pathconf, ptr @nfs4_xdr_dec_pathconf, i32 51, i32 130, i32 0, i32 26, ptr @.str.25 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_statfs, ptr @nfs4_xdr_dec_statfs, i32 51, i32 130, i32 0, i32 27, ptr @.str.26 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_readlink, ptr @nfs4_xdr_dec_readlink, i32 47, i32 20, i32 0, i32 28, ptr @.str.27 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_readdir, ptr @nfs4_xdr_dec_readdir, i32 56, i32 21, i32 0, i32 29, ptr @.str.28 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_server_caps, ptr @nfs4_xdr_dec_server_caps, i32 51, i32 130, i32 0, i32 30, ptr @.str.29 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_delegreturn, ptr @nfs4_xdr_dec_delegreturn, i32 326, i32 139, i32 0, i32 31, ptr @.str.30 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_getacl, ptr @nfs4_xdr_dec_getacl, i32 51, i32 24, i32 0, i32 32, ptr @.str.31 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_setacl, ptr @nfs4_xdr_dec_setacl, i32 54, i32 22, i32 0, i32 33, ptr @.str.32 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_fs_locations, ptr @nfs4_xdr_dec_fs_locations, i32 121, i32 21, i32 0, i32 34, ptr @.str.33 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_release_lockowner, ptr @nfs4_xdr_dec_release_lockowner, i32 10, i32 36, i32 0, i32 35, ptr @.str.34 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_secinfo, ptr @nfs4_xdr_dec_secinfo, i32 112, i32 163, i32 0, i32 36, ptr @.str.35 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_fsid_present, ptr @nfs4_xdr_dec_fsid_present, i32 51, i32 53, i32 0, i32 37, ptr @.str.36 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_exchange_id, ptr @nfs4_xdr_dec_exchange_id, i32 603, i32 1052, i32 0, i32 38, ptr @.str.37 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_create_session, ptr @nfs4_xdr_dec_create_session, i32 46, i32 27, i32 0, i32 39, ptr @.str.38 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_destroy_session, ptr @nfs4_xdr_dec_destroy_session, i32 8, i32 5, i32 0, i32 40, ptr @.str.39 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_sequence, ptr @nfs4_xdr_dec_sequence, i32 12, i32 14, i32 0, i32 41, ptr @.str.40 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_get_lease_time, ptr @nfs4_xdr_dec_get_lease_time, i32 18, i32 42, i32 0, i32 42, ptr @.str.41 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_reclaim_complete, ptr @nfs4_xdr_dec_reclaim_complete, i32 17, i32 20, i32 0, i32 43, ptr @.str.42 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_layoutget, ptr @nfs4_xdr_dec_layoutget, i32 61, i32 1055, i32 0, i32 44, ptr @.str.43 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_getdeviceinfo, ptr @nfs4_xdr_dec_getdeviceinfo, i32 22, i32 21, i32 0, i32 45, ptr @.str.44 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_layoutcommit, ptr @nfs4_xdr_dec_layoutcommit, i32 67, i32 135, i32 0, i32 46, ptr @.str.45 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_layoutreturn, ptr @nfs4_xdr_dec_layoutreturn, i32 316, i32 23, i32 0, i32 47, ptr @.str.46 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_secinfo_no_name, ptr @nfs4_xdr_dec_secinfo_no_name, i32 15, i32 163, i32 0, i32 48, ptr @.str.47 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_test_stateid, ptr @nfs4_xdr_dec_test_stateid, i32 19, i32 19, i32 0, i32 49, ptr @.str.48 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_free_stateid, ptr @nfs4_xdr_dec_free_stateid, i32 18, i32 16, i32 0, i32 50, ptr @.str.49 }, %struct.rpc_procinfo { i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @.str.50 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_bind_conn_to_session, ptr @nfs4_xdr_dec_bind_conn_to_session, i32 10, i32 11, i32 0, i32 52, ptr @.str.51 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_destroy_clientid, ptr @nfs4_xdr_dec_destroy_clientid, i32 6, i32 5, i32 0, i32 53, ptr @.str.52 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_seek, ptr @nfs4_xdr_dec_seek, i32 54, i32 24, i32 0, i32 54, ptr @.str.53 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_allocate, ptr @nfs4_xdr_dec_allocate, i32 60, i32 132, i32 0, i32 55, ptr @.str.54 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_deallocate, ptr @nfs4_xdr_dec_deallocate, i32 60, i32 132, i32 0, i32 56, ptr @.str.55 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_layoutstats, ptr @nfs4_xdr_dec_layoutstats, i32 378, i32 24, i32 0, i32 57, ptr @.str.56 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_clone, ptr @nfs4_xdr_dec_clone, i32 100, i32 136, i32 0, i32 58, ptr @.str.57 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_copy, ptr @nfs4_xdr_dec_copy, i32 362, i32 38, i32 0, i32 59, ptr @.str.58 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_offload_cancel, ptr @nfs4_xdr_dec_offload_cancel, i32 51, i32 18, i32 0, i32 60, ptr @.str.59 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_lookupp, ptr @nfs4_xdr_dec_lookupp, i32 53, i32 167, i32 0, i32 61, ptr @.str.60 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_layouterror, ptr @nfs4_xdr_dec_layouterror, i32 131, i32 26, i32 0, i32 62, ptr @.str.61 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_copy_notify, ptr @nfs4_xdr_dec_copy_notify, i32 300, i32 273, i32 0, i32 63, ptr @.str.62 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_getxattr, ptr @nfs4_xdr_dec_getxattr, i32 112, i32 20, i32 0, i32 64, ptr @.str.63 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_setxattr, ptr @nfs4_xdr_dec_setxattr, i32 113, i32 23, i32 0, i32 65, ptr @.str.64 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_listxattrs, ptr @nfs4_xdr_dec_listxattrs, i32 50, i32 23, i32 0, i32 66, ptr @.str.65 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_removexattr, ptr @nfs4_xdr_dec_removexattr, i32 112, i32 23, i32 0, i32 67, ptr @.str.66 }, %struct.rpc_procinfo { i32 1, ptr @nfs4_xdr_enc_read_plus, ptr @nfs4_xdr_dec_read_plus, i32 54, i32 30, i32 0, i32 68, ptr @.str.67 }], align 4
@nfs_version4_counts = internal global [69 x i32] zeroinitializer, align 4
@nfs_version4 = dso_local local_unnamed_addr constant %struct.rpc_version { i32 4, i32 69, ptr @nfs4_procedures, ptr @nfs_version4_counts }, align 4
@nfs_type2fmt = internal unnamed_addr constant [10 x i16] [i16 0, i16 -32768, i16 16384, i16 24576, i16 8192, i16 -24576, i16 -16384, i16 4096, i16 0, i16 0], align 2
@__tracepoint_nfs4_xdr_bad_filehandle = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.69 = private unnamed_addr constant [74 x i8] c"\016%s: Warning: Multiple pNFS layout drivers per filesystem not supported\0A\00", align 1
@__func__.decode_attr_mdsthreshold = private unnamed_addr constant [25 x i8] c"decode_attr_mdsthreshold\00", align 1
@.str.70 = private unnamed_addr constant [28 x i8] c"\014%s: label too long (%u)!\0A\00", align 1
@__func__.decode_attr_security_label = private unnamed_addr constant [27 x i8] c"decode_attr_security_label\00", align 1
@encode_compound_hdr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.71 = private unnamed_addr constant [17 x i8] c"fs/nfs/nfs4xdr.c\00", align 1
@encode_string.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@encode_uint32.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@encode_opaque_fixed.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@encode_nops.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfs_errtbl = internal unnamed_addr constant [32 x %struct.anon.159] [%struct.anon.159 zeroinitializer, %struct.anon.159 { i32 1, i32 -1 }, %struct.anon.159 { i32 2, i32 -2 }, %struct.anon.159 { i32 5, i32 -5 }, %struct.anon.159 { i32 6, i32 -6 }, %struct.anon.159 { i32 13, i32 -13 }, %struct.anon.159 { i32 17, i32 -17 }, %struct.anon.159 { i32 18, i32 -18 }, %struct.anon.159 { i32 20, i32 -20 }, %struct.anon.159 { i32 21, i32 -21 }, %struct.anon.159 { i32 22, i32 -22 }, %struct.anon.159 { i32 27, i32 -27 }, %struct.anon.159 { i32 28, i32 -28 }, %struct.anon.159 { i32 30, i32 -30 }, %struct.anon.159 { i32 31, i32 -31 }, %struct.anon.159 { i32 63, i32 -36 }, %struct.anon.159 { i32 66, i32 -39 }, %struct.anon.159 { i32 69, i32 -122 }, %struct.anon.159 { i32 70, i32 -116 }, %struct.anon.159 { i32 10001, i32 -521 }, %struct.anon.159 { i32 10003, i32 -523 }, %struct.anon.159 { i32 10004, i32 -524 }, %struct.anon.159 { i32 10005, i32 -525 }, %struct.anon.159 { i32 10006, i32 -121 }, %struct.anon.159 { i32 10007, i32 -527 }, %struct.anon.159 { i32 10012, i32 -11 }, %struct.anon.159 { i32 10029, i32 -40 }, %struct.anon.159 { i32 10044, i32 -95 }, %struct.anon.159 { i32 10045, i32 -35 }, %struct.anon.159 { i32 10095, i32 -61 }, %struct.anon.159 { i32 10096, i32 -7 }, %struct.anon.159 { i32 -1, i32 -5 }], align 4
@__tracepoint_nfs4_xdr_status = external dso_local global %struct.tracepoint, align 4
@__tracepoint_nfs4_xdr_bad_operation = external dso_local global %struct.tracepoint, align 4
@nfs4_fattr_bitmap = external dso_local constant [3 x i32], align 4
@xdr_encode_bitmap4.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"open id:\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"nobody\00", align 1
@invalid_stateid = external dso_local local_unnamed_addr constant %struct.nfs4_stateid_struct, align 4
@nfs4_fsinfo_bitmap = external dso_local constant [3 x i32], align 4
@.str.74 = private unnamed_addr constant [53 x i8] c"\016NFS: %s: Warning: Too many (%u) pNFS layout types\0A\00", align 1
@__func__.decode_pnfs_layout_types = private unnamed_addr constant [25 x i8] c"decode_pnfs_layout_types\00", align 1
@encode_uint64.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"lock id:\00", align 1
@nfs4_pathconf_bitmap = external dso_local constant [3 x i32], align 4
@nfs4_statfs_bitmap = external dso_local constant [3 x i32], align 4
@zero_stateid = external dso_local constant %struct.nfs4_stateid_struct, align 4
@nfs4_fs_locations_bitmap = external dso_local constant [3 x i32], align 4
@encode_exchange_id.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@send_implementation_id = external dso_local local_unnamed_addr global i16, align 2
@.str.76 = private unnamed_addr constant [12 x i8] c"%s %s %s %s\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"kernel.org\00", align 1
@decode_exchange_id.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nfs_net_id = external dso_local local_unnamed_addr global i32, align 4
@.str.78 = private unnamed_addr constant [48 x i8] c"\014NFS: %s: Invalid rdma channel attrs count %u\0A\00", align 1
@__func__.decode_chan_attrs = private unnamed_addr constant [18 x i8] c"decode_chan_attrs\00", align 1
@__const.nfs4_xdr_enc_get_lease_time.lease_bitmap = private unnamed_addr constant [3 x i32] [i32 1024, i32 0, i32 0], align 4
@.str.79 = private unnamed_addr constant [18 x i8] c"fs/nfs/nfs42xdr.c\00", align 1
@encode_nl4_server.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.80 = private unnamed_addr constant [51 x i8] c"\014NFS: %s: nsvr %d > Supported. Use first servers\0A\00", align 1
@__func__.decode_copy_notify = private unnamed_addr constant [19 x i8] c"decode_copy_notify\00", align 1
@decode_nl4_server.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"user.\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_nfs41_maxgetdevinfo_overhead], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_decode_dirent(ptr noundef %0, ptr nocapture noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false)
  %5 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %109, label %7, !prof !8

7:                                                ; preds = %3
  %8 = load i32, ptr %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %109, label %13, !prof !8

13:                                               ; preds = %10
  %14 = load i32, ptr %11, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %109, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.nfs_entry, ptr %1, i32 0, i32 5
  store i32 1, ptr %17, align 8
  br label %109

18:                                               ; preds = %7
  %19 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 12) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %109, label %21, !prof !8

21:                                               ; preds = %18
  %22 = load i64, ptr %19, align 1
  %23 = tail call i64 @llvm.bswap.i64(i64 %22) #12
  %24 = getelementptr i32, ptr %19, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #12
  %27 = getelementptr inbounds %struct.nfs_entry, ptr %1, i32 0, i32 4
  store i32 %26, ptr %27, align 4
  %28 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %26) #12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %109, label %30, !prof !8

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.nfs_entry, ptr %1, i32 0, i32 3
  store ptr %28, ptr %31, align 8
  store i64 1, ptr %1, align 8
  %32 = getelementptr inbounds %struct.nfs_entry, ptr %1, i32 0, i32 7
  %33 = load ptr, ptr %32, align 8
  store i32 0, ptr %33, align 8
  %34 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %35 = icmp eq ptr %34, null
  br i1 %35, label %109, label %36, !prof !8

36:                                               ; preds = %30
  %37 = load i32, ptr %34, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #12
  %39 = shl i32 %38, 2
  %40 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %39) #12
  %41 = icmp eq ptr %40, null
  br i1 %41, label %109, label %42, !prof !8

42:                                               ; preds = %36
  %43 = icmp ugt i32 %38, 3
  br i1 %43, label %51, label %44

44:                                               ; preds = %42
  %45 = icmp eq i32 %37, 50331648
  br i1 %45, label %51, label %46

46:                                               ; preds = %44
  %47 = getelementptr i32, ptr %4, i32 %38
  %48 = mul nsw i32 %38, -4
  %49 = add nsw i32 %48, 12
  call void @llvm.memset.p0.i32(ptr align 4 %47, i8 0, i32 %49, i1 false) #12
  %50 = icmp eq i32 %37, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %46, %44, %42
  %52 = phi i32 [ %38, %46 ], [ 3, %44 ], [ -90, %42 ]
  %53 = phi i32 [ %38, %46 ], [ 3, %44 ], [ 3, %42 ]
  br label %54

54:                                               ; preds = %54, %51
  %55 = phi ptr [ %60, %54 ], [ %40, %51 ]
  %56 = phi i32 [ %62, %54 ], [ %53, %51 ]
  %57 = phi ptr [ %61, %54 ], [ %4, %51 ]
  %58 = load i32, ptr %55, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #12
  store i32 %59, ptr %57, align 4
  %60 = getelementptr i32, ptr %55, i32 1
  %61 = getelementptr i32, ptr %57, i32 1
  %62 = add i32 %56, -1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %54

64:                                               ; preds = %54
  %65 = icmp sgt i32 %52, -1
  br i1 %65, label %68, label %66, !prof !9

66:                                               ; preds = %64
  %67 = icmp eq i32 %52, -90
  br i1 %67, label %68, label %109

68:                                               ; preds = %66, %64, %46
  %69 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %70 = icmp eq ptr %69, null
  br i1 %70, label %109, label %71, !prof !8

71:                                               ; preds = %68
  %72 = tail call i32 @xdr_stream_pos(ptr noundef %0) #12
  %73 = load ptr, ptr %32, align 8
  %74 = getelementptr inbounds %struct.nfs_entry, ptr %1, i32 0, i32 6
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.nfs_entry, ptr %1, i32 0, i32 9
  %77 = load ptr, ptr %76, align 8
  %78 = call fastcc i32 @decode_getfattr_attrs(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %73, ptr noundef %75, ptr noundef null, ptr noundef %77)
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %109, label %80

80:                                               ; preds = %71
  %81 = load ptr, ptr %32, align 8
  %82 = load i32, ptr %81, align 8
  %83 = and i32 %82, 4194304
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.nfs_fattr, ptr %81, i32 0, i32 10
  br label %92

87:                                               ; preds = %80
  %88 = and i32 %82, 2048
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.nfs_fattr, ptr %81, i32 0, i32 9
  br label %92

92:                                               ; preds = %90, %85
  %93 = phi ptr [ %91, %90 ], [ %86, %85 ]
  %94 = load i64, ptr %93, align 8
  store i64 %94, ptr %1, align 8
  br label %95

95:                                               ; preds = %92, %87
  %96 = getelementptr inbounds %struct.nfs_entry, ptr %1, i32 0, i32 8
  store i8 0, ptr %96, align 4
  %97 = load i32, ptr %81, align 8
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.nfs_fattr, ptr %81, i32 0, i32 1
  %102 = load i16, ptr %101, align 4
  %103 = lshr i16 %102, 12
  %104 = trunc i16 %103 to i8
  store i8 %104, ptr %96, align 4
  br label %105

105:                                              ; preds = %100, %95
  %106 = getelementptr inbounds %struct.nfs_entry, ptr %1, i32 0, i32 1
  %107 = load i64, ptr %106, align 8
  %108 = getelementptr inbounds %struct.nfs_entry, ptr %1, i32 0, i32 2
  store i64 %107, ptr %108, align 8
  store i64 %23, ptr %106, align 8
  br label %109

109:                                              ; preds = %105, %71, %68, %66, %36, %30, %21, %18, %16, %13, %10, %3
  %110 = phi i32 [ -523, %16 ], [ 0, %105 ], [ -11, %3 ], [ -11, %10 ], [ -11, %13 ], [ -11, %18 ], [ -11, %21 ], [ -11, %71 ], [ -11, %68 ], [ -11, %30 ], [ -11, %36 ], [ -11, %66 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  ret i32 %110
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_getfattr_attrs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef writeonly %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = load i32, ptr %1, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %365, !prof !9

10:                                               ; preds = %6
  %11 = and i32 %7, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !8

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.nfs_fattr, ptr %2, i32 0, i32 1
  store i16 0, ptr %14, align 4
  br label %32

15:                                               ; preds = %10
  %16 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %365, label %18, !prof !8

18:                                               ; preds = %15
  %19 = load i32, ptr %16, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #12
  %21 = icmp eq i32 %19, 0
  %22 = icmp ugt i32 %20, 9
  %23 = or i1 %21, %22
  br i1 %23, label %365, label %24

24:                                               ; preds = %18
  %25 = load i32, ptr %1, align 4
  %26 = and i32 %25, -3
  store i32 %26, ptr %1, align 4
  %27 = getelementptr inbounds %struct.nfs_fattr, ptr %2, i32 0, i32 1
  %28 = getelementptr [10 x i16], ptr @nfs_type2fmt, i32 0, i32 %20
  %29 = load i16, ptr %28, align 2
  store i16 %29, ptr %27, align 4
  %30 = load i32, ptr %2, align 8
  %31 = or i32 %30, 1
  store i32 %31, ptr %2, align 8
  br label %32

32:                                               ; preds = %24, %13
  %33 = phi ptr [ %14, %13 ], [ %27, %24 ]
  %34 = getelementptr inbounds %struct.nfs_fattr, ptr %2, i32 0, i32 14
  store i64 0, ptr %34, align 8
  %35 = load i32, ptr %1, align 4
  %36 = and i32 %35, 7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %365, !prof !9

38:                                               ; preds = %32
  %39 = and i32 %35, 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %49, label %41, !prof !8

41:                                               ; preds = %38
  %42 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 8) #12
  %43 = icmp eq ptr %42, null
  br i1 %43, label %365, label %44, !prof !8

44:                                               ; preds = %41
  %45 = load i64, ptr %42, align 1
  %46 = tail call i64 @llvm.bswap.i64(i64 %45) #12
  store i64 %46, ptr %34, align 8
  %47 = load i32, ptr %1, align 4
  %48 = and i32 %47, -9
  store i32 %48, ptr %1, align 4
  br label %49

49:                                               ; preds = %44, %38
  %50 = phi i32 [ 131072, %44 ], [ 0, %38 ]
  %51 = load i32, ptr %2, align 8
  %52 = or i32 %51, %50
  store i32 %52, ptr %2, align 8
  %53 = getelementptr inbounds %struct.nfs_fattr, ptr %2, i32 0, i32 6
  store i64 0, ptr %53, align 8
  %54 = load i32, ptr %1, align 4
  %55 = and i32 %54, 15
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %365, !prof !9

57:                                               ; preds = %49
  %58 = and i32 %54, 16
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %69, label %60, !prof !8

60:                                               ; preds = %57
  %61 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 8) #12
  %62 = icmp eq ptr %61, null
  br i1 %62, label %365, label %63, !prof !8

63:                                               ; preds = %60
  %64 = load i64, ptr %61, align 1
  %65 = tail call i64 @llvm.bswap.i64(i64 %64) #12
  store i64 %65, ptr %53, align 8
  %66 = load i32, ptr %1, align 4
  %67 = and i32 %66, -17
  store i32 %67, ptr %1, align 4
  %68 = load i32, ptr %2, align 8
  br label %69

69:                                               ; preds = %63, %57
  %70 = phi i32 [ %68, %63 ], [ %52, %57 ]
  %71 = phi i32 [ 64, %63 ], [ 0, %57 ]
  %72 = or i32 %70, %71
  store i32 %72, ptr %2, align 8
  %73 = getelementptr inbounds %struct.nfs_fattr, ptr %2, i32 0, i32 8
  %74 = getelementptr inbounds %struct.nfs_fattr, ptr %2, i32 0, i32 8, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %73, i8 0, i64 16, i1 false) #12
  %75 = load i32, ptr %1, align 4
  %76 = and i32 %75, 255
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %365, !prof !9

78:                                               ; preds = %69
  %79 = and i32 %75, 256
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %93, label %81, !prof !8

81:                                               ; preds = %78
  %82 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 16) #12
  %83 = icmp eq ptr %82, null
  br i1 %83, label %365, label %84, !prof !8

84:                                               ; preds = %81
  %85 = load i64, ptr %82, align 1
  %86 = tail call i64 @llvm.bswap.i64(i64 %85) #12
  store i64 %86, ptr %73, align 8
  %87 = getelementptr i32, ptr %82, i32 2
  %88 = load i64, ptr %87, align 1
  %89 = tail call i64 @llvm.bswap.i64(i64 %88) #12
  store i64 %89, ptr %74, align 8
  %90 = load i32, ptr %1, align 4
  %91 = and i32 %90, -257
  store i32 %91, ptr %1, align 4
  %92 = load i32, ptr %2, align 8
  br label %93

93:                                               ; preds = %84, %78
  %94 = phi i32 [ %92, %84 ], [ %72, %78 ]
  %95 = phi i32 [ 1024, %84 ], [ 0, %78 ]
  %96 = or i32 %94, %95
  store i32 %96, ptr %2, align 8
  %97 = load i32, ptr %1, align 4
  %98 = and i32 %97, 2047
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %365, !prof !9

100:                                              ; preds = %93
  %101 = and i32 %97, 2048
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %109, label %103, !prof !8

103:                                              ; preds = %100
  %104 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %105 = icmp eq ptr %104, null
  br i1 %105, label %365, label %106, !prof !8

106:                                              ; preds = %103
  %107 = load i32, ptr %1, align 4
  %108 = and i32 %107, -2049
  store i32 %108, ptr %1, align 4
  br label %109

109:                                              ; preds = %106, %100
  %110 = phi i32 [ %108, %106 ], [ %97, %100 ]
  %111 = icmp eq ptr %3, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %109
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(130) %3, i8 0, i32 130, i1 false) #12
  %113 = load i32, ptr %1, align 4
  br label %114

114:                                              ; preds = %112, %109
  %115 = phi i32 [ %113, %112 ], [ %110, %109 ]
  %116 = and i32 %115, 524287
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %365, !prof !9

118:                                              ; preds = %114
  %119 = and i32 %115, 524288
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %155, label %121, !prof !8

121:                                              ; preds = %118
  %122 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %123 = icmp eq ptr %122, null
  br i1 %123, label %365, label %124, !prof !8

124:                                              ; preds = %121
  %125 = load i32, ptr %122, align 4
  %126 = tail call i32 @llvm.bswap.i32(i32 %125) #12
  %127 = add i32 %126, -129
  %128 = icmp ult i32 %127, -128
  br i1 %128, label %129, label %145

129:                                              ; preds = %124
  %130 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_xdr_bad_filehandle, i32 0, i32 1), align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %365

132:                                              ; preds = %129
  %133 = tail call ptr @llvm.thread.pointer() #12
  %134 = getelementptr inbounds %struct.thread_info, ptr %133, i32 0, i32 2
  %135 = load i32, ptr %134, align 8
  %136 = lshr i32 %135, 5
  %137 = getelementptr i32, ptr @__cpu_online_mask, i32 %136
  %138 = load volatile i32, ptr %137, align 4
  %139 = and i32 %135, 31
  %140 = shl nuw i32 1, %139
  %141 = and i32 %140, %138
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %365, label %143

143:                                              ; preds = %132
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %144 = tail call i32 @__traceiter_nfs4_xdr_bad_filehandle(ptr noundef null, ptr noundef %0, i32 noundef 26, i32 noundef 10001) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br label %365

145:                                              ; preds = %124
  %146 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %126) #12
  %147 = icmp eq ptr %146, null
  br i1 %147, label %365, label %148, !prof !8

148:                                              ; preds = %145
  br i1 %111, label %152, label %149

149:                                              ; preds = %148
  %150 = getelementptr inbounds %struct.nfs_fh, ptr %3, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %150, ptr nonnull align 4 %146, i32 %126, i1 false) #12
  %151 = trunc i32 %126 to i16
  store i16 %151, ptr %3, align 2
  br label %152

152:                                              ; preds = %149, %148
  %153 = load i32, ptr %1, align 4
  %154 = and i32 %153, -524289
  store i32 %154, ptr %1, align 4
  br label %155

155:                                              ; preds = %152, %118
  %156 = getelementptr inbounds %struct.nfs_fattr, ptr %2, i32 0, i32 9
  store i64 0, ptr %156, align 8
  %157 = load i32, ptr %1, align 4
  %158 = and i32 %157, 1048575
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %365, !prof !9

160:                                              ; preds = %155
  %161 = and i32 %157, 1048576
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %171, label %163, !prof !8

163:                                              ; preds = %160
  %164 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 8) #12
  %165 = icmp eq ptr %164, null
  br i1 %165, label %365, label %166, !prof !8

166:                                              ; preds = %163
  %167 = load i64, ptr %164, align 1
  %168 = tail call i64 @llvm.bswap.i64(i64 %167) #12
  store i64 %168, ptr %156, align 8
  %169 = load i32, ptr %1, align 4
  %170 = and i32 %169, -1048577
  store i32 %170, ptr %1, align 4
  br label %171

171:                                              ; preds = %166, %160
  %172 = phi i32 [ 2048, %166 ], [ 0, %160 ]
  %173 = load i32, ptr %2, align 8
  %174 = or i32 %173, %172
  store i32 %174, ptr %2, align 8
  %175 = load i32, ptr %1, align 4
  %176 = and i32 %175, 16777215
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %365, !prof !9

178:                                              ; preds = %171
  %179 = and i32 %175, 16777216
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %261, label %181, !prof !8

181:                                              ; preds = %178
  %182 = and i32 %175, -16777217
  store i32 %182, ptr %1, align 4
  %183 = icmp eq ptr %4, null
  br i1 %183, label %365, label %184, !prof !8

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.nfs4_fs_locations, ptr %4, i32 0, i32 2
  %186 = tail call fastcc i32 @decode_pathname(ptr noundef %0, ptr noundef %185) #12
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %259, !prof !9

188:                                              ; preds = %184
  %189 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %190 = icmp eq ptr %189, null
  br i1 %190, label %365, label %191, !prof !8

191:                                              ; preds = %188
  %192 = load i32, ptr %189, align 4
  %193 = tail call i32 @llvm.bswap.i32(i32 %192) #12
  %194 = getelementptr inbounds %struct.nfs4_fs_locations, ptr %4, i32 0, i32 3
  store i32 0, ptr %194, align 8
  %195 = icmp slt i32 %193, 1
  br i1 %195, label %261, label %196

196:                                              ; preds = %250, %191
  %197 = phi i32 [ %252, %250 ], [ 0, %191 ]
  %198 = getelementptr %struct.nfs4_fs_locations, ptr %4, i32 0, i32 4, i32 %197
  %199 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %200 = icmp eq ptr %199, null
  br i1 %200, label %365, label %201, !prof !8

201:                                              ; preds = %196
  %202 = load i32, ptr %199, align 4
  %203 = tail call i32 @llvm.bswap.i32(i32 %202) #12
  store i32 0, ptr %198, align 4
  %204 = icmp eq i32 %202, 0
  br i1 %204, label %246, label %205

205:                                              ; preds = %241, %201
  %206 = phi i32 [ %244, %241 ], [ 0, %201 ]
  %207 = icmp eq i32 %206, 10
  br i1 %207, label %208, label %226

208:                                              ; preds = %205
  %209 = icmp ugt i32 %203, 10
  br i1 %209, label %210, label %246

210:                                              ; preds = %223, %208
  %211 = phi i32 [ %224, %223 ], [ 10, %208 ]
  %212 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %213 = icmp eq ptr %212, null
  br i1 %213, label %365, label %214, !prof !8

214:                                              ; preds = %210
  %215 = load i32, ptr %212, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %223, label %217

217:                                              ; preds = %214
  %218 = tail call i32 @llvm.bswap.i32(i32 %215) #12
  %219 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %218) #12
  %220 = icmp eq ptr %219, null
  %221 = icmp ugt i32 %218, 1024
  %222 = or i1 %221, %220
  br i1 %222, label %365, label %223, !prof !12

223:                                              ; preds = %217, %214
  %224 = add nuw i32 %211, 1
  %225 = icmp eq i32 %224, %203
  br i1 %225, label %246, label %210

226:                                              ; preds = %205
  %227 = getelementptr %struct.nfs4_fs_locations, ptr %4, i32 0, i32 4, i32 %197, i32 1, i32 %206
  %228 = getelementptr %struct.nfs4_fs_locations, ptr %4, i32 0, i32 4, i32 %197, i32 1, i32 %206, i32 1
  store ptr null, ptr %228, align 4
  %229 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %230 = icmp eq ptr %229, null
  br i1 %230, label %365, label %231, !prof !8

231:                                              ; preds = %226
  %232 = load i32, ptr %229, align 4
  %233 = tail call i32 @llvm.bswap.i32(i32 %232) #12
  %234 = icmp eq i32 %232, 0
  br i1 %234, label %241, label %235

235:                                              ; preds = %231
  %236 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %233) #12
  %237 = icmp eq ptr %236, null
  %238 = icmp ugt i32 %233, 1024
  %239 = select i1 %237, i1 true, i1 %238
  br i1 %239, label %365, label %240, !prof !12

240:                                              ; preds = %235
  store ptr %236, ptr %228, align 4
  br label %241

241:                                              ; preds = %240, %231
  %242 = phi i32 [ %233, %240 ], [ 0, %231 ]
  store i32 %242, ptr %227, align 4
  %243 = load i32, ptr %198, align 4
  %244 = add i32 %243, 1
  store i32 %244, ptr %198, align 4
  %245 = icmp ult i32 %244, %203
  br i1 %245, label %205, label %246

246:                                              ; preds = %241, %223, %208, %201
  %247 = getelementptr %struct.nfs4_fs_locations, ptr %4, i32 0, i32 4, i32 %197, i32 2
  %248 = tail call fastcc i32 @decode_pathname(ptr noundef %0, ptr noundef %247) #12
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %365

250:                                              ; preds = %246
  %251 = load i32, ptr %194, align 8
  %252 = add i32 %251, 1
  store i32 %252, ptr %194, align 8
  %253 = icmp sge i32 %252, %193
  %254 = icmp eq i32 %252, 10
  %255 = or i1 %253, %254
  br i1 %255, label %256, label %196

256:                                              ; preds = %250
  %257 = icmp eq i32 %252, 0
  %258 = select i1 %257, i32 0, i32 524288
  br label %261

259:                                              ; preds = %184
  %260 = icmp slt i32 %186, 0
  br i1 %260, label %365, label %261

261:                                              ; preds = %259, %256, %191, %178
  %262 = phi i32 [ %186, %259 ], [ 0, %191 ], [ %258, %256 ], [ 0, %178 ]
  %263 = load i32, ptr %2, align 8
  %264 = or i32 %263, %262
  store i32 %264, ptr %2, align 8
  %265 = load i32, ptr %1, align 4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %365, !prof !9

267:                                              ; preds = %261
  %268 = getelementptr i32, ptr %1, i32 1
  %269 = load i32, ptr %268, align 4
  %270 = and i32 %269, 1
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %365, !prof !9

272:                                              ; preds = %267
  %273 = and i32 %269, 2
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %289, label %275, !prof !8

275:                                              ; preds = %272
  %276 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %277 = icmp eq ptr %276, null
  br i1 %277, label %365, label %278, !prof !8

278:                                              ; preds = %275
  %279 = load i32, ptr %276, align 4
  %280 = tail call i32 @llvm.bswap.i32(i32 %279) #12
  %281 = trunc i32 %280 to i16
  %282 = and i16 %281, 4095
  %283 = load i32, ptr %268, align 4
  %284 = and i32 %283, -3
  store i32 %284, ptr %268, align 4
  %285 = load i16, ptr %33, align 4
  %286 = or i16 %285, %282
  store i16 %286, ptr %33, align 4
  %287 = load i32, ptr %2, align 8
  %288 = or i32 %287, 2
  store i32 %288, ptr %2, align 8
  br label %289

289:                                              ; preds = %278, %272
  %290 = getelementptr inbounds %struct.nfs_fattr, ptr %2, i32 0, i32 2
  %291 = tail call fastcc i32 @decode_attr_nlink(ptr noundef %0, ptr noundef %1, ptr noundef %290)
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %365, label %293

293:                                              ; preds = %289
  %294 = load i32, ptr %2, align 8
  %295 = or i32 %294, %291
  store i32 %295, ptr %2, align 8
  %296 = getelementptr inbounds %struct.nfs_fattr, ptr %2, i32 0, i32 3
  %297 = getelementptr inbounds %struct.nfs_fattr, ptr %2, i32 0, i32 21
  %298 = load ptr, ptr %297, align 8
  %299 = tail call fastcc i32 @decode_attr_owner(ptr noundef %0, ptr noundef %1, ptr noundef %5, ptr noundef %296, ptr noundef %298)
  %300 = icmp slt i32 %299, 0
  br i1 %300, label %365, label %301

301:                                              ; preds = %293
  %302 = load i32, ptr %2, align 8
  %303 = or i32 %302, %299
  store i32 %303, ptr %2, align 8
  %304 = getelementptr inbounds %struct.nfs_fattr, ptr %2, i32 0, i32 4
  %305 = getelementptr inbounds %struct.nfs_fattr, ptr %2, i32 0, i32 22
  %306 = load ptr, ptr %305, align 4
  %307 = tail call fastcc i32 @decode_attr_group(ptr noundef %0, ptr noundef %1, ptr noundef %5, ptr noundef %304, ptr noundef %306)
  %308 = icmp slt i32 %307, 0
  br i1 %308, label %365, label %309

309:                                              ; preds = %301
  %310 = load i32, ptr %2, align 8
  %311 = or i32 %310, %307
  store i32 %311, ptr %2, align 8
  %312 = getelementptr inbounds %struct.nfs_fattr, ptr %2, i32 0, i32 5
  %313 = tail call fastcc i32 @decode_attr_rdev(ptr noundef %0, ptr noundef %1, ptr noundef %312)
  %314 = icmp slt i32 %313, 0
  br i1 %314, label %365, label %315

315:                                              ; preds = %309
  %316 = load i32, ptr %2, align 8
  %317 = or i32 %316, %313
  store i32 %317, ptr %2, align 8
  %318 = getelementptr inbounds %struct.nfs_fattr, ptr %2, i32 0, i32 7
  %319 = tail call fastcc i32 @decode_attr_space_used(ptr noundef %0, ptr noundef %1, ptr noundef %318)
  %320 = icmp slt i32 %319, 0
  br i1 %320, label %365, label %321

321:                                              ; preds = %315
  %322 = load i32, ptr %2, align 8
  %323 = or i32 %322, %319
  store i32 %323, ptr %2, align 8
  %324 = getelementptr inbounds %struct.nfs_fattr, ptr %2, i32 0, i32 11
  %325 = tail call fastcc i32 @decode_attr_time_access(ptr noundef %0, ptr noundef %1, ptr noundef %324)
  %326 = icmp slt i32 %325, 0
  br i1 %326, label %365, label %327

327:                                              ; preds = %321
  %328 = load i32, ptr %2, align 8
  %329 = or i32 %328, %325
  store i32 %329, ptr %2, align 8
  %330 = getelementptr inbounds %struct.nfs_fattr, ptr %2, i32 0, i32 13
  %331 = tail call fastcc i32 @decode_attr_time_metadata(ptr noundef %0, ptr noundef %1, ptr noundef %330)
  %332 = icmp slt i32 %331, 0
  br i1 %332, label %365, label %333

333:                                              ; preds = %327
  %334 = load i32, ptr %2, align 8
  %335 = or i32 %334, %331
  store i32 %335, ptr %2, align 8
  %336 = getelementptr inbounds %struct.nfs_fattr, ptr %2, i32 0, i32 12
  %337 = tail call fastcc i32 @decode_attr_time_modify(ptr noundef %0, ptr noundef %1, ptr noundef %336)
  %338 = icmp slt i32 %337, 0
  br i1 %338, label %365, label %339

339:                                              ; preds = %333
  %340 = load i32, ptr %2, align 8
  %341 = or i32 %340, %337
  store i32 %341, ptr %2, align 8
  %342 = getelementptr inbounds %struct.nfs_fattr, ptr %2, i32 0, i32 10
  %343 = tail call fastcc i32 @decode_attr_mounted_on_fileid(ptr noundef %0, ptr noundef %1, ptr noundef %342)
  %344 = icmp slt i32 %343, 0
  br i1 %344, label %365, label %345

345:                                              ; preds = %339
  %346 = load i32, ptr %2, align 8
  %347 = or i32 %346, %343
  store i32 %347, ptr %2, align 8
  %348 = load i32, ptr %268, align 4
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %365, !prof !9

350:                                              ; preds = %345
  %351 = getelementptr inbounds %struct.nfs_fattr, ptr %2, i32 0, i32 23
  %352 = load ptr, ptr %351, align 8
  %353 = tail call fastcc i32 @decode_attr_mdsthreshold(ptr noundef %0, ptr noundef %1, ptr noundef %352)
  %354 = icmp slt i32 %353, 0
  br i1 %354, label %365, label %355

355:                                              ; preds = %350
  %356 = getelementptr inbounds %struct.nfs_fattr, ptr %2, i32 0, i32 24
  %357 = load ptr, ptr %356, align 4
  %358 = icmp eq ptr %357, null
  br i1 %358, label %365, label %359

359:                                              ; preds = %355
  %360 = tail call fastcc i32 @decode_attr_security_label(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %357)
  %361 = icmp slt i32 %360, 0
  br i1 %361, label %365, label %362

362:                                              ; preds = %359
  %363 = load i32, ptr %2, align 8
  %364 = or i32 %363, %360
  store i32 %364, ptr %2, align 8
  br label %365

365:                                              ; preds = %362, %359, %355, %350, %345, %339, %333, %327, %321, %315, %309, %301, %293, %289, %275, %267, %261, %259, %246, %235, %226, %217, %210, %196, %188, %181, %171, %163, %155, %145, %143, %132, %129, %121, %114, %103, %93, %81, %69, %60, %49, %41, %32, %18, %15, %6
  %366 = phi i32 [ %186, %259 ], [ -5, %261 ], [ %291, %289 ], [ %299, %293 ], [ %307, %301 ], [ %313, %309 ], [ %319, %315 ], [ %325, %321 ], [ %331, %327 ], [ %337, %333 ], [ %343, %339 ], [ -5, %345 ], [ %353, %350 ], [ %360, %359 ], [ %360, %362 ], [ %353, %355 ], [ -5, %6 ], [ -5, %15 ], [ -5, %18 ], [ -5, %32 ], [ -5, %41 ], [ -5, %49 ], [ -5, %60 ], [ -5, %69 ], [ -5, %81 ], [ -5, %93 ], [ -5, %103 ], [ -121, %143 ], [ -121, %132 ], [ -121, %129 ], [ -5, %145 ], [ -5, %121 ], [ -5, %114 ], [ -5, %155 ], [ -5, %163 ], [ -5, %171 ], [ -5, %181 ], [ -5, %188 ], [ -5, %267 ], [ -5, %275 ], [ -5, %217 ], [ -5, %210 ], [ -5, %235 ], [ -5, %226 ], [ -5, %196 ], [ -5, %246 ]
  ret i32 %366
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_read(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %16
  store i32 419430400, ptr %20, align 4
  br label %26

23:                                               ; preds = %16
  %24 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %24, label %26, label %25, !prof !9

25:                                               ; preds = %23
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %26

26:                                               ; preds = %25, %23, %22
  %27 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #12
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34, !prof !8

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 4
  %36 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %32, ptr noundef %35, i32 noundef 16) #12
  br label %40

37:                                               ; preds = %26
  %38 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %38, label %40, label %39, !prof !9

39:                                               ; preds = %37
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %40

40:                                               ; preds = %39, %37, %34
  %41 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 12) #12
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44, !prof !8

43:                                               ; preds = %40
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 5
  %46 = load i64, ptr %45, align 8
  %47 = tail call i64 @llvm.bswap.i64(i64 %46) #12
  store i64 %47, ptr %41, align 1
  %48 = getelementptr i32, ptr %41, i32 2
  %49 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 6
  %50 = load i32, ptr %49, align 8
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #12
  store i32 %51, ptr %48, align 4
  %52 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 8
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 7
  %55 = load i32, ptr %54, align 4
  %56 = load i32, ptr %49, align 8
  %57 = add i32 %31, 4
  tail call void @rpc_prepare_reply_pages(ptr noundef %0, ptr noundef %53, i32 noundef %55, i32 noundef %56, i32 noundef %57) #12
  %58 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 2, i32 6
  %59 = load i32, ptr %58, align 8
  %60 = or i32 %59, 1
  store i32 %60, ptr %58, align 8
  %61 = icmp ugt i32 %29, 8
  %62 = load i1, ptr @encode_nops.__already_done, align 1
  %63 = xor i1 %62, true
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %65, label %66, !prof !8

65:                                               ; preds = %44
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %66

66:                                               ; preds = %65, %44
  %67 = tail call i32 @llvm.bswap.i32(i32 %29) #12
  %68 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  store i32 %67, ptr %69, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_read(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = load i32, ptr %4, align 4
  %7 = getelementptr inbounds %struct.nfs_pgio_res, ptr %2, i32 0, i32 3
  store i32 %6, ptr %7, align 8
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %3
  %10 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %12
  %16 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 25) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21, !prof !8

21:                                               ; preds = %18
  %22 = getelementptr i32, ptr %19, i32 1
  %23 = load i32, ptr %19, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #12
  %25 = load i32, ptr %22, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #12
  %27 = tail call i32 @xdr_read_pages(ptr noundef %1, i32 noundef %26) #12
  %28 = icmp ugt i32 %26, %27
  %29 = tail call i32 @llvm.umin.i32(i32 %26, i32 %27) #12
  %30 = select i1 %28, i32 0, i32 %24
  %31 = getelementptr inbounds %struct.nfs_pgio_res, ptr %2, i32 0, i32 4, i32 0, i32 1
  store i32 %30, ptr %31, align 4
  %32 = zext i32 %29 to i64
  %33 = getelementptr inbounds %struct.nfs_pgio_res, ptr %2, i32 0, i32 2
  store i64 %32, ptr %33, align 8
  br label %34

34:                                               ; preds = %21, %18, %15, %12, %9, %3
  %35 = phi i32 [ %5, %3 ], [ %10, %9 ], [ %13, %12 ], [ %29, %21 ], [ -5, %18 ], [ %16, %15 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_write(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %16
  store i32 637534208, ptr %20, align 4
  br label %26

23:                                               ; preds = %16
  %24 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %24, label %26, label %25, !prof !9

25:                                               ; preds = %23
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %26

26:                                               ; preds = %25, %23, %22
  %27 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 6
  store i32 %32, ptr %30, align 4
  %33 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #12
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35, !prof !8

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 4
  %37 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %33, ptr noundef %36, i32 noundef 16) #12
  br label %41

38:                                               ; preds = %26
  %39 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %39, label %41, label %40, !prof !9

40:                                               ; preds = %38
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %41

41:                                               ; preds = %40, %38, %35
  %42 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #12
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45, !prof !8

44:                                               ; preds = %41
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 5
  %47 = load i64, ptr %46, align 8
  %48 = tail call i64 @llvm.bswap.i64(i64 %47) #12
  store i64 %48, ptr %42, align 1
  %49 = getelementptr i32, ptr %42, i32 2
  %50 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 9, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #12
  %53 = getelementptr i32, ptr %42, i32 3
  store i32 %52, ptr %49, align 4
  %54 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 6
  %55 = load i32, ptr %54, align 8
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #12
  store i32 %56, ptr %53, align 4
  %57 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 8
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 7
  %60 = load i32, ptr %59, align 4
  %61 = load i32, ptr %54, align 8
  tail call void @xdr_write_pages(ptr noundef %1, ptr noundef %58, i32 noundef %60, i32 noundef %61) #12
  %62 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 1, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = or i32 %63, 2
  store i32 %64, ptr %62, align 4
  %65 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 9
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %45
  call fastcc void @encode_getattr(ptr noundef %1, ptr noundef nonnull @nfs4_fattr_bitmap, ptr noundef nonnull %66, i32 noundef 3, ptr noundef nonnull %4) #12
  %69 = load i32, ptr %27, align 4
  br label %70

70:                                               ; preds = %68, %45
  %71 = phi i32 [ %69, %68 ], [ %29, %45 ]
  %72 = icmp ugt i32 %71, 8
  %73 = load i1, ptr @encode_nops.__already_done, align 1
  %74 = xor i1 %73, true
  %75 = select i1 %72, i1 %74, i1 false
  br i1 %75, label %76, label %77, !prof !8

76:                                               ; preds = %70
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %77

77:                                               ; preds = %76, %70
  %78 = tail call i32 @llvm.bswap.i32(i32 %71) #12
  %79 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  store i32 %78, ptr %80, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_write(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = load i32, ptr %4, align 4
  %7 = getelementptr inbounds %struct.nfs_pgio_res, ptr %2, i32 0, i32 3
  store i32 %6, ptr %7, align 8
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %9, label %47

9:                                                ; preds = %3
  %10 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %47

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %12
  %16 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 38) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %15
  %19 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %47, label %21, !prof !8

21:                                               ; preds = %18
  %22 = getelementptr i32, ptr %19, i32 1
  %23 = load i32, ptr %19, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #12
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.nfs_pgio_res, ptr %2, i32 0, i32 2
  store i64 %25, ptr %26, align 8
  %27 = load i32, ptr %22, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #12
  %29 = getelementptr inbounds %struct.nfs_pgio_res, ptr %2, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nfs_writeverf, ptr %30, i32 0, i32 1
  store i32 %28, ptr %31, align 4
  %32 = load ptr, ptr %29, align 4
  %33 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #12
  %34 = icmp eq ptr %33, null
  br i1 %34, label %47, label %35, !prof !8

35:                                               ; preds = %21
  %36 = load i64, ptr %33, align 4
  store i64 %36, ptr %32, align 1
  %37 = getelementptr inbounds %struct.nfs_pgio_res, ptr %2, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.nfs_pgio_res, ptr %2, i32 0, i32 4, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = tail call fastcc i32 @decode_getfattr_generic(ptr noundef %1, ptr noundef nonnull %38, ptr noundef null, ptr noundef %42) #12
  br label %44

44:                                               ; preds = %40, %35
  %45 = load i64, ptr %26, align 8
  %46 = trunc i64 %45 to i32
  br label %47

47:                                               ; preds = %44, %21, %18, %15, %12, %9, %3
  %48 = phi i32 [ %5, %3 ], [ %10, %9 ], [ %13, %12 ], [ %46, %44 ], [ -5, %21 ], [ -5, %18 ], [ %16, %15 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_commit(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs_commitargs, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %16
  store i32 83886080, ptr %20, align 4
  br label %26

23:                                               ; preds = %16
  %24 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %24, label %26, label %25, !prof !9

25:                                               ; preds = %23
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %26

26:                                               ; preds = %25, %23, %22
  %27 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  %30 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 12) #12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33, !prof !8

32:                                               ; preds = %26
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.nfs_commitargs, ptr %2, i32 0, i32 2
  %35 = load i64, ptr %34, align 8
  %36 = tail call i64 @llvm.bswap.i64(i64 %35) #12
  store i64 %36, ptr %30, align 1
  %37 = getelementptr i32, ptr %30, i32 2
  %38 = getelementptr inbounds %struct.nfs_commitargs, ptr %2, i32 0, i32 3
  %39 = load i32, ptr %38, align 8
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #12
  store i32 %40, ptr %37, align 4
  %41 = icmp ugt i32 %29, 8
  %42 = load i1, ptr @encode_nops.__already_done, align 1
  %43 = xor i1 %42, true
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %46, !prof !8

45:                                               ; preds = %33
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %46

46:                                               ; preds = %45, %33
  %47 = tail call i32 @llvm.bswap.i32(i32 %29) #12
  %48 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  store i32 %47, ptr %49, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_commit(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = load i32, ptr %4, align 4
  %7 = getelementptr inbounds %struct.nfs_commitres, ptr %2, i32 0, i32 1
  store i32 %6, ptr %7, align 4
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %3
  %10 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.nfs_commitres, ptr %2, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 5) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23, !prof !8

23:                                               ; preds = %20
  %24 = load i64, ptr %21, align 4
  store i64 %24, ptr %17, align 1
  %25 = getelementptr inbounds %struct.nfs_writeverf, ptr %17, i32 0, i32 1
  store i32 2, ptr %25, align 4
  br label %26

26:                                               ; preds = %23, %20, %15, %12, %9, %3
  %27 = phi i32 [ %5, %3 ], [ %10, %9 ], [ %13, %12 ], [ 0, %23 ], [ -5, %20 ], [ %18, %15 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_open(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs_openargs, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  call fastcc void @encode_open(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %20 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %16
  store i32 167772160, ptr %20, align 4
  br label %26

23:                                               ; preds = %16
  %24 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %24, label %26, label %25, !prof !9

25:                                               ; preds = %23
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %26

26:                                               ; preds = %25, %23, %22
  %27 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 35
  store i32 %32, ptr %30, align 4
  %33 = getelementptr inbounds %struct.nfs_openargs, ptr %2, i32 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %53, label %36

36:                                               ; preds = %26
  %37 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39, !prof !8

39:                                               ; preds = %36
  store i32 50331648, ptr %37, align 4
  br label %43

40:                                               ; preds = %36
  %41 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %41, label %43, label %42, !prof !9

42:                                               ; preds = %40
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %43

43:                                               ; preds = %42, %40, %39
  %44 = add i32 %28, 2
  store i32 %44, ptr %27, align 4
  %45 = add i32 %31, 39
  store i32 %45, ptr %30, align 4
  %46 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48, !prof !8

48:                                               ; preds = %43
  %49 = tail call i32 @llvm.bswap.i32(i32 %34) #12
  store i32 %49, ptr %46, align 4
  br label %53

50:                                               ; preds = %43
  %51 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %51, label %53, label %52, !prof !9

52:                                               ; preds = %50
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %53

53:                                               ; preds = %52, %50, %48, %26
  %54 = getelementptr inbounds %struct.nfs_openargs, ptr %2, i32 0, i32 12
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.nfs_openargs, ptr %2, i32 0, i32 13
  %57 = load ptr, ptr %56, align 8
  call fastcc void @encode_getattr(ptr noundef %1, ptr noundef %57, ptr noundef %55, i32 noundef 3, ptr noundef nonnull %4) #12
  %58 = getelementptr inbounds %struct.nfs_openargs, ptr %2, i32 0, i32 18
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %69, label %61

61:                                               ; preds = %53
  call fastcc void @encode_layoutget(ptr noundef %1, ptr noundef nonnull %59, ptr noundef nonnull %4)
  %62 = load ptr, ptr %58, align 4
  %63 = getelementptr inbounds %struct.nfs4_layoutget_args, ptr %62, i32 0, i32 8
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.nfs4_layoutget_args, ptr %62, i32 0, i32 8, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = load i32, ptr %30, align 4
  %68 = add i32 %67, -1
  tail call void @rpc_prepare_reply_pages(ptr noundef %0, ptr noundef %64, i32 noundef 0, i32 noundef %66, i32 noundef %68) #12
  br label %69

69:                                               ; preds = %61, %53
  %70 = load i32, ptr %27, align 4
  %71 = icmp ugt i32 %70, 8
  %72 = load i1, ptr @encode_nops.__already_done, align 1
  %73 = xor i1 %72, true
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %75, label %76, !prof !8

75:                                               ; preds = %69
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %76

76:                                               ; preds = %75, %69
  %77 = tail call i32 @llvm.bswap.i32(i32 %70) #12
  %78 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  store i32 %77, ptr %79, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_open(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %39

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %39

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @decode_open(ptr noundef %1, ptr noundef %2)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.nfs_openres, ptr %2, i32 0, i32 2
  %18 = tail call fastcc i32 @decode_getfh(ptr noundef %1, ptr noundef %17)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.nfs_openres, ptr %2, i32 0, i32 15
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.nfs_openres, ptr %2, i32 0, i32 16
  %26 = getelementptr inbounds %struct.nfs_openres, ptr %2, i32 0, i32 17
  %27 = tail call fastcc i32 @decode_access(ptr noundef %1, ptr noundef %25, ptr noundef %26)
  br label %28

28:                                               ; preds = %24, %20
  %29 = getelementptr inbounds %struct.nfs_openres, ptr %2, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nfs_openres, ptr %2, i32 0, i32 7
  %32 = load ptr, ptr %31, align 4
  %33 = tail call fastcc i32 @decode_getfattr_generic(ptr noundef %1, ptr noundef %30, ptr noundef null, ptr noundef %32) #12
  %34 = getelementptr inbounds %struct.nfs_openres, ptr %2, i32 0, i32 18
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %28
  %38 = tail call fastcc i32 @decode_layoutget(ptr noundef %1, ptr noundef nonnull %35)
  br label %39

39:                                               ; preds = %37, %28, %16, %13, %10, %7, %3
  %40 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %14, %13 ], [ %18, %16 ], [ 0, %37 ], [ 0, %28 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_open_confirm(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false)
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %5 = getelementptr inbounds %struct.nfs_open_confirmargs, ptr %2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %6, ptr noundef nonnull %4)
  %7 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !8

9:                                                ; preds = %3
  store i32 335544320, ptr %7, align 4
  br label %13

10:                                               ; preds = %3
  %11 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %11, label %13, label %12, !prof !9

12:                                               ; preds = %10
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %13

13:                                               ; preds = %12, %10, %9
  %14 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  %17 = getelementptr inbounds %struct.nfs_open_confirmargs, ptr %2, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21, !prof !8

21:                                               ; preds = %13
  %22 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %19, ptr noundef %18, i32 noundef 16) #12
  br label %26

23:                                               ; preds = %13
  %24 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %24, label %26, label %25, !prof !9

25:                                               ; preds = %23
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %26

26:                                               ; preds = %25, %23, %21
  %27 = getelementptr inbounds %struct.nfs_open_confirmargs, ptr %2, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  tail call fastcc void @encode_nfs4_seqid(ptr noundef %1, ptr noundef %28) #12
  %29 = icmp ugt i32 %16, 8
  %30 = load i1, ptr @encode_nops.__already_done, align 1
  %31 = xor i1 %30, true
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %34, !prof !8

33:                                               ; preds = %26
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %34

34:                                               ; preds = %33, %26
  %35 = tail call i32 @llvm.bswap.i32(i32 %16) #12
  %36 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  store i32 %35, ptr %37, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_open_confirm(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 20) #12
  %12 = icmp eq i32 %11, -5
  br i1 %12, label %23, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.nfs_open_confirmres, ptr %2, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void @nfs_increment_open_seqid(i32 noundef %11, ptr noundef %15) #12
  %16 = icmp eq i32 %11, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.nfs_open_confirmres, ptr %2, i32 0, i32 1, i32 1
  store i32 2, ptr %18, align 4
  %19 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 16) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21, !prof !8

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.nfs_open_confirmres, ptr %2, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %22, ptr noundef nonnull align 4 dereferenceable(16) %19, i32 16, i1 false) #12
  br label %23

23:                                               ; preds = %21, %17, %13, %10, %7, %3
  %24 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %13 ], [ -5, %10 ], [ 0, %21 ], [ -5, %17 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_open_noattr(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs_openargs, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  call fastcc void @encode_open(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %20 = getelementptr inbounds %struct.nfs_openargs, ptr %2, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %16
  %24 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26, !prof !8

26:                                               ; preds = %23
  store i32 50331648, ptr %24, align 4
  br label %30

27:                                               ; preds = %23
  %28 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %28, label %30, label %29, !prof !9

29:                                               ; preds = %27
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %30

30:                                               ; preds = %29, %27, %26
  %31 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 4
  %34 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 4
  store i32 %36, ptr %34, align 4
  %37 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39, !prof !8

39:                                               ; preds = %30
  %40 = tail call i32 @llvm.bswap.i32(i32 %21) #12
  store i32 %40, ptr %37, align 4
  br label %44

41:                                               ; preds = %30
  %42 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %42, label %44, label %43, !prof !9

43:                                               ; preds = %41
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %44

44:                                               ; preds = %43, %41, %39, %16
  %45 = getelementptr inbounds %struct.nfs_openargs, ptr %2, i32 0, i32 12
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nfs_openargs, ptr %2, i32 0, i32 13
  %48 = load ptr, ptr %47, align 8
  call fastcc void @encode_getattr(ptr noundef %1, ptr noundef %48, ptr noundef %46, i32 noundef 3, ptr noundef nonnull %4) #12
  %49 = getelementptr inbounds %struct.nfs_openargs, ptr %2, i32 0, i32 18
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %61, label %52

52:                                               ; preds = %44
  call fastcc void @encode_layoutget(ptr noundef %1, ptr noundef nonnull %50, ptr noundef nonnull %4)
  %53 = load ptr, ptr %49, align 4
  %54 = getelementptr inbounds %struct.nfs4_layoutget_args, ptr %53, i32 0, i32 8
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.nfs4_layoutget_args, ptr %53, i32 0, i32 8, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, -1
  tail call void @rpc_prepare_reply_pages(ptr noundef %0, ptr noundef %55, i32 noundef 0, i32 noundef %57, i32 noundef %60) #12
  br label %61

61:                                               ; preds = %52, %44
  %62 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = icmp ugt i32 %63, 8
  %65 = load i1, ptr @encode_nops.__already_done, align 1
  %66 = xor i1 %65, true
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %68, label %69, !prof !8

68:                                               ; preds = %61
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %69

69:                                               ; preds = %68, %61
  %70 = tail call i32 @llvm.bswap.i32(i32 %63) #12
  %71 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  store i32 %70, ptr %72, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_open_noattr(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %35

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @decode_open(ptr noundef %1, ptr noundef %2)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.nfs_openres, ptr %2, i32 0, i32 15
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.nfs_openres, ptr %2, i32 0, i32 16
  %22 = getelementptr inbounds %struct.nfs_openres, ptr %2, i32 0, i32 17
  %23 = tail call fastcc i32 @decode_access(ptr noundef %1, ptr noundef %21, ptr noundef %22)
  br label %24

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds %struct.nfs_openres, ptr %2, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nfs_openres, ptr %2, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = tail call fastcc i32 @decode_getfattr_generic(ptr noundef %1, ptr noundef %26, ptr noundef null, ptr noundef %28) #12
  %30 = getelementptr inbounds %struct.nfs_openres, ptr %2, i32 0, i32 18
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %24
  %34 = tail call fastcc i32 @decode_layoutget(ptr noundef %1, ptr noundef nonnull %31)
  br label %35

35:                                               ; preds = %33, %24, %13, %10, %7, %3
  %36 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %14, %13 ], [ 0, %33 ], [ 0, %24 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_open_downgrade(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs_closeargs, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = getelementptr inbounds %struct.nfs_closeargs, ptr %2, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  call fastcc void @encode_layoutreturn(ptr noundef %1, ptr noundef nonnull %21, ptr noundef nonnull %4)
  br label %24

24:                                               ; preds = %23, %16
  %25 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27, !prof !8

27:                                               ; preds = %24
  store i32 352321536, ptr %25, align 4
  br label %31

28:                                               ; preds = %24
  %29 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %29, label %31, label %30, !prof !9

30:                                               ; preds = %28
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %31

31:                                               ; preds = %30, %28, %27
  %32 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 4
  %35 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #12
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37, !prof !8

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.nfs_closeargs, ptr %2, i32 0, i32 2
  %39 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %35, ptr noundef %38, i32 noundef 16) #12
  br label %43

40:                                               ; preds = %31
  %41 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %41, label %43, label %42, !prof !9

42:                                               ; preds = %40
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %43

43:                                               ; preds = %42, %40, %37
  %44 = getelementptr inbounds %struct.nfs_closeargs, ptr %2, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  tail call fastcc void @encode_nfs4_seqid(ptr noundef %1, ptr noundef %45) #12
  %46 = getelementptr inbounds %struct.nfs_closeargs, ptr %2, i32 0, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 8) #12
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51, !prof !8

50:                                               ; preds = %43
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

51:                                               ; preds = %43
  %52 = tail call i32 @llvm.bswap.i32(i32 %47) #12
  %53 = getelementptr i32, ptr %48, i32 1
  store i32 %52, ptr %48, align 4
  store i32 0, ptr %53, align 4
  %54 = icmp ugt i32 %34, 8
  %55 = load i1, ptr @encode_nops.__already_done, align 1
  %56 = xor i1 %55, true
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %59, !prof !8

58:                                               ; preds = %51
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %59

59:                                               ; preds = %58, %51
  %60 = tail call i32 @llvm.bswap.i32(i32 %34) #12
  %61 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  store i32 %60, ptr %62, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_open_downgrade(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %56

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %56

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %56

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.nfs_closeres, ptr %2, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %43, label %17

17:                                               ; preds = %13
  %18 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 51) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %17
  %21 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23, !prof !8

23:                                               ; preds = %20
  %24 = load i32, ptr %21, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #12
  %26 = getelementptr inbounds %struct.nfs4_layoutreturn_res, ptr %15, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  %27 = icmp eq i32 %24, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.nfs4_layoutreturn_res, ptr %15, i32 0, i32 2, i32 1
  store i32 5, ptr %29, align 4
  %30 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 16) #12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32, !prof !8

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.nfs4_layoutreturn_res, ptr %15, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %33, ptr noundef nonnull align 4 dereferenceable(16) %30, i32 16, i1 false) #12
  br label %41

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.nfs4_layoutreturn_res, ptr %15, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %35, ptr noundef nonnull align 4 dereferenceable(16) @invalid_stateid, i32 16, i1 false) #12
  %36 = load i32, ptr getelementptr inbounds (%struct.nfs4_stateid_struct, ptr @invalid_stateid, i32 0, i32 1), align 4
  %37 = getelementptr inbounds %struct.nfs4_layoutreturn_res, ptr %15, i32 0, i32 2, i32 1
  store i32 %36, ptr %37, align 4
  br label %41

38:                                               ; preds = %28, %20, %17
  %39 = phi i32 [ -5, %28 ], [ -5, %20 ], [ %18, %17 ]
  %40 = getelementptr inbounds %struct.nfs_closeres, ptr %2, i32 0, i32 6
  store i32 %39, ptr %40, align 4
  br label %56

41:                                               ; preds = %34, %32
  %42 = getelementptr inbounds %struct.nfs_closeres, ptr %2, i32 0, i32 6
  store i32 0, ptr %42, align 4
  br label %43

43:                                               ; preds = %41, %13
  %44 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 21) #12
  %45 = icmp eq i32 %44, -5
  br i1 %45, label %56, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.nfs_closeres, ptr %2, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  tail call void @nfs_increment_open_seqid(i32 noundef %44, ptr noundef %48) #12
  %49 = icmp eq i32 %44, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.nfs_closeres, ptr %2, i32 0, i32 1, i32 1
  store i32 2, ptr %51, align 4
  %52 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 16) #12
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54, !prof !8

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.nfs_closeres, ptr %2, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %55, ptr noundef nonnull align 4 dereferenceable(16) %52, i32 16, i1 false) #12
  br label %56

56:                                               ; preds = %54, %50, %46, %43, %38, %10, %7, %3
  %57 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %39, %38 ], [ %44, %46 ], [ -5, %43 ], [ 0, %54 ], [ -5, %50 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_close(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs_closeargs, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = getelementptr inbounds %struct.nfs_closeargs, ptr %2, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  call fastcc void @encode_layoutreturn(ptr noundef %1, ptr noundef nonnull %21, ptr noundef nonnull %4)
  br label %24

24:                                               ; preds = %23, %16
  %25 = getelementptr inbounds %struct.nfs_closeargs, ptr %2, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  call fastcc void @encode_getattr(ptr noundef %1, ptr noundef nonnull @nfs4_fattr_bitmap, ptr noundef nonnull %26, i32 noundef 3, ptr noundef nonnull %4) #12
  br label %29

29:                                               ; preds = %28, %24
  %30 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32, !prof !8

32:                                               ; preds = %29
  store i32 67108864, ptr %30, align 4
  br label %36

33:                                               ; preds = %29
  %34 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %34, label %36, label %35, !prof !9

35:                                               ; preds = %33
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %36

36:                                               ; preds = %35, %33, %32
  %37 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, 1
  %40 = getelementptr inbounds %struct.nfs_closeargs, ptr %2, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  tail call fastcc void @encode_nfs4_seqid(ptr noundef %1, ptr noundef %41) #12
  %42 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #12
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44, !prof !8

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.nfs_closeargs, ptr %2, i32 0, i32 2
  %46 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %42, ptr noundef %45, i32 noundef 16) #12
  br label %50

47:                                               ; preds = %36
  %48 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %48, label %50, label %49, !prof !9

49:                                               ; preds = %47
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %50

50:                                               ; preds = %49, %47, %44
  %51 = icmp ugt i32 %39, 8
  %52 = load i1, ptr @encode_nops.__already_done, align 1
  %53 = xor i1 %52, true
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %56, !prof !8

55:                                               ; preds = %50
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %56

56:                                               ; preds = %55, %50
  %57 = tail call i32 @llvm.bswap.i32(i32 %39) #12
  %58 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  store i32 %57, ptr %59, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_close(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %66

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %66

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %66

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.nfs_closeres, ptr %2, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %43, label %17

17:                                               ; preds = %13
  %18 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 51) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %17
  %21 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23, !prof !8

23:                                               ; preds = %20
  %24 = load i32, ptr %21, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #12
  %26 = getelementptr inbounds %struct.nfs4_layoutreturn_res, ptr %15, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  %27 = icmp eq i32 %24, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.nfs4_layoutreturn_res, ptr %15, i32 0, i32 2, i32 1
  store i32 5, ptr %29, align 4
  %30 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 16) #12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32, !prof !8

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.nfs4_layoutreturn_res, ptr %15, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %33, ptr noundef nonnull align 4 dereferenceable(16) %30, i32 16, i1 false) #12
  br label %41

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.nfs4_layoutreturn_res, ptr %15, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %35, ptr noundef nonnull align 4 dereferenceable(16) @invalid_stateid, i32 16, i1 false) #12
  %36 = load i32, ptr getelementptr inbounds (%struct.nfs4_stateid_struct, ptr @invalid_stateid, i32 0, i32 1), align 4
  %37 = getelementptr inbounds %struct.nfs4_layoutreturn_res, ptr %15, i32 0, i32 2, i32 1
  store i32 %36, ptr %37, align 4
  br label %41

38:                                               ; preds = %28, %20, %17
  %39 = phi i32 [ -5, %28 ], [ -5, %20 ], [ %18, %17 ]
  %40 = getelementptr inbounds %struct.nfs_closeres, ptr %2, i32 0, i32 6
  store i32 %39, ptr %40, align 4
  br label %66

41:                                               ; preds = %34, %32
  %42 = getelementptr inbounds %struct.nfs_closeres, ptr %2, i32 0, i32 6
  store i32 0, ptr %42, align 4
  br label %43

43:                                               ; preds = %41, %13
  %44 = getelementptr inbounds %struct.nfs_closeres, ptr %2, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.nfs_closeres, ptr %2, i32 0, i32 4
  %49 = load ptr, ptr %48, align 4
  %50 = tail call fastcc i32 @decode_getfattr_generic(ptr noundef %1, ptr noundef nonnull %45, ptr noundef null, ptr noundef %49) #12
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %47, %43
  %53 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 4) #12
  %54 = icmp eq i32 %53, -5
  br i1 %54, label %66, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.nfs_closeres, ptr %2, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  tail call void @nfs_increment_open_seqid(i32 noundef %53, ptr noundef %57) #12
  %58 = icmp eq i32 %53, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.nfs_closeres, ptr %2, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %60, ptr noundef nonnull align 4 dereferenceable(16) @invalid_stateid, i32 16, i1 false) #12
  %61 = load i32, ptr getelementptr inbounds (%struct.nfs4_stateid_struct, ptr @invalid_stateid, i32 0, i32 1), align 4
  %62 = getelementptr inbounds %struct.nfs_closeres, ptr %2, i32 0, i32 1, i32 1
  store i32 %61, ptr %62, align 4
  %63 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 16) #12
  %64 = icmp eq ptr %63, null
  %65 = select i1 %64, i32 -5, i32 0, !prof !8
  br label %66

66:                                               ; preds = %59, %55, %52, %47, %38, %10, %7, %3
  %67 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %50, %47 ], [ %39, %38 ], [ %53, %55 ], [ %65, %59 ], [ -5, %52 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_setattr(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs_setattrargs, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = getelementptr inbounds %struct.nfs_setattrargs, ptr %2, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24, !prof !8

24:                                               ; preds = %16
  store i32 570425344, ptr %22, align 4
  br label %28

25:                                               ; preds = %16
  %26 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %26, label %28, label %27, !prof !9

27:                                               ; preds = %25
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %28

28:                                               ; preds = %27, %25, %24
  %29 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 4
  %32 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 6
  store i32 %34, ptr %32, align 4
  %35 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #12
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37, !prof !8

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.nfs_setattrargs, ptr %2, i32 0, i32 2
  %39 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %35, ptr noundef %38, i32 noundef 16) #12
  br label %43

40:                                               ; preds = %28
  %41 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %41, label %43, label %42, !prof !9

42:                                               ; preds = %40
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %43

43:                                               ; preds = %42, %40, %37
  %44 = getelementptr inbounds %struct.nfs_setattrargs, ptr %2, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nfs_setattrargs, ptr %2, i32 0, i32 6
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.nfs_server, ptr %21, i32 0, i32 38
  tail call fastcc void @encode_attrs(ptr noundef %1, ptr noundef %45, ptr noundef %47, ptr noundef null, ptr noundef %21, ptr noundef %48) #12
  %49 = getelementptr inbounds %struct.nfs_setattrargs, ptr %2, i32 0, i32 5
  %50 = load ptr, ptr %49, align 4
  call fastcc void @encode_getattr(ptr noundef %1, ptr noundef nonnull @nfs4_fattr_bitmap, ptr noundef %50, i32 noundef 3, ptr noundef nonnull %4) #12
  %51 = load i32, ptr %29, align 4
  %52 = icmp ugt i32 %51, 8
  %53 = load i1, ptr @encode_nops.__already_done, align 1
  %54 = xor i1 %53, true
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %57, !prof !8

56:                                               ; preds = %43
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %57

57:                                               ; preds = %56, %43
  %58 = tail call i32 @llvm.bswap.i32(i32 %51) #12
  %59 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  store i32 %58, ptr %60, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_setattr(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %35

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 34) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %13
  %17 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19, !prof !8

19:                                               ; preds = %16
  %20 = load i32, ptr %17, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #12
  %22 = shl i32 %21, 2
  %23 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %22) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %35, label %25, !prof !8

25:                                               ; preds = %19
  %26 = icmp sgt i32 %21, -1
  br i1 %26, label %29, label %27, !prof !9

27:                                               ; preds = %25
  %28 = icmp eq i32 %20, -1493172225
  br i1 %28, label %29, label %35

29:                                               ; preds = %27, %25
  %30 = getelementptr inbounds %struct.nfs_setattrres, ptr %2, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nfs_setattrres, ptr %2, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = tail call fastcc i32 @decode_getfattr_generic(ptr noundef %1, ptr noundef %31, ptr noundef null, ptr noundef %33) #12
  br label %35

35:                                               ; preds = %29, %27, %19, %16, %13, %10, %7, %3
  %36 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ 0, %29 ], [ %14, %13 ], [ -5, %27 ], [ -5, %19 ], [ -5, %16 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_fsinfo(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs4_fsinfo_arg, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = getelementptr inbounds %struct.nfs4_fsinfo_arg, ptr %2, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  call fastcc void @encode_getattr(ptr noundef %1, ptr noundef nonnull @nfs4_fsinfo_bitmap, ptr noundef %21, i32 noundef 3, ptr noundef nonnull %4) #12
  %22 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp ugt i32 %23, 8
  %25 = load i1, ptr @encode_nops.__already_done, align 1
  %26 = xor i1 %25, true
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %29, !prof !8

28:                                               ; preds = %16
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %29

29:                                               ; preds = %28, %16
  %30 = tail call i32 @llvm.bswap.i32(i32 %23) #12
  %31 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  store i32 %30, ptr %32, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_fsinfo(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.nfs4_fsinfo_res, ptr %2, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call fastcc i32 @decode_fsinfo(ptr noundef %1, ptr noundef %15)
  br label %17

17:                                               ; preds = %13, %10, %7, %3
  %18 = phi i32 [ %11, %10 ], [ %16, %13 ], [ %8, %7 ], [ %5, %3 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_renew(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false)
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %5 = getelementptr inbounds %struct.nfs_client, ptr %2, i32 0, i32 20
  %6 = load i64, ptr %5, align 8
  %7 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !8

9:                                                ; preds = %3
  store i32 503316480, ptr %7, align 4
  br label %13

10:                                               ; preds = %3
  %11 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %11, label %13, label %12, !prof !9

12:                                               ; preds = %10
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %13

13:                                               ; preds = %12, %10, %9
  %14 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  %17 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 8) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19, !prof !8

19:                                               ; preds = %13
  %20 = tail call i64 @llvm.bswap.i64(i64 %6) #12
  store i64 %20, ptr %17, align 1
  br label %24

21:                                               ; preds = %13
  %22 = load i1, ptr @encode_uint64.__already_done, align 1
  br i1 %22, label %24, label %23, !prof !9

23:                                               ; preds = %21
  store i1 true, ptr @encode_uint64.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 988, i32 noundef 9, ptr noundef null) #12
  br label %24

24:                                               ; preds = %23, %21, %19
  %25 = icmp ugt i32 %16, 8
  %26 = load i1, ptr @encode_nops.__already_done, align 1
  %27 = xor i1 %26, true
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %30, !prof !8

29:                                               ; preds = %24
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %30

30:                                               ; preds = %29, %24
  %31 = tail call i32 @llvm.bswap.i32(i32 %16) #12
  %32 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  store i32 %31, ptr %33, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_renew(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 30) #12
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %5, %3 ], [ %8, %7 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_setclientid(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false)
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %5 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !8

7:                                                ; preds = %3
  store i32 587202560, ptr %5, align 4
  br label %11

8:                                                ; preds = %3
  %9 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %9, label %11, label %10, !prof !9

10:                                               ; preds = %8
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %11

11:                                               ; preds = %10, %8, %7
  %12 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 25
  store i32 %17, ptr %15, align 4
  %18 = load ptr, ptr %2, align 4
  %19 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 8) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21, !prof !8

21:                                               ; preds = %11
  %22 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %19, ptr noundef %18, i32 noundef 8) #12
  br label %26

23:                                               ; preds = %11
  %24 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %24, label %26, label %25, !prof !9

25:                                               ; preds = %23
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %26

26:                                               ; preds = %25, %23, %21
  %27 = getelementptr inbounds %struct.nfs4_setclientid, ptr %2, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nfs_client, ptr %28, i32 0, i32 29
  %30 = load ptr, ptr %29, align 8
  %31 = tail call i32 @strlen(ptr noundef %30) #12
  %32 = add i32 %31, 7
  %33 = and i32 %32, -4
  %34 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %33) #12
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36, !prof !8

36:                                               ; preds = %26
  %37 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %34, ptr noundef %30, i32 noundef %31) #12
  %38 = icmp slt i32 %33, 0
  br label %39

39:                                               ; preds = %36, %26
  %40 = phi i1 [ %38, %36 ], [ true, %26 ]
  %41 = load i1, ptr @encode_string.__already_done, align 1
  %42 = xor i1 %41, true
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %45, !prof !8

44:                                               ; preds = %39
  store i1 true, ptr @encode_string.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 978, i32 noundef 9, ptr noundef null) #12
  br label %45

45:                                               ; preds = %44, %39
  %46 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49, !prof !8

48:                                               ; preds = %45
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.nfs4_setclientid, ptr %2, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #12
  store i32 %52, ptr %46, align 4
  %53 = getelementptr inbounds %struct.nfs4_setclientid, ptr %2, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, 7
  %56 = and i32 %55, -4
  %57 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %56) #12
  %58 = icmp eq ptr %57, null
  br i1 %58, label %63, label %59, !prof !8

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.nfs4_setclientid, ptr %2, i32 0, i32 3
  %61 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %57, ptr noundef %60, i32 noundef %54) #12
  %62 = icmp slt i32 %56, 0
  br label %63

63:                                               ; preds = %59, %49
  %64 = phi i1 [ %62, %59 ], [ true, %49 ]
  %65 = load i1, ptr @encode_string.__already_done, align 1
  %66 = xor i1 %65, true
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %68, label %69, !prof !8

68:                                               ; preds = %63
  store i1 true, ptr @encode_string.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 978, i32 noundef 9, ptr noundef null) #12
  br label %69

69:                                               ; preds = %68, %63
  %70 = getelementptr inbounds %struct.nfs4_setclientid, ptr %2, i32 0, i32 4
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, 7
  %73 = and i32 %72, -4
  %74 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %73) #12
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76, !prof !8

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.nfs4_setclientid, ptr %2, i32 0, i32 5
  %78 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %74, ptr noundef %77, i32 noundef %71) #12
  %79 = icmp slt i32 %73, 0
  br label %80

80:                                               ; preds = %76, %69
  %81 = phi i1 [ %79, %76 ], [ true, %69 ]
  %82 = load i1, ptr @encode_string.__already_done, align 1
  %83 = xor i1 %82, true
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %85, label %86, !prof !8

85:                                               ; preds = %80
  store i1 true, ptr @encode_string.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 978, i32 noundef 9, ptr noundef null) #12
  br label %86

86:                                               ; preds = %85, %80
  %87 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %90, !prof !8

89:                                               ; preds = %86
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

90:                                               ; preds = %86
  %91 = load ptr, ptr %27, align 4
  %92 = getelementptr inbounds %struct.nfs_client, ptr %91, i32 0, i32 30
  %93 = load i32, ptr %92, align 4
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #12
  store i32 %94, ptr %87, align 4
  %95 = icmp ugt i32 %14, 8
  %96 = load i1, ptr @encode_nops.__already_done, align 1
  %97 = xor i1 %96, true
  %98 = select i1 %95, i1 %97, i1 false
  br i1 %98, label %99, label %100, !prof !8

99:                                               ; preds = %90
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %100

100:                                              ; preds = %99, %90
  %101 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  %102 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %103 = load ptr, ptr %102, align 4
  store i32 %101, ptr %103, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_setclientid(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %60

7:                                                ; preds = %3
  %8 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %60, label %10, !prof !8

10:                                               ; preds = %7
  %11 = load i32, ptr %8, align 4
  %12 = icmp eq i32 %11, 587202560
  br i1 %12, label %13, label %60

13:                                               ; preds = %10
  %14 = getelementptr i32, ptr %8, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #12
  switch i32 %16, label %43 [
    i32 0, label %17
    i32 10017, label %26
  ]

17:                                               ; preds = %13
  %18 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 16) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %60, label %20, !prof !8

20:                                               ; preds = %17
  %21 = load i64, ptr %18, align 1
  %22 = tail call i64 @llvm.bswap.i64(i64 %21) #12
  store i64 %22, ptr %2, align 8
  %23 = getelementptr i32, ptr %18, i32 2
  %24 = getelementptr inbounds %struct.nfs4_setclientid_res, ptr %2, i32 0, i32 1
  %25 = load i64, ptr %23, align 4
  store i64 %25, ptr %24, align 8
  br label %60

26:                                               ; preds = %13
  %27 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %60, label %29, !prof !8

29:                                               ; preds = %26
  %30 = load i32, ptr %27, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #12
  %32 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %31) #12
  %33 = icmp eq ptr %32, null
  br i1 %33, label %60, label %34, !prof !8

34:                                               ; preds = %29
  %35 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %36 = icmp eq ptr %35, null
  br i1 %36, label %60, label %37, !prof !8

37:                                               ; preds = %34
  %38 = load i32, ptr %35, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #12
  %40 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %39) #12
  %41 = icmp eq ptr %40, null
  %42 = select i1 %41, i32 -5, i32 -10017, !prof !8
  br label %60

43:                                               ; preds = %50, %13
  %44 = phi i32 [ %53, %50 ], [ 0, %13 ]
  %45 = phi i32 [ %51, %50 ], [ 0, %13 ]
  %46 = icmp eq i32 %44, %16
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = getelementptr [32 x %struct.anon.159], ptr @nfs_errtbl, i32 0, i32 %45, i32 1
  %49 = load i32, ptr %48, align 4
  br label %60

50:                                               ; preds = %43
  %51 = add nuw nsw i32 %45, 1
  %52 = getelementptr [32 x %struct.anon.159], ptr @nfs_errtbl, i32 0, i32 %51
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %51, 31
  br i1 %54, label %55, label %43

55:                                               ; preds = %50
  %56 = add i32 %16, -10101
  %57 = icmp ult i32 %56, -100
  %58 = sub i32 0, %16
  %59 = select i1 %57, i32 -121, i32 %58
  br label %60

60:                                               ; preds = %55, %47, %37, %34, %29, %26, %20, %17, %10, %7, %3
  %61 = phi i32 [ %5, %3 ], [ 0, %20 ], [ -5, %7 ], [ -5, %10 ], [ -5, %17 ], [ -5, %26 ], [ -5, %29 ], [ -5, %34 ], [ %42, %37 ], [ %49, %47 ], [ %59, %55 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_setclientid_confirm(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false)
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %5 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !8

7:                                                ; preds = %3
  store i32 603979776, ptr %5, align 4
  br label %11

8:                                                ; preds = %3
  %9 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %9, label %11, label %10, !prof !9

10:                                               ; preds = %8
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %11

11:                                               ; preds = %10, %8, %7
  %12 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 4
  %15 = load i64, ptr %2, align 8
  %16 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 8) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18, !prof !8

18:                                               ; preds = %11
  %19 = tail call i64 @llvm.bswap.i64(i64 %15) #12
  store i64 %19, ptr %16, align 1
  br label %23

20:                                               ; preds = %11
  %21 = load i1, ptr @encode_uint64.__already_done, align 1
  br i1 %21, label %23, label %22, !prof !9

22:                                               ; preds = %20
  store i1 true, ptr @encode_uint64.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 988, i32 noundef 9, ptr noundef null) #12
  br label %23

23:                                               ; preds = %22, %20, %18
  %24 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 8) #12
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26, !prof !8

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.nfs4_setclientid_res, ptr %2, i32 0, i32 1
  %28 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %24, ptr noundef %27, i32 noundef 8) #12
  br label %32

29:                                               ; preds = %23
  %30 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %30, label %32, label %31, !prof !9

31:                                               ; preds = %29
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %32

32:                                               ; preds = %31, %29, %26
  %33 = icmp ugt i32 %14, 8
  %34 = load i1, ptr @encode_nops.__already_done, align 1
  %35 = xor i1 %34, true
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %38, !prof !8

37:                                               ; preds = %32
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %38

38:                                               ; preds = %37, %32
  %39 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  %40 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  store i32 %39, ptr %41, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_setclientid_confirm(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 36) #12
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %5, %3 ], [ %8, %7 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_lock(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs_lock_args, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %16
  store i32 201326592, ptr %20, align 4
  br label %26

23:                                               ; preds = %16
  %24 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %24, label %26, label %25, !prof !9

25:                                               ; preds = %23
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %26

26:                                               ; preds = %25, %23, %22
  %27 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 43
  store i32 %32, ptr %30, align 4
  %33 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 28) #12
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36, !prof !8

35:                                               ; preds = %26
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.nfs_lock_args, ptr %2, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nfs_lock_args, ptr %2, i32 0, i32 8
  %40 = load i8, ptr %39, align 8
  %41 = and i8 %40, 1
  %42 = getelementptr inbounds %struct.file_lock, ptr %38, i32 0, i32 7
  %43 = load i8, ptr %42, align 4
  %44 = icmp eq i8 %43, 0
  %45 = icmp eq i8 %41, 0
  %46 = select i1 %45, i32 16777216, i32 50331648
  %47 = select i1 %45, i32 33554432, i32 67108864
  %48 = select i1 %44, i32 %46, i32 %47
  %49 = getelementptr i32, ptr %33, i32 1
  store i32 %48, ptr %33, align 4
  %50 = load i8, ptr %39, align 8
  %51 = lshr i8 %50, 1
  %52 = and i8 %51, 1
  %53 = zext i8 %52 to i32
  %54 = shl nuw nsw i32 %53, 24
  %55 = getelementptr i32, ptr %33, i32 2
  store i32 %54, ptr %49, align 4
  %56 = load ptr, ptr %37, align 4
  %57 = getelementptr inbounds %struct.file_lock, ptr %56, i32 0, i32 12
  %58 = load i64, ptr %57, align 8
  %59 = tail call i64 @llvm.bswap.i64(i64 %58) #12
  store i64 %59, ptr %55, align 1
  %60 = getelementptr i32, ptr %33, i32 4
  %61 = load ptr, ptr %37, align 4
  %62 = getelementptr inbounds %struct.file_lock, ptr %61, i32 0, i32 13
  %63 = load i64, ptr %62, align 8
  %64 = icmp eq i64 %63, 9223372036854775807
  br i1 %64, label %70, label %65

65:                                               ; preds = %36
  %66 = getelementptr inbounds %struct.file_lock, ptr %61, i32 0, i32 12
  %67 = load i64, ptr %66, align 8
  %68 = add nsw i64 %63, 1
  %69 = sub i64 %68, %67
  br label %70

70:                                               ; preds = %65, %36
  %71 = phi i64 [ %69, %65 ], [ -1, %36 ]
  %72 = tail call i64 @llvm.bswap.i64(i64 %71) #12
  store i64 %72, ptr %60, align 1
  %73 = getelementptr i32, ptr %33, i32 6
  %74 = load i8, ptr %39, align 8
  %75 = lshr i8 %74, 3
  %76 = and i8 %75, 1
  %77 = zext i8 %76 to i32
  %78 = shl nuw nsw i32 %77, 24
  store i32 %78, ptr %73, align 4
  %79 = load i8, ptr %39, align 8
  %80 = and i8 %79, 8
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %113, label %82

82:                                               ; preds = %70
  %83 = getelementptr inbounds %struct.nfs_lock_args, ptr %2, i32 0, i32 5
  %84 = load ptr, ptr %83, align 8
  tail call fastcc void @encode_nfs4_seqid(ptr noundef %1, ptr noundef %84) #12
  %85 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #12
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87, !prof !8

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.nfs_lock_args, ptr %2, i32 0, i32 6
  %89 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %85, ptr noundef %88, i32 noundef 16) #12
  br label %93

90:                                               ; preds = %82
  %91 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %91, label %93, label %92, !prof !9

92:                                               ; preds = %90
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %93

93:                                               ; preds = %92, %90, %87
  %94 = getelementptr inbounds %struct.nfs_lock_args, ptr %2, i32 0, i32 3
  %95 = load ptr, ptr %94, align 8
  tail call fastcc void @encode_nfs4_seqid(ptr noundef %1, ptr noundef %95) #12
  %96 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 32) #12
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %99, !prof !8

98:                                               ; preds = %93
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.nfs_lock_args, ptr %2, i32 0, i32 7
  %101 = load i64, ptr %100, align 8
  %102 = tail call i64 @llvm.bswap.i64(i64 %101) #12
  store i64 %102, ptr %96, align 1
  %103 = getelementptr i32, ptr %96, i32 2
  %104 = getelementptr i32, ptr %96, i32 3
  store i32 335544320, ptr %103, align 4
  %105 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef %104, ptr noundef nonnull @.str.75, i32 noundef 8) #12
  %106 = getelementptr inbounds %struct.nfs_lock_args, ptr %2, i32 0, i32 7, i32 2
  %107 = load i32, ptr %106, align 8
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #12
  %109 = getelementptr i32, ptr %105, i32 1
  store i32 %108, ptr %105, align 4
  %110 = getelementptr inbounds %struct.nfs_lock_args, ptr %2, i32 0, i32 7, i32 1
  %111 = load i64, ptr %110, align 8
  %112 = tail call i64 @llvm.bswap.i64(i64 %111) #12
  store i64 %112, ptr %109, align 1
  br label %125

113:                                              ; preds = %70
  %114 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #12
  %115 = icmp eq ptr %114, null
  br i1 %115, label %119, label %116, !prof !8

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.nfs_lock_args, ptr %2, i32 0, i32 4
  %118 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %114, ptr noundef %117, i32 noundef 16) #12
  br label %122

119:                                              ; preds = %113
  %120 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %120, label %122, label %121, !prof !9

121:                                              ; preds = %119
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %122

122:                                              ; preds = %121, %119, %116
  %123 = getelementptr inbounds %struct.nfs_lock_args, ptr %2, i32 0, i32 3
  %124 = load ptr, ptr %123, align 8
  tail call fastcc void @encode_nfs4_seqid(ptr noundef %1, ptr noundef %124) #12
  br label %125

125:                                              ; preds = %122, %99
  %126 = icmp ugt i32 %29, 8
  %127 = load i1, ptr @encode_nops.__already_done, align 1
  %128 = xor i1 %127, true
  %129 = select i1 %126, i1 %128, i1 false
  br i1 %129, label %130, label %131, !prof !8

130:                                              ; preds = %125
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %131

131:                                              ; preds = %130, %125
  %132 = tail call i32 @llvm.bswap.i32(i32 %29) #12
  %133 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %134 = load ptr, ptr %133, align 4
  store i32 %132, ptr %134, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_lock(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %40

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %40

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 12) #12
  switch i32 %14, label %31 [
    i32 -5, label %40
    i32 0, label %15
    i32 -10010, label %21
  ]

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.nfs_lock_res, ptr %2, i32 0, i32 1, i32 1
  store i32 3, ptr %16, align 4
  %17 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 16) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %40, label %19, !prof !8

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.nfs_lock_res, ptr %2, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %20, ptr noundef nonnull align 4 dereferenceable(16) %17, i32 16, i1 false) #12
  br label %31

21:                                               ; preds = %13
  %22 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 32) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24, !prof !8

24:                                               ; preds = %21
  %25 = getelementptr i32, ptr %22, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #12
  %28 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %27) #12
  %29 = icmp eq ptr %28, null
  %30 = select i1 %29, i32 -5, i32 -10010, !prof !9
  br label %31

31:                                               ; preds = %24, %21, %19, %13
  %32 = phi i32 [ %14, %13 ], [ 0, %19 ], [ -5, %21 ], [ %30, %24 ]
  %33 = getelementptr inbounds %struct.nfs_lock_res, ptr %2, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  tail call void @nfs_increment_open_seqid(i32 noundef %32, ptr noundef nonnull %34) #12
  br label %37

37:                                               ; preds = %36, %31
  %38 = getelementptr inbounds %struct.nfs_lock_res, ptr %2, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  tail call void @nfs_increment_lock_seqid(i32 noundef %32, ptr noundef %39) #12
  br label %40

40:                                               ; preds = %37, %15, %13, %10, %7, %3
  %41 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %14, %13 ], [ %32, %37 ], [ -5, %15 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_lockt(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs_lockt_args, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %16
  store i32 218103808, ptr %20, align 4
  br label %26

23:                                               ; preds = %16
  %24 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %24, label %26, label %25, !prof !9

25:                                               ; preds = %23
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %26

26:                                               ; preds = %25, %23, %22
  %27 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  %30 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 20) #12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33, !prof !8

32:                                               ; preds = %26
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.nfs_lockt_args, ptr %2, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.file_lock, ptr %35, i32 0, i32 7
  %37 = load i8, ptr %36, align 4
  %38 = icmp eq i8 %37, 0
  %39 = select i1 %38, i32 16777216, i32 33554432
  %40 = getelementptr i32, ptr %30, i32 1
  store i32 %39, ptr %30, align 4
  %41 = load ptr, ptr %34, align 4
  %42 = getelementptr inbounds %struct.file_lock, ptr %41, i32 0, i32 12
  %43 = load i64, ptr %42, align 8
  %44 = tail call i64 @llvm.bswap.i64(i64 %43) #12
  store i64 %44, ptr %40, align 1
  %45 = getelementptr i32, ptr %30, i32 3
  %46 = load ptr, ptr %34, align 4
  %47 = getelementptr inbounds %struct.file_lock, ptr %46, i32 0, i32 13
  %48 = load i64, ptr %47, align 8
  %49 = icmp eq i64 %48, 9223372036854775807
  br i1 %49, label %55, label %50

50:                                               ; preds = %33
  %51 = getelementptr inbounds %struct.file_lock, ptr %46, i32 0, i32 12
  %52 = load i64, ptr %51, align 8
  %53 = add nsw i64 %48, 1
  %54 = sub i64 %53, %52
  br label %55

55:                                               ; preds = %50, %33
  %56 = phi i64 [ %54, %50 ], [ -1, %33 ]
  %57 = tail call i64 @llvm.bswap.i64(i64 %56) #12
  store i64 %57, ptr %45, align 1
  %58 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 32) #12
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %61, !prof !8

60:                                               ; preds = %55
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.nfs_lockt_args, ptr %2, i32 0, i32 3
  %63 = load i64, ptr %62, align 8
  %64 = tail call i64 @llvm.bswap.i64(i64 %63) #12
  store i64 %64, ptr %58, align 1
  %65 = getelementptr i32, ptr %58, i32 2
  %66 = getelementptr i32, ptr %58, i32 3
  store i32 335544320, ptr %65, align 4
  %67 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef %66, ptr noundef nonnull @.str.75, i32 noundef 8) #12
  %68 = getelementptr inbounds %struct.nfs_lockt_args, ptr %2, i32 0, i32 3, i32 2
  %69 = load i32, ptr %68, align 8
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #12
  %71 = getelementptr i32, ptr %67, i32 1
  store i32 %70, ptr %67, align 4
  %72 = getelementptr inbounds %struct.nfs_lockt_args, ptr %2, i32 0, i32 3, i32 1
  %73 = load i64, ptr %72, align 8
  %74 = tail call i64 @llvm.bswap.i64(i64 %73) #12
  store i64 %74, ptr %71, align 1
  %75 = icmp ugt i32 %29, 8
  %76 = load i1, ptr @encode_nops.__already_done, align 1
  %77 = xor i1 %76, true
  %78 = select i1 %75, i1 %77, i1 false
  br i1 %78, label %79, label %80, !prof !8

79:                                               ; preds = %61
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %80

80:                                               ; preds = %79, %61
  %81 = tail call i32 @llvm.bswap.i32(i32 %29) #12
  %82 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  store i32 %81, ptr %83, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_lockt(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %50

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %50

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %50

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 13) #12
  %15 = icmp eq i32 %14, -10010
  br i1 %15, label %16, label %50

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.nfs_lockt_res, ptr %2, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 32) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %50, label %21, !prof !8

21:                                               ; preds = %16
  %22 = icmp eq ptr %18, null
  br i1 %22, label %43, label %23

23:                                               ; preds = %21
  %24 = getelementptr i32, ptr %19, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i32, ptr %19, i32 2
  %27 = load i64, ptr %26, align 1
  %28 = tail call i64 @llvm.bswap.i64(i64 %27) #12
  %29 = load i64, ptr %19, align 1
  %30 = tail call i64 @llvm.bswap.i64(i64 %29) #12
  %31 = getelementptr inbounds %struct.file_lock, ptr %18, i32 0, i32 12
  store i64 %30, ptr %31, align 8
  %32 = add i64 %28, -1
  %33 = add i64 %32, %30
  %34 = getelementptr inbounds %struct.file_lock, ptr %18, i32 0, i32 13
  %35 = icmp eq i64 %27, -1
  %36 = select i1 %35, i64 9223372036854775807, i64 %33
  store i64 %36, ptr %34, align 8
  %37 = getelementptr inbounds %struct.file_lock, ptr %18, i32 0, i32 7
  %38 = lshr i32 %25, 24
  %39 = trunc i32 %38 to i8
  %40 = and i8 %39, 1
  %41 = xor i8 %40, 1
  store i8 %41, ptr %37, align 4
  %42 = getelementptr inbounds %struct.file_lock, ptr %18, i32 0, i32 8
  store i32 0, ptr %42, align 8
  br label %43

43:                                               ; preds = %23, %21
  %44 = getelementptr i32, ptr %19, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #12
  %47 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %46) #12
  %48 = icmp eq ptr %47, null
  %49 = select i1 %48, i32 -5, i32 -10010, !prof !9
  br label %50

50:                                               ; preds = %43, %16, %13, %10, %7, %3
  %51 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %14, %13 ], [ -5, %16 ], [ %49, %43 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_locku(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs_locku_args, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %16
  store i32 234881024, ptr %20, align 4
  br label %26

23:                                               ; preds = %16
  %24 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %24, label %26, label %25, !prof !9

25:                                               ; preds = %23
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %26

26:                                               ; preds = %25, %23, %22
  %27 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 6
  store i32 %32, ptr %30, align 4
  %33 = getelementptr inbounds %struct.nfs_locku_args, ptr %2, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.file_lock, ptr %34, i32 0, i32 7
  %36 = load i8, ptr %35, align 4
  %37 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39, !prof !8

39:                                               ; preds = %26
  %40 = icmp eq i8 %36, 0
  %41 = select i1 %40, i32 16777216, i32 33554432
  store i32 %41, ptr %37, align 4
  br label %45

42:                                               ; preds = %26
  %43 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %43, label %45, label %44, !prof !9

44:                                               ; preds = %42
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %45

45:                                               ; preds = %44, %42, %39
  %46 = getelementptr inbounds %struct.nfs_locku_args, ptr %2, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  tail call fastcc void @encode_nfs4_seqid(ptr noundef %1, ptr noundef %47) #12
  %48 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #12
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50, !prof !8

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.nfs_locku_args, ptr %2, i32 0, i32 4
  %52 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %48, ptr noundef %51, i32 noundef 16) #12
  br label %56

53:                                               ; preds = %45
  %54 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %54, label %56, label %55, !prof !9

55:                                               ; preds = %53
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %56

56:                                               ; preds = %55, %53, %50
  %57 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #12
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %60, !prof !8

59:                                               ; preds = %56
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

60:                                               ; preds = %56
  %61 = load ptr, ptr %33, align 4
  %62 = getelementptr inbounds %struct.file_lock, ptr %61, i32 0, i32 12
  %63 = load i64, ptr %62, align 8
  %64 = tail call i64 @llvm.bswap.i64(i64 %63) #12
  store i64 %64, ptr %57, align 1
  %65 = load ptr, ptr %33, align 4
  %66 = getelementptr inbounds %struct.file_lock, ptr %65, i32 0, i32 13
  %67 = load i64, ptr %66, align 8
  %68 = icmp eq i64 %67, 9223372036854775807
  br i1 %68, label %74, label %69

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.file_lock, ptr %65, i32 0, i32 12
  %71 = load i64, ptr %70, align 8
  %72 = add nsw i64 %67, 1
  %73 = sub i64 %72, %71
  br label %74

74:                                               ; preds = %69, %60
  %75 = phi i64 [ %73, %69 ], [ -1, %60 ]
  %76 = getelementptr i32, ptr %57, i32 2
  %77 = tail call i64 @llvm.bswap.i64(i64 %75) #12
  store i64 %77, ptr %76, align 1
  %78 = icmp ugt i32 %29, 8
  %79 = load i1, ptr @encode_nops.__already_done, align 1
  %80 = xor i1 %79, true
  %81 = select i1 %78, i1 %80, i1 false
  br i1 %81, label %82, label %83, !prof !8

82:                                               ; preds = %74
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %83

83:                                               ; preds = %82, %74
  %84 = tail call i32 @llvm.bswap.i32(i32 %29) #12
  %85 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %86 = load ptr, ptr %85, align 4
  store i32 %84, ptr %86, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_locku(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 14) #12
  %15 = icmp eq i32 %14, -5
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.nfs_locku_res, ptr %2, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  tail call void @nfs_increment_lock_seqid(i32 noundef %14, ptr noundef %18) #12
  %19 = icmp eq i32 %14, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.nfs_locku_res, ptr %2, i32 0, i32 1, i32 1
  store i32 3, ptr %21, align 4
  %22 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 16) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24, !prof !8

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.nfs_locku_res, ptr %2, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %25, ptr noundef nonnull align 4 dereferenceable(16) %22, i32 16, i1 false) #12
  br label %26

26:                                               ; preds = %24, %20, %16, %13, %10, %7, %3
  %27 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %14, %16 ], [ -5, %13 ], [ 0, %24 ], [ -5, %20 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_access(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs4_accessargs, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = getelementptr inbounds %struct.nfs4_accessargs, ptr %2, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24, !prof !8

24:                                               ; preds = %16
  store i32 50331648, ptr %22, align 4
  br label %28

25:                                               ; preds = %16
  %26 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %26, label %28, label %27, !prof !9

27:                                               ; preds = %25
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %28

28:                                               ; preds = %27, %25, %24
  %29 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 4
  %32 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 4
  store i32 %34, ptr %32, align 4
  %35 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37, !prof !8

37:                                               ; preds = %28
  %38 = tail call i32 @llvm.bswap.i32(i32 %21) #12
  store i32 %38, ptr %35, align 4
  br label %42

39:                                               ; preds = %28
  %40 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %40, label %42, label %41, !prof !9

41:                                               ; preds = %39
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %42

42:                                               ; preds = %41, %39, %37
  %43 = getelementptr inbounds %struct.nfs4_accessargs, ptr %2, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  call fastcc void @encode_getattr(ptr noundef %1, ptr noundef nonnull @nfs4_fattr_bitmap, ptr noundef nonnull %44, i32 noundef 3, ptr noundef nonnull %4) #12
  %47 = load i32, ptr %29, align 4
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi i32 [ %47, %46 ], [ %31, %42 ]
  %50 = icmp ugt i32 %49, 8
  %51 = load i1, ptr @encode_nops.__already_done, align 1
  %52 = xor i1 %51, true
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %55, !prof !8

54:                                               ; preds = %48
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %55

55:                                               ; preds = %54, %48
  %56 = tail call i32 @llvm.bswap.i32(i32 %49) #12
  %57 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  store i32 %56, ptr %58, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_access(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.nfs4_accessres, ptr %2, i32 0, i32 3
  %15 = getelementptr inbounds %struct.nfs4_accessres, ptr %2, i32 0, i32 4
  %16 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 3) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21, !prof !8

21:                                               ; preds = %18
  %22 = getelementptr i32, ptr %19, i32 1
  %23 = load i32, ptr %19, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #12
  %25 = load i32, ptr %22, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #12
  store i32 %24, ptr %14, align 4
  store i32 %26, ptr %15, align 4
  %27 = getelementptr inbounds %struct.nfs4_accessres, ptr %2, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.nfs4_accessres, ptr %2, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = tail call fastcc i32 @decode_getfattr_generic(ptr noundef %1, ptr noundef nonnull %28, ptr noundef null, ptr noundef %32) #12
  br label %34

34:                                               ; preds = %30, %21, %18, %13, %10, %7, %3
  %35 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ 0, %30 ], [ 0, %21 ], [ -5, %18 ], [ %16, %13 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_getattr(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs4_getattr_arg, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = getelementptr inbounds %struct.nfs4_getattr_arg, ptr %2, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  call fastcc void @encode_getattr(ptr noundef %1, ptr noundef nonnull @nfs4_fattr_bitmap, ptr noundef %21, i32 noundef 3, ptr noundef nonnull %4) #12
  %22 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp ugt i32 %23, 8
  %25 = load i1, ptr @encode_nops.__already_done, align 1
  %26 = xor i1 %25, true
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %29, !prof !8

28:                                               ; preds = %16
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %29

29:                                               ; preds = %28, %16
  %30 = tail call i32 @llvm.bswap.i32(i32 %23) #12
  %31 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  store i32 %30, ptr %32, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_getattr(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.nfs4_getattr_res, ptr %2, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nfs4_getattr_res, ptr %2, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call fastcc i32 @decode_getfattr_generic(ptr noundef %1, ptr noundef %15, ptr noundef null, ptr noundef %17) #12
  br label %19

19:                                               ; preds = %13, %10, %7, %3
  %20 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %18, %13 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_lookup(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs4_lookup_arg, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = getelementptr inbounds %struct.nfs4_lookup_arg, ptr %2, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  call fastcc void @encode_lookup(ptr noundef %1, ptr noundef %21, ptr noundef nonnull %4)
  %22 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24, !prof !8

24:                                               ; preds = %16
  store i32 167772160, ptr %22, align 4
  br label %28

25:                                               ; preds = %16
  %26 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %26, label %28, label %27, !prof !9

27:                                               ; preds = %25
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %28

28:                                               ; preds = %27, %25, %24
  %29 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 4
  %32 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 35
  store i32 %34, ptr %32, align 4
  %35 = getelementptr inbounds %struct.nfs4_lookup_arg, ptr %2, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  call fastcc void @encode_getattr(ptr noundef %1, ptr noundef nonnull @nfs4_fattr_bitmap, ptr noundef %36, i32 noundef 3, ptr noundef nonnull %4) #12
  %37 = load i32, ptr %29, align 4
  %38 = icmp ugt i32 %37, 8
  %39 = load i1, ptr @encode_nops.__already_done, align 1
  %40 = xor i1 %39, true
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %43, !prof !8

42:                                               ; preds = %28
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %43

43:                                               ; preds = %42, %28
  %44 = tail call i32 @llvm.bswap.i32(i32 %37) #12
  %45 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  store i32 %44, ptr %46, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_lookup(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 15) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.nfs4_lookup_res, ptr %2, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = tail call fastcc i32 @decode_getfh(ptr noundef %1, ptr noundef %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.nfs4_lookup_res, ptr %2, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nfs4_lookup_res, ptr %2, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = tail call fastcc i32 @decode_getfattr_generic(ptr noundef %1, ptr noundef %23, ptr noundef null, ptr noundef %25) #12
  br label %27

27:                                               ; preds = %21, %16, %13, %10, %7, %3
  %28 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %14, %13 ], [ %19, %16 ], [ %26, %21 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_lookup_root(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !8

20:                                               ; preds = %16
  store i32 402653184, ptr %18, align 4
  br label %24

21:                                               ; preds = %16
  %22 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %22, label %24, label %23, !prof !9

23:                                               ; preds = %21
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %24

24:                                               ; preds = %23, %21, %20
  %25 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31, !prof !8

31:                                               ; preds = %24
  store i32 167772160, ptr %29, align 4
  br label %35

32:                                               ; preds = %24
  %33 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %33, label %35, label %34, !prof !9

34:                                               ; preds = %32
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %35

35:                                               ; preds = %34, %32, %31
  %36 = add i32 %26, 2
  store i32 %36, ptr %25, align 4
  %37 = add i32 %28, 37
  store i32 %37, ptr %27, align 4
  %38 = getelementptr inbounds %struct.nfs4_lookup_root_arg, ptr %2, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  call fastcc void @encode_getattr(ptr noundef %1, ptr noundef nonnull @nfs4_fattr_bitmap, ptr noundef %39, i32 noundef 3, ptr noundef nonnull %4) #12
  %40 = load i32, ptr %25, align 4
  %41 = icmp ugt i32 %40, 8
  %42 = load i1, ptr @encode_nops.__already_done, align 1
  %43 = xor i1 %42, true
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %46, !prof !8

45:                                               ; preds = %35
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %46

46:                                               ; preds = %45, %35
  %47 = tail call i32 @llvm.bswap.i32(i32 %40) #12
  %48 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  store i32 %47, ptr %49, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_lookup_root(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 24) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.nfs4_lookup_res, ptr %2, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = tail call fastcc i32 @decode_getfh(ptr noundef %1, ptr noundef %15)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.nfs4_lookup_res, ptr %2, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nfs4_lookup_res, ptr %2, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = tail call fastcc i32 @decode_getfattr_generic(ptr noundef %1, ptr noundef %20, ptr noundef null, ptr noundef %22) #12
  br label %24

24:                                               ; preds = %18, %13, %10, %7, %3
  %25 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %23, %18 ], [ %16, %13 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_remove(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs_removeargs, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = getelementptr inbounds %struct.nfs_removeargs, ptr %2, i32 0, i32 2
  %21 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23, !prof !8

23:                                               ; preds = %16
  store i32 469762048, ptr %21, align 4
  br label %27

24:                                               ; preds = %16
  %25 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %25, label %27, label %26, !prof !9

26:                                               ; preds = %24
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %27

27:                                               ; preds = %26, %24, %23
  %28 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 1
  %31 = getelementptr inbounds %struct.anon.4, ptr %20, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nfs_removeargs, ptr %2, i32 0, i32 2, i32 1
  %34 = load ptr, ptr %33, align 8
  %35 = add i32 %32, 7
  %36 = and i32 %35, -4
  %37 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %36) #12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39, !prof !8

39:                                               ; preds = %27
  %40 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %37, ptr noundef %34, i32 noundef %32) #12
  %41 = icmp slt i32 %36, 0
  br label %42

42:                                               ; preds = %39, %27
  %43 = phi i1 [ %41, %39 ], [ true, %27 ]
  %44 = load i1, ptr @encode_string.__already_done, align 1
  %45 = xor i1 %44, true
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %48, !prof !8

47:                                               ; preds = %42
  store i1 true, ptr @encode_string.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 978, i32 noundef 9, ptr noundef null) #12
  br label %48

48:                                               ; preds = %47, %42
  %49 = icmp ugt i32 %30, 8
  %50 = load i1, ptr @encode_nops.__already_done, align 1
  %51 = xor i1 %50, true
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %53, label %54, !prof !8

53:                                               ; preds = %48
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %54

54:                                               ; preds = %53, %48
  %55 = tail call i32 @llvm.bswap.i32(i32 %30) #12
  %56 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  store i32 %55, ptr %57, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_remove(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %31

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.nfs_removeres, ptr %2, i32 0, i32 3
  %15 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 28) #12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 20) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20, !prof !8

20:                                               ; preds = %17
  %21 = getelementptr i32, ptr %18, i32 1
  %22 = load i32, ptr %18, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #12
  store i32 %23, ptr %14, align 8
  %24 = getelementptr inbounds %struct.nfs_removeres, ptr %2, i32 0, i32 3, i32 1
  %25 = load i64, ptr %21, align 1
  %26 = tail call i64 @llvm.bswap.i64(i64 %25) #12
  store i64 %26, ptr %24, align 8
  %27 = getelementptr i32, ptr %18, i32 3
  %28 = getelementptr inbounds %struct.nfs_removeres, ptr %2, i32 0, i32 3, i32 2
  %29 = load i64, ptr %27, align 1
  %30 = tail call i64 @llvm.bswap.i64(i64 %29) #12
  store i64 %30, ptr %28, align 8
  br label %31

31:                                               ; preds = %20, %17, %13, %10, %7, %3
  %32 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %15, %13 ], [ 0, %20 ], [ -5, %17 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_rename(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs_renameargs, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %16
  store i32 536870912, ptr %20, align 4
  br label %26

23:                                               ; preds = %16
  %24 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %24, label %26, label %25, !prof !9

25:                                               ; preds = %23
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %26

26:                                               ; preds = %25, %23, %22
  %27 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 2
  store i32 %32, ptr %30, align 4
  %33 = getelementptr inbounds %struct.nfs_renameargs, ptr %2, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %34, ptr noundef nonnull %4)
  %35 = getelementptr inbounds %struct.nfs_renameargs, ptr %2, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nfs_renameargs, ptr %2, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41, !prof !8

41:                                               ; preds = %26
  store i32 486539264, ptr %39, align 4
  br label %45

42:                                               ; preds = %26
  %43 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %43, label %45, label %44, !prof !9

44:                                               ; preds = %42
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %45

45:                                               ; preds = %44, %42, %41
  %46 = load i32, ptr %27, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %27, align 4
  %48 = load i32, ptr %30, align 4
  %49 = add i32 %48, 12
  store i32 %49, ptr %30, align 4
  %50 = getelementptr inbounds %struct.anon.4, ptr %36, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.qstr, ptr %36, i32 0, i32 1
  %53 = load ptr, ptr %52, align 8
  %54 = add i32 %51, 7
  %55 = and i32 %54, -4
  %56 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %55) #12
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58, !prof !8

58:                                               ; preds = %45
  %59 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %56, ptr noundef %53, i32 noundef %51) #12
  %60 = icmp slt i32 %55, 0
  br label %61

61:                                               ; preds = %58, %45
  %62 = phi i1 [ %60, %58 ], [ true, %45 ]
  %63 = load i1, ptr @encode_string.__already_done, align 1
  %64 = xor i1 %63, true
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %66, label %67, !prof !8

66:                                               ; preds = %61
  store i1 true, ptr @encode_string.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 978, i32 noundef 9, ptr noundef null) #12
  br label %67

67:                                               ; preds = %66, %61
  %68 = getelementptr inbounds %struct.anon.4, ptr %38, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.qstr, ptr %38, i32 0, i32 1
  %71 = load ptr, ptr %70, align 8
  %72 = add i32 %69, 7
  %73 = and i32 %72, -4
  %74 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %73) #12
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76, !prof !8

76:                                               ; preds = %67
  %77 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %74, ptr noundef %71, i32 noundef %69) #12
  %78 = icmp slt i32 %73, 0
  br label %79

79:                                               ; preds = %76, %67
  %80 = phi i1 [ %78, %76 ], [ true, %67 ]
  %81 = load i1, ptr @encode_string.__already_done, align 1
  %82 = xor i1 %81, true
  %83 = select i1 %80, i1 %82, i1 false
  br i1 %83, label %84, label %85, !prof !8

84:                                               ; preds = %79
  store i1 true, ptr @encode_string.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 978, i32 noundef 9, ptr noundef null) #12
  br label %85

85:                                               ; preds = %84, %79
  %86 = icmp ugt i32 %47, 8
  %87 = load i1, ptr @encode_nops.__already_done, align 1
  %88 = xor i1 %87, true
  %89 = select i1 %86, i1 %88, i1 false
  br i1 %89, label %90, label %91, !prof !8

90:                                               ; preds = %85
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %91

91:                                               ; preds = %90, %85
  %92 = tail call i32 @llvm.bswap.i32(i32 %47) #12
  %93 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %94 = load ptr, ptr %93, align 4
  store i32 %92, ptr %94, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_rename(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 32) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.nfs_renameres, ptr %2, i32 0, i32 2
  %21 = getelementptr inbounds %struct.nfs_renameres, ptr %2, i32 0, i32 4
  %22 = tail call fastcc i32 @decode_rename(ptr noundef %1, ptr noundef %20, ptr noundef %21)
  br label %23

23:                                               ; preds = %19, %16, %13, %10, %7, %3
  %24 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %14, %13 ], [ %17, %16 ], [ %22, %19 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_link(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs4_link_arg, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %16
  store i32 536870912, ptr %20, align 4
  br label %26

23:                                               ; preds = %16
  %24 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %24, label %26, label %25, !prof !9

25:                                               ; preds = %23
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %26

26:                                               ; preds = %25, %23, %22
  %27 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 2
  store i32 %32, ptr %30, align 4
  %33 = getelementptr inbounds %struct.nfs4_link_arg, ptr %2, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %34, ptr noundef nonnull %4)
  %35 = getelementptr inbounds %struct.nfs4_link_arg, ptr %2, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39, !prof !8

39:                                               ; preds = %26
  store i32 184549376, ptr %37, align 4
  br label %43

40:                                               ; preds = %26
  %41 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %41, label %43, label %42, !prof !9

42:                                               ; preds = %40
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %43

43:                                               ; preds = %42, %40, %39
  %44 = load i32, ptr %27, align 4
  %45 = load i32, ptr %30, align 4
  %46 = getelementptr inbounds %struct.anon.4, ptr %36, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.qstr, ptr %36, i32 0, i32 1
  %49 = load ptr, ptr %48, align 8
  %50 = add i32 %47, 7
  %51 = and i32 %50, -4
  %52 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %51) #12
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54, !prof !8

54:                                               ; preds = %43
  %55 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %52, ptr noundef %49, i32 noundef %47) #12
  %56 = icmp slt i32 %51, 0
  br label %57

57:                                               ; preds = %54, %43
  %58 = phi i1 [ %56, %54 ], [ true, %43 ]
  %59 = load i1, ptr @encode_string.__already_done, align 1
  %60 = xor i1 %59, true
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %62, label %63, !prof !8

62:                                               ; preds = %57
  store i1 true, ptr @encode_string.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 978, i32 noundef 9, ptr noundef null) #12
  br label %63

63:                                               ; preds = %62, %57
  %64 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66, !prof !8

66:                                               ; preds = %63
  store i32 520093696, ptr %64, align 4
  br label %70

67:                                               ; preds = %63
  %68 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %68, label %70, label %69, !prof !9

69:                                               ; preds = %67
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %70

70:                                               ; preds = %69, %67, %66
  %71 = add i32 %44, 2
  store i32 %71, ptr %27, align 4
  %72 = add i32 %45, 9
  store i32 %72, ptr %30, align 4
  %73 = getelementptr inbounds %struct.nfs4_link_arg, ptr %2, i32 0, i32 4
  %74 = load ptr, ptr %73, align 4
  call fastcc void @encode_getattr(ptr noundef %1, ptr noundef nonnull @nfs4_fattr_bitmap, ptr noundef %74, i32 noundef 3, ptr noundef nonnull %4) #12
  %75 = load i32, ptr %27, align 4
  %76 = icmp ugt i32 %75, 8
  %77 = load i1, ptr @encode_nops.__already_done, align 1
  %78 = xor i1 %77, true
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %80, label %81, !prof !8

80:                                               ; preds = %70
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %81

81:                                               ; preds = %80, %70
  %82 = tail call i32 @llvm.bswap.i32(i32 %75) #12
  %83 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %84 = load ptr, ptr %83, align 4
  store i32 %82, ptr %84, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_link(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 32) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.nfs4_link_res, ptr %2, i32 0, i32 3
  %21 = tail call fastcc i32 @decode_link(ptr noundef %1, ptr noundef %20)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 31) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.nfs4_link_res, ptr %2, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nfs4_link_res, ptr %2, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call fastcc i32 @decode_getfattr_generic(ptr noundef %1, ptr noundef %28, ptr noundef null, ptr noundef %30) #12
  br label %32

32:                                               ; preds = %26, %23, %19, %16, %13, %10, %7, %3
  %33 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %14, %13 ], [ %17, %16 ], [ %21, %19 ], [ %24, %23 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_symlink(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void @nfs4_xdr_enc_create(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_symlink(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call i32 @nfs4_xdr_dec_create(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_create(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs4_create_arg, ptr %2, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %16
  store i32 100663296, ptr %20, align 4
  br label %26

23:                                               ; preds = %16
  %24 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %24, label %26, label %25, !prof !9

25:                                               ; preds = %23
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %26

26:                                               ; preds = %25, %23, %22
  %27 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 11
  store i32 %32, ptr %30, align 4
  %33 = getelementptr inbounds %struct.nfs4_create_arg, ptr %2, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37, !prof !8

37:                                               ; preds = %26
  %38 = tail call i32 @llvm.bswap.i32(i32 %34) #12
  store i32 %38, ptr %35, align 4
  br label %42

39:                                               ; preds = %26
  %40 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %40, label %42, label %41, !prof !9

41:                                               ; preds = %39
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %42

42:                                               ; preds = %41, %39, %37
  %43 = load i32, ptr %33, align 4
  switch i32 %43, label %72 [
    i32 5, label %44
    i32 3, label %60
    i32 4, label %60
  ]

44:                                               ; preds = %42
  %45 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %48, !prof !8

47:                                               ; preds = %44
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.nfs4_create_arg, ptr %2, i32 0, i32 2
  %50 = getelementptr inbounds %struct.nfs4_create_arg, ptr %2, i32 0, i32 2, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #12
  store i32 %52, ptr %45, align 4
  %53 = load ptr, ptr %49, align 4
  %54 = load i32, ptr %50, align 4
  tail call void @xdr_write_pages(ptr noundef %1, ptr noundef %53, i32 noundef 0, i32 noundef %54) #12
  %55 = getelementptr inbounds %struct.xdr_stream, ptr %1, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.xdr_buf, ptr %56, i32 0, i32 6
  %58 = load i32, ptr %57, align 4
  %59 = or i32 %58, 2
  store i32 %59, ptr %57, align 4
  br label %72

60:                                               ; preds = %42, %42
  %61 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 8) #12
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %64, !prof !8

63:                                               ; preds = %60
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.nfs4_create_arg, ptr %2, i32 0, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #12
  %68 = getelementptr i32, ptr %61, i32 1
  store i32 %67, ptr %61, align 4
  %69 = getelementptr inbounds %struct.nfs4_create_arg, ptr %2, i32 0, i32 2, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #12
  store i32 %71, ptr %68, align 4
  br label %72

72:                                               ; preds = %64, %48, %42
  %73 = getelementptr inbounds %struct.nfs4_create_arg, ptr %2, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.anon.4, ptr %74, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.qstr, ptr %74, i32 0, i32 1
  %78 = load ptr, ptr %77, align 8
  %79 = add i32 %76, 7
  %80 = and i32 %79, -4
  %81 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %80) #12
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83, !prof !8

83:                                               ; preds = %72
  %84 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %81, ptr noundef %78, i32 noundef %76) #12
  %85 = icmp slt i32 %80, 0
  br label %86

86:                                               ; preds = %83, %72
  %87 = phi i1 [ %85, %83 ], [ true, %72 ]
  %88 = load i1, ptr @encode_string.__already_done, align 1
  %89 = xor i1 %88, true
  %90 = select i1 %87, i1 %89, i1 false
  br i1 %90, label %91, label %92, !prof !8

91:                                               ; preds = %86
  store i1 true, ptr @encode_string.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 978, i32 noundef 9, ptr noundef null) #12
  br label %92

92:                                               ; preds = %91, %86
  %93 = getelementptr inbounds %struct.nfs4_create_arg, ptr %2, i32 0, i32 5
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.nfs4_create_arg, ptr %2, i32 0, i32 8
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.nfs4_create_arg, ptr %2, i32 0, i32 9
  %98 = getelementptr inbounds %struct.nfs4_create_arg, ptr %2, i32 0, i32 4
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.nfs_server, ptr %99, i32 0, i32 38
  tail call fastcc void @encode_attrs(ptr noundef %1, ptr noundef %94, ptr noundef %96, ptr noundef %97, ptr noundef %99, ptr noundef %100) #12
  %101 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %102 = icmp eq ptr %101, null
  br i1 %102, label %104, label %103, !prof !8

103:                                              ; preds = %92
  store i32 167772160, ptr %101, align 4
  br label %107

104:                                              ; preds = %92
  %105 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %105, label %107, label %106, !prof !9

106:                                              ; preds = %104
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %107

107:                                              ; preds = %106, %104, %103
  %108 = add i32 %28, 2
  store i32 %108, ptr %27, align 4
  %109 = add i32 %31, 46
  store i32 %109, ptr %30, align 4
  %110 = getelementptr inbounds %struct.nfs4_create_arg, ptr %2, i32 0, i32 7
  %111 = load ptr, ptr %110, align 4
  call fastcc void @encode_getattr(ptr noundef %1, ptr noundef nonnull @nfs4_fattr_bitmap, ptr noundef %111, i32 noundef 3, ptr noundef nonnull %4) #12
  %112 = load i32, ptr %27, align 4
  %113 = icmp ugt i32 %112, 8
  %114 = load i1, ptr @encode_nops.__already_done, align 1
  %115 = xor i1 %114, true
  %116 = select i1 %113, i1 %115, i1 false
  br i1 %116, label %117, label %118, !prof !8

117:                                              ; preds = %107
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %118

118:                                              ; preds = %117, %107
  %119 = tail call i32 @llvm.bswap.i32(i32 %112) #12
  %120 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %121 = load ptr, ptr %120, align 4
  store i32 %119, ptr %121, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_create(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %50

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %50

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %50

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.nfs4_create_res, ptr %2, i32 0, i32 4
  %15 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 6) #12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %13
  %18 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 20) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %50, label %20, !prof !8

20:                                               ; preds = %17
  %21 = getelementptr i32, ptr %18, i32 1
  %22 = load i32, ptr %18, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #12
  store i32 %23, ptr %14, align 8
  %24 = getelementptr inbounds %struct.nfs4_create_res, ptr %2, i32 0, i32 4, i32 1
  %25 = load i64, ptr %21, align 1
  %26 = tail call i64 @llvm.bswap.i64(i64 %25) #12
  store i64 %26, ptr %24, align 8
  %27 = getelementptr i32, ptr %18, i32 3
  %28 = getelementptr inbounds %struct.nfs4_create_res, ptr %2, i32 0, i32 4, i32 2
  %29 = load i64, ptr %27, align 1
  %30 = tail call i64 @llvm.bswap.i64(i64 %29) #12
  store i64 %30, ptr %28, align 8
  %31 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %32 = icmp eq ptr %31, null
  br i1 %32, label %50, label %33, !prof !8

33:                                               ; preds = %20
  %34 = load i32, ptr %31, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #12
  %36 = shl i32 %35, 2
  %37 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %36) #12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.nfs4_create_res, ptr %2, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = tail call fastcc i32 @decode_getfh(ptr noundef %1, ptr noundef %41)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.nfs4_create_res, ptr %2, i32 0, i32 3
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.nfs4_create_res, ptr %2, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8
  %49 = tail call fastcc i32 @decode_getfattr_generic(ptr noundef %1, ptr noundef %46, ptr noundef null, ptr noundef %48) #12
  br label %50

50:                                               ; preds = %44, %39, %33, %20, %17, %13, %10, %7, %3
  %51 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %42, %39 ], [ 0, %44 ], [ -5, %17 ], [ -5, %20 ], [ %15, %13 ], [ -5, %33 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_pathconf(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs4_pathconf_arg, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = getelementptr inbounds %struct.nfs4_pathconf_arg, ptr %2, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  call fastcc void @encode_getattr(ptr noundef %1, ptr noundef nonnull @nfs4_pathconf_bitmap, ptr noundef %21, i32 noundef 3, ptr noundef nonnull %4)
  %22 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp ugt i32 %23, 8
  %25 = load i1, ptr @encode_nops.__already_done, align 1
  %26 = xor i1 %25, true
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %29, !prof !8

28:                                               ; preds = %16
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %29

29:                                               ; preds = %28, %16
  %30 = tail call i32 @llvm.bswap.i32(i32 %23) #12
  %31 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  store i32 %30, ptr %32, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_pathconf(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca [3 x i32], align 4
  %5 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 28, i1 false), !annotation !14
  %6 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %5)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %99

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %99

11:                                               ; preds = %8
  %12 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %99

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.nfs4_pathconf_res, ptr %2, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false) #12
  %17 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 9) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %97

19:                                               ; preds = %14
  %20 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %97, label %22, !prof !8

22:                                               ; preds = %19
  %23 = load i32, ptr %20, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #12
  %25 = shl i32 %24, 2
  %26 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %25) #12
  %27 = icmp eq ptr %26, null
  br i1 %27, label %97, label %28, !prof !8

28:                                               ; preds = %22
  %29 = icmp ugt i32 %24, 3
  br i1 %29, label %37, label %30

30:                                               ; preds = %28
  %31 = icmp eq i32 %23, 50331648
  br i1 %31, label %37, label %32

32:                                               ; preds = %30
  %33 = getelementptr i32, ptr %4, i32 %24
  %34 = mul nsw i32 %24, -4
  %35 = add nsw i32 %34, 12
  call void @llvm.memset.p0.i32(ptr align 4 %33, i8 0, i32 %35, i1 false) #12
  %36 = icmp eq i32 %23, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %32, %30, %28
  %38 = phi i32 [ %24, %32 ], [ 3, %30 ], [ -90, %28 ]
  %39 = phi i32 [ %24, %32 ], [ 3, %30 ], [ 3, %28 ]
  br label %40

40:                                               ; preds = %40, %37
  %41 = phi ptr [ %46, %40 ], [ %26, %37 ]
  %42 = phi i32 [ %48, %40 ], [ %39, %37 ]
  %43 = phi ptr [ %47, %40 ], [ %4, %37 ]
  %44 = load i32, ptr %41, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #12
  store i32 %45, ptr %43, align 4
  %46 = getelementptr i32, ptr %41, i32 1
  %47 = getelementptr i32, ptr %43, i32 1
  %48 = add i32 %42, -1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %40

50:                                               ; preds = %40
  %51 = icmp sgt i32 %38, -1
  br i1 %51, label %54, label %52, !prof !9

52:                                               ; preds = %50
  %53 = icmp eq i32 %38, -90
  br i1 %53, label %54, label %97

54:                                               ; preds = %52, %50, %32
  %55 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %56 = icmp eq ptr %55, null
  br i1 %56, label %97, label %57, !prof !8

57:                                               ; preds = %54
  %58 = load i32, ptr %55, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #12
  %60 = tail call i32 @xdr_stream_pos(ptr noundef %1) #12
  %61 = getelementptr inbounds %struct.nfs_pathconf, ptr %16, i32 0, i32 1
  store i32 1, ptr %61, align 4
  %62 = load i32, ptr %4, align 4
  %63 = and i32 %62, 268435455
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %97, !prof !9

65:                                               ; preds = %57
  %66 = and i32 %62, 268435456
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %68, !prof !8

68:                                               ; preds = %65
  %69 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %70 = icmp eq ptr %69, null
  br i1 %70, label %97, label %71, !prof !8

71:                                               ; preds = %68
  %72 = load i32, ptr %69, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #12
  store i32 %73, ptr %61, align 4
  %74 = and i32 %62, -268435457
  br label %75

75:                                               ; preds = %71, %65
  %76 = phi i32 [ %62, %65 ], [ %74, %71 ]
  %77 = getelementptr inbounds %struct.nfs_pathconf, ptr %16, i32 0, i32 2
  store i32 1024, ptr %77, align 4
  %78 = and i32 %76, 536870911
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %97, !prof !9

80:                                               ; preds = %75
  %81 = and i32 %76, 536870912
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %90, label %83, !prof !8

83:                                               ; preds = %80
  %84 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %85 = icmp eq ptr %84, null
  br i1 %85, label %97, label %86, !prof !8

86:                                               ; preds = %83
  %87 = load i32, ptr %84, align 4
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #12
  store i32 %88, ptr %77, align 4
  %89 = and i32 %76, -536870913
  store i32 %89, ptr %4, align 4
  br label %90

90:                                               ; preds = %86, %80
  %91 = add i32 %59, 3
  %92 = tail call i32 @xdr_stream_pos(ptr noundef %1) #12
  %93 = sub i32 %92, %60
  %94 = xor i32 %93, %91
  %95 = icmp ult i32 %94, 4
  %96 = select i1 %95, i32 0, i32 -5, !prof !9
  br label %97

97:                                               ; preds = %90, %83, %75, %68, %57, %54, %52, %22, %19, %14
  %98 = phi i32 [ %17, %14 ], [ %96, %90 ], [ -5, %54 ], [ -5, %57 ], [ -5, %68 ], [ -5, %75 ], [ -5, %83 ], [ -5, %52 ], [ -5, %19 ], [ -5, %22 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  br label %99

99:                                               ; preds = %97, %11, %8, %3
  %100 = phi i32 [ %12, %11 ], [ %98, %97 ], [ %9, %8 ], [ %6, %3 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #12
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_statfs(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs4_statfs_arg, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = getelementptr inbounds %struct.nfs4_statfs_arg, ptr %2, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  call fastcc void @encode_getattr(ptr noundef %1, ptr noundef nonnull @nfs4_statfs_bitmap, ptr noundef %21, i32 noundef 3, ptr noundef nonnull %4)
  %22 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp ugt i32 %23, 8
  %25 = load i1, ptr @encode_nops.__already_done, align 1
  %26 = xor i1 %25, true
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %29, !prof !8

28:                                               ; preds = %16
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %29

29:                                               ; preds = %28, %16
  %30 = tail call i32 @llvm.bswap.i32(i32 %23) #12
  %31 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  store i32 %30, ptr %32, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_statfs(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca [3 x i32], align 4
  %5 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 28, i1 false), !annotation !14
  %6 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %5)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %163

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %163

11:                                               ; preds = %8
  %12 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %163

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.nfs4_statfs_res, ptr %2, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false) #12
  %17 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 9) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %161

19:                                               ; preds = %14
  %20 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %161, label %22, !prof !8

22:                                               ; preds = %19
  %23 = load i32, ptr %20, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #12
  %25 = shl i32 %24, 2
  %26 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %25) #12
  %27 = icmp eq ptr %26, null
  br i1 %27, label %161, label %28, !prof !8

28:                                               ; preds = %22
  %29 = icmp ugt i32 %24, 3
  br i1 %29, label %37, label %30

30:                                               ; preds = %28
  %31 = icmp eq i32 %23, 50331648
  br i1 %31, label %37, label %32

32:                                               ; preds = %30
  %33 = getelementptr i32, ptr %4, i32 %24
  %34 = mul nsw i32 %24, -4
  %35 = add nsw i32 %34, 12
  call void @llvm.memset.p0.i32(ptr align 4 %33, i8 0, i32 %35, i1 false) #12
  %36 = icmp eq i32 %23, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %32, %30, %28
  %38 = phi i32 [ %24, %32 ], [ 3, %30 ], [ -90, %28 ]
  %39 = phi i32 [ %24, %32 ], [ 3, %30 ], [ 3, %28 ]
  br label %40

40:                                               ; preds = %40, %37
  %41 = phi ptr [ %46, %40 ], [ %26, %37 ]
  %42 = phi i32 [ %48, %40 ], [ %39, %37 ]
  %43 = phi ptr [ %47, %40 ], [ %4, %37 ]
  %44 = load i32, ptr %41, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #12
  store i32 %45, ptr %43, align 4
  %46 = getelementptr i32, ptr %41, i32 1
  %47 = getelementptr i32, ptr %43, i32 1
  %48 = add i32 %42, -1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %40

50:                                               ; preds = %40
  %51 = icmp sgt i32 %38, -1
  br i1 %51, label %54, label %52, !prof !9

52:                                               ; preds = %50
  %53 = icmp eq i32 %38, -90
  br i1 %53, label %54, label %161

54:                                               ; preds = %52, %50, %32
  %55 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %56 = icmp eq ptr %55, null
  br i1 %56, label %161, label %57, !prof !8

57:                                               ; preds = %54
  %58 = load i32, ptr %55, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #12
  %60 = tail call i32 @xdr_stream_pos(ptr noundef %1) #12
  %61 = getelementptr inbounds %struct.nfs_fsstat, ptr %16, i32 0, i32 6
  store i64 0, ptr %61, align 8
  %62 = load i32, ptr %4, align 4
  %63 = and i32 %62, 2097151
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %161, !prof !9

65:                                               ; preds = %57
  %66 = and i32 %62, 2097152
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %68, !prof !8

68:                                               ; preds = %65
  %69 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #12
  %70 = icmp eq ptr %69, null
  br i1 %70, label %161, label %71, !prof !8

71:                                               ; preds = %68
  %72 = load i64, ptr %69, align 1
  %73 = tail call i64 @llvm.bswap.i64(i64 %72) #12
  store i64 %73, ptr %61, align 8
  %74 = and i32 %62, -2097153
  br label %75

75:                                               ; preds = %71, %65
  %76 = phi i32 [ %74, %71 ], [ %62, %65 ]
  %77 = getelementptr inbounds %struct.nfs_fsstat, ptr %16, i32 0, i32 5
  store i64 0, ptr %77, align 8
  %78 = and i32 %76, 4194303
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %161, !prof !9

80:                                               ; preds = %75
  %81 = and i32 %76, 4194304
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %90, label %83, !prof !8

83:                                               ; preds = %80
  %84 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #12
  %85 = icmp eq ptr %84, null
  br i1 %85, label %161, label %86, !prof !8

86:                                               ; preds = %83
  %87 = load i64, ptr %84, align 1
  %88 = tail call i64 @llvm.bswap.i64(i64 %87) #12
  store i64 %88, ptr %77, align 8
  %89 = and i32 %76, -4194305
  br label %90

90:                                               ; preds = %86, %80
  %91 = phi i32 [ %76, %80 ], [ %89, %86 ]
  %92 = getelementptr inbounds %struct.nfs_fsstat, ptr %16, i32 0, i32 4
  store i64 0, ptr %92, align 8
  %93 = and i32 %91, 8388607
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %161, !prof !9

95:                                               ; preds = %90
  %96 = and i32 %91, 8388608
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %105, label %98, !prof !8

98:                                               ; preds = %95
  %99 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #12
  %100 = icmp eq ptr %99, null
  br i1 %100, label %161, label %101, !prof !8

101:                                              ; preds = %98
  %102 = load i64, ptr %99, align 1
  %103 = tail call i64 @llvm.bswap.i64(i64 %102) #12
  store i64 %103, ptr %92, align 8
  %104 = and i32 %91, -8388609
  store i32 %104, ptr %4, align 4
  br label %105

105:                                              ; preds = %101, %95
  %106 = phi i32 [ %104, %101 ], [ %91, %95 ]
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %161, !prof !9

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.nfs_fsstat, ptr %16, i32 0, i32 3
  store i64 0, ptr %109, align 8
  %110 = getelementptr inbounds i32, ptr %4, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = and i32 %111, 1023
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %161, !prof !9

114:                                              ; preds = %108
  %115 = and i32 %111, 1024
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %124, label %117, !prof !8

117:                                              ; preds = %114
  %118 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #12
  %119 = icmp eq ptr %118, null
  br i1 %119, label %161, label %120, !prof !8

120:                                              ; preds = %117
  %121 = load i64, ptr %118, align 1
  %122 = tail call i64 @llvm.bswap.i64(i64 %121) #12
  store i64 %122, ptr %109, align 8
  %123 = and i32 %111, -1025
  br label %124

124:                                              ; preds = %120, %114
  %125 = phi i32 [ %111, %114 ], [ %123, %120 ]
  %126 = getelementptr inbounds %struct.nfs_fsstat, ptr %16, i32 0, i32 2
  store i64 0, ptr %126, align 8
  %127 = and i32 %125, 2047
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %161, !prof !9

129:                                              ; preds = %124
  %130 = and i32 %125, 2048
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %139, label %132, !prof !8

132:                                              ; preds = %129
  %133 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #12
  %134 = icmp eq ptr %133, null
  br i1 %134, label %161, label %135, !prof !8

135:                                              ; preds = %132
  %136 = load i64, ptr %133, align 1
  %137 = tail call i64 @llvm.bswap.i64(i64 %136) #12
  store i64 %137, ptr %126, align 8
  %138 = and i32 %125, -2049
  br label %139

139:                                              ; preds = %135, %129
  %140 = phi i32 [ %125, %129 ], [ %138, %135 ]
  %141 = getelementptr inbounds %struct.nfs_fsstat, ptr %16, i32 0, i32 1
  store i64 0, ptr %141, align 8
  %142 = and i32 %140, 4095
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %161, !prof !9

144:                                              ; preds = %139
  %145 = and i32 %140, 4096
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %154, label %147, !prof !8

147:                                              ; preds = %144
  %148 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #12
  %149 = icmp eq ptr %148, null
  br i1 %149, label %161, label %150, !prof !8

150:                                              ; preds = %147
  %151 = load i64, ptr %148, align 1
  %152 = tail call i64 @llvm.bswap.i64(i64 %151) #12
  store i64 %152, ptr %141, align 8
  %153 = and i32 %140, -4097
  store i32 %153, ptr %110, align 4
  br label %154

154:                                              ; preds = %150, %144
  %155 = add i32 %59, 3
  %156 = tail call i32 @xdr_stream_pos(ptr noundef %1) #12
  %157 = sub i32 %156, %60
  %158 = xor i32 %157, %155
  %159 = icmp ult i32 %158, 4
  %160 = select i1 %159, i32 0, i32 -5, !prof !9
  br label %161

161:                                              ; preds = %154, %147, %139, %132, %124, %117, %108, %105, %98, %90, %83, %75, %68, %57, %54, %52, %22, %19, %14
  %162 = phi i32 [ %17, %14 ], [ -5, %105 ], [ %160, %154 ], [ -5, %54 ], [ -5, %57 ], [ -5, %68 ], [ -5, %52 ], [ -5, %19 ], [ -5, %22 ], [ -5, %75 ], [ -5, %83 ], [ -5, %90 ], [ -5, %98 ], [ -5, %108 ], [ -5, %117 ], [ -5, %124 ], [ -5, %132 ], [ -5, %139 ], [ -5, %147 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  br label %163

163:                                              ; preds = %161, %11, %8, %3
  %164 = phi i32 [ %12, %11 ], [ %162, %161 ], [ %9, %8 ], [ %6, %3 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #12
  ret i32 %164
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_readlink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs4_readlink, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %16
  store i32 452984832, ptr %20, align 4
  br label %26

23:                                               ; preds = %16
  %24 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %24, label %26, label %25, !prof !9

25:                                               ; preds = %23
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %26

26:                                               ; preds = %25, %23, %22
  %27 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  %30 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nfs4_readlink, ptr %2, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.nfs4_readlink, ptr %2, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nfs4_readlink, ptr %2, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %31, 3
  tail call void @rpc_prepare_reply_pages(ptr noundef %0, ptr noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %38) #12
  %39 = icmp ugt i32 %29, 8
  %40 = load i1, ptr @encode_nops.__already_done, align 1
  %41 = xor i1 %40, true
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %44, !prof !8

43:                                               ; preds = %26
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %44

44:                                               ; preds = %43, %26
  %45 = tail call i32 @llvm.bswap.i32(i32 %29) #12
  %46 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  store i32 %45, ptr %47, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_readlink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 2
  %15 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 27) #12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20, !prof !8

20:                                               ; preds = %17
  %21 = load i32, ptr %18, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #12
  %23 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 2, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = icmp uge i32 %22, %24
  %26 = icmp eq i32 %21, 0
  %27 = or i1 %26, %25
  br i1 %27, label %32, label %28

28:                                               ; preds = %20
  %29 = tail call i32 @xdr_read_pages(ptr noundef %1, i32 noundef %22) #12
  %30 = icmp ult i32 %29, %22
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void @xdr_terminate_string(ptr noundef %14, i32 noundef %22) #12
  br label %32

32:                                               ; preds = %31, %28, %20, %17, %13, %10, %7, %3
  %33 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ 0, %31 ], [ %15, %13 ], [ -5, %17 ], [ -36, %20 ], [ -5, %28 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_readdir(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [3 x i32], align 4
  %5 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #12
  %6 = getelementptr inbounds %struct.compound_hdr, ptr %5, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %7 = load ptr, ptr %2, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.nfs4_session, ptr %9, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nfs_client, ptr %13, i32 0, i32 31
  %15 = load ptr, ptr %14, align 8
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %11, %3
  %18 = phi i32 [ %16, %11 ], [ 0, %3 ]
  store i32 %18, ptr %6, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %5)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5)
  %19 = getelementptr inbounds %struct.nfs4_readdir_arg, ptr %2, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %20, ptr noundef nonnull %5)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %21 = getelementptr inbounds %struct.nfs4_readdir_arg, ptr %2, i32 0, i32 4
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 1
  %24 = getelementptr inbounds %struct.nfs4_readdir_arg, ptr %2, i32 0, i32 8
  %25 = load i8, ptr %24, align 8, !range !15
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %17
  %28 = lshr i32 %22, 2
  br label %29

29:                                               ; preds = %27, %17
  %30 = phi i32 [ 65536, %27 ], [ 0, %17 ]
  %31 = phi i32 [ 11575866, %27 ], [ 8388608, %17 ]
  %32 = phi i32 [ 1575194, %27 ], [ 2048, %17 ]
  %33 = phi i32 [ %28, %27 ], [ %23, %17 ]
  %34 = getelementptr inbounds %struct.nfs4_readdir_arg, ptr %2, i32 0, i32 7
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i32, ptr %35, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, 3
  %39 = and i32 %38, 1048576
  %40 = xor i32 %39, 1048576
  %41 = or i32 %40, %32
  %42 = load i32, ptr %35, align 4
  %43 = and i32 %41, %42
  store i32 %43, ptr %4, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = getelementptr inbounds [3 x i32], ptr %4, i32 0, i32 1
  %47 = and i32 %37, %31
  store i32 %47, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 %45, i32 2
  %50 = getelementptr i32, ptr %35, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds [3 x i32], ptr %4, i32 0, i32 2
  %53 = and i32 %51, %30
  store i32 %53, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i32 %49, i32 3
  %56 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58, !prof !8

58:                                               ; preds = %29
  store i32 436207616, ptr %56, align 4
  br label %62

59:                                               ; preds = %29
  %60 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %60, label %62, label %61, !prof !9

61:                                               ; preds = %59
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %62

62:                                               ; preds = %61, %59, %58
  %63 = getelementptr inbounds %struct.compound_hdr, ptr %5, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %63, align 4
  %66 = getelementptr inbounds %struct.compound_hdr, ptr %5, i32 0, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %67, 5
  store i32 %68, ptr %66, align 4
  %69 = getelementptr inbounds %struct.nfs4_readdir_arg, ptr %2, i32 0, i32 2
  %70 = load i64, ptr %69, align 8
  %71 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 8) #12
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73, !prof !8

73:                                               ; preds = %62
  %74 = tail call i64 @llvm.bswap.i64(i64 %70) #12
  store i64 %74, ptr %71, align 1
  br label %78

75:                                               ; preds = %62
  %76 = load i1, ptr @encode_uint64.__already_done, align 1
  br i1 %76, label %78, label %77, !prof !9

77:                                               ; preds = %75
  store i1 true, ptr @encode_uint64.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 988, i32 noundef 9, ptr noundef null) #12
  br label %78

78:                                               ; preds = %77, %75, %73
  %79 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 8) #12
  %80 = icmp eq ptr %79, null
  br i1 %80, label %84, label %81, !prof !8

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.nfs4_readdir_arg, ptr %2, i32 0, i32 3
  %83 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %79, ptr noundef %82, i32 noundef 8) #12
  br label %87

84:                                               ; preds = %78
  %85 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %85, label %87, label %86, !prof !9

86:                                               ; preds = %84
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %87

87:                                               ; preds = %86, %84, %81
  %88 = shl nuw nsw i32 %55, 2
  %89 = add nuw nsw i32 %88, 12
  %90 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %89) #12
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %93, !prof !8

92:                                               ; preds = %87
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

93:                                               ; preds = %87
  %94 = tail call i32 @llvm.bswap.i32(i32 %33) #12
  %95 = getelementptr i32, ptr %90, i32 1
  store i32 %94, ptr %90, align 4
  %96 = load i32, ptr %21, align 8
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #12
  %98 = getelementptr i32, ptr %90, i32 2
  store i32 %97, ptr %95, align 4
  %99 = shl nuw nsw i32 %55, 24
  store i32 %99, ptr %98, align 4
  %100 = icmp eq i32 %55, 0
  br i1 %100, label %118, label %101

101:                                              ; preds = %93
  %102 = getelementptr i32, ptr %90, i32 3
  %103 = tail call i32 @llvm.bswap.i32(i32 %43) #12
  store i32 %103, ptr %102, align 4
  %104 = icmp eq i32 %55, 1
  br i1 %104, label %118, label %105

105:                                              ; preds = %101
  %106 = getelementptr i32, ptr %90, i32 4
  %107 = tail call i32 @llvm.bswap.i32(i32 %47) #12
  store i32 %107, ptr %106, align 4
  %108 = icmp eq i32 %55, 2
  br i1 %108, label %118, label %109

109:                                              ; preds = %109, %105
  %110 = phi i32 [ %116, %109 ], [ 2, %105 ]
  %111 = phi ptr [ %114, %109 ], [ %106, %105 ]
  %112 = getelementptr [3 x i32], ptr %4, i32 0, i32 %110
  %113 = load i32, ptr %112, align 4
  %114 = getelementptr i32, ptr %111, i32 1
  %115 = tail call i32 @llvm.bswap.i32(i32 %113) #12
  store i32 %115, ptr %114, align 4
  %116 = add nuw nsw i32 %110, 1
  %117 = icmp eq i32 %116, %55
  br i1 %117, label %118, label %109

118:                                              ; preds = %109, %105, %101, %93
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  %119 = getelementptr inbounds %struct.nfs4_readdir_arg, ptr %2, i32 0, i32 5
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.nfs4_readdir_arg, ptr %2, i32 0, i32 6
  %122 = load i32, ptr %121, align 8
  %123 = load i32, ptr %21, align 8
  %124 = add i32 %67, 4
  tail call void @rpc_prepare_reply_pages(ptr noundef %0, ptr noundef %120, i32 noundef %122, i32 noundef %123, i32 noundef %124) #12
  %125 = icmp ugt i32 %65, 8
  %126 = load i1, ptr @encode_nops.__already_done, align 1
  %127 = xor i1 %126, true
  %128 = select i1 %125, i1 %127, i1 false
  br i1 %128, label %129, label %130, !prof !8

129:                                              ; preds = %118
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %130

130:                                              ; preds = %129, %118
  %131 = tail call i32 @llvm.bswap.i32(i32 %65) #12
  %132 = getelementptr inbounds %struct.compound_hdr, ptr %5, i32 0, i32 2
  %133 = load ptr, ptr %132, align 4
  store i32 %131, ptr %133, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_readdir(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 26) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19, !prof !8

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.nfs4_readdir_res, ptr %2, i32 0, i32 1
  %21 = load i64, ptr %17, align 4
  store i64 %21, ptr %20, align 1
  %22 = getelementptr inbounds %struct.xdr_stream, ptr %1, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.xdr_buf, ptr %23, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 @xdr_read_pages(ptr noundef %1, i32 noundef %25) #12
  br label %27

27:                                               ; preds = %19, %16, %13, %10, %7, %3
  %28 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %26, %19 ], [ -5, %16 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_server_caps(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  %5 = getelementptr inbounds %struct.nfs4_server_caps_arg, ptr %2, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %7 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %8 = load ptr, ptr %2, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.nfs4_session, ptr %10, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nfs_client, ptr %14, i32 0, i32 31
  %16 = load ptr, ptr %15, align 8
  %17 = load i32, ptr %16, align 4
  br label %18

18:                                               ; preds = %12, %3
  %19 = phi i32 [ %17, %12 ], [ 0, %3 ]
  store i32 %19, ptr %7, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %20 = getelementptr inbounds %struct.nfs4_server_caps_arg, ptr %2, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %21, ptr noundef nonnull %4)
  call fastcc void @encode_getattr(ptr noundef %1, ptr noundef %6, ptr noundef null, i32 noundef 3, ptr noundef nonnull %4)
  %22 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp ugt i32 %23, 8
  %25 = load i1, ptr @encode_nops.__already_done, align 1
  %26 = xor i1 %25, true
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %29, !prof !8

28:                                               ; preds = %18
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %29

29:                                               ; preds = %28, %18
  %30 = tail call i32 @llvm.bswap.i32(i32 %23) #12
  %31 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  store i32 %30, ptr %32, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_server_caps(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [3 x i32], align 4
  %5 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 28, i1 false), !annotation !14
  %6 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %5)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %140

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %140

11:                                               ; preds = %8
  %12 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %140

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false) #12
  %15 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 9) #12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %138

17:                                               ; preds = %14
  %18 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %138, label %20, !prof !8

20:                                               ; preds = %17
  %21 = load i32, ptr %18, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #12
  %23 = shl i32 %22, 2
  %24 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %23) #12
  %25 = icmp eq ptr %24, null
  br i1 %25, label %138, label %26, !prof !8

26:                                               ; preds = %20
  %27 = icmp ugt i32 %22, 3
  br i1 %27, label %35, label %28

28:                                               ; preds = %26
  %29 = icmp eq i32 %21, 50331648
  br i1 %29, label %35, label %30

30:                                               ; preds = %28
  %31 = getelementptr i32, ptr %4, i32 %22
  %32 = mul nsw i32 %22, -4
  %33 = add nsw i32 %32, 12
  call void @llvm.memset.p0.i32(ptr align 4 %31, i8 0, i32 %33, i1 false) #12
  %34 = icmp eq i32 %21, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %30, %28, %26
  %36 = phi i32 [ %22, %30 ], [ 3, %28 ], [ -90, %26 ]
  %37 = phi i32 [ %22, %30 ], [ 3, %28 ], [ 3, %26 ]
  br label %38

38:                                               ; preds = %38, %35
  %39 = phi ptr [ %44, %38 ], [ %24, %35 ]
  %40 = phi i32 [ %46, %38 ], [ %37, %35 ]
  %41 = phi ptr [ %45, %38 ], [ %4, %35 ]
  %42 = load i32, ptr %39, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #12
  store i32 %43, ptr %41, align 4
  %44 = getelementptr i32, ptr %39, i32 1
  %45 = getelementptr i32, ptr %41, i32 1
  %46 = add i32 %40, -1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %38

48:                                               ; preds = %38
  %49 = icmp sgt i32 %36, -1
  br i1 %49, label %52, label %50, !prof !9

50:                                               ; preds = %48
  %51 = icmp eq i32 %36, -90
  br i1 %51, label %52, label %138

52:                                               ; preds = %50, %48, %30
  %53 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %54 = icmp eq ptr %53, null
  br i1 %54, label %138, label %55, !prof !8

55:                                               ; preds = %52
  %56 = load i32, ptr %53, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #12
  %58 = tail call i32 @xdr_stream_pos(ptr noundef %1) #12
  %59 = getelementptr inbounds %struct.nfs4_server_caps_res, ptr %2, i32 0, i32 1
  %60 = load i32, ptr %4, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %100, label %63, !prof !8

63:                                               ; preds = %55
  %64 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %65 = icmp eq ptr %64, null
  br i1 %65, label %138, label %66, !prof !8

66:                                               ; preds = %63
  %67 = load i32, ptr %64, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #12
  %69 = shl i32 %68, 2
  %70 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %69) #12
  %71 = icmp eq ptr %70, null
  br i1 %71, label %138, label %72, !prof !8

72:                                               ; preds = %66
  %73 = icmp ugt i32 %68, 3
  br i1 %73, label %81, label %74

74:                                               ; preds = %72
  %75 = icmp eq i32 %67, 50331648
  br i1 %75, label %81, label %76

76:                                               ; preds = %74
  %77 = getelementptr i32, ptr %59, i32 %68
  %78 = mul nsw i32 %68, -4
  %79 = add nsw i32 %78, 12
  tail call void @llvm.memset.p0.i32(ptr align 4 %77, i8 0, i32 %79, i1 false) #12
  %80 = icmp eq i32 %67, 0
  br i1 %80, label %98, label %81

81:                                               ; preds = %76, %74, %72
  %82 = phi i32 [ %68, %76 ], [ 3, %74 ], [ -90, %72 ]
  %83 = phi i32 [ %68, %76 ], [ 3, %74 ], [ 3, %72 ]
  br label %84

84:                                               ; preds = %84, %81
  %85 = phi ptr [ %90, %84 ], [ %70, %81 ]
  %86 = phi i32 [ %92, %84 ], [ %83, %81 ]
  %87 = phi ptr [ %91, %84 ], [ %59, %81 ]
  %88 = load i32, ptr %85, align 4
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #12
  store i32 %89, ptr %87, align 4
  %90 = getelementptr i32, ptr %85, i32 1
  %91 = getelementptr i32, ptr %87, i32 1
  %92 = add i32 %86, -1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %84

94:                                               ; preds = %84
  %95 = icmp sgt i32 %82, -1
  br i1 %95, label %98, label %96, !prof !9

96:                                               ; preds = %94
  %97 = icmp eq i32 %82, -90
  br i1 %97, label %98, label %138

98:                                               ; preds = %96, %94, %76
  %99 = and i32 %60, -2
  store i32 %99, ptr %4, align 4
  br label %103

100:                                              ; preds = %55
  %101 = getelementptr %struct.nfs4_server_caps_res, ptr %2, i32 0, i32 1, i32 2
  store i32 0, ptr %101, align 4
  %102 = getelementptr %struct.nfs4_server_caps_res, ptr %2, i32 0, i32 1, i32 1
  store i32 0, ptr %102, align 4
  store i32 0, ptr %59, align 4
  br label %103

103:                                              ; preds = %100, %98
  %104 = getelementptr inbounds %struct.nfs4_server_caps_res, ptr %2, i32 0, i32 6
  %105 = call fastcc i32 @decode_attr_fh_expire_type(ptr noundef %1, ptr noundef nonnull %4, ptr noundef %104) #12
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %138

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.nfs4_server_caps_res, ptr %2, i32 0, i32 4
  %109 = call fastcc i32 @decode_attr_link_support(ptr noundef %1, ptr noundef nonnull %4, ptr noundef %108) #12
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %138

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.nfs4_server_caps_res, ptr %2, i32 0, i32 5
  %113 = call fastcc i32 @decode_attr_symlink_support(ptr noundef %1, ptr noundef nonnull %4, ptr noundef %112) #12
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %138

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.nfs4_server_caps_res, ptr %2, i32 0, i32 3
  %117 = call fastcc i32 @decode_attr_aclsupport(ptr noundef %1, ptr noundef nonnull %4, ptr noundef %116) #12
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %138

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.nfs4_server_caps_res, ptr %2, i32 0, i32 7
  %121 = call fastcc i32 @decode_attr_case_insensitive(ptr noundef %1, ptr noundef nonnull %4, ptr noundef %120) #12
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.nfs4_server_caps_res, ptr %2, i32 0, i32 8
  %125 = call fastcc i32 @decode_attr_case_preserving(ptr noundef %1, ptr noundef nonnull %4, ptr noundef %124) #12
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.nfs4_server_caps_res, ptr %2, i32 0, i32 2
  %129 = call fastcc i32 @decode_attr_exclcreat_supported(ptr noundef %1, ptr noundef nonnull %4, ptr noundef %128) #12
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %127
  %132 = add i32 %57, 3
  %133 = tail call i32 @xdr_stream_pos(ptr noundef %1) #12
  %134 = sub i32 %133, %58
  %135 = xor i32 %134, %132
  %136 = icmp ult i32 %135, 4
  %137 = select i1 %136, i32 0, i32 -5, !prof !9
  br label %138

138:                                              ; preds = %131, %127, %123, %119, %115, %111, %107, %103, %96, %66, %63, %52, %50, %20, %17, %14
  %139 = phi i32 [ %15, %14 ], [ %105, %103 ], [ %109, %107 ], [ %113, %111 ], [ %117, %115 ], [ %121, %119 ], [ %125, %123 ], [ %129, %127 ], [ %137, %131 ], [ -5, %52 ], [ -5, %63 ], [ -5, %66 ], [ -5, %96 ], [ -5, %50 ], [ -5, %17 ], [ -5, %20 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  br label %140

140:                                              ; preds = %138, %11, %8, %3
  %141 = phi i32 [ %6, %3 ], [ %9, %8 ], [ %12, %11 ], [ %139, %138 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #12
  ret i32 %141
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_delegreturn(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs4_delegreturnargs, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = getelementptr inbounds %struct.nfs4_delegreturnargs, ptr %2, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  call fastcc void @encode_layoutreturn(ptr noundef %1, ptr noundef nonnull %21, ptr noundef nonnull %4)
  br label %24

24:                                               ; preds = %23, %16
  %25 = getelementptr inbounds %struct.nfs4_delegreturnargs, ptr %2, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  call fastcc void @encode_getattr(ptr noundef %1, ptr noundef nonnull @nfs4_fattr_bitmap, ptr noundef nonnull %26, i32 noundef 3, ptr noundef nonnull %4) #12
  br label %29

29:                                               ; preds = %28, %24
  %30 = getelementptr inbounds %struct.nfs4_delegreturnargs, ptr %2, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34, !prof !8

34:                                               ; preds = %29
  store i32 134217728, ptr %32, align 4
  br label %38

35:                                               ; preds = %29
  %36 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %36, label %38, label %37, !prof !9

37:                                               ; preds = %35
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %38

38:                                               ; preds = %37, %35, %34
  %39 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, 1
  %42 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #12
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44, !prof !8

44:                                               ; preds = %38
  %45 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %42, ptr noundef %31, i32 noundef 16) #12
  br label %49

46:                                               ; preds = %38
  %47 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %47, label %49, label %48, !prof !9

48:                                               ; preds = %46
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %49

49:                                               ; preds = %48, %46, %44
  %50 = icmp ugt i32 %41, 8
  %51 = load i1, ptr @encode_nops.__already_done, align 1
  %52 = xor i1 %51, true
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %55, !prof !8

54:                                               ; preds = %49
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %55

55:                                               ; preds = %54, %49
  %56 = tail call i32 @llvm.bswap.i32(i32 %41) #12
  %57 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  store i32 %56, ptr %58, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_delegreturn(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %54

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %54

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %54

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.nfs4_delegreturnres, ptr %2, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %43, label %17

17:                                               ; preds = %13
  %18 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 51) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %17
  %21 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23, !prof !8

23:                                               ; preds = %20
  %24 = load i32, ptr %21, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #12
  %26 = getelementptr inbounds %struct.nfs4_layoutreturn_res, ptr %15, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  %27 = icmp eq i32 %24, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.nfs4_layoutreturn_res, ptr %15, i32 0, i32 2, i32 1
  store i32 5, ptr %29, align 4
  %30 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 16) #12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32, !prof !8

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.nfs4_layoutreturn_res, ptr %15, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %33, ptr noundef nonnull align 4 dereferenceable(16) %30, i32 16, i1 false) #12
  br label %41

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.nfs4_layoutreturn_res, ptr %15, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %35, ptr noundef nonnull align 4 dereferenceable(16) @invalid_stateid, i32 16, i1 false) #12
  %36 = load i32, ptr getelementptr inbounds (%struct.nfs4_stateid_struct, ptr @invalid_stateid, i32 0, i32 1), align 4
  %37 = getelementptr inbounds %struct.nfs4_layoutreturn_res, ptr %15, i32 0, i32 2, i32 1
  store i32 %36, ptr %37, align 4
  br label %41

38:                                               ; preds = %28, %20, %17
  %39 = phi i32 [ -5, %28 ], [ -5, %20 ], [ %18, %17 ]
  %40 = getelementptr inbounds %struct.nfs4_delegreturnres, ptr %2, i32 0, i32 4
  store i32 %39, ptr %40, align 4
  br label %54

41:                                               ; preds = %34, %32
  %42 = getelementptr inbounds %struct.nfs4_delegreturnres, ptr %2, i32 0, i32 4
  store i32 0, ptr %42, align 4
  br label %43

43:                                               ; preds = %41, %13
  %44 = getelementptr inbounds %struct.nfs4_delegreturnres, ptr %2, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.nfs4_delegreturnres, ptr %2, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = tail call fastcc i32 @decode_getfattr_generic(ptr noundef %1, ptr noundef nonnull %45, ptr noundef null, ptr noundef %49) #12
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47, %43
  %53 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 8) #12
  br label %54

54:                                               ; preds = %52, %47, %38, %10, %7, %3
  %55 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %50, %47 ], [ %53, %52 ], [ %39, %38 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_getacl(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  %5 = alloca [1 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %6 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %7 = load ptr, ptr %2, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.nfs4_session, ptr %9, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nfs_client, ptr %13, i32 0, i32 31
  %15 = load ptr, ptr %14, align 8
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %11, %3
  %18 = phi i32 [ %16, %11 ], [ 0, %3 ]
  store i32 %18, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 4096, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %19 = getelementptr inbounds %struct.nfs_getaclargs, ptr %2, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %20, ptr noundef nonnull %4)
  %21 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 2
  call fastcc void @encode_getattr(ptr noundef %1, ptr noundef nonnull %5, ptr noundef null, i32 noundef 1, ptr noundef nonnull %4)
  %24 = getelementptr inbounds %struct.nfs_getaclargs, ptr %2, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nfs_getaclargs, ptr %2, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  tail call void @rpc_prepare_reply_pages(ptr noundef %0, ptr noundef %25, i32 noundef 0, i32 noundef %27, i32 noundef %23) #12
  %28 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp ugt i32 %29, 8
  %31 = load i1, ptr @encode_nops.__already_done, align 1
  %32 = xor i1 %31, true
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %35, !prof !8

34:                                               ; preds = %17
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %35

35:                                               ; preds = %34, %17
  %36 = tail call i32 @llvm.bswap.i32(i32 %29) #12
  %37 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  store i32 %36, ptr %38, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_getacl(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca [3 x i32], align 4
  %5 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 28, i1 false), !annotation !14
  %6 = getelementptr inbounds %struct.nfs_getaclres, ptr %2, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @page_address(ptr noundef nonnull %7) #12
  %11 = getelementptr inbounds %struct.xdr_stream, ptr %1, i32 0, i32 4
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.xdr_stream, ptr %1, i32 0, i32 4, i32 1
  store i32 4096, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %3
  %14 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %5)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %97

16:                                               ; preds = %13
  %17 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %97

19:                                               ; preds = %16
  %20 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %97

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false) #12
  %23 = getelementptr inbounds %struct.nfs_getaclres, ptr %2, i32 0, i32 1
  store i32 0, ptr %23, align 4
  %24 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 9) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %95

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.xdr_stream, ptr %1, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.xdr_buf, ptr %28, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  tail call void @xdr_enter_page(ptr noundef %1, i32 noundef %30) #12
  %31 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %32 = icmp eq ptr %31, null
  br i1 %32, label %95, label %33, !prof !8

33:                                               ; preds = %26
  %34 = load i32, ptr %31, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #12
  %36 = shl i32 %35, 2
  %37 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %36) #12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %95, label %39, !prof !8

39:                                               ; preds = %33
  %40 = icmp ugt i32 %35, 3
  br i1 %40, label %48, label %41

41:                                               ; preds = %39
  %42 = icmp eq i32 %34, 50331648
  br i1 %42, label %48, label %43

43:                                               ; preds = %41
  %44 = getelementptr i32, ptr %4, i32 %35
  %45 = mul nsw i32 %35, -4
  %46 = add nsw i32 %45, 12
  call void @llvm.memset.p0.i32(ptr align 4 %44, i8 0, i32 %46, i1 false) #12
  %47 = icmp eq i32 %34, 0
  br i1 %47, label %65, label %48

48:                                               ; preds = %43, %41, %39
  %49 = phi i32 [ %35, %43 ], [ 3, %41 ], [ -90, %39 ]
  %50 = phi i32 [ %35, %43 ], [ 3, %41 ], [ 3, %39 ]
  br label %51

51:                                               ; preds = %51, %48
  %52 = phi ptr [ %57, %51 ], [ %37, %48 ]
  %53 = phi i32 [ %59, %51 ], [ %50, %48 ]
  %54 = phi ptr [ %58, %51 ], [ %4, %48 ]
  %55 = load i32, ptr %52, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #12
  store i32 %56, ptr %54, align 4
  %57 = getelementptr i32, ptr %52, i32 1
  %58 = getelementptr i32, ptr %54, i32 1
  %59 = add i32 %53, -1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %51

61:                                               ; preds = %51
  %62 = icmp sgt i32 %49, -1
  br i1 %62, label %65, label %63, !prof !9

63:                                               ; preds = %61
  %64 = icmp eq i32 %49, -90
  br i1 %64, label %65, label %95

65:                                               ; preds = %63, %61, %43
  %66 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %67 = icmp eq ptr %66, null
  br i1 %67, label %95, label %68, !prof !8

68:                                               ; preds = %65
  %69 = load i32, ptr %66, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #12
  %71 = tail call i32 @xdr_stream_pos(ptr noundef %1) #12
  %72 = load i32, ptr %4, align 4
  %73 = and i32 %72, 4095
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %95, !prof !9

75:                                               ; preds = %68
  %76 = and i32 %72, 4096
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %95, label %78, !prof !8

78:                                               ; preds = %75
  %79 = tail call i32 @xdr_page_pos(ptr noundef %1) #12
  %80 = getelementptr inbounds %struct.nfs_getaclres, ptr %2, i32 0, i32 2
  store i32 %79, ptr %80, align 4
  store i32 %70, ptr %23, align 4
  %81 = getelementptr inbounds %struct.xdr_stream, ptr %1, i32 0, i32 6
  %82 = load i32, ptr %81, align 4
  %83 = shl i32 %82, 2
  %84 = icmp ugt i32 %70, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %78
  %86 = add i32 %79, %70
  %87 = load ptr, ptr %27, align 4
  %88 = getelementptr inbounds %struct.xdr_buf, ptr %87, i32 0, i32 5
  %89 = load i32, ptr %88, align 4
  %90 = icmp ugt i32 %86, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85, %78
  %92 = getelementptr inbounds %struct.nfs_getaclres, ptr %2, i32 0, i32 3
  %93 = load i32, ptr %92, align 4
  %94 = or i32 %93, 1
  store i32 %94, ptr %92, align 4
  br label %95

95:                                               ; preds = %91, %85, %75, %68, %65, %63, %33, %26, %22
  %96 = phi i32 [ -5, %68 ], [ %24, %22 ], [ 0, %91 ], [ 0, %85 ], [ -95, %75 ], [ -5, %65 ], [ -5, %63 ], [ -5, %26 ], [ -5, %33 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  br label %97

97:                                               ; preds = %95, %19, %16, %13
  %98 = phi i32 [ %14, %13 ], [ %17, %16 ], [ %20, %19 ], [ %96, %95 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #12
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_setacl(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs_setaclargs, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %16
  store i32 570425344, ptr %20, align 4
  br label %26

23:                                               ; preds = %16
  %24 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %24, label %26, label %25, !prof !9

25:                                               ; preds = %23
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %26

26:                                               ; preds = %25, %23, %22
  %27 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 6
  store i32 %32, ptr %30, align 4
  %33 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #12
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35, !prof !8

35:                                               ; preds = %26
  %36 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %33, ptr noundef nonnull @zero_stateid, i32 noundef 16) #12
  br label %40

37:                                               ; preds = %26
  %38 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %38, label %40, label %39, !prof !9

39:                                               ; preds = %37
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %40

40:                                               ; preds = %39, %37, %35
  %41 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 8) #12
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44, !prof !8

43:                                               ; preds = %40
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

44:                                               ; preds = %40
  %45 = getelementptr i32, ptr %41, i32 1
  store i32 16777216, ptr %41, align 4
  store i32 1048576, ptr %45, align 4
  %46 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49, !prof !8

48:                                               ; preds = %44
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.nfs_setaclargs, ptr %2, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #12
  store i32 %52, ptr %46, align 4
  %53 = getelementptr inbounds %struct.nfs_setaclargs, ptr %2, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = load i32, ptr %50, align 4
  tail call void @xdr_write_pages(ptr noundef %1, ptr noundef %54, i32 noundef 0, i32 noundef %55) #12
  %56 = icmp ugt i32 %29, 8
  %57 = load i1, ptr @encode_nops.__already_done, align 1
  %58 = xor i1 %57, true
  %59 = select i1 %56, i1 %58, i1 false
  br i1 %59, label %60, label %61, !prof !8

60:                                               ; preds = %49
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %61

61:                                               ; preds = %60, %49
  %62 = tail call i32 @llvm.bswap.i32(i32 %29) #12
  %63 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  store i32 %62, ptr %64, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_setacl(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 34) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19, !prof !8

19:                                               ; preds = %16
  %20 = load i32, ptr %17, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #12
  %22 = shl i32 %21, 2
  %23 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %22) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25, !prof !8

25:                                               ; preds = %19
  %26 = icmp sgt i32 %21, -1
  br i1 %26, label %30, label %27, !prof !9

27:                                               ; preds = %25
  %28 = icmp eq i32 %20, -1493172225
  br i1 %28, label %30, label %29

29:                                               ; preds = %27, %19, %16
  br label %30

30:                                               ; preds = %29, %27, %25, %13, %10, %7, %3
  %31 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %14, %13 ], [ -5, %29 ], [ 0, %25 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_fs_locations(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs4_fs_locations_arg, ptr %2, i32 0, i32 7
  %19 = load i8, ptr %18, align 8
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %52, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.nfs4_fs_locations_arg, ptr %2, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %24, ptr noundef nonnull %4)
  %25 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nfs4_fs_locations_arg, ptr %2, i32 0, i32 5
  %28 = load ptr, ptr %27, align 8
  call fastcc void @encode_getattr(ptr noundef %1, ptr noundef nonnull @nfs4_fs_locations_bitmap, ptr noundef %28, i32 noundef 3, ptr noundef nonnull %4) #12
  %29 = load i8, ptr %18, align 8
  %30 = and i8 %29, 2
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %61, label %32

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.nfs4_fs_locations_arg, ptr %2, i32 0, i32 6
  %34 = load i64, ptr %33, align 8
  %35 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37, !prof !8

37:                                               ; preds = %32
  store i32 503316480, ptr %35, align 4
  br label %41

38:                                               ; preds = %32
  %39 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %39, label %41, label %40, !prof !9

40:                                               ; preds = %38
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %41

41:                                               ; preds = %40, %38, %37
  %42 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 4
  %45 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 8) #12
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47, !prof !8

47:                                               ; preds = %41
  %48 = tail call i64 @llvm.bswap.i64(i64 %34) #12
  store i64 %48, ptr %45, align 1
  br label %61

49:                                               ; preds = %41
  %50 = load i1, ptr @encode_uint64.__already_done, align 1
  br i1 %50, label %61, label %51, !prof !9

51:                                               ; preds = %49
  store i1 true, ptr @encode_uint64.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 988, i32 noundef 9, ptr noundef null) #12
  br label %61

52:                                               ; preds = %16
  %53 = getelementptr inbounds %struct.nfs4_fs_locations_arg, ptr %2, i32 0, i32 1
  %54 = load ptr, ptr %53, align 8
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %54, ptr noundef nonnull %4)
  %55 = getelementptr inbounds %struct.nfs4_fs_locations_arg, ptr %2, i32 0, i32 3
  %56 = load ptr, ptr %55, align 8
  call fastcc void @encode_lookup(ptr noundef %1, ptr noundef %56, ptr noundef nonnull %4)
  %57 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.nfs4_fs_locations_arg, ptr %2, i32 0, i32 5
  %60 = load ptr, ptr %59, align 8
  call fastcc void @encode_getattr(ptr noundef %1, ptr noundef nonnull @nfs4_fs_locations_bitmap, ptr noundef %60, i32 noundef 3, ptr noundef nonnull %4) #12
  br label %61

61:                                               ; preds = %52, %51, %49, %47, %22
  %62 = phi i32 [ %26, %22 ], [ %58, %52 ], [ %26, %47 ], [ %26, %49 ], [ %26, %51 ]
  %63 = getelementptr inbounds %struct.nfs4_fs_locations_arg, ptr %2, i32 0, i32 4
  tail call void @rpc_prepare_reply_pages(ptr noundef %0, ptr noundef %63, i32 noundef 0, i32 noundef 4096, i32 noundef %62) #12
  %64 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = icmp ugt i32 %65, 8
  %67 = load i1, ptr @encode_nops.__already_done, align 1
  %68 = xor i1 %67, true
  %69 = select i1 %66, i1 %68, i1 false
  br i1 %69, label %70, label %71, !prof !8

70:                                               ; preds = %61
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %71

71:                                               ; preds = %70, %61
  %72 = tail call i32 @llvm.bswap.i32(i32 %65) #12
  %73 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  store i32 %72, ptr %74, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_fs_locations(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %40

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %40

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.nfs4_fs_locations_res, ptr %2, i32 0, i32 2
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %13
  tail call void @xdr_enter_page(ptr noundef %1, i32 noundef 4096) #12
  %19 = getelementptr inbounds %struct.nfs4_fs_locations_res, ptr %2, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nfs4_fs_locations, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = tail call fastcc i32 @decode_getfattr_generic(ptr noundef %1, ptr noundef %20, ptr noundef %20, ptr noundef %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %18
  %26 = load i8, ptr %14, align 4
  %27 = and i8 %26, 2
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %25
  %30 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 30) #12
  br label %40

31:                                               ; preds = %13
  %32 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 15) #12
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  tail call void @xdr_enter_page(ptr noundef %1, i32 noundef 4096) #12
  %35 = getelementptr inbounds %struct.nfs4_fs_locations_res, ptr %2, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nfs4_fs_locations, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8
  %39 = tail call fastcc i32 @decode_getfattr_generic(ptr noundef %1, ptr noundef %36, ptr noundef %36, ptr noundef %38)
  br label %40

40:                                               ; preds = %34, %31, %29, %25, %18, %10, %7, %3
  %41 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %23, %18 ], [ %30, %29 ], [ 0, %25 ], [ %32, %31 ], [ %39, %34 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_release_lockowner(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false)
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %5 = getelementptr inbounds %struct.nfs_release_lockowner_args, ptr %2, i32 0, i32 1
  %6 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %3
  store i32 654311424, ptr %6, align 4
  br label %12

9:                                                ; preds = %3
  %10 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %10, label %12, label %11, !prof !9

11:                                               ; preds = %9
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %12

12:                                               ; preds = %11, %9, %8
  %13 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  %16 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 32) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19, !prof !8

18:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

19:                                               ; preds = %12
  %20 = load i64, ptr %5, align 8
  %21 = tail call i64 @llvm.bswap.i64(i64 %20) #12
  store i64 %21, ptr %16, align 1
  %22 = getelementptr i32, ptr %16, i32 2
  %23 = getelementptr i32, ptr %16, i32 3
  store i32 335544320, ptr %22, align 4
  %24 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef %23, ptr noundef nonnull @.str.75, i32 noundef 8) #12
  %25 = getelementptr inbounds %struct.nfs_release_lockowner_args, ptr %2, i32 0, i32 1, i32 2
  %26 = load i32, ptr %25, align 8
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #12
  %28 = getelementptr i32, ptr %24, i32 1
  store i32 %27, ptr %24, align 4
  %29 = getelementptr inbounds %struct.nfs_release_lockowner_args, ptr %2, i32 0, i32 1, i32 1
  %30 = load i64, ptr %29, align 8
  %31 = tail call i64 @llvm.bswap.i64(i64 %30) #12
  store i64 %31, ptr %28, align 1
  %32 = icmp ugt i32 %15, 8
  %33 = load i1, ptr @encode_nops.__already_done, align 1
  %34 = xor i1 %33, true
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %37, !prof !8

36:                                               ; preds = %19
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %37

37:                                               ; preds = %36, %19
  %38 = tail call i32 @llvm.bswap.i32(i32 %15) #12
  %39 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  store i32 %38, ptr %40, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_release_lockowner(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 39) #12
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %5, %3 ], [ %8, %7 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_secinfo(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs4_secinfo_arg, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = getelementptr inbounds %struct.nfs4_secinfo_arg, ptr %2, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24, !prof !8

24:                                               ; preds = %16
  store i32 553648128, ptr %22, align 4
  br label %28

25:                                               ; preds = %16
  %26 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %26, label %28, label %27, !prof !9

27:                                               ; preds = %25
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %28

28:                                               ; preds = %27, %25, %24
  %29 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 1
  %32 = getelementptr inbounds %struct.anon.4, ptr %21, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.qstr, ptr %21, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8
  %36 = add i32 %33, 7
  %37 = and i32 %36, -4
  %38 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %37) #12
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40, !prof !8

40:                                               ; preds = %28
  %41 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %38, ptr noundef %35, i32 noundef %33) #12
  %42 = icmp slt i32 %37, 0
  br label %43

43:                                               ; preds = %40, %28
  %44 = phi i1 [ %42, %40 ], [ true, %28 ]
  %45 = load i1, ptr @encode_string.__already_done, align 1
  %46 = xor i1 %45, true
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %49, !prof !8

48:                                               ; preds = %43
  store i1 true, ptr @encode_string.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 978, i32 noundef 9, ptr noundef null) #12
  br label %49

49:                                               ; preds = %48, %43
  %50 = icmp ugt i32 %31, 8
  %51 = load i1, ptr @encode_nops.__already_done, align 1
  %52 = xor i1 %51, true
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %55, !prof !8

54:                                               ; preds = %49
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %55

55:                                               ; preds = %54, %49
  %56 = tail call i32 @llvm.bswap.i32(i32 %31) #12
  %57 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  store i32 %56, ptr %58, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_secinfo(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 33) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call fastcc i32 @decode_secinfo_common(ptr noundef %1, ptr noundef %2) #12
  br label %18

18:                                               ; preds = %16, %13, %10, %7, %3
  %19 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %17, %16 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_fsid_present(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs4_fsid_present_arg, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %16
  store i32 167772160, ptr %20, align 4
  br label %26

23:                                               ; preds = %16
  %24 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %24, label %26, label %25, !prof !9

25:                                               ; preds = %23
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %26

26:                                               ; preds = %25, %23, %22
  %27 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  %30 = getelementptr inbounds %struct.nfs4_fsid_present_arg, ptr %2, i32 0, i32 3
  %31 = load i8, ptr %30, align 8
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.nfs4_fsid_present_arg, ptr %2, i32 0, i32 2
  %36 = load i64, ptr %35, align 8
  %37 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39, !prof !8

39:                                               ; preds = %34
  store i32 503316480, ptr %37, align 4
  br label %43

40:                                               ; preds = %34
  %41 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %41, label %43, label %42, !prof !9

42:                                               ; preds = %40
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %43

43:                                               ; preds = %42, %40, %39
  %44 = add i32 %28, 2
  %45 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 8) #12
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47, !prof !8

47:                                               ; preds = %43
  %48 = tail call i64 @llvm.bswap.i64(i64 %36) #12
  store i64 %48, ptr %45, align 1
  br label %52

49:                                               ; preds = %43
  %50 = load i1, ptr @encode_uint64.__already_done, align 1
  br i1 %50, label %52, label %51, !prof !9

51:                                               ; preds = %49
  store i1 true, ptr @encode_uint64.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 988, i32 noundef 9, ptr noundef null) #12
  br label %52

52:                                               ; preds = %51, %49, %47, %26
  %53 = phi i32 [ %44, %51 ], [ %44, %49 ], [ %44, %47 ], [ %29, %26 ]
  %54 = icmp ugt i32 %53, 8
  %55 = load i1, ptr @encode_nops.__already_done, align 1
  %56 = xor i1 %55, true
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %59, !prof !8

58:                                               ; preds = %52
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %59

59:                                               ; preds = %58, %52
  %60 = tail call i32 @llvm.bswap.i32(i32 %53) #12
  %61 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  store i32 %60, ptr %62, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_fsid_present(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.nfs4_fsid_present_res, ptr %2, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call fastcc i32 @decode_getfh(ptr noundef %1, ptr noundef %15)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.nfs4_fsid_present_res, ptr %2, i32 0, i32 2
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 30) #12
  br label %25

25:                                               ; preds = %23, %18, %13, %10, %7, %3
  %26 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %16, %13 ], [ %24, %23 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_exchange_id(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [268 x i8], align 1
  %5 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #12
  %6 = getelementptr inbounds %struct.compound_hdr, ptr %5, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.nfs_client, ptr %7, i32 0, i32 31
  %9 = load ptr, ptr %8, align 8
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %6, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %5)
  call void @llvm.lifetime.start.p0(i64 268, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(268) %4, i8 0, i32 268, i1 false) #12, !annotation !14
  %11 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !8

13:                                               ; preds = %3
  store i32 704643072, ptr %11, align 4
  br label %17

14:                                               ; preds = %3
  %15 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %15, label %17, label %16, !prof !9

16:                                               ; preds = %14
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %17

17:                                               ; preds = %16, %14, %13
  %18 = getelementptr inbounds %struct.compound_hdr, ptr %5, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.compound_hdr, ptr %5, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 1049
  store i32 %23, ptr %21, align 4
  %24 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 8) #12
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26, !prof !8

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.nfs41_exchange_id_args, ptr %2, i32 0, i32 1
  %28 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %24, ptr noundef %27, i32 noundef 8) #12
  br label %32

29:                                               ; preds = %17
  %30 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %30, label %32, label %31, !prof !9

31:                                               ; preds = %29
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %32

32:                                               ; preds = %31, %29, %26
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr inbounds %struct.nfs_client, ptr %33, i32 0, i32 29
  %35 = load ptr, ptr %34, align 8
  %36 = tail call i32 @strlen(ptr noundef %35) #12
  %37 = add i32 %36, 7
  %38 = and i32 %37, -4
  %39 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %38) #12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41, !prof !8

41:                                               ; preds = %32
  %42 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %39, ptr noundef %35, i32 noundef %36) #12
  %43 = icmp slt i32 %38, 0
  br label %44

44:                                               ; preds = %41, %32
  %45 = phi i1 [ %43, %41 ], [ true, %32 ]
  %46 = load i1, ptr @encode_string.__already_done, align 1
  %47 = xor i1 %46, true
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %50, !prof !8

49:                                               ; preds = %44
  store i1 true, ptr @encode_string.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 978, i32 noundef 9, ptr noundef null) #12
  br label %50

50:                                               ; preds = %49, %44
  %51 = getelementptr inbounds %struct.nfs41_exchange_id_args, ptr %2, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55, !prof !8

55:                                               ; preds = %50
  %56 = tail call i32 @llvm.bswap.i32(i32 %52) #12
  store i32 %56, ptr %53, align 4
  br label %60

57:                                               ; preds = %50
  %58 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %58, label %60, label %59, !prof !9

59:                                               ; preds = %57
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %60

60:                                               ; preds = %59, %57, %55
  %61 = getelementptr inbounds %struct.nfs41_exchange_id_args, ptr %2, i32 0, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65, !prof !8

65:                                               ; preds = %60
  %66 = tail call i32 @llvm.bswap.i32(i32 %62) #12
  store i32 %66, ptr %63, align 4
  br label %70

67:                                               ; preds = %60
  %68 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %68, label %70, label %69, !prof !9

69:                                               ; preds = %67
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %70

70:                                               ; preds = %69, %67, %65
  %71 = load i32, ptr %61, align 4
  switch i32 %71, label %75 [
    i32 0, label %78
    i32 1, label %72
  ]

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.nfs41_exchange_id_args, ptr %2, i32 0, i32 3, i32 1
  tail call fastcc void @encode_op_map(ptr noundef %1, ptr noundef %73) #12
  %74 = getelementptr inbounds %struct.nfs41_exchange_id_args, ptr %2, i32 0, i32 3, i32 2
  tail call fastcc void @encode_op_map(ptr noundef %1, ptr noundef %74) #12
  br label %78

75:                                               ; preds = %70
  %76 = load i1, ptr @encode_exchange_id.__already_done, align 1
  br i1 %76, label %78, label %77, !prof !9

77:                                               ; preds = %75
  store i1 true, ptr @encode_exchange_id.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1815, i32 noundef 9, ptr noundef null) #12
  br label %78

78:                                               ; preds = %77, %75, %72, %70
  %79 = load i16, ptr @send_implementation_id, align 2
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %127, label %81

81:                                               ; preds = %78
  %82 = tail call ptr @llvm.thread.pointer() #12
  %83 = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 92
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.nsproxy, ptr %84, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.new_utsname, ptr %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.new_utsname, ptr %86, i32 0, i32 3
  %89 = getelementptr inbounds %struct.new_utsname, ptr %86, i32 0, i32 4
  %90 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 268, ptr noundef nonnull @.str.76, ptr noundef %86, ptr noundef %87, ptr noundef %88, ptr noundef %89) #12
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %127

92:                                               ; preds = %81
  %93 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95, !prof !8

95:                                               ; preds = %92
  store i32 16777216, ptr %93, align 4
  br label %99

96:                                               ; preds = %92
  %97 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %97, label %99, label %98, !prof !9

98:                                               ; preds = %96
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %99

99:                                               ; preds = %98, %96, %95
  %100 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #12
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102, !prof !8

102:                                              ; preds = %99
  %103 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %100, ptr noundef nonnull @.str.77, i32 noundef 10) #12
  br label %107

104:                                              ; preds = %99
  %105 = load i1, ptr @encode_string.__already_done, align 1
  br i1 %105, label %107, label %106, !prof !9

106:                                              ; preds = %104
  store i1 true, ptr @encode_string.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 978, i32 noundef 9, ptr noundef null) #12
  br label %107

107:                                              ; preds = %106, %104, %102
  %108 = add nuw i32 %90, 7
  %109 = and i32 %108, -4
  %110 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %109) #12
  %111 = icmp eq ptr %110, null
  br i1 %111, label %115, label %112, !prof !8

112:                                              ; preds = %107
  %113 = call ptr @xdr_encode_opaque(ptr noundef nonnull %110, ptr noundef nonnull %4, i32 noundef %90) #12
  %114 = icmp slt i32 %109, 0
  br label %115

115:                                              ; preds = %112, %107
  %116 = phi i1 [ %114, %112 ], [ true, %107 ]
  %117 = load i1, ptr @encode_string.__already_done, align 1
  %118 = xor i1 %117, true
  %119 = select i1 %116, i1 %118, i1 false
  br i1 %119, label %120, label %121, !prof !8

120:                                              ; preds = %115
  store i1 true, ptr @encode_string.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 978, i32 noundef 9, ptr noundef null) #12
  br label %121

121:                                              ; preds = %120, %115
  %122 = call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 12) #12
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %125, !prof !8

124:                                              ; preds = %121
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

125:                                              ; preds = %121
  store i64 0, ptr %122, align 1
  %126 = getelementptr i32, ptr %122, i32 2
  store i32 0, ptr %126, align 4
  br label %134

127:                                              ; preds = %81, %78
  %128 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %129 = icmp eq ptr %128, null
  br i1 %129, label %131, label %130, !prof !8

130:                                              ; preds = %127
  store i32 0, ptr %128, align 4
  br label %134

131:                                              ; preds = %127
  %132 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %132, label %134, label %133, !prof !9

133:                                              ; preds = %131
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %134

134:                                              ; preds = %133, %131, %130, %125
  call void @llvm.lifetime.end.p0(i64 268, ptr nonnull %4) #12
  %135 = icmp ugt i32 %20, 8
  %136 = load i1, ptr @encode_nops.__already_done, align 1
  %137 = xor i1 %136, true
  %138 = select i1 %135, i1 %137, i1 false
  br i1 %138, label %139, label %140, !prof !8

139:                                              ; preds = %134
  store i1 true, ptr @encode_nops.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %140

140:                                              ; preds = %139, %134
  %141 = call i32 @llvm.bswap.i32(i32 %20) #12
  %142 = getelementptr inbounds %struct.compound_hdr, ptr %5, i32 0, i32 2
  %143 = load ptr, ptr %142, align 4
  store i32 %141, ptr %143, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_exchange_id(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %195

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 42) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %195

10:                                               ; preds = %7
  %11 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %195, label %13, !prof !8

13:                                               ; preds = %10
  %14 = load i64, ptr %11, align 1
  %15 = tail call i64 @llvm.bswap.i64(i64 %14) #12
  store i64 %15, ptr %2, align 8
  %16 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 12) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %195, label %18, !prof !8

18:                                               ; preds = %13
  %19 = getelementptr i32, ptr %16, i32 1
  %20 = load i32, ptr %16, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #12
  %22 = getelementptr inbounds %struct.nfs41_exchange_id_res, ptr %2, i32 0, i32 1
  store i32 %21, ptr %22, align 8
  %23 = getelementptr i32, ptr %16, i32 2
  %24 = load i32, ptr %19, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #12
  %26 = getelementptr inbounds %struct.nfs41_exchange_id_res, ptr %2, i32 0, i32 2
  store i32 %25, ptr %26, align 4
  %27 = load i32, ptr %23, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #12
  %29 = getelementptr inbounds %struct.nfs41_exchange_id_res, ptr %2, i32 0, i32 6
  store i32 %28, ptr %29, align 4
  switch i32 %28, label %98 [
    i32 0, label %101
    i32 1, label %30
  ]

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.nfs41_exchange_id_res, ptr %2, i32 0, i32 6, i32 1
  %32 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %33 = icmp eq ptr %32, null
  br i1 %33, label %195, label %34, !prof !8

34:                                               ; preds = %30
  %35 = load i32, ptr %32, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #12
  %37 = shl i32 %36, 2
  %38 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %37) #12
  %39 = icmp eq ptr %38, null
  br i1 %39, label %195, label %40, !prof !8

40:                                               ; preds = %34
  %41 = icmp ugt i32 %36, 3
  br i1 %41, label %49, label %42

42:                                               ; preds = %40
  %43 = icmp eq i32 %35, 50331648
  br i1 %43, label %49, label %44

44:                                               ; preds = %42
  %45 = getelementptr i32, ptr %31, i32 %36
  %46 = mul nsw i32 %36, -4
  %47 = add nsw i32 %46, 12
  tail call void @llvm.memset.p0.i32(ptr align 4 %45, i8 0, i32 %47, i1 false) #12
  %48 = icmp eq i32 %35, 0
  br i1 %48, label %64, label %49

49:                                               ; preds = %44, %42, %40
  %50 = phi i32 [ %36, %44 ], [ 3, %42 ], [ -90, %40 ]
  %51 = phi i32 [ %36, %44 ], [ 3, %42 ], [ 3, %40 ]
  br label %52

52:                                               ; preds = %52, %49
  %53 = phi ptr [ %58, %52 ], [ %38, %49 ]
  %54 = phi i32 [ %60, %52 ], [ %51, %49 ]
  %55 = phi ptr [ %59, %52 ], [ %31, %49 ]
  %56 = load i32, ptr %53, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #12
  store i32 %57, ptr %55, align 4
  %58 = getelementptr i32, ptr %53, i32 1
  %59 = getelementptr i32, ptr %55, i32 1
  %60 = add i32 %54, -1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %52

62:                                               ; preds = %52
  %63 = icmp slt i32 %50, 0
  br i1 %63, label %195, label %64

64:                                               ; preds = %62, %44
  %65 = getelementptr inbounds %struct.nfs41_exchange_id_res, ptr %2, i32 0, i32 6, i32 2
  %66 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %67 = icmp eq ptr %66, null
  br i1 %67, label %195, label %68, !prof !8

68:                                               ; preds = %64
  %69 = load i32, ptr %66, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #12
  %71 = shl i32 %70, 2
  %72 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %71) #12
  %73 = icmp eq ptr %72, null
  br i1 %73, label %195, label %74, !prof !8

74:                                               ; preds = %68
  %75 = icmp ugt i32 %70, 3
  br i1 %75, label %83, label %76

76:                                               ; preds = %74
  %77 = icmp eq i32 %69, 50331648
  br i1 %77, label %83, label %78

78:                                               ; preds = %76
  %79 = getelementptr i32, ptr %65, i32 %70
  %80 = mul nsw i32 %70, -4
  %81 = add nsw i32 %80, 12
  tail call void @llvm.memset.p0.i32(ptr align 4 %79, i8 0, i32 %81, i1 false) #12
  %82 = icmp eq i32 %69, 0
  br i1 %82, label %101, label %83

83:                                               ; preds = %78, %76, %74
  %84 = phi i32 [ %70, %78 ], [ 3, %76 ], [ -90, %74 ]
  %85 = phi i32 [ %70, %78 ], [ 3, %76 ], [ 3, %74 ]
  br label %86

86:                                               ; preds = %86, %83
  %87 = phi ptr [ %92, %86 ], [ %72, %83 ]
  %88 = phi i32 [ %94, %86 ], [ %85, %83 ]
  %89 = phi ptr [ %93, %86 ], [ %65, %83 ]
  %90 = load i32, ptr %87, align 4
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #12
  store i32 %91, ptr %89, align 4
  %92 = getelementptr i32, ptr %87, i32 1
  %93 = getelementptr i32, ptr %89, i32 1
  %94 = add i32 %88, -1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %86

96:                                               ; preds = %86
  %97 = icmp slt i32 %84, 0
  br i1 %97, label %195, label %101

98:                                               ; preds = %18
  %99 = load i1, ptr @decode_exchange_id.__already_done, align 1
  br i1 %99, label %195, label %100, !prof !9

100:                                              ; preds = %98
  store i1 true, ptr @decode_exchange_id.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 5651, i32 noundef 9, ptr noundef null) #12
  br label %195

101:                                              ; preds = %96, %78, %18
  %102 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #12
  %103 = icmp eq ptr %102, null
  br i1 %103, label %195, label %104, !prof !8

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.nfs41_exchange_id_res, ptr %2, i32 0, i32 3
  %106 = load ptr, ptr %105, align 8
  %107 = load i64, ptr %102, align 1
  %108 = tail call i64 @llvm.bswap.i64(i64 %107) #12
  store i64 %108, ptr %106, align 8
  %109 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %110 = icmp eq ptr %109, null
  br i1 %110, label %195, label %111, !prof !8

111:                                              ; preds = %104
  %112 = load i32, ptr %109, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %111
  %115 = tail call i32 @llvm.bswap.i32(i32 %112) #12
  %116 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %115) #12
  %117 = icmp eq ptr %116, null
  %118 = icmp ugt i32 %115, 1024
  %119 = or i1 %118, %117
  br i1 %119, label %195, label %120, !prof !12

120:                                              ; preds = %114, %111
  %121 = phi ptr [ null, %111 ], [ %116, %114 ]
  %122 = phi i32 [ 0, %111 ], [ %115, %114 ]
  %123 = load ptr, ptr %105, align 8
  %124 = getelementptr inbounds %struct.nfs41_server_owner, ptr %123, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %124, ptr align 1 %121, i32 %122, i1 false) #12
  %125 = load ptr, ptr %105, align 8
  %126 = getelementptr inbounds %struct.nfs41_server_owner, ptr %125, i32 0, i32 1
  store i32 %122, ptr %126, align 8
  %127 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %128 = icmp eq ptr %127, null
  br i1 %128, label %195, label %129, !prof !8

129:                                              ; preds = %120
  %130 = load i32, ptr %127, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %129
  %133 = tail call i32 @llvm.bswap.i32(i32 %130) #12
  %134 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %133) #12
  %135 = icmp eq ptr %134, null
  %136 = icmp ugt i32 %133, 1024
  %137 = or i1 %136, %135
  br i1 %137, label %195, label %138, !prof !12

138:                                              ; preds = %132, %129
  %139 = phi ptr [ null, %129 ], [ %134, %132 ]
  %140 = phi i32 [ 0, %129 ], [ %133, %132 ]
  %141 = getelementptr inbounds %struct.nfs41_exchange_id_res, ptr %2, i32 0, i32 4
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.nfs41_server_scope, ptr %142, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %143, ptr align 1 %139, i32 %140, i1 false) #12
  %144 = load ptr, ptr %141, align 4
  store i32 %140, ptr %144, align 4
  %145 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %146 = icmp eq ptr %145, null
  br i1 %146, label %195, label %147, !prof !8

147:                                              ; preds = %138
  %148 = load i32, ptr %145, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %195, label %150

150:                                              ; preds = %147
  %151 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %152 = icmp eq ptr %151, null
  br i1 %152, label %195, label %153, !prof !8

153:                                              ; preds = %150
  %154 = load i32, ptr %151, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %153
  %157 = tail call i32 @llvm.bswap.i32(i32 %154) #12
  %158 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %157) #12
  %159 = icmp eq ptr %158, null
  %160 = icmp ugt i32 %157, 1024
  %161 = or i1 %160, %159
  br i1 %161, label %195, label %162, !prof !12

162:                                              ; preds = %156, %153
  %163 = phi ptr [ null, %153 ], [ %158, %156 ]
  %164 = phi i32 [ 0, %153 ], [ %157, %156 ]
  %165 = getelementptr inbounds %struct.nfs41_exchange_id_res, ptr %2, i32 0, i32 5
  %166 = load ptr, ptr %165, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %166, ptr align 1 %163, i32 %164, i1 false) #12
  %167 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %168 = icmp eq ptr %167, null
  br i1 %168, label %195, label %169, !prof !8

169:                                              ; preds = %162
  %170 = load i32, ptr %167, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %178, label %172

172:                                              ; preds = %169
  %173 = tail call i32 @llvm.bswap.i32(i32 %170) #12
  %174 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %173) #12
  %175 = icmp eq ptr %174, null
  %176 = icmp ugt i32 %173, 1024
  %177 = or i1 %176, %175
  br i1 %177, label %195, label %178, !prof !12

178:                                              ; preds = %172, %169
  %179 = phi ptr [ null, %169 ], [ %174, %172 ]
  %180 = phi i32 [ 0, %169 ], [ %173, %172 ]
  %181 = load ptr, ptr %165, align 8
  %182 = getelementptr inbounds %struct.nfs41_impl_id, ptr %181, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %182, ptr align 1 %179, i32 %180, i1 false) #12
  %183 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 12) #12
  %184 = icmp eq ptr %183, null
  br i1 %184, label %195, label %185, !prof !8

185:                                              ; preds = %178
  %186 = load ptr, ptr %165, align 8
  %187 = getelementptr inbounds %struct.nfs41_impl_id, ptr %186, i32 0, i32 2
  %188 = load i64, ptr %183, align 1
  %189 = tail call i64 @llvm.bswap.i64(i64 %188) #12
  store i64 %189, ptr %187, align 8
  %190 = getelementptr i32, ptr %183, i32 2
  %191 = load i32, ptr %190, align 4
  %192 = tail call i32 @llvm.bswap.i32(i32 %191) #12
  %193 = load ptr, ptr %165, align 8
  %194 = getelementptr inbounds %struct.nfs41_impl_id, ptr %193, i32 0, i32 2, i32 1
  store i32 %192, ptr %194, align 8
  br label %195

195:                                              ; preds = %185, %178, %172, %162, %156, %150, %147, %138, %132, %120, %114, %104, %101, %100, %98, %96, %68, %64, %62, %34, %30, %13, %10, %7, %3
  %196 = phi i32 [ %5, %3 ], [ %8, %7 ], [ -5, %10 ], [ -5, %13 ], [ -5, %100 ], [ -5, %98 ], [ -5, %101 ], [ -5, %138 ], [ -5, %178 ], [ 0, %185 ], [ 0, %147 ], [ -5, %30 ], [ -5, %34 ], [ -5, %62 ], [ -5, %64 ], [ -5, %68 ], [ -5, %96 ], [ -5, %114 ], [ -5, %104 ], [ -5, %132 ], [ -5, %120 ], [ -5, %156 ], [ -5, %150 ], [ -5, %172 ], [ -5, %162 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %196
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_create_session(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 31
  %8 = load ptr, ptr %7, align 8
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct.nfs_client, ptr %10, i32 0, i32 11
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nfs_client, ptr %10, i32 0, i32 44
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr @nfs_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  %16 = getelementptr inbounds %struct.net, ptr %14, i32 0, i32 37
  %17 = load volatile ptr, ptr %16, align 64
  %18 = getelementptr [0 x ptr], ptr %17, i32 0, i32 %15
  %19 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  %20 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %3
  store i32 721420288, ptr %20, align 4
  br label %26

23:                                               ; preds = %3
  %24 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %24, label %26, label %25, !prof !9

25:                                               ; preds = %23
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %26

26:                                               ; preds = %25, %23, %22
  %27 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 24
  store i32 %32, ptr %30, align 4
  %33 = getelementptr inbounds %struct.rpc_clnt, ptr %12, i32 0, i32 18
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 104
  %36 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %35) #12
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39, !prof !8

38:                                               ; preds = %26
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.nfs41_create_session_args, ptr %2, i32 0, i32 1
  %41 = load i64, ptr %40, align 8
  %42 = tail call i64 @llvm.bswap.i64(i64 %41) #12
  store i64 %42, ptr %36, align 1
  %43 = getelementptr i32, ptr %36, i32 2
  %44 = getelementptr inbounds %struct.nfs41_create_session_args, ptr %2, i32 0, i32 2
  %45 = load i32, ptr %44, align 8
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #12
  %47 = getelementptr i32, ptr %36, i32 3
  store i32 %46, ptr %43, align 4
  %48 = getelementptr inbounds %struct.nfs41_create_session_args, ptr %2, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #12
  %51 = getelementptr i32, ptr %36, i32 4
  store i32 %50, ptr %47, align 4
  %52 = getelementptr i32, ptr %36, i32 5
  store i32 0, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nfs41_create_session_args, ptr %2, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #12
  %56 = getelementptr i32, ptr %36, i32 6
  store i32 %55, ptr %52, align 4
  %57 = getelementptr inbounds %struct.nfs41_create_session_args, ptr %2, i32 0, i32 5, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #12
  %60 = getelementptr i32, ptr %36, i32 7
  store i32 %59, ptr %56, align 4
  %61 = getelementptr i32, ptr %36, i32 8
  store i32 2081751040, ptr %60, align 4
  %62 = getelementptr inbounds %struct.nfs41_create_session_args, ptr %2, i32 0, i32 5, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #12
  %65 = getelementptr i32, ptr %36, i32 9
  store i32 %64, ptr %61, align 4
  %66 = getelementptr inbounds %struct.nfs41_create_session_args, ptr %2, i32 0, i32 5, i32 4
  %67 = load i32, ptr %66, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #12
  %69 = getelementptr i32, ptr %36, i32 10
  store i32 %68, ptr %65, align 4
  %70 = getelementptr i32, ptr %36, i32 11
  store i32 0, ptr %69, align 4
  %71 = getelementptr i32, ptr %36, i32 12
  store i32 0, ptr %70, align 4
  %72 = getelementptr inbounds %struct.nfs41_create_session_args, ptr %2, i32 0, i32 6
  %73 = load i32, ptr %72, align 8
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #12
  %75 = getelementptr i32, ptr %36, i32 13
  store i32 %74, ptr %71, align 4
  %76 = getelementptr inbounds %struct.nfs41_create_session_args, ptr %2, i32 0, i32 6, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #12
  %79 = getelementptr i32, ptr %36, i32 14
  store i32 %78, ptr %75, align 4
  %80 = getelementptr inbounds %struct.nfs41_create_session_args, ptr %2, i32 0, i32 6, i32 2
  %81 = load i32, ptr %80, align 8
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #12
  %83 = getelementptr i32, ptr %36, i32 15
  store i32 %82, ptr %79, align 4
  %84 = getelementptr inbounds %struct.nfs41_create_session_args, ptr %2, i32 0, i32 6, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #12
  %87 = getelementptr i32, ptr %36, i32 16
  store i32 %86, ptr %83, align 4
  %88 = getelementptr inbounds %struct.nfs41_create_session_args, ptr %2, i32 0, i32 6, i32 4
  %89 = load i32, ptr %88, align 8
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #12
  %91 = getelementptr i32, ptr %36, i32 17
  store i32 %90, ptr %87, align 4
  %92 = getelementptr i32, ptr %36, i32 18
  store i32 0, ptr %91, align 4
  %93 = getelementptr inbounds %struct.nfs41_create_session_args, ptr %2, i32 0, i32 4
  %94 = load i32, ptr %93, align 8
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #12
  %96 = getelementptr i32, ptr %36, i32 19
  store i32 %95, ptr %92, align 4
  %97 = getelementptr i32, ptr %36, i32 20
  store i32 16777216, ptr %96, align 4
  %98 = getelementptr i32, ptr %36, i32 21
  store i32 16777216, ptr %97, align 4
  %99 = getelementptr inbounds %struct.nfs_net, ptr %19, i32 0, i32 13
  %100 = load i64, ptr %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = tail call i32 @llvm.bswap.i32(i32 %101) #12
  %103 = getelementptr i32, ptr %36, i32 22
  store i32 %102, ptr %98, align 4
  %104 = getelementptr inbounds %struct.rpc_clnt, ptr %12, i32 0, i32 19
  %105 = load i32, ptr %33, align 4
  %106 = tail call ptr @xdr_encode_opaque(ptr noundef %103, ptr noundef %104, i32 noundef %105) #12
  %107 = getelementptr i32, ptr %106, i32 1
  store i32 0, ptr %106, align 4
  %108 = getelementptr i32, ptr %106, i32 2
  store i32 0, ptr %107, align 4
  store i32 0, ptr %108, align 4
  %109 = icmp ugt i32 %29, 8
  %110 = load i1, ptr @encode_nops.__already_done, align 1
  %111 = xor i1 %110, true
  %112 = select i1 %109, i1 %111, i1 false
  br i1 %112, label %113, label %114, !prof !8

113:                                              ; preds = %39
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %114

114:                                              ; preds = %113, %39
  %115 = tail call i32 @llvm.bswap.i32(i32 %29) #12
  %116 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %117 = load ptr, ptr %116, align 4
  store i32 %115, ptr %117, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_create_session(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 43) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %7
  %11 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 16) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13, !prof !8

13:                                               ; preds = %10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %11, i32 16, i1 false) #12
  %14 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16, !prof !8

16:                                               ; preds = %13
  %17 = getelementptr i32, ptr %14, i32 1
  %18 = load i32, ptr %14, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #12
  %20 = getelementptr inbounds %struct.nfs41_create_session_res, ptr %2, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = load i32, ptr %17, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #12
  %23 = getelementptr inbounds %struct.nfs41_create_session_res, ptr %2, i32 0, i32 2
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.nfs41_create_session_res, ptr %2, i32 0, i32 3
  %25 = tail call fastcc i32 @decode_chan_attrs(ptr noundef %1, ptr noundef %24) #12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.nfs41_create_session_res, ptr %2, i32 0, i32 4
  %29 = tail call fastcc i32 @decode_chan_attrs(ptr noundef %1, ptr noundef %28) #12
  br label %30

30:                                               ; preds = %27, %16, %13, %10, %7, %3
  %31 = phi i32 [ %5, %3 ], [ -5, %13 ], [ %25, %16 ], [ %29, %27 ], [ -5, %10 ], [ %8, %7 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_destroy_session(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  %6 = getelementptr inbounds %struct.nfs4_session, ptr %2, i32 0, i32 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nfs_client, ptr %7, i32 0, i32 31
  %9 = load ptr, ptr %8, align 8
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %11 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !8

13:                                               ; preds = %3
  store i32 738197504, ptr %11, align 4
  br label %17

14:                                               ; preds = %3
  %15 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %15, label %17, label %16, !prof !9

16:                                               ; preds = %14
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %17

17:                                               ; preds = %16, %14, %13
  %18 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  %21 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23, !prof !8

23:                                               ; preds = %17
  %24 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %21, ptr noundef %2, i32 noundef 16) #12
  br label %28

25:                                               ; preds = %17
  %26 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %26, label %28, label %27, !prof !9

27:                                               ; preds = %25
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %28

28:                                               ; preds = %27, %25, %23
  %29 = icmp ugt i32 %20, 8
  %30 = load i1, ptr @encode_nops.__already_done, align 1
  %31 = xor i1 %30, true
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %34, !prof !8

33:                                               ; preds = %28
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %34

34:                                               ; preds = %33, %28
  %35 = tail call i32 @llvm.bswap.i32(i32 %20) #12
  %36 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  store i32 %35, ptr %37, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_destroy_session(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 44) #12
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %5, %3 ], [ %8, %7 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_sequence(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, 8
  %21 = load i1, ptr @encode_nops.__already_done, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %25, !prof !8

24:                                               ; preds = %16
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %25

25:                                               ; preds = %24, %16
  %26 = tail call i32 @llvm.bswap.i32(i32 %19) #12
  %27 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  store i32 %26, ptr %28, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_sequence(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %5, %3 ], [ %8, %7 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_get_lease_time(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  %5 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %6 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %7 = load ptr, ptr %2, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.nfs4_session, ptr %9, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nfs_client, ptr %13, i32 0, i32 31
  %15 = load ptr, ptr %14, align 8
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %11, %3
  %18 = phi i32 [ %16, %11 ], [ 0, %3 ]
  store i32 %18, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) @__const.nfs4_xdr_enc_get_lease_time.lease_bitmap, i32 12, i1 false)
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %19 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21, !prof !8

21:                                               ; preds = %17
  store i32 402653184, ptr %19, align 4
  br label %25

22:                                               ; preds = %17
  %23 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %23, label %25, label %24, !prof !9

24:                                               ; preds = %22
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %25

25:                                               ; preds = %24, %22, %21
  %26 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 2
  store i32 %31, ptr %29, align 4
  call fastcc void @encode_getattr(ptr noundef %1, ptr noundef nonnull @nfs4_fsinfo_bitmap, ptr noundef nonnull %5, i32 noundef 3, ptr noundef nonnull %4) #12
  %32 = load i32, ptr %26, align 4
  %33 = icmp ugt i32 %32, 8
  %34 = load i1, ptr @encode_nops.__already_done, align 1
  %35 = xor i1 %34, true
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %38, !prof !8

37:                                               ; preds = %25
  store i1 true, ptr @encode_nops.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %38

38:                                               ; preds = %37, %25
  %39 = call i32 @llvm.bswap.i32(i32 %32) #12
  %40 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  store i32 %39, ptr %41, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_get_lease_time(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 24) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.nfs4_get_lease_time_res, ptr %2, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call fastcc i32 @decode_fsinfo(ptr noundef %1, ptr noundef %15)
  br label %17

17:                                               ; preds = %13, %10, %7, %3
  %18 = phi i32 [ %11, %10 ], [ %16, %13 ], [ %8, %7 ], [ %5, %3 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_reclaim_complete(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !8

20:                                               ; preds = %16
  store i32 973078528, ptr %18, align 4
  br label %24

21:                                               ; preds = %16
  %22 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %22, label %24, label %23, !prof !9

23:                                               ; preds = %21
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %24

24:                                               ; preds = %23, %21, %20
  %25 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 1
  %28 = getelementptr inbounds %struct.nfs41_reclaim_complete_args, ptr %2, i32 0, i32 1
  %29 = load i8, ptr %28, align 4
  %30 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32, !prof !8

32:                                               ; preds = %24
  %33 = and i8 %29, 1
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 24
  store i32 %35, ptr %30, align 4
  br label %39

36:                                               ; preds = %24
  %37 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %37, label %39, label %38, !prof !9

38:                                               ; preds = %36
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %39

39:                                               ; preds = %38, %36, %32
  %40 = icmp ugt i32 %27, 8
  %41 = load i1, ptr @encode_nops.__already_done, align 1
  %42 = xor i1 %41, true
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %45, !prof !8

44:                                               ; preds = %39
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %45

45:                                               ; preds = %44, %39
  %46 = tail call i32 @llvm.bswap.i32(i32 %27) #12
  %47 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  store i32 %46, ptr %48, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_reclaim_complete(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 58) #12
  br label %12

12:                                               ; preds = %10, %7, %3
  %13 = phi i32 [ %8, %7 ], [ %11, %10 ], [ %5, %3 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_layoutget(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs4_layoutget_args, ptr %2, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 -288
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %20, ptr noundef nonnull %4)
  call fastcc void @encode_layoutget(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %21 = getelementptr inbounds %struct.nfs4_layoutget_args, ptr %2, i32 0, i32 8
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nfs4_layoutget_args, ptr %2, i32 0, i32 8, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, -1
  tail call void @rpc_prepare_reply_pages(ptr noundef %0, ptr noundef %22, i32 noundef 0, i32 noundef %24, i32 noundef %27) #12
  %28 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp ugt i32 %29, 8
  %31 = load i1, ptr @encode_nops.__already_done, align 1
  %32 = xor i1 %31, true
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %35, !prof !8

34:                                               ; preds = %16
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %35

35:                                               ; preds = %34, %16
  %36 = tail call i32 @llvm.bswap.i32(i32 %29) #12
  %37 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  store i32 %36, ptr %38, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_layoutget(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @decode_layoutget(ptr noundef %1, ptr noundef %2)
  br label %15

15:                                               ; preds = %13, %10, %7, %3
  %16 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_getdeviceinfo(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 4
  %21 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23, !prof !8

23:                                               ; preds = %16
  store i32 788529152, ptr %21, align 4
  br label %27

24:                                               ; preds = %16
  %25 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %25, label %27, label %26, !prof !9

26:                                               ; preds = %24
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %27

27:                                               ; preds = %26, %24, %23
  %28 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 4
  %31 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 24) #12
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34, !prof !8

33:                                               ; preds = %27
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.nfs4_getdeviceinfo_args, ptr %2, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %31, ptr noundef %36, i32 noundef 16) #12
  %38 = load ptr, ptr %35, align 4
  %39 = getelementptr inbounds %struct.pnfs_device, ptr %38, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #12
  %42 = getelementptr i32, ptr %37, i32 1
  store i32 %41, ptr %37, align 4
  %43 = load ptr, ptr %35, align 4
  %44 = getelementptr inbounds %struct.pnfs_device, ptr %43, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #12
  store i32 %46, ptr %42, align 4
  %47 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 8) #12
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %50, !prof !8

49:                                               ; preds = %34
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

50:                                               ; preds = %34
  %51 = getelementptr i32, ptr %47, i32 1
  store i32 16777216, ptr %47, align 4
  %52 = getelementptr inbounds %struct.nfs4_getdeviceinfo_args, ptr %2, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #12
  store i32 %54, ptr %51, align 4
  %55 = load ptr, ptr %35, align 4
  %56 = getelementptr inbounds %struct.pnfs_device, ptr %55, i32 0, i32 4
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.pnfs_device, ptr %55, i32 0, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.pnfs_device, ptr %55, i32 0, i32 6
  %61 = load i32, ptr %60, align 4
  tail call void @rpc_prepare_reply_pages(ptr noundef %0, ptr noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef %20) #12
  %62 = icmp ugt i32 %30, 8
  %63 = load i1, ptr @encode_nops.__already_done, align 1
  %64 = xor i1 %63, true
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %66, label %67, !prof !8

66:                                               ; preds = %50
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %67

67:                                               ; preds = %66, %50
  %68 = tail call i32 @llvm.bswap.i32(i32 %30) #12
  %69 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  store i32 %68, ptr %70, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_getdeviceinfo(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %63

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %63

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.nfs4_getdeviceinfo_res, ptr %2, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 47) #12
  switch i32 %13, label %63 [
    i32 0, label %21
    i32 -525, label %14
  ]

14:                                               ; preds = %10
  %15 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %63, label %17, !prof !8

17:                                               ; preds = %14
  %18 = load i32, ptr %15, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #12
  %20 = getelementptr inbounds %struct.pnfs_device, ptr %12, i32 0, i32 2
  store i32 %19, ptr %20, align 4
  br label %63

21:                                               ; preds = %10
  %22 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %63, label %24, !prof !8

24:                                               ; preds = %21
  %25 = load i32, ptr %22, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #12
  %27 = getelementptr inbounds %struct.pnfs_device, ptr %12, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %63

30:                                               ; preds = %24
  %31 = getelementptr i32, ptr %22, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #12
  %34 = getelementptr inbounds %struct.pnfs_device, ptr %12, i32 0, i32 2
  store i32 %33, ptr %34, align 4
  %35 = tail call i32 @xdr_read_pages(ptr noundef %1, i32 noundef %33) #12
  %36 = load i32, ptr %34, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %30
  %39 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %63, label %41, !prof !8

41:                                               ; preds = %38
  %42 = load i32, ptr %39, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #12
  %44 = icmp eq i32 %42, 0
  br i1 %44, label %63, label %45

45:                                               ; preds = %41
  %46 = shl i32 %43, 2
  %47 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %46) #12
  %48 = icmp eq ptr %47, null
  br i1 %48, label %63, label %49, !prof !8

49:                                               ; preds = %45
  %50 = load i32, ptr %47, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #12
  %52 = getelementptr inbounds %struct.nfs4_getdeviceinfo_res, ptr %2, i32 0, i32 2
  store i32 %51, ptr %52, align 4
  %53 = icmp ugt i32 %43, 1
  br i1 %53, label %57, label %63

54:                                               ; preds = %57
  %55 = add nuw i32 %59, 1
  %56 = icmp eq i32 %55, %43
  br i1 %56, label %63, label %57

57:                                               ; preds = %54, %49
  %58 = phi ptr [ %60, %54 ], [ %47, %49 ]
  %59 = phi i32 [ %55, %54 ], [ 1, %49 ]
  %60 = getelementptr i32, ptr %58, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %54, label %63

63:                                               ; preds = %57, %54, %49, %45, %41, %38, %30, %24, %21, %17, %14, %10, %7, %3
  %64 = phi i32 [ %5, %3 ], [ %8, %7 ], [ -5, %14 ], [ %13, %10 ], [ -525, %17 ], [ -5, %21 ], [ -22, %24 ], [ -5, %30 ], [ -5, %38 ], [ 0, %41 ], [ -5, %45 ], [ 0, %49 ], [ -5, %57 ], [ 0, %54 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_layoutcommit(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs4_layoutcommit_args, ptr %2, i32 0, i32 3
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i8, ptr %19, i32 -288
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %20, ptr noundef nonnull %4)
  %21 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23, !prof !8

23:                                               ; preds = %16
  store i32 822083584, ptr %21, align 4
  br label %27

24:                                               ; preds = %16
  %25 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %25, label %27, label %26, !prof !9

26:                                               ; preds = %24
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %27

27:                                               ; preds = %26, %24, %23
  %28 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 4
  %31 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 5
  store i32 %33, ptr %31, align 4
  %34 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 20) #12
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37, !prof !8

36:                                               ; preds = %27
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

37:                                               ; preds = %27
  store i64 0, ptr %34, align 1
  %38 = getelementptr i32, ptr %34, i32 2
  %39 = getelementptr inbounds %struct.nfs4_layoutcommit_args, ptr %2, i32 0, i32 2
  %40 = load i64, ptr %39, align 8
  %41 = add i64 %40, 1
  %42 = tail call i64 @llvm.bswap.i64(i64 %41) #12
  store i64 %42, ptr %38, align 1
  %43 = getelementptr i32, ptr %34, i32 4
  store i32 0, ptr %43, align 4
  %44 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46, !prof !8

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.nfs4_layoutcommit_args, ptr %2, i32 0, i32 1
  %48 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %44, ptr noundef %47, i32 noundef 16) #12
  br label %52

49:                                               ; preds = %37
  %50 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %50, label %52, label %51, !prof !9

51:                                               ; preds = %49
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %52

52:                                               ; preds = %51, %49, %46
  %53 = load i64, ptr %39, align 8
  %54 = icmp eq i64 %53, -1
  br i1 %54, label %64, label %55

55:                                               ; preds = %52
  %56 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 20) #12
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %59, !prof !8

58:                                               ; preds = %55
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

59:                                               ; preds = %55
  %60 = getelementptr i32, ptr %56, i32 1
  store i32 16777216, ptr %56, align 4
  %61 = load i64, ptr %39, align 8
  %62 = tail call i64 @llvm.bswap.i64(i64 %61) #12
  store i64 %62, ptr %60, align 1
  %63 = getelementptr i32, ptr %56, i32 3
  br label %70

64:                                               ; preds = %52
  %65 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 12) #12
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %68, !prof !8

67:                                               ; preds = %64
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

68:                                               ; preds = %64
  %69 = getelementptr i32, ptr %65, i32 1
  store i32 0, ptr %65, align 4
  br label %70

70:                                               ; preds = %68, %59
  %71 = phi ptr [ %63, %59 ], [ %69, %68 ]
  %72 = getelementptr i32, ptr %71, i32 1
  store i32 0, ptr %71, align 4
  %73 = load ptr, ptr %18, align 8
  %74 = getelementptr inbounds %struct.inode, ptr %73, i32 0, i32 8
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.super_block, ptr %75, i32 0, i32 27
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.nfs_server, ptr %77, i32 0, i32 44
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %79, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #12
  store i32 %82, ptr %72, align 4
  %83 = getelementptr inbounds %struct.nfs4_layoutcommit_args, ptr %2, i32 0, i32 5
  %84 = load i32, ptr %83, align 8
  %85 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87, !prof !8

87:                                               ; preds = %70
  %88 = tail call i32 @llvm.bswap.i32(i32 %84) #12
  store i32 %88, ptr %85, align 4
  br label %92

89:                                               ; preds = %70
  %90 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %90, label %92, label %91, !prof !9

91:                                               ; preds = %89
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %92

92:                                               ; preds = %91, %89, %87
  %93 = getelementptr inbounds %struct.nfs4_layoutcommit_args, ptr %2, i32 0, i32 7
  %94 = load ptr, ptr %93, align 8
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %92
  %97 = load i32, ptr %83, align 8
  tail call void @xdr_write_pages(ptr noundef %1, ptr noundef nonnull %94, i32 noundef 0, i32 noundef %97) #12
  br label %98

98:                                               ; preds = %96, %92
  %99 = getelementptr inbounds %struct.nfs4_layoutcommit_args, ptr %2, i32 0, i32 4
  %100 = load ptr, ptr %99, align 4
  call fastcc void @encode_getattr(ptr noundef %1, ptr noundef nonnull @nfs4_fattr_bitmap, ptr noundef %100, i32 noundef 3, ptr noundef nonnull %4) #12
  %101 = load i32, ptr %28, align 4
  %102 = icmp ugt i32 %101, 8
  %103 = load i1, ptr @encode_nops.__already_done, align 1
  %104 = xor i1 %103, true
  %105 = select i1 %102, i1 %104, i1 false
  br i1 %105, label %106, label %107, !prof !8

106:                                              ; preds = %98
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %107

107:                                              ; preds = %106, %98
  %108 = tail call i32 @llvm.bswap.i32(i32 %101) #12
  %109 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %110 = load ptr, ptr %109, align 4
  store i32 %108, ptr %110, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_layoutcommit(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 49) #12
  %15 = getelementptr inbounds %struct.nfs4_layoutcommit_res, ptr %2, i32 0, i32 3
  store i32 %14, ptr %15, align 4
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20, !prof !8

20:                                               ; preds = %17
  %21 = load i32, ptr %18, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #12
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26, !prof !8

26:                                               ; preds = %23, %20
  %27 = getelementptr inbounds %struct.nfs4_layoutcommit_res, ptr %2, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nfs4_layoutcommit_res, ptr %2, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = tail call fastcc i32 @decode_getfattr_generic(ptr noundef %1, ptr noundef %28, ptr noundef null, ptr noundef %30) #12
  br label %32

32:                                               ; preds = %26, %23, %17, %13, %10, %7, %3
  %33 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ 0, %26 ], [ -5, %23 ], [ -5, %17 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_layoutreturn(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs4_layoutreturn_args, ptr %2, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 -288
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %20, ptr noundef nonnull %4)
  call fastcc void @encode_layoutreturn(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %21 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %22, 8
  %24 = load i1, ptr @encode_nops.__already_done, align 1
  %25 = xor i1 %24, true
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %28, !prof !8

27:                                               ; preds = %16
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %28

28:                                               ; preds = %27, %16
  %29 = tail call i32 @llvm.bswap.i32(i32 %22) #12
  %30 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  store i32 %29, ptr %31, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_layoutreturn(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 51) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %13
  %17 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %34, label %19, !prof !8

19:                                               ; preds = %16
  %20 = load i32, ptr %17, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #12
  %22 = getelementptr inbounds %struct.nfs4_layoutreturn_res, ptr %2, i32 0, i32 1
  store i32 %21, ptr %22, align 4
  %23 = icmp eq i32 %20, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.nfs4_layoutreturn_res, ptr %2, i32 0, i32 2, i32 1
  store i32 5, ptr %25, align 4
  %26 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 16) #12
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28, !prof !8

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.nfs4_layoutreturn_res, ptr %2, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %29, ptr noundef nonnull align 4 dereferenceable(16) %26, i32 16, i1 false) #12
  br label %34

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.nfs4_layoutreturn_res, ptr %2, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %31, ptr noundef nonnull align 4 dereferenceable(16) @invalid_stateid, i32 16, i1 false) #12
  %32 = load i32, ptr getelementptr inbounds (%struct.nfs4_stateid_struct, ptr @invalid_stateid, i32 0, i32 1), align 4
  %33 = getelementptr inbounds %struct.nfs4_layoutreturn_res, ptr %2, i32 0, i32 2, i32 1
  store i32 %32, ptr %33, align 4
  br label %34

34:                                               ; preds = %30, %28, %24, %16, %13, %10, %7, %3
  %35 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %14, %13 ], [ -5, %16 ], [ 0, %30 ], [ 0, %28 ], [ -5, %24 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_secinfo_no_name(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !8

20:                                               ; preds = %16
  store i32 402653184, ptr %18, align 4
  br label %24

21:                                               ; preds = %16
  %22 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %22, label %24, label %23, !prof !9

23:                                               ; preds = %21
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %24

24:                                               ; preds = %23, %21, %20
  %25 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 4
  %28 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30, !prof !8

30:                                               ; preds = %24
  store i32 872415232, ptr %28, align 4
  br label %34

31:                                               ; preds = %24
  %32 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %32, label %34, label %33, !prof !9

33:                                               ; preds = %31
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %34

34:                                               ; preds = %33, %31, %30
  %35 = add i32 %26, 2
  %36 = getelementptr inbounds %struct.nfs41_secinfo_no_name_args, ptr %2, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40, !prof !8

40:                                               ; preds = %34
  %41 = tail call i32 @llvm.bswap.i32(i32 %37) #12
  store i32 %41, ptr %38, align 4
  br label %45

42:                                               ; preds = %34
  %43 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %43, label %45, label %44, !prof !9

44:                                               ; preds = %42
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %45

45:                                               ; preds = %44, %42, %40
  %46 = icmp ugt i32 %35, 8
  %47 = load i1, ptr @encode_nops.__already_done, align 1
  %48 = xor i1 %47, true
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %51, !prof !8

50:                                               ; preds = %45
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %51

51:                                               ; preds = %50, %45
  %52 = tail call i32 @llvm.bswap.i32(i32 %35) #12
  %53 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  store i32 %52, ptr %54, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_secinfo_no_name(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 24) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 52) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call fastcc i32 @decode_secinfo_common(ptr noundef %1, ptr noundef %2) #12
  br label %18

18:                                               ; preds = %16, %13, %10, %7, %3
  %19 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %17, %16 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_test_stateid(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !8

20:                                               ; preds = %16
  store i32 922746880, ptr %18, align 4
  br label %24

21:                                               ; preds = %16
  %22 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %22, label %24, label %23, !prof !9

23:                                               ; preds = %21
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %24

24:                                               ; preds = %23, %21, %20
  %25 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 4
  %28 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30, !prof !8

30:                                               ; preds = %24
  store i32 16777216, ptr %28, align 4
  br label %34

31:                                               ; preds = %24
  %32 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %32, label %34, label %33, !prof !9

33:                                               ; preds = %31
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %34

34:                                               ; preds = %33, %31, %30
  %35 = getelementptr inbounds %struct.nfs41_test_stateid_args, ptr %2, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39, !prof !8

39:                                               ; preds = %34
  %40 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %37, ptr noundef %36, i32 noundef 16) #12
  br label %44

41:                                               ; preds = %34
  %42 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %42, label %44, label %43, !prof !9

43:                                               ; preds = %41
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %44

44:                                               ; preds = %43, %41, %39
  %45 = icmp ugt i32 %27, 8
  %46 = load i1, ptr @encode_nops.__already_done, align 1
  %47 = xor i1 %46, true
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %50, !prof !8

49:                                               ; preds = %44
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %50

50:                                               ; preds = %49, %44
  %51 = tail call i32 @llvm.bswap.i32(i32 %27) #12
  %52 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  store i32 %51, ptr %53, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_test_stateid(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 55) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16, !prof !8

16:                                               ; preds = %13
  %17 = load i32, ptr %14, align 4
  %18 = icmp eq i32 %17, 16777216
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22, !prof !8

22:                                               ; preds = %19
  %23 = load i32, ptr %20, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #12
  %25 = getelementptr inbounds %struct.nfs41_test_stateid_res, ptr %2, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  br label %26

26:                                               ; preds = %22, %19, %16, %13, %10, %7, %3
  %27 = phi i32 [ %5, %3 ], [ %8, %7 ], [ 0, %22 ], [ %11, %10 ], [ -5, %13 ], [ -5, %16 ], [ -5, %19 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_free_stateid(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !8

20:                                               ; preds = %16
  store i32 754974720, ptr %18, align 4
  br label %24

21:                                               ; preds = %16
  %22 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %22, label %24, label %23, !prof !9

23:                                               ; preds = %21
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %24

24:                                               ; preds = %23, %21, %20
  %25 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 1
  %28 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30, !prof !8

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.nfs41_free_stateid_args, ptr %2, i32 0, i32 1
  %32 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %28, ptr noundef %31, i32 noundef 16) #12
  br label %36

33:                                               ; preds = %24
  %34 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %34, label %36, label %35, !prof !9

35:                                               ; preds = %33
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %36

36:                                               ; preds = %35, %33, %30
  %37 = icmp ugt i32 %27, 8
  %38 = load i1, ptr @encode_nops.__already_done, align 1
  %39 = xor i1 %38, true
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %42, !prof !8

41:                                               ; preds = %36
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %42

42:                                               ; preds = %41, %36
  %43 = tail call i32 @llvm.bswap.i32(i32 %27) #12
  %44 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  store i32 %43, ptr %45, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_free_stateid(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 45) #12
  %12 = getelementptr inbounds %struct.nfs41_free_stateid_res, ptr %2, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %10, %7, %3
  %14 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_bind_conn_to_session(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.nfs_client, ptr %6, i32 0, i32 31
  %8 = load ptr, ptr %7, align 8
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %10 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12, !prof !8

12:                                               ; preds = %3
  store i32 687865856, ptr %10, align 4
  br label %16

13:                                               ; preds = %3
  %14 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %14, label %16, label %15, !prof !9

15:                                               ; preds = %13
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %16

16:                                               ; preds = %15, %13, %12
  %17 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 1
  %20 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22, !prof !8

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.nfs41_bind_conn_to_session_args, ptr %2, i32 0, i32 1
  %24 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %20, ptr noundef %23, i32 noundef 16) #12
  br label %28

25:                                               ; preds = %16
  %26 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %26, label %28, label %27, !prof !9

27:                                               ; preds = %25
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %28

28:                                               ; preds = %27, %25, %22
  %29 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 8) #12
  %30 = getelementptr inbounds %struct.nfs41_bind_conn_to_session_args, ptr %2, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #12
  %33 = getelementptr i32, ptr %29, i32 1
  store i32 %32, ptr %29, align 4
  %34 = getelementptr inbounds %struct.nfs41_bind_conn_to_session_args, ptr %2, i32 0, i32 3
  %35 = load i8, ptr %34, align 4, !range !15
  %36 = icmp eq i8 %35, 0
  %37 = select i1 %36, i32 0, i32 16777216
  store i32 %37, ptr %33, align 4
  %38 = icmp ugt i32 %19, 8
  %39 = load i1, ptr @encode_nops.__already_done, align 1
  %40 = xor i1 %39, true
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %43, !prof !8

42:                                               ; preds = %28
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %43

43:                                               ; preds = %42, %28
  %44 = tail call i32 @llvm.bswap.i32(i32 %19) #12
  %45 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  store i32 %44, ptr %46, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_bind_conn_to_session(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 41) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %7
  %11 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 16) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13, !prof !8

13:                                               ; preds = %10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %11, i32 16, i1 false) #12
  %14 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16, !prof !8

16:                                               ; preds = %13
  %17 = load i32, ptr %14, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #12
  %19 = getelementptr inbounds %struct.nfs41_bind_conn_to_session_res, ptr %2, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = icmp eq i32 %17, 0
  %21 = icmp ugt i32 %18, 3
  %22 = or i1 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %16
  %24 = getelementptr i32, ptr %14, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = getelementptr inbounds %struct.nfs41_bind_conn_to_session_res, ptr %2, i32 0, i32 2
  %28 = zext i1 %26 to i8
  store i8 %28, ptr %27, align 4
  br label %29

29:                                               ; preds = %23, %16, %13, %10, %7, %3
  %30 = phi i32 [ %5, %3 ], [ -5, %13 ], [ -5, %16 ], [ -5, %10 ], [ %8, %7 ], [ 0, %23 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_destroy_clientid(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  %6 = getelementptr inbounds %struct.nfs_client, ptr %2, i32 0, i32 31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %7 = load ptr, ptr %6, align 8
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %9 = getelementptr inbounds %struct.nfs_client, ptr %2, i32 0, i32 20
  %10 = load i64, ptr %9, align 8
  %11 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !8

13:                                               ; preds = %3
  store i32 956301312, ptr %11, align 4
  br label %17

14:                                               ; preds = %3
  %15 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %15, label %17, label %16, !prof !9

16:                                               ; preds = %14
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %17

17:                                               ; preds = %16, %14, %13
  %18 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  %21 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 8) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23, !prof !8

23:                                               ; preds = %17
  %24 = tail call i64 @llvm.bswap.i64(i64 %10) #12
  store i64 %24, ptr %21, align 1
  br label %28

25:                                               ; preds = %17
  %26 = load i1, ptr @encode_uint64.__already_done, align 1
  br i1 %26, label %28, label %27, !prof !9

27:                                               ; preds = %25
  store i1 true, ptr @encode_uint64.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 988, i32 noundef 9, ptr noundef null) #12
  br label %28

28:                                               ; preds = %27, %25, %23
  %29 = icmp ugt i32 %20, 8
  %30 = load i1, ptr @encode_nops.__already_done, align 1
  %31 = xor i1 %30, true
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %34, !prof !8

33:                                               ; preds = %28
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %34

34:                                               ; preds = %33, %28
  %35 = tail call i32 @llvm.bswap.i32(i32 %20) #12
  %36 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  store i32 %35, ptr %37, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_destroy_clientid(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 57) #12
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %5, %3 ], [ %8, %7 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_seek(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs42_seek_args, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %16
  store i32 1157627904, ptr %20, align 4
  br label %26

23:                                               ; preds = %16
  %24 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %24, label %26, label %25, !prof !9

25:                                               ; preds = %23
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %26

26:                                               ; preds = %25, %23, %22
  %27 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 8
  store i32 %32, ptr %30, align 4
  %33 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #12
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35, !prof !8

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.nfs42_seek_args, ptr %2, i32 0, i32 2
  %37 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %33, ptr noundef %36, i32 noundef 16) #12
  br label %41

38:                                               ; preds = %26
  %39 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %39, label %41, label %40, !prof !9

40:                                               ; preds = %38
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %41

41:                                               ; preds = %40, %38, %35
  %42 = getelementptr inbounds %struct.nfs42_seek_args, ptr %2, i32 0, i32 3
  %43 = load i64, ptr %42, align 8
  %44 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 8) #12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46, !prof !8

46:                                               ; preds = %41
  %47 = tail call i64 @llvm.bswap.i64(i64 %43) #12
  store i64 %47, ptr %44, align 1
  br label %51

48:                                               ; preds = %41
  %49 = load i1, ptr @encode_uint64.__already_done, align 1
  br i1 %49, label %51, label %50, !prof !9

50:                                               ; preds = %48
  store i1 true, ptr @encode_uint64.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 988, i32 noundef 9, ptr noundef null) #12
  br label %51

51:                                               ; preds = %50, %48, %46
  %52 = getelementptr inbounds %struct.nfs42_seek_args, ptr %2, i32 0, i32 4
  %53 = load i32, ptr %52, align 8
  %54 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56, !prof !8

56:                                               ; preds = %51
  %57 = tail call i32 @llvm.bswap.i32(i32 %53) #12
  store i32 %57, ptr %54, align 4
  br label %61

58:                                               ; preds = %51
  %59 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %59, label %61, label %60, !prof !9

60:                                               ; preds = %58
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %61

61:                                               ; preds = %60, %58, %56
  %62 = icmp ugt i32 %29, 8
  %63 = load i1, ptr @encode_nops.__already_done, align 1
  %64 = xor i1 %63, true
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %66, label %67, !prof !8

66:                                               ; preds = %61
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %67

67:                                               ; preds = %66, %61
  %68 = tail call i32 @llvm.bswap.i32(i32 %29) #12
  %69 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  store i32 %68, ptr %70, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_seek(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 69) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 12) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19, !prof !8

19:                                               ; preds = %16
  %20 = getelementptr i32, ptr %17, i32 1
  %21 = load i32, ptr %17, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #12
  %23 = getelementptr inbounds %struct.nfs42_seek_res, ptr %2, i32 0, i32 2
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.nfs42_seek_res, ptr %2, i32 0, i32 3
  %25 = load i64, ptr %20, align 1
  %26 = tail call i64 @llvm.bswap.i64(i64 %25) #12
  store i64 %26, ptr %24, align 8
  br label %27

27:                                               ; preds = %19, %16, %13, %10, %7, %3
  %28 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ 0, %19 ], [ %14, %13 ], [ -5, %16 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_allocate(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs42_falloc_args, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %16
  store i32 989855744, ptr %20, align 4
  br label %26

23:                                               ; preds = %16
  %24 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %24, label %26, label %25, !prof !9

25:                                               ; preds = %23
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %26

26:                                               ; preds = %25, %23, %22
  %27 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 2
  store i32 %32, ptr %30, align 4
  tail call fastcc void @encode_fallocate(ptr noundef %1, ptr noundef %2) #12
  %33 = getelementptr inbounds %struct.nfs42_falloc_args, ptr %2, i32 0, i32 5
  %34 = load ptr, ptr %33, align 8
  call fastcc void @encode_getattr(ptr noundef %1, ptr noundef nonnull @nfs4_fattr_bitmap, ptr noundef %34, i32 noundef 3, ptr noundef nonnull %4) #12
  %35 = load i32, ptr %27, align 4
  %36 = icmp ugt i32 %35, 8
  %37 = load i1, ptr @encode_nops.__already_done, align 1
  %38 = xor i1 %37, true
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %41, !prof !8

40:                                               ; preds = %26
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %41

41:                                               ; preds = %40, %26
  %42 = tail call i32 @llvm.bswap.i32(i32 %35) #12
  %43 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  store i32 %42, ptr %44, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_allocate(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 59) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.nfs42_falloc_res, ptr %2, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nfs42_falloc_res, ptr %2, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = tail call fastcc i32 @decode_getfattr_generic(ptr noundef %1, ptr noundef %18, ptr noundef null, ptr noundef %20) #12
  br label %22

22:                                               ; preds = %16, %13, %10, %7, %3
  %23 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %14, %13 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_deallocate(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs42_falloc_args, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %16
  store i32 1040187392, ptr %20, align 4
  br label %26

23:                                               ; preds = %16
  %24 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %24, label %26, label %25, !prof !9

25:                                               ; preds = %23
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %26

26:                                               ; preds = %25, %23, %22
  %27 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 2
  store i32 %32, ptr %30, align 4
  tail call fastcc void @encode_fallocate(ptr noundef %1, ptr noundef %2) #12
  %33 = getelementptr inbounds %struct.nfs42_falloc_args, ptr %2, i32 0, i32 5
  %34 = load ptr, ptr %33, align 8
  call fastcc void @encode_getattr(ptr noundef %1, ptr noundef nonnull @nfs4_fattr_bitmap, ptr noundef %34, i32 noundef 3, ptr noundef nonnull %4) #12
  %35 = load i32, ptr %27, align 4
  %36 = icmp ugt i32 %35, 8
  %37 = load i1, ptr @encode_nops.__already_done, align 1
  %38 = xor i1 %37, true
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %41, !prof !8

40:                                               ; preds = %26
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %41

41:                                               ; preds = %40, %26
  %42 = tail call i32 @llvm.bswap.i32(i32 %35) #12
  %43 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  store i32 %42, ptr %44, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_deallocate(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 62) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.nfs42_falloc_res, ptr %2, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nfs42_falloc_res, ptr %2, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = tail call fastcc i32 @decode_getfattr_generic(ptr noundef %1, ptr noundef %18, ptr noundef null, ptr noundef %20) #12
  br label %22

22:                                               ; preds = %16, %13, %10, %7, %3
  %23 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %14, %13 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_layoutstats(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs42_layoutstat_args, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = getelementptr inbounds %struct.nfs42_layoutstat_args, ptr %2, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = icmp sgt i32 %21, 4
  br i1 %22, label %23, label %25, !prof !8

23:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.79, i32 noundef 816, i32 noundef 9, ptr noundef null) #12
  %24 = load i32, ptr %20, align 4
  br label %25

25:                                               ; preds = %23, %16
  %26 = phi i32 [ %24, %23 ], [ %21, %16 ]
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  br label %108

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.nfs42_layoutstat_args, ptr %2, i32 0, i32 5
  %33 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %34 = getelementptr inbounds %struct.nfs42_layoutstat_args, ptr %2, i32 0, i32 3
  %35 = load i32, ptr %33, align 4
  br label %36

36:                                               ; preds = %104, %31
  %37 = phi i32 [ %35, %31 ], [ %48, %104 ]
  %38 = phi i32 [ 0, %31 ], [ %105, %104 ]
  %39 = load ptr, ptr %32, align 4
  %40 = getelementptr %struct.nfs42_layoutstat_devinfo, ptr %39, i32 %38
  %41 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43, !prof !8

43:                                               ; preds = %36
  store i32 1090519040, ptr %41, align 4
  br label %47

44:                                               ; preds = %36
  %45 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %45, label %47, label %46, !prof !9

46:                                               ; preds = %44
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %47

47:                                               ; preds = %46, %44, %43
  %48 = add i32 %37, 1
  %49 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #12
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %52, !prof !8

51:                                               ; preds = %47
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

52:                                               ; preds = %47
  %53 = getelementptr %struct.nfs42_layoutstat_devinfo, ptr %39, i32 %38, i32 1
  %54 = load i64, ptr %53, align 8
  %55 = tail call i64 @llvm.bswap.i64(i64 %54) #12
  store i64 %55, ptr %49, align 1
  %56 = getelementptr i32, ptr %49, i32 2
  %57 = getelementptr %struct.nfs42_layoutstat_devinfo, ptr %39, i32 %38, i32 2
  %58 = load i64, ptr %57, align 8
  %59 = tail call i64 @llvm.bswap.i64(i64 %58) #12
  store i64 %59, ptr %56, align 1
  %60 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #12
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62, !prof !8

62:                                               ; preds = %52
  %63 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %60, ptr noundef %34, i32 noundef 16) #12
  br label %67

64:                                               ; preds = %52
  %65 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %65, label %67, label %66, !prof !9

66:                                               ; preds = %64
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %67

67:                                               ; preds = %66, %64, %62
  %68 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 52) #12
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %71, !prof !8

70:                                               ; preds = %67
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

71:                                               ; preds = %67
  %72 = getelementptr %struct.nfs42_layoutstat_devinfo, ptr %39, i32 %38, i32 3
  %73 = load i64, ptr %72, align 8
  %74 = tail call i64 @llvm.bswap.i64(i64 %73) #12
  store i64 %74, ptr %68, align 1
  %75 = getelementptr i32, ptr %68, i32 2
  %76 = getelementptr %struct.nfs42_layoutstat_devinfo, ptr %39, i32 %38, i32 4
  %77 = load i64, ptr %76, align 8
  %78 = tail call i64 @llvm.bswap.i64(i64 %77) #12
  store i64 %78, ptr %75, align 1
  %79 = getelementptr i32, ptr %68, i32 4
  %80 = getelementptr %struct.nfs42_layoutstat_devinfo, ptr %39, i32 %38, i32 5
  %81 = load i64, ptr %80, align 8
  %82 = tail call i64 @llvm.bswap.i64(i64 %81) #12
  store i64 %82, ptr %79, align 1
  %83 = getelementptr i32, ptr %68, i32 6
  %84 = getelementptr %struct.nfs42_layoutstat_devinfo, ptr %39, i32 %38, i32 6
  %85 = load i64, ptr %84, align 8
  %86 = tail call i64 @llvm.bswap.i64(i64 %85) #12
  store i64 %86, ptr %83, align 1
  %87 = getelementptr i32, ptr %68, i32 8
  %88 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef %87, ptr noundef %40, i32 noundef 16) #12
  %89 = getelementptr %struct.nfs42_layoutstat_devinfo, ptr %39, i32 %38, i32 7
  %90 = load i32, ptr %89, align 8
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #12
  store i32 %91, ptr %88, align 4
  %92 = getelementptr %struct.nfs42_layoutstat_devinfo, ptr %39, i32 %38, i32 8
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %71
  %96 = load ptr, ptr %93, align 4
  tail call void %96(ptr noundef %1, ptr noundef %2, ptr noundef %92) #12
  br label %104

97:                                               ; preds = %71
  %98 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %99 = icmp eq ptr %98, null
  br i1 %99, label %101, label %100, !prof !8

100:                                              ; preds = %97
  store i32 0, ptr %98, align 4
  br label %104

101:                                              ; preds = %97
  %102 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %102, label %104, label %103, !prof !9

103:                                              ; preds = %101
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %104

104:                                              ; preds = %103, %101, %100, %95
  %105 = add nuw nsw i32 %38, 1
  %106 = load i32, ptr %20, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %36, label %108

108:                                              ; preds = %104, %28
  %109 = phi i32 [ %30, %28 ], [ %48, %104 ]
  %110 = icmp ugt i32 %109, 8
  %111 = load i1, ptr @encode_nops.__already_done, align 1
  %112 = xor i1 %111, true
  %113 = select i1 %110, i1 %112, i1 false
  br i1 %113, label %114, label %115, !prof !8

114:                                              ; preds = %108
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %115

115:                                              ; preds = %114, %108
  %116 = tail call i32 @llvm.bswap.i32(i32 %109) #12
  %117 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %118 = load ptr, ptr %117, align 4
  store i32 %116, ptr %118, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_layoutstats(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.nfs42_layoutstat_res, ptr %2, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, 4
  br i1 %16, label %17, label %19, !prof !8

17:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.79, i32 noundef 1397, i32 noundef 9, ptr noundef null) #12
  %18 = load i32, ptr %14, align 4
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi i32 [ %18, %17 ], [ %15, %13 ]
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %26, label %30

22:                                               ; preds = %26
  %23 = add nuw nsw i32 %27, 1
  %24 = load i32, ptr %14, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22, %19
  %27 = phi i32 [ %23, %22 ], [ 0, %19 ]
  %28 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 65) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %22, label %30

30:                                               ; preds = %26, %22, %19, %10, %7, %3
  %31 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ 0, %19 ], [ %28, %26 ], [ 0, %22 ]
  %32 = getelementptr inbounds %struct.nfs42_layoutstat_res, ptr %2, i32 0, i32 2
  store i32 %31, ptr %32, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_clone(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs42_clone_args, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %16
  store i32 536870912, ptr %20, align 4
  br label %26

23:                                               ; preds = %16
  %24 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %24, label %26, label %25, !prof !9

25:                                               ; preds = %23
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %26

26:                                               ; preds = %25, %23, %22
  %27 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 2
  store i32 %32, ptr %30, align 4
  %33 = getelementptr inbounds %struct.nfs42_clone_args, ptr %2, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %34, ptr noundef nonnull %4)
  %35 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37, !prof !8

37:                                               ; preds = %26
  store i32 1191182336, ptr %35, align 4
  br label %41

38:                                               ; preds = %26
  %39 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %39, label %41, label %40, !prof !9

40:                                               ; preds = %38
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %41

41:                                               ; preds = %40, %38, %37
  %42 = load i32, ptr %27, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %27, align 4
  %44 = load i32, ptr %30, align 4
  %45 = add i32 %44, 2
  store i32 %45, ptr %30, align 4
  %46 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #12
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48, !prof !8

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.nfs42_clone_args, ptr %2, i32 0, i32 3
  %50 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %46, ptr noundef %49, i32 noundef 16) #12
  br label %54

51:                                               ; preds = %41
  %52 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %52, label %54, label %53, !prof !9

53:                                               ; preds = %51
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %54

54:                                               ; preds = %53, %51, %48
  %55 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #12
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57, !prof !8

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.nfs42_clone_args, ptr %2, i32 0, i32 4
  %59 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %55, ptr noundef %58, i32 noundef 16) #12
  br label %63

60:                                               ; preds = %54
  %61 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %61, label %63, label %62, !prof !9

62:                                               ; preds = %60
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %63

63:                                               ; preds = %62, %60, %57
  %64 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 24) #12
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %67, !prof !8

66:                                               ; preds = %63
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.nfs42_clone_args, ptr %2, i32 0, i32 5
  %69 = load i64, ptr %68, align 8
  %70 = tail call i64 @llvm.bswap.i64(i64 %69) #12
  store i64 %70, ptr %64, align 1
  %71 = getelementptr i32, ptr %64, i32 2
  %72 = getelementptr inbounds %struct.nfs42_clone_args, ptr %2, i32 0, i32 6
  %73 = load i64, ptr %72, align 8
  %74 = tail call i64 @llvm.bswap.i64(i64 %73) #12
  store i64 %74, ptr %71, align 1
  %75 = getelementptr i32, ptr %64, i32 4
  %76 = getelementptr inbounds %struct.nfs42_clone_args, ptr %2, i32 0, i32 7
  %77 = load i64, ptr %76, align 8
  %78 = tail call i64 @llvm.bswap.i64(i64 %77) #12
  store i64 %78, ptr %75, align 1
  %79 = getelementptr inbounds %struct.nfs42_clone_args, ptr %2, i32 0, i32 8
  %80 = load ptr, ptr %79, align 8
  call fastcc void @encode_getattr(ptr noundef %1, ptr noundef nonnull @nfs4_fattr_bitmap, ptr noundef %80, i32 noundef 3, ptr noundef nonnull %4) #12
  %81 = load i32, ptr %27, align 4
  %82 = icmp ugt i32 %81, 8
  %83 = load i1, ptr @encode_nops.__already_done, align 1
  %84 = xor i1 %83, true
  %85 = select i1 %82, i1 %84, i1 false
  br i1 %85, label %86, label %87, !prof !8

86:                                               ; preds = %67
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %87

87:                                               ; preds = %86, %67
  %88 = tail call i32 @llvm.bswap.i32(i32 %81) #12
  %89 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %90 = load ptr, ptr %89, align 4
  store i32 %88, ptr %90, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_clone(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 32) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 71) #12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.nfs42_clone_res, ptr %2, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nfs42_clone_res, ptr %2, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = tail call fastcc i32 @decode_getfattr_generic(ptr noundef %1, ptr noundef %24, ptr noundef null, ptr noundef %26) #12
  br label %28

28:                                               ; preds = %22, %19, %16, %13, %10, %7, %3
  %29 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %14, %13 ], [ %17, %16 ], [ %20, %19 ], [ 0, %22 ]
  %30 = getelementptr inbounds %struct.nfs42_clone_res, ptr %2, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_copy(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs42_copy_args, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %16
  store i32 536870912, ptr %20, align 4
  br label %26

23:                                               ; preds = %16
  %24 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %24, label %26, label %25, !prof !9

25:                                               ; preds = %23
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %26

26:                                               ; preds = %25, %23, %22
  %27 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 2
  store i32 %32, ptr %30, align 4
  %33 = getelementptr inbounds %struct.nfs42_copy_args, ptr %2, i32 0, i32 4
  %34 = load ptr, ptr %33, align 8
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %34, ptr noundef nonnull %4)
  %35 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37, !prof !8

37:                                               ; preds = %26
  store i32 1006632960, ptr %35, align 4
  br label %41

38:                                               ; preds = %26
  %39 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %39, label %41, label %40, !prof !9

40:                                               ; preds = %38
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %41

41:                                               ; preds = %40, %38, %37
  %42 = load i32, ptr %27, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %27, align 4
  %44 = load i32, ptr %30, align 4
  %45 = add i32 %44, 14
  store i32 %45, ptr %30, align 4
  %46 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #12
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48, !prof !8

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.nfs42_copy_args, ptr %2, i32 0, i32 2
  %50 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %46, ptr noundef %49, i32 noundef 16) #12
  br label %54

51:                                               ; preds = %41
  %52 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %52, label %54, label %53, !prof !9

53:                                               ; preds = %51
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %54

54:                                               ; preds = %53, %51, %48
  %55 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #12
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57, !prof !8

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.nfs42_copy_args, ptr %2, i32 0, i32 5
  %59 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %55, ptr noundef %58, i32 noundef 16) #12
  br label %63

60:                                               ; preds = %54
  %61 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %61, label %63, label %62, !prof !9

62:                                               ; preds = %60
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %63

63:                                               ; preds = %62, %60, %57
  %64 = getelementptr inbounds %struct.nfs42_copy_args, ptr %2, i32 0, i32 3
  %65 = load i64, ptr %64, align 8
  %66 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 8) #12
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68, !prof !8

68:                                               ; preds = %63
  %69 = tail call i64 @llvm.bswap.i64(i64 %65) #12
  store i64 %69, ptr %66, align 1
  br label %73

70:                                               ; preds = %63
  %71 = load i1, ptr @encode_uint64.__already_done, align 1
  br i1 %71, label %73, label %72, !prof !9

72:                                               ; preds = %70
  store i1 true, ptr @encode_uint64.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 988, i32 noundef 9, ptr noundef null) #12
  br label %73

73:                                               ; preds = %72, %70, %68
  %74 = getelementptr inbounds %struct.nfs42_copy_args, ptr %2, i32 0, i32 6
  %75 = load i64, ptr %74, align 8
  %76 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 8) #12
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78, !prof !8

78:                                               ; preds = %73
  %79 = tail call i64 @llvm.bswap.i64(i64 %75) #12
  store i64 %79, ptr %76, align 1
  br label %83

80:                                               ; preds = %73
  %81 = load i1, ptr @encode_uint64.__already_done, align 1
  br i1 %81, label %83, label %82, !prof !9

82:                                               ; preds = %80
  store i1 true, ptr @encode_uint64.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 988, i32 noundef 9, ptr noundef null) #12
  br label %83

83:                                               ; preds = %82, %80, %78
  %84 = getelementptr inbounds %struct.nfs42_copy_args, ptr %2, i32 0, i32 7
  %85 = load i64, ptr %84, align 8
  %86 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 8) #12
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88, !prof !8

88:                                               ; preds = %83
  %89 = tail call i64 @llvm.bswap.i64(i64 %85) #12
  store i64 %89, ptr %86, align 1
  br label %93

90:                                               ; preds = %83
  %91 = load i1, ptr @encode_uint64.__already_done, align 1
  br i1 %91, label %93, label %92, !prof !9

92:                                               ; preds = %90
  store i1 true, ptr @encode_uint64.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 988, i32 noundef 9, ptr noundef null) #12
  br label %93

93:                                               ; preds = %92, %90, %88
  %94 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96, !prof !8

96:                                               ; preds = %93
  store i32 16777216, ptr %94, align 4
  br label %100

97:                                               ; preds = %93
  %98 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %98, label %100, label %99, !prof !9

99:                                               ; preds = %97
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %100

100:                                              ; preds = %99, %97, %96
  %101 = getelementptr inbounds %struct.nfs42_copy_args, ptr %2, i32 0, i32 8
  %102 = load i8, ptr %101, align 8, !range !15
  %103 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %104 = icmp eq ptr %103, null
  br i1 %104, label %108, label %105, !prof !8

105:                                              ; preds = %100
  %106 = zext i8 %102 to i32
  %107 = shl nuw nsw i32 %106, 24
  store i32 %107, ptr %103, align 4
  br label %111

108:                                              ; preds = %100
  %109 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %109, label %111, label %110, !prof !9

110:                                              ; preds = %108
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %111

111:                                              ; preds = %110, %108, %105
  %112 = getelementptr inbounds %struct.nfs42_copy_args, ptr %2, i32 0, i32 9
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  %115 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %116 = icmp eq ptr %115, null
  br i1 %114, label %117, label %122

117:                                              ; preds = %111
  br i1 %116, label %119, label %118, !prof !8

118:                                              ; preds = %117
  store i32 0, ptr %115, align 4
  br label %129

119:                                              ; preds = %117
  %120 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %120, label %129, label %121, !prof !9

121:                                              ; preds = %119
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %129

122:                                              ; preds = %111
  br i1 %116, label %124, label %123, !prof !8

123:                                              ; preds = %122
  store i32 16777216, ptr %115, align 4
  br label %127

124:                                              ; preds = %122
  %125 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %125, label %127, label %126, !prof !9

126:                                              ; preds = %124
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %127

127:                                              ; preds = %126, %124, %123
  %128 = load ptr, ptr %112, align 4
  tail call fastcc void @encode_nl4_server(ptr noundef %1, ptr noundef %128) #12
  br label %129

129:                                              ; preds = %127, %121, %119, %118
  %130 = load i8, ptr %101, align 8, !range !15
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %151, label %132

132:                                              ; preds = %129
  %133 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %134 = icmp eq ptr %133, null
  br i1 %134, label %136, label %135, !prof !8

135:                                              ; preds = %132
  store i32 83886080, ptr %133, align 4
  br label %139

136:                                              ; preds = %132
  %137 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %137, label %139, label %138, !prof !9

138:                                              ; preds = %136
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %139

139:                                              ; preds = %138, %136, %135
  %140 = add i32 %42, 2
  store i32 %140, ptr %27, align 4
  %141 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 12) #12
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %144, !prof !8

143:                                              ; preds = %139
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

144:                                              ; preds = %139
  %145 = load i64, ptr %74, align 8
  %146 = tail call i64 @llvm.bswap.i64(i64 %145) #12
  store i64 %146, ptr %141, align 1
  %147 = getelementptr i32, ptr %141, i32 2
  %148 = load i64, ptr %84, align 8
  %149 = trunc i64 %148 to i32
  %150 = tail call i32 @llvm.bswap.i32(i32 %149) #12
  store i32 %150, ptr %147, align 4
  br label %151

151:                                              ; preds = %144, %129
  %152 = phi i32 [ %140, %144 ], [ %43, %129 ]
  %153 = icmp ugt i32 %152, 8
  %154 = load i1, ptr @encode_nops.__already_done, align 1
  %155 = xor i1 %154, true
  %156 = select i1 %153, i1 %155, i1 false
  br i1 %156, label %157, label %158, !prof !8

157:                                              ; preds = %151
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %158

158:                                              ; preds = %157, %151
  %159 = tail call i32 @llvm.bswap.i32(i32 %152) #12
  %160 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %161 = load ptr, ptr %160, align 4
  store i32 %159, ptr %161, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_copy(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 32) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = tail call fastcc i32 @decode_copy(ptr noundef %1, ptr noundef %2)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.nfs42_copy_res, ptr %2, i32 0, i32 4, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.nfs42_copy_res, ptr %2, i32 0, i32 4
  %28 = tail call fastcc i32 @decode_commit(ptr noundef %1, ptr noundef %27)
  br label %29

29:                                               ; preds = %26, %22, %19, %16, %13, %10, %7, %3
  %30 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %14, %13 ], [ %17, %16 ], [ %20, %19 ], [ %28, %26 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_offload_cancel(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs42_offload_status_args, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %16
  store i32 1107296256, ptr %20, align 4
  br label %26

23:                                               ; preds = %16
  %24 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %24, label %26, label %25, !prof !9

25:                                               ; preds = %23
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %26

26:                                               ; preds = %25, %23, %22
  %27 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  %30 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32, !prof !8

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.nfs42_offload_status_args, ptr %2, i32 0, i32 2
  %34 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %30, ptr noundef %33, i32 noundef 16) #12
  br label %38

35:                                               ; preds = %26
  %36 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %36, label %38, label %37, !prof !9

37:                                               ; preds = %35
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %38

38:                                               ; preds = %37, %35, %32
  %39 = icmp ugt i32 %29, 8
  %40 = load i1, ptr @encode_nops.__already_done, align 1
  %41 = xor i1 %40, true
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %44, !prof !8

43:                                               ; preds = %38
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %44

44:                                               ; preds = %43, %38
  %45 = tail call i32 @llvm.bswap.i32(i32 %29) #12
  %46 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  store i32 %45, ptr %47, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_offload_cancel(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 66) #12
  br label %15

15:                                               ; preds = %13, %10, %7, %3
  %16 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_lookupp(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs4_lookupp_arg, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %16
  store i32 268435456, ptr %20, align 4
  br label %26

23:                                               ; preds = %16
  %24 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %24, label %26, label %25, !prof !9

25:                                               ; preds = %23
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %26

26:                                               ; preds = %25, %23, %22
  %27 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33, !prof !8

33:                                               ; preds = %26
  store i32 167772160, ptr %31, align 4
  br label %37

34:                                               ; preds = %26
  %35 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %35, label %37, label %36, !prof !9

36:                                               ; preds = %34
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %37

37:                                               ; preds = %36, %34, %33
  %38 = add i32 %28, 2
  store i32 %38, ptr %27, align 4
  %39 = add i32 %30, 37
  store i32 %39, ptr %29, align 4
  %40 = getelementptr inbounds %struct.nfs4_lookupp_arg, ptr %2, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  call fastcc void @encode_getattr(ptr noundef %1, ptr noundef nonnull @nfs4_fattr_bitmap, ptr noundef %41, i32 noundef 3, ptr noundef nonnull %4) #12
  %42 = load i32, ptr %27, align 4
  %43 = icmp ugt i32 %42, 8
  %44 = load i1, ptr @encode_nops.__already_done, align 1
  %45 = xor i1 %44, true
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %48, !prof !8

47:                                               ; preds = %37
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %48

48:                                               ; preds = %47, %37
  %49 = tail call i32 @llvm.bswap.i32(i32 %42) #12
  %50 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  store i32 %49, ptr %51, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_lookupp(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 16) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.nfs4_lookupp_res, ptr %2, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = tail call fastcc i32 @decode_getfh(ptr noundef %1, ptr noundef %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.nfs4_lookupp_res, ptr %2, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nfs4_lookupp_res, ptr %2, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = tail call fastcc i32 @decode_getfattr_generic(ptr noundef %1, ptr noundef %23, ptr noundef null, ptr noundef %25) #12
  br label %27

27:                                               ; preds = %21, %16, %13, %10, %7, %3
  %28 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %14, %13 ], [ %19, %16 ], [ %26, %21 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_layouterror(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs42_layouterror_args, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr i8, ptr %19, i32 -288
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %20, ptr noundef nonnull %4)
  %21 = getelementptr inbounds %struct.nfs42_layouterror_args, ptr %2, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  br i1 %23, label %77, label %26

26:                                               ; preds = %64, %16
  %27 = phi i32 [ %37, %64 ], [ %25, %16 ]
  %28 = phi i32 [ %74, %64 ], [ 0, %16 ]
  %29 = getelementptr %struct.nfs42_layouterror_args, ptr %2, i32 0, i32 3, i32 %28
  %30 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32, !prof !8

32:                                               ; preds = %26
  store i32 1073741824, ptr %30, align 4
  br label %36

33:                                               ; preds = %26
  %34 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %34, label %36, label %35, !prof !9

35:                                               ; preds = %33
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %36

36:                                               ; preds = %35, %33, %32
  %37 = add i32 %27, 1
  %38 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #12
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41, !prof !8

40:                                               ; preds = %36
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

41:                                               ; preds = %36
  %42 = load i64, ptr %29, align 8
  %43 = tail call i64 @llvm.bswap.i64(i64 %42) #12
  store i64 %43, ptr %38, align 1
  %44 = getelementptr i32, ptr %38, i32 2
  %45 = getelementptr %struct.nfs42_layouterror_args, ptr %2, i32 0, i32 3, i32 %28, i32 1
  %46 = load i64, ptr %45, align 8
  %47 = tail call i64 @llvm.bswap.i64(i64 %46) #12
  store i64 %47, ptr %44, align 1
  %48 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #12
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50, !prof !8

50:                                               ; preds = %41
  %51 = getelementptr %struct.nfs42_layouterror_args, ptr %2, i32 0, i32 3, i32 %28, i32 2
  %52 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %48, ptr noundef %51, i32 noundef 16) #12
  br label %56

53:                                               ; preds = %41
  %54 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %54, label %56, label %55, !prof !9

55:                                               ; preds = %53
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %56

56:                                               ; preds = %55, %53, %50
  %57 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %60, !prof !8

59:                                               ; preds = %56
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

60:                                               ; preds = %56
  store i32 16777216, ptr %57, align 4
  %61 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 24) #12
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %64, !prof !8

63:                                               ; preds = %60
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

64:                                               ; preds = %60
  %65 = getelementptr %struct.nfs42_layouterror_args, ptr %2, i32 0, i32 3, i32 %28, i32 3
  %66 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %61, ptr noundef %65, i32 noundef 16) #12
  %67 = getelementptr %struct.nfs42_layouterror_args, ptr %2, i32 0, i32 3, i32 %28, i32 3, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #12
  %70 = getelementptr i32, ptr %66, i32 1
  store i32 %69, ptr %66, align 4
  %71 = getelementptr %struct.nfs42_layouterror_args, ptr %2, i32 0, i32 3, i32 %28, i32 3, i32 0, i32 2
  %72 = load i32, ptr %71, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #12
  store i32 %73, ptr %70, align 4
  %74 = add nuw i32 %28, 1
  %75 = load i32, ptr %21, align 4
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %26, label %77

77:                                               ; preds = %64, %16
  %78 = phi i32 [ %25, %16 ], [ %37, %64 ]
  %79 = icmp ugt i32 %78, 8
  %80 = load i1, ptr @encode_nops.__already_done, align 1
  %81 = xor i1 %80, true
  %82 = select i1 %79, i1 %81, i1 false
  br i1 %82, label %83, label %84, !prof !8

83:                                               ; preds = %77
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %84

84:                                               ; preds = %83, %77
  %85 = tail call i32 @llvm.bswap.i32(i32 %78) #12
  %86 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %87 = load ptr, ptr %86, align 4
  store i32 %85, ptr %87, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_layouterror(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = getelementptr inbounds %struct.nfs42_layouterror_res, ptr %2, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp ne i32 %13, 0
  %15 = icmp eq i32 %11, 0
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %25

17:                                               ; preds = %17, %10
  %18 = phi i32 [ %20, %17 ], [ 0, %10 ]
  %19 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 64) #12
  %20 = add nuw i32 %18, 1
  %21 = load i32, ptr %12, align 4
  %22 = icmp ult i32 %20, %21
  %23 = icmp eq i32 %19, 0
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %17, label %25

25:                                               ; preds = %17, %10, %7, %3
  %26 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %19, %17 ]
  %27 = getelementptr inbounds %struct.nfs42_layouterror_res, ptr %2, i32 0, i32 2
  store i32 %26, ptr %27, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_copy_notify(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs42_copy_notify_args, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %16
  store i32 1023410176, ptr %20, align 4
  br label %26

23:                                               ; preds = %16
  %24 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %24, label %26, label %25, !prof !9

25:                                               ; preds = %23
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %26

26:                                               ; preds = %25, %23, %22
  %27 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  %30 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32, !prof !8

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.nfs42_copy_notify_args, ptr %2, i32 0, i32 2
  %34 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %30, ptr noundef %33, i32 noundef 16) #12
  br label %38

35:                                               ; preds = %26
  %36 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %36, label %38, label %37, !prof !9

37:                                               ; preds = %35
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %38

38:                                               ; preds = %37, %35, %32
  %39 = getelementptr inbounds %struct.nfs42_copy_notify_args, ptr %2, i32 0, i32 3
  tail call fastcc void @encode_nl4_server(ptr noundef %1, ptr noundef %39) #12
  %40 = icmp ugt i32 %29, 8
  %41 = load i1, ptr @encode_nops.__already_done, align 1
  %42 = xor i1 %41, true
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %45, !prof !8

44:                                               ; preds = %38
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %45

45:                                               ; preds = %44, %38
  %46 = tail call i32 @llvm.bswap.i32(i32 %29) #12
  %47 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  store i32 %46, ptr %48, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_copy_notify(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %99

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %99

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %99

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 61) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %99

16:                                               ; preds = %13
  %17 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 12) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %99, label %19, !prof !8

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.nfs42_copy_notify_res, ptr %2, i32 0, i32 1
  %21 = load i64, ptr %17, align 1
  %22 = tail call i64 @llvm.bswap.i64(i64 %21) #12
  store i64 %22, ptr %20, align 8
  %23 = getelementptr i32, ptr %17, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #12
  %26 = getelementptr inbounds %struct.nfs42_copy_notify_res, ptr %2, i32 0, i32 1, i32 1
  store i32 %25, ptr %26, align 8
  %27 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 16) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %99, label %29, !prof !8

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.nfs42_copy_notify_res, ptr %2, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %30, ptr noundef nonnull align 4 dereferenceable(16) %27, i32 16, i1 false) #12
  %31 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %32 = icmp eq ptr %31, null
  br i1 %32, label %99, label %33, !prof !8

33:                                               ; preds = %29
  %34 = load i32, ptr %31, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #12
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @__func__.decode_copy_notify, i32 noundef %35) #13
  br label %39

39:                                               ; preds = %37, %33
  %40 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %41 = icmp eq ptr %40, null
  br i1 %41, label %99, label %42, !prof !8

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.nfs42_copy_notify_res, ptr %2, i32 0, i32 3
  %44 = load i32, ptr %40, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #12
  store i32 %45, ptr %43, align 4
  switch i32 %45, label %96 [
    i32 1, label %46
    i32 2, label %46
    i32 3, label %63
  ]

46:                                               ; preds = %42, %42
  %47 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %48 = icmp eq ptr %47, null
  br i1 %48, label %99, label %49, !prof !8

49:                                               ; preds = %46
  %50 = load i32, ptr %47, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = tail call i32 @llvm.bswap.i32(i32 %50) #12
  %54 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %53) #12
  %55 = icmp eq ptr %54, null
  %56 = icmp ugt i32 %53, 1024
  %57 = or i1 %56, %55
  br i1 %57, label %99, label %58, !prof !12

58:                                               ; preds = %52, %49
  %59 = phi ptr [ null, %49 ], [ %54, %52 ]
  %60 = phi i32 [ 0, %49 ], [ %53, %52 ]
  %61 = getelementptr inbounds %struct.nfs42_copy_notify_res, ptr %2, i32 0, i32 3, i32 1
  %62 = getelementptr inbounds %struct.nfs42_copy_notify_res, ptr %2, i32 0, i32 3, i32 1, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %62, ptr align 1 %59, i32 %60, i1 false) #12
  store i32 %60, ptr %61, align 4
  br label %99

63:                                               ; preds = %42
  %64 = getelementptr inbounds %struct.nfs42_copy_notify_res, ptr %2, i32 0, i32 3, i32 1
  %65 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %66 = icmp eq ptr %65, null
  br i1 %66, label %99, label %67, !prof !8

67:                                               ; preds = %63
  %68 = load i32, ptr %65, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = tail call i32 @llvm.bswap.i32(i32 %68) #12
  %72 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %71) #12
  %73 = icmp eq ptr %72, null
  %74 = icmp ugt i32 %71, 5
  %75 = or i1 %74, %73
  br i1 %75, label %99, label %76, !prof !18

76:                                               ; preds = %70, %67
  %77 = phi i32 [ 0, %67 ], [ %71, %70 ]
  %78 = phi ptr [ null, %67 ], [ %72, %70 ]
  %79 = getelementptr inbounds %struct.nfs42_copy_notify_res, ptr %2, i32 0, i32 3, i32 1, i32 0, i32 1, i32 60
  store i32 %77, ptr %79, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %64, ptr align 1 %78, i32 %77, i1 false) #12
  %80 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %81 = icmp eq ptr %80, null
  br i1 %81, label %99, label %82, !prof !8

82:                                               ; preds = %76
  %83 = load i32, ptr %80, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %82
  %86 = tail call i32 @llvm.bswap.i32(i32 %83) #12
  %87 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %86) #12
  %88 = icmp eq ptr %87, null
  %89 = icmp ugt i32 %86, 57
  %90 = or i1 %89, %88
  br i1 %90, label %99, label %91, !prof !18

91:                                               ; preds = %85, %82
  %92 = phi i32 [ 0, %82 ], [ %86, %85 ]
  %93 = phi ptr [ null, %82 ], [ %87, %85 ]
  %94 = getelementptr inbounds %struct.nfs42_copy_notify_res, ptr %2, i32 0, i32 3, i32 1, i32 0, i32 1, i32 64
  store i32 %92, ptr %94, align 4
  %95 = getelementptr inbounds %struct.nfs42_copy_notify_res, ptr %2, i32 0, i32 3, i32 1, i32 0, i32 1, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %95, ptr align 1 %93, i32 %92, i1 false) #12
  br label %99

96:                                               ; preds = %42
  %97 = load i1, ptr @decode_nl4_server.__already_done, align 1
  br i1 %97, label %99, label %98, !prof !9

98:                                               ; preds = %96
  store i1 true, ptr @decode_nl4_server.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.79, i32 noundef 942, i32 noundef 9, ptr noundef null) #12
  br label %99

99:                                               ; preds = %98, %96, %91, %85, %76, %70, %63, %58, %52, %46, %39, %29, %19, %16, %13, %10, %7, %3
  %100 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %14, %13 ], [ -5, %16 ], [ -5, %29 ], [ -5, %19 ], [ 0, %91 ], [ 0, %58 ], [ -5, %39 ], [ -5, %98 ], [ -5, %96 ], [ -5, %52 ], [ -5, %46 ], [ -5, %70 ], [ -5, %63 ], [ -5, %85 ], [ -5, %76 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_getxattr(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs42_getxattrargs, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 3
  %23 = getelementptr inbounds %struct.nfs42_getxattrargs, ptr %2, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27, !prof !8

27:                                               ; preds = %16
  store i32 1207959552, ptr %25, align 4
  br label %31

28:                                               ; preds = %16
  %29 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %29, label %31, label %30, !prof !9

30:                                               ; preds = %28
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %31

31:                                               ; preds = %30, %28, %27
  %32 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 1
  %35 = tail call i32 @strlen(ptr noundef %24) #12
  %36 = add i32 %35, 7
  %37 = and i32 %36, -4
  %38 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %37) #12
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40, !prof !8

40:                                               ; preds = %31
  %41 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %38, ptr noundef %24, i32 noundef %35) #12
  %42 = icmp slt i32 %37, 0
  br label %43

43:                                               ; preds = %40, %31
  %44 = phi i1 [ %42, %40 ], [ true, %31 ]
  %45 = load i1, ptr @encode_string.__already_done, align 1
  %46 = xor i1 %45, true
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %49, !prof !8

48:                                               ; preds = %43
  store i1 true, ptr @encode_string.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 978, i32 noundef 9, ptr noundef null) #12
  br label %49

49:                                               ; preds = %48, %43
  %50 = getelementptr inbounds %struct.nfs42_getxattrargs, ptr %2, i32 0, i32 4
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.nfs42_getxattrargs, ptr %2, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  tail call void @rpc_prepare_reply_pages(ptr noundef %0, ptr noundef %51, i32 noundef 0, i32 noundef %53, i32 noundef %22) #12
  %54 = icmp ugt i32 %34, 8
  %55 = load i1, ptr @encode_nops.__already_done, align 1
  %56 = xor i1 %55, true
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %59, !prof !8

58:                                               ; preds = %49
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %59

59:                                               ; preds = %58, %49
  %60 = tail call i32 @llvm.bswap.i32(i32 %34) #12
  %61 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  store i32 %60, ptr %62, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_getxattr(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 72) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %32, label %19, !prof !8

19:                                               ; preds = %16
  %20 = load i32, ptr %17, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #12
  %22 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 2, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp ugt i32 %21, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.nfs42_getxattrres, ptr %2, i32 0, i32 1
  store i32 %21, ptr %26, align 4
  %27 = icmp eq i32 %20, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @xdr_read_pages(ptr noundef %1, i32 noundef %21) #12
  %30 = icmp ult i32 %29, %21
  br i1 %30, label %32, label %31

31:                                               ; preds = %28, %25
  br label %32

32:                                               ; preds = %31, %28, %19, %16, %13, %10, %7, %3
  %33 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ 0, %31 ], [ %14, %13 ], [ -5, %16 ], [ -34, %19 ], [ -5, %28 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_setxattr(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs42_setxattrargs, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %16
  store i32 1224736768, ptr %20, align 4
  br label %26

23:                                               ; preds = %16
  %24 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %24, label %26, label %25, !prof !9

25:                                               ; preds = %23
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %26

26:                                               ; preds = %25, %23, %22
  %27 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 7
  store i32 %32, ptr %30, align 4
  %33 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36, !prof !8

35:                                               ; preds = %26
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.nfs42_setxattrargs, ptr %2, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #12
  store i32 %39, ptr %33, align 4
  %40 = getelementptr inbounds %struct.nfs42_setxattrargs, ptr %2, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @strlen(ptr noundef %41) #12
  %43 = add i32 %42, 7
  %44 = and i32 %43, -4
  %45 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %44) #12
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47, !prof !8

47:                                               ; preds = %36
  %48 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %45, ptr noundef %41, i32 noundef %42) #12
  %49 = icmp slt i32 %44, 0
  br label %50

50:                                               ; preds = %47, %36
  %51 = phi i1 [ %49, %47 ], [ true, %36 ]
  %52 = load i1, ptr @encode_string.__already_done, align 1
  %53 = xor i1 %52, true
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %56, !prof !8

55:                                               ; preds = %50
  store i1 true, ptr @encode_string.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 978, i32 noundef 9, ptr noundef null) #12
  br label %56

56:                                               ; preds = %55, %50
  %57 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %60, !prof !8

59:                                               ; preds = %56
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.nfs42_setxattrargs, ptr %2, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #12
  store i32 %63, ptr %57, align 4
  %64 = load i32, ptr %61, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.nfs42_setxattrargs, ptr %2, i32 0, i32 5
  %68 = load ptr, ptr %67, align 4
  tail call void @xdr_write_pages(ptr noundef %1, ptr noundef %68, i32 noundef 0, i32 noundef %64) #12
  br label %69

69:                                               ; preds = %66, %60
  %70 = icmp ugt i32 %29, 8
  %71 = load i1, ptr @encode_nops.__already_done, align 1
  %72 = xor i1 %71, true
  %73 = select i1 %70, i1 %72, i1 false
  br i1 %73, label %74, label %75, !prof !8

74:                                               ; preds = %69
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %75

75:                                               ; preds = %74, %69
  %76 = tail call i32 @llvm.bswap.i32(i32 %29) #12
  %77 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  store i32 %76, ptr %78, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_setxattr(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %31

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.nfs42_setxattrres, ptr %2, i32 0, i32 1
  %15 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 73) #12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 20) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20, !prof !8

20:                                               ; preds = %17
  %21 = getelementptr i32, ptr %18, i32 1
  %22 = load i32, ptr %18, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #12
  store i32 %23, ptr %14, align 8
  %24 = getelementptr inbounds %struct.nfs42_setxattrres, ptr %2, i32 0, i32 1, i32 1
  %25 = load i64, ptr %21, align 1
  %26 = tail call i64 @llvm.bswap.i64(i64 %25) #12
  store i64 %26, ptr %24, align 8
  %27 = getelementptr i32, ptr %18, i32 3
  %28 = getelementptr inbounds %struct.nfs42_setxattrres, ptr %2, i32 0, i32 1, i32 2
  %29 = load i64, ptr %27, align 1
  %30 = tail call i64 @llvm.bswap.i64(i64 %29) #12
  store i64 %30, ptr %28, align 8
  br label %31

31:                                               ; preds = %20, %17, %13, %10, %7, %3
  %32 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %15, %13 ], [ 0, %20 ], [ -5, %17 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_listxattrs(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs42_listxattrsargs, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 5
  %23 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25, !prof !8

25:                                               ; preds = %16
  store i32 1241513984, ptr %23, align 4
  br label %29

26:                                               ; preds = %16
  %27 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %27, label %29, label %28, !prof !9

28:                                               ; preds = %26
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %29

29:                                               ; preds = %28, %26, %25
  %30 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 1
  %33 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 12) #12
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36, !prof !8

35:                                               ; preds = %29
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.nfs42_listxattrsargs, ptr %2, i32 0, i32 3
  %38 = load i64, ptr %37, align 8
  %39 = tail call i64 @llvm.bswap.i64(i64 %38) #12
  store i64 %39, ptr %33, align 1
  %40 = getelementptr i32, ptr %33, i32 2
  %41 = getelementptr inbounds %struct.nfs42_listxattrsargs, ptr %2, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, 12
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #12
  store i32 %44, ptr %40, align 4
  %45 = getelementptr inbounds %struct.nfs42_listxattrsargs, ptr %2, i32 0, i32 4
  %46 = load ptr, ptr %45, align 8
  %47 = load i32, ptr %41, align 4
  tail call void @rpc_prepare_reply_pages(ptr noundef %0, ptr noundef %46, i32 noundef 0, i32 noundef %47, i32 noundef %22) #12
  %48 = icmp ugt i32 %32, 8
  %49 = load i1, ptr @encode_nops.__already_done, align 1
  %50 = xor i1 %49, true
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %53, !prof !8

52:                                               ; preds = %36
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %53

53:                                               ; preds = %52, %36
  %54 = tail call i32 @llvm.bswap.i32(i32 %32) #12
  %55 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  store i32 %54, ptr %56, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_listxattrs(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = getelementptr inbounds %struct.nfs42_listxattrsres, ptr %2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @page_address(ptr noundef %6) #12
  %8 = getelementptr inbounds %struct.xdr_stream, ptr %1, i32 0, i32 4
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.xdr_stream, ptr %1, i32 0, i32 4, i32 1
  store i32 4096, ptr %9, align 4
  %10 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %84

12:                                               ; preds = %3
  %13 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %84

15:                                               ; preds = %12
  %16 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %84

18:                                               ; preds = %15
  %19 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 74) #12
  switch i32 %19, label %84 [
    i32 0, label %20
    i32 -525, label %79
    i32 -34, label %79
  ]

20:                                               ; preds = %18
  %21 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %84, label %23, !prof !8

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.nfs42_listxattrsres, ptr %2, i32 0, i32 4
  %25 = load i64, ptr %21, align 1
  %26 = tail call i64 @llvm.bswap.i64(i64 %25) #12
  store i64 %26, ptr %24, align 8
  %27 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %84, label %29, !prof !8

29:                                               ; preds = %23
  %30 = load i32, ptr %27, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %69, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @llvm.bswap.i32(i32 %30) #12
  %34 = getelementptr inbounds %struct.nfs42_listxattrsres, ptr %2, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nfs42_listxattrsres, ptr %2, i32 0, i32 3
  %37 = load i32, ptr %36, align 8
  br label %38

38:                                               ; preds = %64, %32
  %39 = phi i32 [ %43, %64 ], [ %33, %32 ]
  %40 = phi ptr [ %66, %64 ], [ %35, %32 ]
  %41 = phi i32 [ %67, %64 ], [ 0, %32 ]
  %42 = phi i32 [ %65, %64 ], [ %37, %32 ]
  %43 = add i32 %39, -1
  %44 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %84, label %46, !prof !8

46:                                               ; preds = %38
  %47 = load i32, ptr %44, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #12
  %49 = icmp ugt i32 %48, 250
  br i1 %49, label %79, label %50

50:                                               ; preds = %46
  %51 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %48) #12
  %52 = icmp eq ptr %51, null
  br i1 %52, label %84, label %53, !prof !8

53:                                               ; preds = %50
  %54 = add nuw nsw i32 %48, 5
  %55 = add nuw nsw i32 %48, 6
  %56 = icmp eq ptr %40, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %53
  %58 = icmp ult i32 %42, %55
  br i1 %58, label %79, label %59

59:                                               ; preds = %57
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %40, ptr noundef nonnull align 1 dereferenceable(5) @.str.81, i32 5, i1 false) #12
  %60 = getelementptr i8, ptr %40, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %60, ptr nonnull align 4 %51, i32 %48, i1 false) #12
  %61 = getelementptr i8, ptr %40, i32 %54
  store i8 0, ptr %61, align 1
  %62 = getelementptr i8, ptr %40, i32 %55
  %63 = sub i32 %42, %55
  br label %64

64:                                               ; preds = %59, %53
  %65 = phi i32 [ %63, %59 ], [ %42, %53 ]
  %66 = phi ptr [ %62, %59 ], [ null, %53 ]
  %67 = add i32 %55, %41
  %68 = icmp eq i32 %43, 0
  br i1 %68, label %69, label %38

69:                                               ; preds = %64, %29
  %70 = phi i32 [ 0, %29 ], [ %67, %64 ]
  %71 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %72 = icmp eq ptr %71, null
  br i1 %72, label %84, label %73, !prof !8

73:                                               ; preds = %69
  %74 = load i32, ptr %71, align 4
  %75 = icmp ne i32 %74, 0
  %76 = getelementptr inbounds %struct.nfs42_listxattrsres, ptr %2, i32 0, i32 5
  %77 = zext i1 %75 to i8
  store i8 %77, ptr %76, align 8
  %78 = getelementptr inbounds %struct.nfs42_listxattrsres, ptr %2, i32 0, i32 6
  store i32 %70, ptr %78, align 4
  br label %84

79:                                               ; preds = %57, %46, %18, %18
  %80 = getelementptr inbounds %struct.nfs42_listxattrsres, ptr %2, i32 0, i32 3
  %81 = load i32, ptr %80, align 8
  %82 = icmp eq i32 %81, 65536
  %83 = select i1 %82, i32 -7, i32 -34
  br label %84

84:                                               ; preds = %79, %73, %69, %50, %38, %23, %20, %18, %15, %12, %3
  %85 = phi i32 [ %10, %3 ], [ %13, %12 ], [ %16, %15 ], [ -5, %20 ], [ -5, %23 ], [ -5, %69 ], [ %83, %79 ], [ 0, %73 ], [ %19, %18 ], [ -5, %38 ], [ -5, %50 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_removexattr(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs42_removexattrargs, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = getelementptr inbounds %struct.nfs42_removexattrargs, ptr %2, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24, !prof !8

24:                                               ; preds = %16
  store i32 1258291200, ptr %22, align 4
  br label %28

25:                                               ; preds = %16
  %26 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %26, label %28, label %27, !prof !9

27:                                               ; preds = %25
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %28

28:                                               ; preds = %27, %25, %24
  %29 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 1
  %32 = tail call i32 @strlen(ptr noundef %21) #12
  %33 = add i32 %32, 7
  %34 = and i32 %33, -4
  %35 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %34) #12
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37, !prof !8

37:                                               ; preds = %28
  %38 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %35, ptr noundef %21, i32 noundef %32) #12
  %39 = icmp slt i32 %34, 0
  br label %40

40:                                               ; preds = %37, %28
  %41 = phi i1 [ %39, %37 ], [ true, %28 ]
  %42 = load i1, ptr @encode_string.__already_done, align 1
  %43 = xor i1 %42, true
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %46, !prof !8

45:                                               ; preds = %40
  store i1 true, ptr @encode_string.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 978, i32 noundef 9, ptr noundef null) #12
  br label %46

46:                                               ; preds = %45, %40
  %47 = icmp ugt i32 %31, 8
  %48 = load i1, ptr @encode_nops.__already_done, align 1
  %49 = xor i1 %48, true
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %52, !prof !8

51:                                               ; preds = %46
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %52

52:                                               ; preds = %51, %46
  %53 = tail call i32 @llvm.bswap.i32(i32 %31) #12
  %54 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  store i32 %53, ptr %55, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_removexattr(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %31

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.nfs42_removexattrres, ptr %2, i32 0, i32 1
  %15 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 75) #12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 20) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20, !prof !8

20:                                               ; preds = %17
  %21 = getelementptr i32, ptr %18, i32 1
  %22 = load i32, ptr %18, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #12
  store i32 %23, ptr %14, align 8
  %24 = getelementptr inbounds %struct.nfs42_removexattrres, ptr %2, i32 0, i32 1, i32 1
  %25 = load i64, ptr %21, align 1
  %26 = tail call i64 @llvm.bswap.i64(i64 %25) #12
  store i64 %26, ptr %24, align 8
  %27 = getelementptr i32, ptr %18, i32 3
  %28 = getelementptr inbounds %struct.nfs42_removexattrres, ptr %2, i32 0, i32 1, i32 2
  %29 = load i64, ptr %27, align 1
  %30 = tail call i64 @llvm.bswap.i64(i64 %29) #12
  store i64 %30, ptr %28, align 8
  br label %31

31:                                               ; preds = %20, %17, %13, %10, %7, %3
  %32 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %15, %13 ], [ 0, %20 ], [ -5, %17 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_xdr_enc_read_plus(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfs4_session, ptr %8, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_client, ptr %12, i32 0, i32 31
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ 0, %3 ]
  store i32 %17, ptr %5, align 4
  call fastcc void @encode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  call fastcc void @encode_sequence(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %18 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  call fastcc void @encode_putfh(ptr noundef %1, ptr noundef %19, ptr noundef nonnull %4)
  %20 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %16
  store i32 1140850688, ptr %20, align 4
  br label %26

23:                                               ; preds = %16
  %24 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %24, label %26, label %25, !prof !9

25:                                               ; preds = %23
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %26

26:                                               ; preds = %25, %23, %22
  %27 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 14
  store i32 %32, ptr %30, align 4
  %33 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #12
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35, !prof !8

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 4
  %37 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %33, ptr noundef %36, i32 noundef 16) #12
  br label %41

38:                                               ; preds = %26
  %39 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %39, label %41, label %40, !prof !9

40:                                               ; preds = %38
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %41

41:                                               ; preds = %40, %38, %35
  %42 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 5
  %43 = load i64, ptr %42, align 8
  %44 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 8) #12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46, !prof !8

46:                                               ; preds = %41
  %47 = tail call i64 @llvm.bswap.i64(i64 %43) #12
  store i64 %47, ptr %44, align 1
  br label %51

48:                                               ; preds = %41
  %49 = load i1, ptr @encode_uint64.__already_done, align 1
  br i1 %49, label %51, label %50, !prof !9

50:                                               ; preds = %48
  store i1 true, ptr @encode_uint64.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 988, i32 noundef 9, ptr noundef null) #12
  br label %51

51:                                               ; preds = %50, %48, %46
  %52 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 6
  %53 = load i32, ptr %52, align 8
  %54 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #12
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56, !prof !8

56:                                               ; preds = %51
  %57 = tail call i32 @llvm.bswap.i32(i32 %53) #12
  store i32 %57, ptr %54, align 4
  br label %61

58:                                               ; preds = %51
  %59 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %59, label %61, label %60, !prof !9

60:                                               ; preds = %58
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %61

61:                                               ; preds = %60, %58, %56
  %62 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 8
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.nfs_pgio_args, ptr %2, i32 0, i32 7
  %65 = load i32, ptr %64, align 4
  %66 = load i32, ptr %52, align 8
  tail call void @rpc_prepare_reply_pages(ptr noundef %0, ptr noundef %63, i32 noundef %65, i32 noundef %66, i32 noundef %32) #12
  %67 = icmp ugt i32 %29, 8
  %68 = load i1, ptr @encode_nops.__already_done, align 1
  %69 = xor i1 %68, true
  %70 = select i1 %67, i1 %69, i1 false
  br i1 %70, label %71, label %72, !prof !8

71:                                               ; preds = %61
  store i1 true, ptr @encode_nops.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1059, i32 noundef 9, ptr noundef null) #12
  br label %72

72:                                               ; preds = %71, %61
  %73 = tail call i32 @llvm.bswap.i32(i32 %29) #12
  %74 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  store i32 %73, ptr %75, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_xdr_dec_read_plus(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.compound_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !14
  %5 = call fastcc i32 @decode_compound_hdr(ptr noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %119

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @decode_sequence(ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %119

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 22) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %119

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @decode_op_hdr(ptr noundef %1, i32 noundef 68) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %119

16:                                               ; preds = %13
  %17 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %119, label %19, !prof !8

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.nfs_pgio_res, ptr %2, i32 0, i32 2
  store i64 0, ptr %20, align 8
  %21 = getelementptr i32, ptr %17, i32 1
  %22 = load i32, ptr %17, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #12
  %24 = load i32, ptr %21, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %115, label %26

26:                                               ; preds = %19
  %27 = tail call i32 @llvm.bswap.i32(i32 %24) #12
  %28 = getelementptr i8, ptr %2, i32 -40
  %29 = getelementptr i8, ptr %2, i32 -32
  %30 = tail call i32 @llvm.umax.i32(i32 %27, i32 1) #12
  br label %31

31:                                               ; preds = %105, %26
  %32 = phi i32 [ 0, %26 ], [ %108, %105 ]
  %33 = phi i32 [ %23, %26 ], [ %107, %105 ]
  %34 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #12
  %35 = icmp eq ptr %34, null
  br i1 %35, label %110, label %36

36:                                               ; preds = %31
  %37 = load i32, ptr %34, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #12
  switch i32 %38, label %119 [
    i32 0, label %39
    i32 1, label %64
  ]

39:                                               ; preds = %36
  %40 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 12) #12
  %41 = icmp eq ptr %40, null
  br i1 %41, label %110, label %42

42:                                               ; preds = %39
  %43 = getelementptr i32, ptr %40, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #12
  %46 = load i64, ptr %20, align 8
  %47 = trunc i64 %46 to i32
  %48 = add i32 %45, 3
  %49 = and i32 %48, -4
  %50 = tail call i32 @xdr_align_data(ptr noundef %1, i32 noundef %47, i32 noundef %49) #12
  %51 = tail call i32 @llvm.umin.i32(i32 %50, i32 %45) #12
  %52 = load i64, ptr %20, align 8
  %53 = zext i32 %51 to i64
  %54 = add i64 %52, %53
  %55 = load i32, ptr %29, align 8
  %56 = zext i32 %55 to i64
  %57 = icmp ugt i64 %54, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %42
  %59 = icmp ult i64 %52, %56
  br i1 %59, label %60, label %110

60:                                               ; preds = %58
  store i64 %56, ptr %20, align 8
  br label %110

61:                                               ; preds = %42
  store i64 %54, ptr %20, align 8
  %62 = icmp ugt i32 %45, %50
  %63 = trunc i64 %54 to i32
  br i1 %62, label %110, label %105

64:                                               ; preds = %36
  %65 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 16) #12
  %66 = icmp eq ptr %65, null
  br i1 %66, label %110, label %67

67:                                               ; preds = %64
  %68 = load i64, ptr %65, align 1
  %69 = tail call i64 @llvm.bswap.i64(i64 %68) #12
  %70 = getelementptr i32, ptr %65, i32 2
  %71 = load i64, ptr %70, align 1
  %72 = tail call i64 @llvm.bswap.i64(i64 %71) #12
  %73 = load i64, ptr %28, align 8
  %74 = load i64, ptr %20, align 8
  %75 = add i64 %74, %73
  %76 = icmp eq i64 %69, %75
  br i1 %76, label %84, label %77

77:                                               ; preds = %67
  %78 = icmp ugt i64 %69, %75
  %79 = add i64 %72, %69
  %80 = icmp ult i64 %79, %75
  %81 = select i1 %78, i1 true, i1 %80
  br i1 %81, label %110, label %82

82:                                               ; preds = %77
  %83 = sub i64 %79, %75
  br label %84

84:                                               ; preds = %82, %67
  %85 = phi i64 [ %72, %67 ], [ %83, %82 ]
  %86 = add i64 %85, %74
  %87 = load i32, ptr %29, align 8
  %88 = zext i32 %87 to i64
  %89 = icmp ugt i64 %86, %88
  %90 = trunc i64 %74 to i32
  br i1 %89, label %91, label %95

91:                                               ; preds = %84
  %92 = icmp ult i64 %74, %88
  br i1 %92, label %93, label %110, !prof !9

93:                                               ; preds = %91
  %94 = sub i64 %88, %74
  br label %95

95:                                               ; preds = %93, %84
  %96 = phi i32 [ 0, %93 ], [ %33, %84 ]
  %97 = phi i64 [ %94, %93 ], [ %85, %84 ]
  %98 = trunc i64 %97 to i32
  %99 = tail call i32 @xdr_expand_hole(ptr noundef %1, i32 noundef %90, i32 noundef %98) #12
  %100 = zext i32 %99 to i64
  %101 = load i64, ptr %20, align 8
  %102 = add i64 %101, %100
  store i64 %102, ptr %20, align 8
  %103 = icmp ugt i64 %97, %100
  %104 = trunc i64 %102 to i32
  br i1 %103, label %110, label %105

105:                                              ; preds = %95, %61
  %106 = phi i32 [ %63, %61 ], [ %104, %95 ]
  %107 = phi i32 [ %33, %61 ], [ %96, %95 ]
  %108 = add nuw i32 %32, 1
  %109 = icmp eq i32 %108, %30
  br i1 %109, label %115, label %31

110:                                              ; preds = %95, %91, %77, %64, %61, %60, %58, %39, %31
  %111 = icmp eq i32 %32, 0
  br i1 %111, label %119, label %112, !prof !8

112:                                              ; preds = %110
  %113 = load i64, ptr %20, align 8
  %114 = trunc i64 %113 to i32
  br label %115

115:                                              ; preds = %112, %105, %19
  %116 = phi i32 [ 0, %19 ], [ %114, %112 ], [ %106, %105 ]
  %117 = phi i32 [ %23, %19 ], [ 0, %112 ], [ %107, %105 ]
  %118 = getelementptr inbounds %struct.nfs_pgio_res, ptr %2, i32 0, i32 4, i32 0, i32 1
  store i32 %117, ptr %118, align 4
  br label %119

119:                                              ; preds = %115, %110, %36, %16, %13, %10, %7, %3
  %120 = phi i32 [ %5, %3 ], [ %8, %7 ], [ %11, %10 ], [ %116, %115 ], [ -5, %110 ], [ -5, %16 ], [ %14, %13 ], [ -22, %36 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret i32 %120
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_stream_pos(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_attr_nlink(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  store i32 1, ptr %2, align 4
  %4 = getelementptr i32, ptr %1, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %19, !prof !9

8:                                                ; preds = %3
  %9 = and i32 %5, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11, !prof !8

11:                                               ; preds = %8
  %12 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14, !prof !8

14:                                               ; preds = %11
  %15 = load i32, ptr %12, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #12
  store i32 %16, ptr %2, align 4
  %17 = load i32, ptr %4, align 4
  %18 = and i32 %17, -9
  store i32 %18, ptr %4, align 4
  br label %19

19:                                               ; preds = %14, %11, %8, %3
  %20 = phi i32 [ -5, %3 ], [ -5, %11 ], [ 4, %14 ], [ 0, %8 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_attr_owner(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  store i32 -2, ptr %3, align 4
  %6 = getelementptr i32, ptr %1, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %40, !prof !9

10:                                               ; preds = %5
  %11 = and i32 %7, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %40, label %13

13:                                               ; preds = %10
  %14 = and i32 %7, -17
  store i32 %14, ptr %6, align 4
  %15 = icmp eq ptr %4, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.nfs4_string, ptr %4, i32 0, i32 1
  %18 = tail call i32 @xdr_stream_decode_string_dup(ptr noundef %0, ptr noundef %17, i32 noundef 1024, i32 noundef 3072) #12
  %19 = tail call i32 @llvm.smax.i32(i32 %18, i32 0) #12
  store i32 %19, ptr %4, align 4
  %20 = icmp slt i32 %18, 1
  br i1 %20, label %37, label %40

21:                                               ; preds = %13
  %22 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %39, label %24, !prof !8

24:                                               ; preds = %21
  %25 = load i32, ptr %22, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #12
  %27 = icmp eq i32 %25, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %26) #12
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31, !prof !8

31:                                               ; preds = %28
  %32 = icmp ugt i32 %26, 1024
  br i1 %32, label %36, label %33, !prof !19

33:                                               ; preds = %31
  %34 = tail call i32 @nfs_map_name_to_uid(ptr noundef %2, ptr noundef nonnull %29, i32 noundef %26, ptr noundef %3) #12
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33, %31, %24
  br label %40

37:                                               ; preds = %16
  %38 = icmp eq i32 %18, -74
  br i1 %38, label %39, label %40

39:                                               ; preds = %37, %28, %21
  br label %40

40:                                               ; preds = %39, %37, %36, %33, %16, %10, %5
  %41 = phi i32 [ -5, %5 ], [ 0, %10 ], [ 8388608, %16 ], [ 8, %33 ], [ -5, %39 ], [ 0, %37 ], [ 0, %36 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_attr_group(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  store i32 -2, ptr %3, align 4
  %6 = getelementptr i32, ptr %1, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 31
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %40, !prof !9

10:                                               ; preds = %5
  %11 = and i32 %7, 32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %40, label %13

13:                                               ; preds = %10
  %14 = and i32 %7, -33
  store i32 %14, ptr %6, align 4
  %15 = icmp eq ptr %4, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.nfs4_string, ptr %4, i32 0, i32 1
  %18 = tail call i32 @xdr_stream_decode_string_dup(ptr noundef %0, ptr noundef %17, i32 noundef 1024, i32 noundef 3072) #12
  %19 = tail call i32 @llvm.smax.i32(i32 %18, i32 0) #12
  store i32 %19, ptr %4, align 4
  %20 = icmp slt i32 %18, 1
  br i1 %20, label %37, label %40

21:                                               ; preds = %13
  %22 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %39, label %24, !prof !8

24:                                               ; preds = %21
  %25 = load i32, ptr %22, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #12
  %27 = icmp eq i32 %25, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %26) #12
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31, !prof !8

31:                                               ; preds = %28
  %32 = icmp ugt i32 %26, 1024
  br i1 %32, label %36, label %33, !prof !19

33:                                               ; preds = %31
  %34 = tail call i32 @nfs_map_group_to_gid(ptr noundef %2, ptr noundef nonnull %29, i32 noundef %26, ptr noundef %3) #12
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33, %31, %24
  br label %40

37:                                               ; preds = %16
  %38 = icmp eq i32 %18, -74
  br i1 %38, label %39, label %40

39:                                               ; preds = %37, %28, %21
  br label %40

40:                                               ; preds = %39, %37, %36, %33, %16, %10, %5
  %41 = phi i32 [ -5, %5 ], [ 0, %10 ], [ 16777216, %16 ], [ 16, %33 ], [ -5, %39 ], [ 0, %37 ], [ 0, %36 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_attr_rdev(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  store i32 0, ptr %2, align 4
  %4 = getelementptr i32, ptr %1, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 511
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %30, !prof !9

8:                                                ; preds = %3
  %9 = and i32 %5, 512
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %30, label %11, !prof !8

11:                                               ; preds = %8
  %12 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 8) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14, !prof !8

14:                                               ; preds = %11
  %15 = getelementptr i32, ptr %12, i32 1
  %16 = load i32, ptr %12, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #12
  %18 = load i32, ptr %15, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #12
  %20 = shl i32 %17, 20
  %21 = or i32 %20, %19
  %22 = lshr i32 %21, 20
  %23 = icmp eq i32 %22, %17
  %24 = icmp ult i32 %19, 1048576
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  store i32 %21, ptr %2, align 4
  br label %27

27:                                               ; preds = %26, %14
  %28 = load i32, ptr %4, align 4
  %29 = and i32 %28, -513
  store i32 %29, ptr %4, align 4
  br label %30

30:                                               ; preds = %27, %11, %8, %3
  %31 = phi i32 [ -5, %3 ], [ 32, %27 ], [ 0, %8 ], [ -5, %11 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_attr_space_used(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  store i64 0, ptr %2, align 8
  %4 = getelementptr i32, ptr %1, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 8191
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %19, !prof !9

8:                                                ; preds = %3
  %9 = and i32 %5, 8192
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11, !prof !8

11:                                               ; preds = %8
  %12 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 8) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14, !prof !8

14:                                               ; preds = %11
  %15 = load i64, ptr %12, align 1
  %16 = tail call i64 @llvm.bswap.i64(i64 %15) #12
  store i64 %16, ptr %2, align 8
  %17 = load i32, ptr %4, align 4
  %18 = and i32 %17, -8193
  store i32 %18, ptr %4, align 4
  br label %19

19:                                               ; preds = %14, %11, %8, %3
  %20 = phi i32 [ -5, %3 ], [ -5, %11 ], [ 512, %14 ], [ 0, %8 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_attr_time_access(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  store i64 0, ptr %2, align 8
  %4 = getelementptr inbounds %struct.timespec64, ptr %2, i32 0, i32 1
  store i32 0, ptr %4, align 8
  %5 = getelementptr i32, ptr %1, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 32767
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %25, !prof !9

9:                                                ; preds = %3
  %10 = and i32 %6, 32768
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %25, label %12, !prof !8

12:                                               ; preds = %9
  %13 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 12) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15, !prof !8

15:                                               ; preds = %12
  %16 = load i64, ptr %13, align 1
  %17 = tail call i64 @llvm.bswap.i64(i64 %16) #12
  %18 = getelementptr i32, ptr %13, i32 2
  store i64 %17, ptr %2, align 8
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #12
  store i32 %20, ptr %4, align 8
  br label %21

21:                                               ; preds = %15, %12
  %22 = phi i32 [ 4096, %15 ], [ -5, %12 ]
  %23 = load i32, ptr %5, align 4
  %24 = and i32 %23, -32769
  store i32 %24, ptr %5, align 4
  br label %25

25:                                               ; preds = %21, %9, %3
  %26 = phi i32 [ -5, %3 ], [ %22, %21 ], [ 0, %9 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_attr_time_metadata(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  store i64 0, ptr %2, align 8
  %4 = getelementptr inbounds %struct.timespec64, ptr %2, i32 0, i32 1
  store i32 0, ptr %4, align 8
  %5 = getelementptr i32, ptr %1, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1048575
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %25, !prof !9

9:                                                ; preds = %3
  %10 = and i32 %6, 1048576
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %25, label %12, !prof !8

12:                                               ; preds = %9
  %13 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 12) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15, !prof !8

15:                                               ; preds = %12
  %16 = load i64, ptr %13, align 1
  %17 = tail call i64 @llvm.bswap.i64(i64 %16) #12
  %18 = getelementptr i32, ptr %13, i32 2
  store i64 %17, ptr %2, align 8
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #12
  store i32 %20, ptr %4, align 8
  br label %21

21:                                               ; preds = %15, %12
  %22 = phi i32 [ 16384, %15 ], [ -5, %12 ]
  %23 = load i32, ptr %5, align 4
  %24 = and i32 %23, -1048577
  store i32 %24, ptr %5, align 4
  br label %25

25:                                               ; preds = %21, %9, %3
  %26 = phi i32 [ -5, %3 ], [ %22, %21 ], [ 0, %9 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_attr_time_modify(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  store i64 0, ptr %2, align 8
  %4 = getelementptr inbounds %struct.timespec64, ptr %2, i32 0, i32 1
  store i32 0, ptr %4, align 8
  %5 = getelementptr i32, ptr %1, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 2097151
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %25, !prof !9

9:                                                ; preds = %3
  %10 = and i32 %6, 2097152
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %25, label %12, !prof !8

12:                                               ; preds = %9
  %13 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 12) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15, !prof !8

15:                                               ; preds = %12
  %16 = load i64, ptr %13, align 1
  %17 = tail call i64 @llvm.bswap.i64(i64 %16) #12
  %18 = getelementptr i32, ptr %13, i32 2
  store i64 %17, ptr %2, align 8
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #12
  store i32 %20, ptr %4, align 8
  br label %21

21:                                               ; preds = %15, %12
  %22 = phi i32 [ 8192, %15 ], [ -5, %12 ]
  %23 = load i32, ptr %5, align 4
  %24 = and i32 %23, -2097153
  store i32 %24, ptr %5, align 4
  br label %25

25:                                               ; preds = %21, %9, %3
  %26 = phi i32 [ -5, %3 ], [ %22, %21 ], [ 0, %9 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_attr_mounted_on_fileid(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  store i64 0, ptr %2, align 8
  %4 = getelementptr i32, ptr %1, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 8388607
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %19, !prof !9

8:                                                ; preds = %3
  %9 = and i32 %5, 8388608
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11, !prof !8

11:                                               ; preds = %8
  %12 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 8) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14, !prof !8

14:                                               ; preds = %11
  %15 = load i64, ptr %12, align 1
  %16 = tail call i64 @llvm.bswap.i64(i64 %15) #12
  store i64 %16, ptr %2, align 8
  %17 = load i32, ptr %4, align 4
  %18 = and i32 %17, -8388609
  store i32 %18, ptr %4, align 4
  br label %19

19:                                               ; preds = %14, %11, %8, %3
  %20 = phi i32 [ -5, %3 ], [ -5, %11 ], [ 4194304, %14 ], [ 0, %8 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_attr_mdsthreshold(ptr noundef %0, ptr nocapture noundef %1, ptr noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca [3 x i32], align 4
  %5 = getelementptr i32, ptr %1, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %121, !prof !9

9:                                                ; preds = %3
  %10 = and i32 %6, 16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %121, label %12

12:                                               ; preds = %9
  %13 = icmp eq ptr %2, null
  br i1 %13, label %121, label %14, !prof !8

14:                                               ; preds = %12
  %15 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %121, label %17, !prof !8

17:                                               ; preds = %14
  %18 = load i32, ptr %15, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #12
  switch i32 %19, label %20 [
    i32 0, label %121
    i32 1, label %22
  ]

20:                                               ; preds = %17
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.decode_attr_mdsthreshold) #13
  br label %22

22:                                               ; preds = %20, %17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false) #12
  %23 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %117, label %25, !prof !8

25:                                               ; preds = %22
  %26 = load i32, ptr %23, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #12
  %28 = getelementptr inbounds %struct.nfs4_threshold, ptr %2, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  %29 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %30 = icmp eq ptr %29, null
  br i1 %30, label %117, label %31, !prof !8

31:                                               ; preds = %25
  %32 = load i32, ptr %29, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #12
  %34 = shl i32 %33, 2
  %35 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %34) #12
  %36 = icmp eq ptr %35, null
  br i1 %36, label %117, label %37, !prof !8

37:                                               ; preds = %31
  %38 = icmp ugt i32 %33, 3
  br i1 %38, label %46, label %39

39:                                               ; preds = %37
  %40 = icmp eq i32 %32, 50331648
  br i1 %40, label %46, label %41

41:                                               ; preds = %39
  %42 = getelementptr i32, ptr %4, i32 %33
  %43 = mul nsw i32 %33, -4
  %44 = add nsw i32 %43, 12
  call void @llvm.memset.p0.i32(ptr align 4 %42, i8 0, i32 %44, i1 false) #12
  %45 = icmp eq i32 %32, 0
  br i1 %45, label %63, label %46

46:                                               ; preds = %41, %39, %37
  %47 = phi i32 [ %33, %41 ], [ 3, %39 ], [ -90, %37 ]
  %48 = phi i32 [ %33, %41 ], [ 3, %39 ], [ 3, %37 ]
  br label %49

49:                                               ; preds = %49, %46
  %50 = phi ptr [ %55, %49 ], [ %35, %46 ]
  %51 = phi i32 [ %57, %49 ], [ %48, %46 ]
  %52 = phi ptr [ %56, %49 ], [ %4, %46 ]
  %53 = load i32, ptr %50, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #12
  store i32 %54, ptr %52, align 4
  %55 = getelementptr i32, ptr %50, i32 1
  %56 = getelementptr i32, ptr %52, i32 1
  %57 = add i32 %51, -1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %49

59:                                               ; preds = %49
  %60 = icmp sgt i32 %47, -1
  br i1 %60, label %63, label %61, !prof !9

61:                                               ; preds = %59
  %62 = icmp eq i32 %47, -90
  br i1 %62, label %63, label %117

63:                                               ; preds = %61, %59, %41
  %64 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %65 = icmp eq ptr %64, null
  br i1 %65, label %117, label %66, !prof !8

66:                                               ; preds = %63
  %67 = load i32, ptr %64, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #12
  %69 = tail call i32 @xdr_stream_pos(ptr noundef %0) #12
  %70 = getelementptr inbounds %struct.nfs4_threshold, ptr %2, i32 0, i32 2
  store i64 0, ptr %70, align 8
  %71 = load i32, ptr %4, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %80, label %74, !prof !8

74:                                               ; preds = %66
  %75 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 8) #12
  %76 = icmp eq ptr %75, null
  br i1 %76, label %117, label %77, !prof !8

77:                                               ; preds = %74
  %78 = load i64, ptr %75, align 1
  %79 = tail call i64 @llvm.bswap.i64(i64 %78) #12
  store i64 %79, ptr %70, align 8
  br label %80

80:                                               ; preds = %77, %66
  %81 = getelementptr inbounds %struct.nfs4_threshold, ptr %2, i32 0, i32 3
  store i64 0, ptr %81, align 8
  %82 = and i32 %71, 2
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %90, label %84, !prof !8

84:                                               ; preds = %80
  %85 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 8) #12
  %86 = icmp eq ptr %85, null
  br i1 %86, label %117, label %87, !prof !8

87:                                               ; preds = %84
  %88 = load i64, ptr %85, align 1
  %89 = tail call i64 @llvm.bswap.i64(i64 %88) #12
  store i64 %89, ptr %81, align 8
  br label %90

90:                                               ; preds = %87, %80
  %91 = getelementptr inbounds %struct.nfs4_threshold, ptr %2, i32 0, i32 4
  store i64 0, ptr %91, align 8
  %92 = and i32 %71, 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %100, label %94, !prof !8

94:                                               ; preds = %90
  %95 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 8) #12
  %96 = icmp eq ptr %95, null
  br i1 %96, label %117, label %97, !prof !8

97:                                               ; preds = %94
  %98 = load i64, ptr %95, align 1
  %99 = tail call i64 @llvm.bswap.i64(i64 %98) #12
  store i64 %99, ptr %91, align 8
  br label %100

100:                                              ; preds = %97, %90
  %101 = getelementptr inbounds %struct.nfs4_threshold, ptr %2, i32 0, i32 5
  store i64 0, ptr %101, align 8
  %102 = and i32 %71, 8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %110, label %104, !prof !8

104:                                              ; preds = %100
  %105 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 8) #12
  %106 = icmp eq ptr %105, null
  br i1 %106, label %117, label %107, !prof !8

107:                                              ; preds = %104
  %108 = load i64, ptr %105, align 1
  %109 = tail call i64 @llvm.bswap.i64(i64 %108) #12
  store i64 %109, ptr %101, align 8
  br label %110

110:                                              ; preds = %107, %100
  %111 = add i32 %68, 3
  %112 = tail call i32 @xdr_stream_pos(ptr noundef %0) #12
  %113 = sub i32 %112, %69
  %114 = xor i32 %113, %111
  %115 = icmp ult i32 %114, 4
  %116 = select i1 %115, i32 0, i32 -5, !prof !9
  store i32 %71, ptr %2, align 8
  br label %117

117:                                              ; preds = %110, %104, %94, %84, %74, %63, %61, %31, %25, %22
  %118 = phi i32 [ -5, %22 ], [ %116, %110 ], [ -5, %74 ], [ -5, %84 ], [ -5, %94 ], [ -5, %104 ], [ -5, %63 ], [ -5, %25 ], [ -5, %31 ], [ -5, %61 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  %119 = load i32, ptr %5, align 4
  %120 = and i32 %119, -17
  store i32 %120, ptr %5, align 4
  br label %121

121:                                              ; preds = %117, %17, %14, %12, %9, %3
  %122 = phi i32 [ -5, %3 ], [ -121, %12 ], [ -5, %14 ], [ %19, %17 ], [ %118, %117 ], [ 0, %9 ]
  ret i32 %122
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_attr_security_label(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr i32, ptr %1, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %50, !prof !9

8:                                                ; preds = %3
  %9 = and i32 %5, 65536
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %50, label %11, !prof !8

11:                                               ; preds = %8
  %12 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %50, label %14, !prof !8

14:                                               ; preds = %11
  %15 = load i32, ptr %12, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #12
  %17 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %50, label %19, !prof !8

19:                                               ; preds = %14
  %20 = load i32, ptr %17, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #12
  %22 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %50, label %24, !prof !8

24:                                               ; preds = %19
  %25 = load i32, ptr %22, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #12
  %27 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %26) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %50, label %29, !prof !8

29:                                               ; preds = %24
  %30 = icmp ult i32 %26, 2048
  br i1 %30, label %31, label %48

31:                                               ; preds = %29
  %32 = icmp eq ptr %2, null
  br i1 %32, label %44, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.nfs4_label, ptr %2, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = icmp ult i32 %35, %26
  br i1 %38, label %50, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.nfs4_label, ptr %2, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %41, ptr nonnull align 4 %27, i32 %26, i1 false)
  br label %42

42:                                               ; preds = %39, %33
  store i32 %26, ptr %34, align 4
  %43 = getelementptr inbounds %struct.nfs4_label, ptr %2, i32 0, i32 1
  store i32 %21, ptr %43, align 4
  store i32 %16, ptr %2, align 4
  br label %44

44:                                               ; preds = %42, %31
  %45 = phi i32 [ 33554432, %42 ], [ 0, %31 ]
  %46 = load i32, ptr %4, align 4
  %47 = and i32 %46, -65537
  store i32 %47, ptr %4, align 4
  br label %50

48:                                               ; preds = %29
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @__func__.decode_attr_security_label, i32 noundef %26) #13
  br label %50

50:                                               ; preds = %48, %44, %37, %24, %19, %14, %11, %8, %3
  %51 = phi i32 [ -5, %3 ], [ -5, %11 ], [ -5, %14 ], [ -5, %19 ], [ -5, %24 ], [ -34, %37 ], [ %45, %44 ], [ 0, %48 ], [ 0, %8 ]
  ret i32 %51
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_xdr_bad_filehandle(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_pathname(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %36, label %5, !prof !8

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %5
  %10 = icmp ugt i32 %7, 512
  br i1 %10, label %36, label %11

11:                                               ; preds = %9
  store i32 0, ptr %1, align 4
  br label %12

12:                                               ; preds = %28, %11
  %13 = phi i32 [ %31, %28 ], [ 0, %11 ]
  %14 = getelementptr %struct.nfs4_pathname, ptr %1, i32 0, i32 1, i32 %13
  %15 = getelementptr %struct.nfs4_pathname, ptr %1, i32 0, i32 1, i32 %13, i32 1
  store ptr null, ptr %15, align 4
  %16 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %36, label %18, !prof !8

18:                                               ; preds = %12
  %19 = load i32, ptr %16, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #12
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %20) #12
  %24 = icmp eq ptr %23, null
  %25 = icmp ugt i32 %20, 1024
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %36, label %27, !prof !12

27:                                               ; preds = %22
  store ptr %23, ptr %15, align 4
  br label %28

28:                                               ; preds = %27, %18
  %29 = phi i32 [ %20, %27 ], [ 0, %18 ]
  store i32 %29, ptr %14, align 4
  %30 = load i32, ptr %1, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %1, align 4
  %32 = icmp ult i32 %31, %7
  br i1 %32, label %12, label %36

33:                                               ; preds = %5
  store i32 1, ptr %1, align 4
  %34 = getelementptr inbounds %struct.nfs4_pathname, ptr %1, i32 0, i32 1
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.nfs4_pathname, ptr %1, i32 0, i32 1, i32 0, i32 1
  store ptr null, ptr %35, align 4
  br label %36

36:                                               ; preds = %33, %28, %22, %12, %9, %2
  %37 = phi i32 [ -5, %2 ], [ 0, %33 ], [ -5, %9 ], [ 0, %28 ], [ -5, %22 ], [ -5, %12 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_map_name_to_uid(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_stream_decode_string_dup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_map_group_to_gid(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @encode_compound_hdr(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.compound_hdr, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 3
  %6 = getelementptr inbounds %struct.compound_hdr, ptr %1, i32 0, i32 5
  store i32 %5, ptr %6, align 4
  %7 = icmp ne i32 %4, 0
  %8 = load i1, ptr @encode_compound_hdr.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %13, !prof !8

11:                                               ; preds = %2
  store i1 true, ptr @encode_compound_hdr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1040, i32 noundef 9, ptr noundef null) #12
  %12 = load i32, ptr %3, align 4
  br label %13

13:                                               ; preds = %11, %2
  %14 = phi i32 [ %12, %11 ], [ %4, %2 ]
  %15 = getelementptr inbounds %struct.compound_hdr, ptr %1, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = add i32 %14, 7
  %18 = and i32 %17, -4
  %19 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef %18) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21, !prof !8

21:                                               ; preds = %13
  %22 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %19, ptr noundef %16, i32 noundef %14) #12
  %23 = icmp slt i32 %18, 0
  br label %24

24:                                               ; preds = %21, %13
  %25 = phi i1 [ %23, %21 ], [ true, %13 ]
  %26 = load i1, ptr @encode_string.__already_done, align 1
  %27 = xor i1 %26, true
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %30, !prof !8

29:                                               ; preds = %24
  store i1 true, ptr @encode_string.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 978, i32 noundef 9, ptr noundef null) #12
  br label %30

30:                                               ; preds = %29, %24
  %31 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 8) #12
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34, !prof !8

33:                                               ; preds = %30
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.compound_hdr, ptr %1, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %38 = getelementptr i32, ptr %31, i32 1
  store i32 %37, ptr %31, align 4
  %39 = getelementptr inbounds %struct.compound_hdr, ptr %1, i32 0, i32 2
  store ptr %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.compound_hdr, ptr %1, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  store i32 %42, ptr %38, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @encode_sequence(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %44, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !8

11:                                               ; preds = %8
  store i32 889192448, ptr %9, align 4
  br label %15

12:                                               ; preds = %8
  %13 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %13, label %15, label %14, !prof !9

14:                                               ; preds = %12
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %15

15:                                               ; preds = %14, %12, %11
  %16 = getelementptr inbounds %struct.compound_hdr, ptr %2, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.compound_hdr, ptr %2, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, 11
  store i32 %21, ptr %19, align 4
  %22 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 32) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25, !prof !8

24:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

25:                                               ; preds = %15
  %26 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %22, ptr noundef nonnull %6, i32 noundef 16) #12
  %27 = getelementptr inbounds %struct.nfs4_slot, ptr %4, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %30 = getelementptr i32, ptr %26, i32 1
  store i32 %29, ptr %26, align 4
  %31 = getelementptr inbounds %struct.nfs4_slot, ptr %4, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %34 = getelementptr i32, ptr %26, i32 2
  store i32 %33, ptr %30, align 4
  %35 = getelementptr inbounds %struct.nfs4_slot_table, ptr %5, i32 0, i32 8
  %36 = load i32, ptr %35, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %38 = getelementptr i32, ptr %26, i32 3
  store i32 %37, ptr %34, align 4
  %39 = getelementptr inbounds %struct.nfs4_sequence_args, ptr %1, i32 0, i32 1
  %40 = load i8, ptr %39, align 4
  %41 = and i8 %40, 1
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 24
  store i32 %43, ptr %38, align 4
  br label %44

44:                                               ; preds = %25, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @encode_putfh(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !8

6:                                                ; preds = %3
  store i32 369098752, ptr %4, align 4
  br label %10

7:                                                ; preds = %3
  %8 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %8, label %10, label %9, !prof !9

9:                                                ; preds = %7
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %10

10:                                               ; preds = %9, %7, %6
  %11 = getelementptr inbounds %struct.compound_hdr, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.compound_hdr, ptr %2, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 2
  store i32 %16, ptr %14, align 4
  %17 = load i16, ptr %1, align 2
  %18 = zext i16 %17 to i32
  %19 = add nuw nsw i32 %18, 7
  %20 = and i32 %19, 131068
  %21 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef %20) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23, !prof !8

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.nfs_fh, ptr %1, i32 0, i32 1
  %25 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %21, ptr noundef %24, i32 noundef %18) #12
  br label %29

26:                                               ; preds = %10
  %27 = load i1, ptr @encode_string.__already_done, align 1
  br i1 %27, label %29, label %28, !prof !9

28:                                               ; preds = %26
  store i1 true, ptr @encode_string.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 978, i32 noundef 9, ptr noundef null) #12
  br label %29

29:                                               ; preds = %28, %26, %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_prepare_reply_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque_fixed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_compound_hdr(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5, !prof !8

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  store i32 %7, ptr %1, align 4
  %8 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %50, label %10, !prof !8

10:                                               ; preds = %5
  %11 = load i32, ptr %8, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @llvm.bswap.i32(i32 %11) #12
  %15 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %14) #12
  %16 = icmp eq ptr %15, null
  %17 = icmp ugt i32 %14, 1024
  %18 = or i1 %17, %16
  br i1 %18, label %50, label %19, !prof !12

19:                                               ; preds = %13, %10
  %20 = phi ptr [ null, %10 ], [ %15, %13 ]
  %21 = phi i32 [ 0, %10 ], [ %14, %13 ]
  %22 = getelementptr inbounds %struct.compound_hdr, ptr %1, i32 0, i32 3
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.compound_hdr, ptr %1, i32 0, i32 4
  store ptr %20, ptr %23, align 4
  %24 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %25 = icmp eq ptr %24, null
  br i1 %25, label %50, label %26, !prof !8

26:                                               ; preds = %19
  %27 = load i32, ptr %24, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #12
  %29 = getelementptr inbounds %struct.compound_hdr, ptr %1, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  %30 = icmp eq i32 %27, 0
  br i1 %30, label %31, label %50, !prof !8

31:                                               ; preds = %26
  %32 = load i32, ptr %1, align 4
  br label %33

33:                                               ; preds = %40, %31
  %34 = phi i32 [ 0, %31 ], [ %43, %40 ]
  %35 = phi i32 [ 0, %31 ], [ %41, %40 ]
  %36 = icmp eq i32 %34, %32
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = getelementptr [32 x %struct.anon.159], ptr @nfs_errtbl, i32 0, i32 %35, i32 1
  %39 = load i32, ptr %38, align 4
  br label %50

40:                                               ; preds = %33
  %41 = add nuw nsw i32 %35, 1
  %42 = getelementptr [32 x %struct.anon.159], ptr @nfs_errtbl, i32 0, i32 %41
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %41, 31
  br i1 %44, label %45, label %33

45:                                               ; preds = %40
  %46 = add i32 %32, -10101
  %47 = icmp ult i32 %46, -100
  %48 = sub i32 0, %32
  %49 = select i1 %47, i32 -121, i32 %48
  br label %50

50:                                               ; preds = %45, %37, %26, %19, %13, %5, %2
  %51 = phi i32 [ 0, %26 ], [ %39, %37 ], [ %49, %45 ], [ -5, %2 ], [ -5, %13 ], [ -5, %5 ], [ -5, %19 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_sequence(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.nfs4_sessionid, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  %4 = load ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %55, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %55, label %10

10:                                               ; preds = %6
  %11 = tail call fastcc i32 @decode_op_hdr(ptr noundef %0, i32 noundef 53)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %52

13:                                               ; preds = %10
  %14 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 16) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %52, label %16, !prof !8

16:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %14, i32 16, i1 false) #12
  %17 = load ptr, ptr %1, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %3, ptr noundef dereferenceable(16) %19, i32 16)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %16
  %23 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 20) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %52, label %25, !prof !8

25:                                               ; preds = %22
  %26 = load i32, ptr %23, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #12
  %28 = load ptr, ptr %1, align 4
  %29 = getelementptr inbounds %struct.nfs4_slot, ptr %28, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %25
  %33 = getelementptr i32, ptr %23, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #12
  %36 = getelementptr inbounds %struct.nfs4_slot, ptr %28, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %32
  %40 = getelementptr i32, ptr %23, i32 2
  %41 = getelementptr i32, ptr %23, i32 3
  %42 = load i32, ptr %40, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #12
  %44 = getelementptr inbounds %struct.nfs4_sequence_res, ptr %1, i32 0, i32 4
  store i32 %43, ptr %44, align 4
  %45 = getelementptr i32, ptr %23, i32 4
  %46 = load i32, ptr %41, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #12
  %48 = getelementptr inbounds %struct.nfs4_sequence_res, ptr %1, i32 0, i32 5
  store i32 %47, ptr %48, align 4
  %49 = load i32, ptr %45, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #12
  %51 = getelementptr inbounds %struct.nfs4_sequence_res, ptr %1, i32 0, i32 3
  store i32 %50, ptr %51, align 4
  br label %52

52:                                               ; preds = %39, %32, %25, %22, %16, %13, %10
  %53 = phi i32 [ -121, %16 ], [ -121, %25 ], [ -121, %32 ], [ 0, %39 ], [ -5, %22 ], [ -5, %13 ], [ %11, %10 ]
  %54 = getelementptr inbounds %struct.nfs4_sequence_res, ptr %1, i32 0, i32 2
  store i32 %53, ptr %54, align 4
  br label %55

55:                                               ; preds = %52, %6, %2
  %56 = phi i32 [ %53, %52 ], [ 0, %2 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_op_hdr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 8) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %64, label %5, !prof !8

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %9, label %48, !prof !9

9:                                                ; preds = %5
  %10 = getelementptr i32, ptr %3, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %64, label %13, !prof !9

13:                                               ; preds = %9
  %14 = tail call i32 @llvm.bswap.i32(i32 %11) #12
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_xdr_status, i32 0, i32 1), align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = tail call ptr @llvm.thread.pointer() #12
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 5
  %22 = getelementptr i32, ptr @__cpu_online_mask, i32 %21
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %20, 31
  %25 = shl nuw i32 1, %24
  %26 = and i32 %25, %23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !20
  %29 = tail call i32 @__traceiter_nfs4_xdr_status(ptr noundef null, ptr noundef %0, i32 noundef %1, i32 noundef %14) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !21
  br label %30

30:                                               ; preds = %28, %17, %13
  br label %31

31:                                               ; preds = %38, %30
  %32 = phi i32 [ %41, %38 ], [ 0, %30 ]
  %33 = phi i32 [ %39, %38 ], [ 0, %30 ]
  %34 = icmp eq i32 %32, %14
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = getelementptr [32 x %struct.anon.159], ptr @nfs_errtbl, i32 0, i32 %33, i32 1
  %37 = load i32, ptr %36, align 4
  br label %64

38:                                               ; preds = %31
  %39 = add nuw nsw i32 %33, 1
  %40 = getelementptr [32 x %struct.anon.159], ptr @nfs_errtbl, i32 0, i32 %39
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %39, 31
  br i1 %42, label %43, label %31

43:                                               ; preds = %38
  %44 = add i32 %14, -10101
  %45 = icmp ult i32 %44, -100
  %46 = sub i32 0, %14
  %47 = select i1 %45, i32 -121, i32 %46
  br label %64

48:                                               ; preds = %5
  %49 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_xdr_bad_operation, i32 0, i32 1), align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = tail call ptr @llvm.thread.pointer() #12
  %53 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %54 = load i32, ptr %53, align 8
  %55 = lshr i32 %54, 5
  %56 = getelementptr i32, ptr @__cpu_online_mask, i32 %55
  %57 = load volatile i32, ptr %56, align 4
  %58 = and i32 %54, 31
  %59 = shl nuw i32 1, %58
  %60 = and i32 %59, %57
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %51
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !22
  %63 = tail call i32 @__traceiter_nfs4_xdr_bad_operation(ptr noundef null, ptr noundef %0, i32 noundef %7, i32 noundef %1) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !23
  br label %64

64:                                               ; preds = %62, %51, %48, %43, %35, %9, %2
  %65 = phi i32 [ 0, %9 ], [ %37, %35 ], [ %47, %43 ], [ -5, %2 ], [ -121, %48 ], [ -121, %51 ], [ -121, %62 ]
  ret i32 %65
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_nfs4_xdr_status(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 {
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_xdr_status, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #12
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !20
  %18 = tail call i32 @__traceiter_nfs4_xdr_status(ptr noundef null, ptr noundef %0, i32 noundef %1, i32 noundef %2) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !21
  br label %19

19:                                               ; preds = %17, %6, %3
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_nfs4_xdr_bad_operation(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 {
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_xdr_bad_operation, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #12
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !22
  %18 = tail call i32 @__traceiter_nfs4_xdr_bad_operation(ptr noundef null, ptr noundef %0, i32 noundef %1, i32 noundef %2) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !23
  br label %19

19:                                               ; preds = %17, %6, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_xdr_status(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_xdr_bad_operation(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_read_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_write_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @encode_getattr(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = alloca [4 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !14
  %7 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !8

9:                                                ; preds = %5
  store i32 150994944, ptr %7, align 4
  br label %13

10:                                               ; preds = %5
  %11 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %11, label %13, label %12, !prof !9

12:                                               ; preds = %10
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %13

13:                                               ; preds = %12, %10, %9
  %14 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.compound_hdr, ptr %4, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 114
  store i32 %19, ptr %17, align 4
  %20 = icmp eq ptr %2, null
  br i1 %20, label %45, label %21

21:                                               ; preds = %13
  %22 = icmp eq i32 %3, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %33, %21
  %24 = phi i32 [ %25, %33 ], [ %3, %21 ]
  %25 = add i32 %24, -1
  %26 = getelementptr i32, ptr %1, i32 %25
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = getelementptr i32, ptr %2, i32 %25
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29, %23
  %34 = icmp eq i32 %25, 0
  br i1 %34, label %45, label %23

35:                                               ; preds = %35, %29
  %36 = phi i32 [ %37, %35 ], [ %24, %29 ]
  %37 = add i32 %36, -1
  %38 = getelementptr i32, ptr %1, i32 %37
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr i32, ptr %2, i32 %37
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, %39
  %43 = getelementptr i32, ptr %6, i32 %37
  store i32 %42, ptr %43, align 4
  %44 = icmp eq i32 %37, 0
  br i1 %44, label %45, label %35

45:                                               ; preds = %35, %33, %21, %13
  %46 = phi i32 [ %3, %13 ], [ 0, %21 ], [ %24, %35 ], [ 0, %33 ]
  %47 = phi ptr [ %1, %13 ], [ %6, %21 ], [ %6, %35 ], [ %6, %33 ]
  br label %48

48:                                               ; preds = %51, %45
  %49 = phi i32 [ %46, %45 ], [ %52, %51 ]
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = add i32 %49, -1
  %53 = getelementptr i32, ptr %47, i32 %52
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %48, label %56

56:                                               ; preds = %51, %48
  %57 = shl i32 %49, 2
  %58 = add i32 %57, 4
  %59 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef %58) #12
  %60 = icmp eq ptr %59, null
  br i1 %60, label %73, label %61, !prof !8

61:                                               ; preds = %56
  %62 = tail call i32 @llvm.bswap.i32(i32 %49) #12
  store i32 %62, ptr %59, align 4
  br i1 %50, label %73, label %63

63:                                               ; preds = %63, %61
  %64 = phi ptr [ %67, %63 ], [ %59, %61 ]
  %65 = phi i32 [ %71, %63 ], [ %49, %61 ]
  %66 = phi ptr [ %70, %63 ], [ %47, %61 ]
  %67 = getelementptr i32, ptr %64, i32 1
  %68 = load i32, ptr %66, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #12
  store i32 %69, ptr %67, align 4
  %70 = getelementptr i32, ptr %66, i32 1
  %71 = add i32 %65, -1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %63

73:                                               ; preds = %63, %61, %56
  %74 = phi i32 [ -90, %56 ], [ %58, %61 ], [ %58, %63 ]
  %75 = icmp slt i32 %74, 0
  %76 = load i1, ptr @xdr_encode_bitmap4.__already_done, align 1
  %77 = xor i1 %76, true
  %78 = select i1 %75, i1 %77, i1 false
  br i1 %78, label %79, label %80, !prof !8

79:                                               ; preds = %73
  store i1 true, ptr @xdr_encode_bitmap4.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1000, i32 noundef 9, ptr noundef null) #12
  br label %80

80:                                               ; preds = %79, %73
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_getfattr_generic(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false)
  %6 = tail call fastcc i32 @decode_op_hdr(ptr noundef %0, i32 noundef 9)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %59, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %59, label %11, !prof !8

11:                                               ; preds = %8
  %12 = load i32, ptr %9, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #12
  %14 = shl i32 %13, 2
  %15 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %14) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %59, label %17, !prof !8

17:                                               ; preds = %11
  %18 = icmp ugt i32 %13, 3
  br i1 %18, label %26, label %19

19:                                               ; preds = %17
  %20 = icmp eq i32 %12, 50331648
  br i1 %20, label %26, label %21

21:                                               ; preds = %19
  %22 = getelementptr i32, ptr %5, i32 %13
  %23 = mul nsw i32 %13, -4
  %24 = add nsw i32 %23, 12
  call void @llvm.memset.p0.i32(ptr align 4 %22, i8 0, i32 %24, i1 false) #12
  %25 = icmp eq i32 %12, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %21, %19, %17
  %27 = phi i32 [ %13, %21 ], [ 3, %19 ], [ -90, %17 ]
  %28 = phi i32 [ %13, %21 ], [ 3, %19 ], [ 3, %17 ]
  br label %29

29:                                               ; preds = %29, %26
  %30 = phi ptr [ %35, %29 ], [ %15, %26 ]
  %31 = phi i32 [ %37, %29 ], [ %28, %26 ]
  %32 = phi ptr [ %36, %29 ], [ %5, %26 ]
  %33 = load i32, ptr %30, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #12
  store i32 %34, ptr %32, align 4
  %35 = getelementptr i32, ptr %30, i32 1
  %36 = getelementptr i32, ptr %32, i32 1
  %37 = add i32 %31, -1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %29

39:                                               ; preds = %29
  %40 = icmp sgt i32 %27, -1
  br i1 %40, label %43, label %41, !prof !9

41:                                               ; preds = %39
  %42 = icmp eq i32 %27, -90
  br i1 %42, label %43, label %59

43:                                               ; preds = %41, %39, %21
  %44 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %59, label %46, !prof !8

46:                                               ; preds = %43
  %47 = load i32, ptr %44, align 4
  %48 = tail call i32 @xdr_stream_pos(ptr noundef %0) #12
  %49 = call fastcc i32 @decode_getfattr_attrs(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef %3)
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %46
  %52 = call i32 @llvm.bswap.i32(i32 %47) #12
  %53 = add i32 %52, 3
  %54 = call i32 @xdr_stream_pos(ptr noundef %0) #12
  %55 = sub i32 %54, %48
  %56 = xor i32 %55, %53
  %57 = icmp ult i32 %56, 4
  %58 = select i1 %57, i32 0, i32 -5, !prof !9
  br label %59

59:                                               ; preds = %51, %46, %43, %41, %11, %8, %4
  %60 = phi i32 [ %6, %4 ], [ %49, %46 ], [ %58, %51 ], [ -5, %43 ], [ -5, %8 ], [ -5, %11 ], [ -5, %41 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_commit(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nfs_commitres, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc i32 @decode_op_hdr(ptr noundef %0, i32 noundef 5)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 8) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10, !prof !8

10:                                               ; preds = %7
  %11 = load i64, ptr %8, align 4
  store i64 %11, ptr %4, align 1
  %12 = getelementptr inbounds %struct.nfs_writeverf, ptr %4, i32 0, i32 1
  store i32 2, ptr %12, align 4
  br label %13

13:                                               ; preds = %10, %7, %2
  %14 = phi i32 [ 0, %10 ], [ -5, %7 ], [ %5, %2 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @encode_open(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !8

6:                                                ; preds = %3
  store i32 301989888, ptr %4, align 4
  br label %10

7:                                                ; preds = %3
  %8 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %8, label %10, label %9, !prof !9

9:                                                ; preds = %7
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %10

10:                                               ; preds = %9, %7, %6
  %11 = getelementptr inbounds %struct.compound_hdr, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.compound_hdr, ptr %2, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 61
  store i32 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.nfs_openargs, ptr %1, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  tail call fastcc void @encode_nfs4_seqid(ptr noundef %0, ptr noundef %18) #12
  %19 = getelementptr inbounds %struct.nfs_openargs, ptr %1, i32 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 8) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24, !prof !8

23:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

24:                                               ; preds = %10
  %25 = tail call i32 @llvm.bswap.i32(i32 %20) #12
  %26 = getelementptr i32, ptr %21, i32 1
  store i32 %25, ptr %21, align 4
  store i32 0, ptr %26, align 4
  %27 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 36) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30, !prof !8

29:                                               ; preds = %24
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.nfs_openargs, ptr %1, i32 0, i32 7
  %32 = load i64, ptr %31, align 8
  %33 = tail call i64 @llvm.bswap.i64(i64 %32) #12
  store i64 %33, ptr %27, align 1
  %34 = getelementptr i32, ptr %27, i32 2
  %35 = getelementptr i32, ptr %27, i32 3
  store i32 402653184, ptr %34, align 4
  %36 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef %35, ptr noundef nonnull @.str.72, i32 noundef 8) #12
  %37 = getelementptr inbounds %struct.nfs_openargs, ptr %1, i32 0, i32 11
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.nfs_server, ptr %38, i32 0, i32 35
  %40 = load i32, ptr %39, align 8
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #12
  %42 = getelementptr i32, ptr %36, i32 1
  store i32 %41, ptr %36, align 4
  %43 = getelementptr inbounds %struct.nfs_openargs, ptr %1, i32 0, i32 8
  %44 = getelementptr inbounds %struct.nfs_openargs, ptr %1, i32 0, i32 8, i32 1
  %45 = load i32, ptr %44, align 8
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #12
  %47 = getelementptr i32, ptr %36, i32 2
  store i32 %46, ptr %42, align 4
  %48 = load i64, ptr %43, align 8
  %49 = tail call i64 @llvm.bswap.i64(i64 %48) #12
  store i64 %49, ptr %47, align 1
  %50 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #12
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53, !prof !8

52:                                               ; preds = %30
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

53:                                               ; preds = %30
  %54 = getelementptr inbounds %struct.nfs_openargs, ptr %1, i32 0, i32 3
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 64
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 0, ptr %50, align 4
  br label %108

59:                                               ; preds = %53
  store i32 16777216, ptr %50, align 4
  %60 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #12
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %63, !prof !8

62:                                               ; preds = %59
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.nfs_openargs, ptr %1, i32 0, i32 15
  %65 = load i32, ptr %64, align 8
  switch i32 %65, label %108 [
    i32 0, label %66
    i32 1, label %74
    i32 2, label %82
    i32 3, label %91
  ]

66:                                               ; preds = %63
  store i32 0, ptr %60, align 4
  %67 = getelementptr inbounds %struct.nfs_openargs, ptr %1, i32 0, i32 9
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.nfs_openargs, ptr %1, i32 0, i32 16
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.nfs_openargs, ptr %1, i32 0, i32 17
  %72 = load ptr, ptr %37, align 8
  %73 = getelementptr inbounds %struct.nfs_server, ptr %72, i32 0, i32 38
  tail call fastcc void @encode_attrs(ptr noundef %0, ptr noundef %68, ptr noundef %70, ptr noundef %71, ptr noundef %72, ptr noundef %73) #12
  br label %108

74:                                               ; preds = %63
  store i32 16777216, ptr %60, align 4
  %75 = getelementptr inbounds %struct.nfs_openargs, ptr %1, i32 0, i32 9
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.nfs_openargs, ptr %1, i32 0, i32 16
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.nfs_openargs, ptr %1, i32 0, i32 17
  %80 = load ptr, ptr %37, align 8
  %81 = getelementptr inbounds %struct.nfs_server, ptr %80, i32 0, i32 38
  tail call fastcc void @encode_attrs(ptr noundef %0, ptr noundef %76, ptr noundef %78, ptr noundef %79, ptr noundef %80, ptr noundef %81) #12
  br label %108

82:                                               ; preds = %63
  store i32 33554432, ptr %60, align 4
  %83 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 8) #12
  %84 = icmp eq ptr %83, null
  br i1 %84, label %88, label %85, !prof !8

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.nfs_openargs, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 0, i32 1
  %87 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %83, ptr noundef %86, i32 noundef 8) #12
  br label %108

88:                                               ; preds = %82
  %89 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %89, label %108, label %90, !prof !9

90:                                               ; preds = %88
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %108

91:                                               ; preds = %63
  store i32 50331648, ptr %60, align 4
  %92 = getelementptr inbounds %struct.nfs_openargs, ptr %1, i32 0, i32 9
  %93 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 8) #12
  %94 = icmp eq ptr %93, null
  br i1 %94, label %98, label %95, !prof !8

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.nfs_openargs, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 0, i32 1
  %97 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %93, ptr noundef %96, i32 noundef 8) #12
  br label %101

98:                                               ; preds = %91
  %99 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %99, label %101, label %100, !prof !9

100:                                              ; preds = %98
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %101

101:                                              ; preds = %100, %98, %95
  %102 = load ptr, ptr %92, align 8
  %103 = getelementptr inbounds %struct.nfs_openargs, ptr %1, i32 0, i32 16
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.nfs_openargs, ptr %1, i32 0, i32 17
  %106 = load ptr, ptr %37, align 8
  %107 = getelementptr inbounds %struct.nfs_server, ptr %106, i32 0, i32 40
  tail call fastcc void @encode_attrs(ptr noundef %0, ptr noundef %102, ptr noundef %104, ptr noundef %105, ptr noundef %106, ptr noundef %107) #12
  br label %108

108:                                              ; preds = %101, %90, %88, %85, %74, %66, %63, %58
  %109 = getelementptr inbounds %struct.nfs_openargs, ptr %1, i32 0, i32 14
  %110 = load i32, ptr %109, align 4
  switch i32 %110, label %202 [
    i32 0, label %111
    i32 1, label %135
    i32 2, label %151
    i32 4, label %184
    i32 5, label %189
  ]

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.nfs_openargs, ptr %1, i32 0, i32 10
  %113 = load ptr, ptr %112, align 4
  %114 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #12
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %117, !prof !8

116:                                              ; preds = %111
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

117:                                              ; preds = %111
  store i32 0, ptr %114, align 4
  %118 = getelementptr inbounds %struct.anon.4, ptr %113, i32 0, i32 1
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr inbounds %struct.qstr, ptr %113, i32 0, i32 1
  %121 = load ptr, ptr %120, align 8
  %122 = add i32 %119, 7
  %123 = and i32 %122, -4
  %124 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef %123) #12
  %125 = icmp eq ptr %124, null
  br i1 %125, label %129, label %126, !prof !8

126:                                              ; preds = %117
  %127 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %124, ptr noundef %121, i32 noundef %119) #12
  %128 = icmp slt i32 %123, 0
  br label %129

129:                                              ; preds = %126, %117
  %130 = phi i1 [ %128, %126 ], [ true, %117 ]
  %131 = load i1, ptr @encode_string.__already_done, align 1
  %132 = xor i1 %131, true
  %133 = select i1 %130, i1 %132, i1 false
  br i1 %133, label %134, label %203, !prof !8

134:                                              ; preds = %129
  store i1 true, ptr @encode_string.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 978, i32 noundef 9, ptr noundef null) #12
  br label %203

135:                                              ; preds = %108
  %136 = getelementptr inbounds %struct.nfs_openargs, ptr %1, i32 0, i32 9
  %137 = load i32, ptr %136, align 8
  %138 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #12
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %141, !prof !8

140:                                              ; preds = %135
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

141:                                              ; preds = %135
  store i32 16777216, ptr %138, align 4
  %142 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #12
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %145, !prof !8

144:                                              ; preds = %141
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

145:                                              ; preds = %141
  switch i32 %137, label %148 [
    i32 0, label %149
    i32 1, label %146
    i32 3, label %147
  ]

146:                                              ; preds = %145
  br label %149

147:                                              ; preds = %145
  br label %149

148:                                              ; preds = %145
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1487, 0\0A.popsection", ""() #12, !srcloc !24
  unreachable

149:                                              ; preds = %147, %146, %145
  %150 = phi i32 [ 33554432, %147 ], [ 16777216, %146 ], [ %137, %145 ]
  store i32 %150, ptr %142, align 4
  br label %203

151:                                              ; preds = %108
  %152 = getelementptr inbounds %struct.nfs_openargs, ptr %1, i32 0, i32 10
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.nfs_openargs, ptr %1, i32 0, i32 9
  %155 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #12
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %158, !prof !8

157:                                              ; preds = %151
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

158:                                              ; preds = %151
  store i32 33554432, ptr %155, align 4
  %159 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 16) #12
  %160 = icmp eq ptr %159, null
  br i1 %160, label %163, label %161, !prof !8

161:                                              ; preds = %158
  %162 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %159, ptr noundef %154, i32 noundef 16) #12
  br label %166

163:                                              ; preds = %158
  %164 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %164, label %166, label %165, !prof !9

165:                                              ; preds = %163
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %166

166:                                              ; preds = %165, %163, %161
  %167 = getelementptr inbounds %struct.anon.4, ptr %153, i32 0, i32 1
  %168 = load i32, ptr %167, align 4
  %169 = getelementptr inbounds %struct.qstr, ptr %153, i32 0, i32 1
  %170 = load ptr, ptr %169, align 8
  %171 = add i32 %168, 7
  %172 = and i32 %171, -4
  %173 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef %172) #12
  %174 = icmp eq ptr %173, null
  br i1 %174, label %178, label %175, !prof !8

175:                                              ; preds = %166
  %176 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %173, ptr noundef %170, i32 noundef %168) #12
  %177 = icmp slt i32 %172, 0
  br label %178

178:                                              ; preds = %175, %166
  %179 = phi i1 [ %177, %175 ], [ true, %166 ]
  %180 = load i1, ptr @encode_string.__already_done, align 1
  %181 = xor i1 %180, true
  %182 = select i1 %179, i1 %181, i1 false
  br i1 %182, label %183, label %203, !prof !8

183:                                              ; preds = %178
  store i1 true, ptr @encode_string.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 978, i32 noundef 9, ptr noundef null) #12
  br label %203

184:                                              ; preds = %108
  %185 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #12
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %188, !prof !8

187:                                              ; preds = %184
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

188:                                              ; preds = %184
  store i32 67108864, ptr %185, align 4
  br label %203

189:                                              ; preds = %108
  %190 = getelementptr inbounds %struct.nfs_openargs, ptr %1, i32 0, i32 9
  %191 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #12
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %194, !prof !8

193:                                              ; preds = %189
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

194:                                              ; preds = %189
  store i32 83886080, ptr %191, align 4
  %195 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 16) #12
  %196 = icmp eq ptr %195, null
  br i1 %196, label %199, label %197, !prof !8

197:                                              ; preds = %194
  %198 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %195, ptr noundef %190, i32 noundef 16) #12
  br label %203

199:                                              ; preds = %194
  %200 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %200, label %203, label %201, !prof !9

201:                                              ; preds = %199
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %203

202:                                              ; preds = %108
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1558, 0\0A.popsection", ""() #12, !srcloc !25
  unreachable

203:                                              ; preds = %201, %199, %197, %188, %183, %178, %149, %134, %129
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @encode_layoutget(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !8

6:                                                ; preds = %3
  store i32 838860800, ptr %4, align 4
  br label %10

7:                                                ; preds = %3
  %8 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %8, label %10, label %9, !prof !9

9:                                                ; preds = %7
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %10

10:                                               ; preds = %9, %7, %6
  %11 = getelementptr inbounds %struct.compound_hdr, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.compound_hdr, ptr %2, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1039
  store i32 %16, ptr %14, align 4
  %17 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 36) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20, !prof !8

19:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

20:                                               ; preds = %10
  %21 = getelementptr i32, ptr %17, i32 1
  store i32 0, ptr %17, align 4
  %22 = getelementptr inbounds %struct.nfs4_layoutget_args, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 8
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = getelementptr i32, ptr %17, i32 2
  store i32 %24, ptr %21, align 4
  %26 = getelementptr inbounds %struct.nfs4_layoutget_args, ptr %1, i32 0, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = getelementptr i32, ptr %17, i32 3
  store i32 %28, ptr %25, align 4
  %30 = getelementptr inbounds %struct.nfs4_layoutget_args, ptr %1, i32 0, i32 2, i32 1
  %31 = load i64, ptr %30, align 8
  %32 = tail call i64 @llvm.bswap.i64(i64 %31) #12
  store i64 %32, ptr %29, align 1
  %33 = getelementptr i32, ptr %17, i32 5
  %34 = getelementptr inbounds %struct.nfs4_layoutget_args, ptr %1, i32 0, i32 2, i32 2
  %35 = load i64, ptr %34, align 8
  %36 = tail call i64 @llvm.bswap.i64(i64 %35) #12
  store i64 %36, ptr %33, align 1
  %37 = getelementptr i32, ptr %17, i32 7
  %38 = getelementptr inbounds %struct.nfs4_layoutget_args, ptr %1, i32 0, i32 3
  %39 = load i64, ptr %38, align 8
  %40 = tail call i64 @llvm.bswap.i64(i64 %39) #12
  store i64 %40, ptr %37, align 1
  %41 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 16) #12
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43, !prof !8

43:                                               ; preds = %20
  %44 = getelementptr inbounds %struct.nfs4_layoutget_args, ptr %1, i32 0, i32 7
  %45 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %41, ptr noundef %44, i32 noundef 16) #12
  br label %49

46:                                               ; preds = %20
  %47 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %47, label %49, label %48, !prof !9

48:                                               ; preds = %46
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %49

49:                                               ; preds = %48, %46, %43
  %50 = getelementptr inbounds %struct.nfs4_layoutget_args, ptr %1, i32 0, i32 4
  %51 = load i32, ptr %50, align 8
  %52 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #12
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54, !prof !8

54:                                               ; preds = %49
  %55 = tail call i32 @llvm.bswap.i32(i32 %51) #12
  store i32 %55, ptr %52, align 4
  br label %59

56:                                               ; preds = %49
  %57 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %57, label %59, label %58, !prof !9

58:                                               ; preds = %56
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %59

59:                                               ; preds = %58, %56, %54
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @encode_nfs4_seqid(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 4
  %6 = getelementptr inbounds %struct.nfs_seqid_counter, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 8
  %8 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !8

10:                                               ; preds = %4
  %11 = tail call i32 @llvm.bswap.i32(i32 %7) #12
  store i32 %11, ptr %8, align 4
  br label %22

12:                                               ; preds = %4
  %13 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %13, label %22, label %14, !prof !9

14:                                               ; preds = %12
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %22

15:                                               ; preds = %2
  %16 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18, !prof !8

18:                                               ; preds = %15
  store i32 0, ptr %16, align 4
  br label %22

19:                                               ; preds = %15
  %20 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %20, label %22, label %21, !prof !9

21:                                               ; preds = %19
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %22

22:                                               ; preds = %21, %19, %18, %14, %12, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @encode_attrs(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #0 {
  %7 = alloca [128 x i8], align 1
  %8 = alloca [128 x i8], align 1
  %9 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %7, i8 0, i32 128, i1 false), !annotation !14
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %8, i8 0, i32 128, i1 false), !annotation !14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i32 12, i1 false)
  %10 = load i32, ptr %1, align 8
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %6
  %14 = load i32, ptr %5, align 4
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i32 16, ptr %9, align 4
  br label %18

18:                                               ; preds = %17, %13, %6
  %19 = phi i32 [ 8, %17 ], [ 0, %13 ], [ 0, %6 ]
  %20 = and i32 %10, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %18
  %23 = icmp eq ptr %3, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %22
  %25 = getelementptr i32, ptr %5, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 131072
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds [3 x i32], ptr %9, i32 0, i32 2
  store i32 131072, ptr %30, align 4
  %31 = add nuw nsw i32 %19, 8
  br label %40

32:                                               ; preds = %24, %22
  %33 = getelementptr i32, ptr %5, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds [3 x i32], ptr %9, i32 0, i32 1
  store i32 2, ptr %38, align 4
  %39 = or i32 %19, 4
  br label %40

40:                                               ; preds = %37, %32, %29, %18
  %41 = phi i1 [ false, %29 ], [ true, %37 ], [ true, %32 ], [ true, %18 ]
  %42 = phi i32 [ 0, %29 ], [ 2, %37 ], [ 0, %32 ], [ 0, %18 ]
  %43 = phi i32 [ %31, %29 ], [ %39, %37 ], [ %19, %32 ], [ %19, %18 ]
  %44 = and i32 %10, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %67, label %46

46:                                               ; preds = %40
  %47 = getelementptr i32, ptr %5, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = insertvalue [1 x i32] undef, i32 %53, 0
  %55 = call i32 @nfs_map_uid_to_name(ptr noundef %4, [1 x i32] %54, ptr noundef nonnull %7, i32 noundef 128) #12
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %7, ptr noundef nonnull align 1 dereferenceable(7) @.str.73, i32 7, i1 false)
  br label %58

58:                                               ; preds = %57, %51
  %59 = phi i32 [ 6, %57 ], [ %55, %51 ]
  %60 = getelementptr inbounds [3 x i32], ptr %9, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = or i32 %61, 16
  store i32 %62, ptr %60, align 4
  %63 = add nuw i32 %59, 7
  %64 = and i32 %63, -4
  %65 = add i32 %64, %43
  %66 = load i32, ptr %1, align 8
  br label %67

67:                                               ; preds = %58, %46, %40
  %68 = phi i32 [ %62, %58 ], [ %42, %46 ], [ %42, %40 ]
  %69 = phi i32 [ %66, %58 ], [ %10, %46 ], [ %10, %40 ]
  %70 = phi i32 [ %59, %58 ], [ 0, %46 ], [ 0, %40 ]
  %71 = phi i32 [ %65, %58 ], [ %43, %46 ], [ %43, %40 ]
  %72 = and i32 %69, 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %94, label %74

74:                                               ; preds = %67
  %75 = getelementptr i32, ptr %5, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, 32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %94, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 3
  %81 = load i32, ptr %80, align 4
  %82 = insertvalue [1 x i32] undef, i32 %81, 0
  %83 = call i32 @nfs_map_gid_to_group(ptr noundef %4, [1 x i32] %82, ptr noundef nonnull %8, i32 noundef 128) #12
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %8, ptr noundef nonnull align 1 dereferenceable(7) @.str.73, i32 7, i1 false)
  br label %86

86:                                               ; preds = %85, %79
  %87 = phi i32 [ 6, %85 ], [ %83, %79 ]
  %88 = getelementptr inbounds [3 x i32], ptr %9, i32 0, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = or i32 %89, 32
  store i32 %90, ptr %88, align 4
  %91 = add nuw i32 %87, 7
  %92 = and i32 %91, -4
  %93 = add i32 %92, %71
  br label %94

94:                                               ; preds = %86, %74, %67
  %95 = phi i32 [ %90, %86 ], [ %68, %74 ], [ %68, %67 ]
  %96 = phi i32 [ %87, %86 ], [ 0, %74 ], [ 0, %67 ]
  %97 = phi i32 [ %93, %86 ], [ %71, %74 ], [ %71, %67 ]
  %98 = getelementptr i32, ptr %5, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = and i32 %99, 65536
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %117, label %102

102:                                              ; preds = %94
  %103 = load i32, ptr %1, align 8
  %104 = and i32 %103, 128
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds [3 x i32], ptr %9, i32 0, i32 1
  %108 = or i32 %95, 65536
  store i32 %108, ptr %107, align 4
  %109 = add i32 %97, 16
  br label %117

110:                                              ; preds = %102
  %111 = and i32 %103, 16
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds [3 x i32], ptr %9, i32 0, i32 1
  %115 = or i32 %95, 65536
  store i32 %115, ptr %114, align 4
  %116 = add i32 %97, 4
  br label %117

117:                                              ; preds = %113, %110, %106, %94
  %118 = phi i32 [ %108, %106 ], [ %115, %113 ], [ %95, %110 ], [ %95, %94 ]
  %119 = phi i32 [ %109, %106 ], [ %116, %113 ], [ %97, %110 ], [ %97, %94 ]
  %120 = and i32 %99, 4194304
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %137, label %122

122:                                              ; preds = %117
  %123 = load i32, ptr %1, align 8
  %124 = and i32 %123, 256
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds [3 x i32], ptr %9, i32 0, i32 1
  %128 = or i32 %118, 4194304
  store i32 %128, ptr %127, align 4
  %129 = add i32 %119, 16
  br label %137

130:                                              ; preds = %122
  %131 = and i32 %123, 32
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %130
  %134 = getelementptr inbounds [3 x i32], ptr %9, i32 0, i32 1
  %135 = or i32 %118, 4194304
  store i32 %135, ptr %134, align 4
  %136 = add i32 %119, 4
  br label %137

137:                                              ; preds = %133, %130, %126, %117
  %138 = phi i32 [ %128, %126 ], [ %135, %133 ], [ %118, %130 ], [ %118, %117 ]
  %139 = phi i32 [ %129, %126 ], [ %136, %133 ], [ %119, %130 ], [ %119, %117 ]
  %140 = icmp eq ptr %2, null
  br i1 %140, label %156, label %141

141:                                              ; preds = %137
  %142 = getelementptr i32, ptr %5, i32 2
  %143 = load i32, ptr %142, align 4
  %144 = and i32 %143, 65536
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %156, label %146

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.nfs4_label, ptr %2, i32 0, i32 2
  %148 = load i32, ptr %147, align 4
  %149 = add i32 %148, 15
  %150 = and i32 %149, -4
  %151 = add i32 %150, %139
  %152 = getelementptr inbounds [3 x i32], ptr %9, i32 0, i32 2
  %153 = load i32, ptr %152, align 4
  %154 = or i32 %153, 65536
  store i32 %154, ptr %152, align 4
  %155 = getelementptr inbounds i32, ptr %9, i32 2
  br label %165

156:                                              ; preds = %141, %137
  %157 = getelementptr inbounds i32, ptr %9, i32 2
  br i1 %41, label %158, label %165

158:                                              ; preds = %156
  %159 = icmp eq i32 %138, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %158
  %161 = load i32, ptr %9, align 4
  %162 = icmp eq i32 %161, 0
  %163 = xor i1 %162, true
  %164 = zext i1 %163 to i32
  br label %165

165:                                              ; preds = %160, %158, %156, %146
  %166 = phi ptr [ %157, %156 ], [ %157, %158 ], [ %155, %146 ], [ %157, %160 ]
  %167 = phi i32 [ %139, %156 ], [ %139, %158 ], [ %151, %146 ], [ %139, %160 ]
  %168 = phi i32 [ 3, %156 ], [ 2, %158 ], [ 3, %146 ], [ %164, %160 ]
  %169 = phi i1 [ false, %156 ], [ false, %158 ], [ false, %146 ], [ %162, %160 ]
  %170 = shl nuw nsw i32 %168, 2
  %171 = add nuw nsw i32 %170, 4
  %172 = call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef %171) #12
  %173 = icmp eq ptr %172, null
  br i1 %173, label %186, label %174, !prof !8

174:                                              ; preds = %165
  %175 = shl nuw nsw i32 %168, 24
  store i32 %175, ptr %172, align 4
  br i1 %169, label %189, label %176

176:                                              ; preds = %176, %174
  %177 = phi ptr [ %180, %176 ], [ %172, %174 ]
  %178 = phi i32 [ %184, %176 ], [ %168, %174 ]
  %179 = phi ptr [ %183, %176 ], [ %9, %174 ]
  %180 = getelementptr i32, ptr %177, i32 1
  %181 = load i32, ptr %179, align 4
  %182 = call i32 @llvm.bswap.i32(i32 %181) #12
  store i32 %182, ptr %180, align 4
  %183 = getelementptr i32, ptr %179, i32 1
  %184 = add i32 %178, -1
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %189, label %176

186:                                              ; preds = %165
  %187 = load i1, ptr @xdr_encode_bitmap4.__already_done, align 1
  br i1 %187, label %189, label %188, !prof !9

188:                                              ; preds = %186
  store i1 true, ptr @xdr_encode_bitmap4.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1000, i32 noundef 9, ptr noundef null) #12
  br label %189

189:                                              ; preds = %188, %186, %176, %174
  %190 = add i32 %167, 7
  %191 = and i32 %190, -4
  %192 = call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef %191) #12
  %193 = icmp eq ptr %192, null
  br i1 %193, label %197, label %194, !prof !8

194:                                              ; preds = %189
  %195 = call ptr @xdr_encode_opaque(ptr noundef nonnull %192, ptr noundef null, i32 noundef %167) #12
  %196 = getelementptr i32, ptr %192, i32 1
  br label %197

197:                                              ; preds = %194, %189
  %198 = phi ptr [ %196, %194 ], [ null, %189 ]
  %199 = load i32, ptr %9, align 4
  %200 = and i32 %199, 16
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %207, label %202

202:                                              ; preds = %197
  %203 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 4
  %204 = load i64, ptr %203, align 8
  %205 = call i64 @llvm.bswap.i64(i64 %204) #12
  store i64 %205, ptr %198, align 1
  %206 = getelementptr i32, ptr %198, i32 2
  br label %207

207:                                              ; preds = %202, %197
  %208 = phi ptr [ %198, %197 ], [ %206, %202 ]
  %209 = getelementptr inbounds [3 x i32], ptr %9, i32 0, i32 1
  %210 = and i32 %138, 2
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %220, label %212

212:                                              ; preds = %207
  %213 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 1
  %214 = load i16, ptr %213, align 4
  %215 = and i16 %214, 4095
  %216 = zext i16 %215 to i32
  %217 = call i32 @llvm.bswap.i32(i32 %216)
  %218 = getelementptr i32, ptr %208, i32 1
  store i32 %217, ptr %208, align 4
  %219 = load i32, ptr %209, align 4
  br label %220

220:                                              ; preds = %212, %207
  %221 = phi i32 [ %138, %207 ], [ %219, %212 ]
  %222 = phi ptr [ %208, %207 ], [ %218, %212 ]
  %223 = and i32 %221, 16
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %227, label %225

225:                                              ; preds = %220
  %226 = call ptr @xdr_encode_opaque(ptr noundef %222, ptr noundef nonnull %7, i32 noundef %70) #12
  br label %227

227:                                              ; preds = %225, %220
  %228 = phi ptr [ %222, %220 ], [ %226, %225 ]
  %229 = and i32 %221, 32
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %233, label %231

231:                                              ; preds = %227
  %232 = call ptr @xdr_encode_opaque(ptr noundef %228, ptr noundef nonnull %8, i32 noundef %96) #12
  br label %233

233:                                              ; preds = %231, %227
  %234 = phi ptr [ %228, %227 ], [ %232, %231 ]
  %235 = and i32 %221, 65536
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %252, label %237

237:                                              ; preds = %233
  %238 = load i32, ptr %1, align 8
  %239 = and i32 %238, 128
  %240 = icmp eq i32 %239, 0
  %241 = getelementptr i32, ptr %234, i32 1
  br i1 %240, label %251, label %242

242:                                              ; preds = %237
  store i32 16777216, ptr %234, align 4
  %243 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 5
  %244 = load i64, ptr %243, align 8
  %245 = call i64 @llvm.bswap.i64(i64 %244) #12
  store i64 %245, ptr %241, align 1
  %246 = getelementptr i32, ptr %234, i32 3
  %247 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 5, i32 1
  %248 = load i32, ptr %247, align 8
  %249 = call i32 @llvm.bswap.i32(i32 %248) #12
  %250 = getelementptr i32, ptr %234, i32 4
  store i32 %249, ptr %246, align 4
  br label %252

251:                                              ; preds = %237
  store i32 0, ptr %234, align 4
  br label %252

252:                                              ; preds = %251, %242, %233
  %253 = phi ptr [ %234, %233 ], [ %241, %251 ], [ %250, %242 ]
  %254 = load i32, ptr %209, align 4
  %255 = and i32 %254, 4194304
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %272, label %257

257:                                              ; preds = %252
  %258 = load i32, ptr %1, align 8
  %259 = and i32 %258, 256
  %260 = icmp eq i32 %259, 0
  %261 = getelementptr i32, ptr %253, i32 1
  br i1 %260, label %271, label %262

262:                                              ; preds = %257
  store i32 16777216, ptr %253, align 4
  %263 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 6
  %264 = load i64, ptr %263, align 8
  %265 = call i64 @llvm.bswap.i64(i64 %264) #12
  store i64 %265, ptr %261, align 1
  %266 = getelementptr i32, ptr %253, i32 3
  %267 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 6, i32 1
  %268 = load i32, ptr %267, align 8
  %269 = call i32 @llvm.bswap.i32(i32 %268) #12
  %270 = getelementptr i32, ptr %253, i32 4
  store i32 %269, ptr %266, align 4
  br label %272

271:                                              ; preds = %257
  store i32 0, ptr %253, align 4
  br label %272

272:                                              ; preds = %271, %262, %252
  %273 = phi ptr [ %253, %252 ], [ %261, %271 ], [ %270, %262 ]
  br i1 %140, label %294, label %274

274:                                              ; preds = %272
  %275 = load i32, ptr %166, align 4
  %276 = and i32 %275, 65536
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %294, label %278

278:                                              ; preds = %274
  %279 = load i32, ptr %2, align 4
  %280 = call i32 @llvm.bswap.i32(i32 %279)
  %281 = getelementptr i32, ptr %273, i32 1
  store i32 %280, ptr %273, align 4
  %282 = getelementptr inbounds %struct.nfs4_label, ptr %2, i32 0, i32 1
  %283 = load i32, ptr %282, align 4
  %284 = call i32 @llvm.bswap.i32(i32 %283)
  %285 = getelementptr i32, ptr %273, i32 2
  store i32 %284, ptr %281, align 4
  %286 = getelementptr inbounds %struct.nfs4_label, ptr %2, i32 0, i32 2
  %287 = load i32, ptr %286, align 4
  %288 = call i32 @llvm.bswap.i32(i32 %287)
  %289 = getelementptr i32, ptr %273, i32 3
  store i32 %288, ptr %285, align 4
  %290 = getelementptr inbounds %struct.nfs4_label, ptr %2, i32 0, i32 3
  %291 = load ptr, ptr %290, align 4
  %292 = load i32, ptr %286, align 4
  %293 = call ptr @xdr_encode_opaque_fixed(ptr noundef %289, ptr noundef %291, i32 noundef %292) #12
  br label %294

294:                                              ; preds = %278, %274, %272
  %295 = phi ptr [ %273, %272 ], [ %273, %274 ], [ %293, %278 ]
  %296 = load i32, ptr %166, align 4
  %297 = and i32 %296, 131072
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %309, label %299

299:                                              ; preds = %294
  %300 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 1
  %301 = load i16, ptr %300, align 4
  %302 = and i16 %301, 4095
  %303 = zext i16 %302 to i32
  %304 = call i32 @llvm.bswap.i32(i32 %303)
  %305 = getelementptr i32, ptr %295, i32 1
  store i32 %304, ptr %295, align 4
  %306 = load i16, ptr %3, align 2
  %307 = zext i16 %306 to i32
  %308 = call i32 @llvm.bswap.i32(i32 %307)
  store i32 %308, ptr %305, align 4
  br label %309

309:                                              ; preds = %299, %294
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_map_uid_to_name(ptr noundef, [1 x i32], ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_map_gid_to_group(ptr noundef, [1 x i32], ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_open(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 8) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %177, label %5, !prof !8

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 4
  %7 = icmp eq i32 %6, 301989888
  br i1 %7, label %8, label %33, !prof !9

8:                                                ; preds = %5
  %9 = getelementptr i32, ptr %3, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15, !prof !9

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nfs_openres, ptr %1, i32 0, i32 6
  %14 = load ptr, ptr %13, align 8
  tail call void @nfs_increment_open_seqid(i32 noundef 0, ptr noundef %14) #12
  br label %43

15:                                               ; preds = %8
  %16 = tail call i32 @llvm.bswap.i32(i32 %10) #12
  tail call fastcc void @trace_nfs4_xdr_status(ptr noundef %0, i32 noundef 18, i32 noundef %16) #12
  br label %17

17:                                               ; preds = %24, %15
  %18 = phi i32 [ 0, %15 ], [ %27, %24 ]
  %19 = phi i32 [ 0, %15 ], [ %25, %24 ]
  %20 = icmp eq i32 %18, %16
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr [32 x %struct.anon.159], ptr @nfs_errtbl, i32 0, i32 %19, i32 1
  %23 = load i32, ptr %22, align 4
  br label %38

24:                                               ; preds = %17
  %25 = add nuw nsw i32 %19, 1
  %26 = getelementptr [32 x %struct.anon.159], ptr @nfs_errtbl, i32 0, i32 %25
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %25, 31
  br i1 %28, label %29, label %17

29:                                               ; preds = %24
  %30 = add i32 %16, -10101
  %31 = icmp ult i32 %30, -100
  %32 = sub i32 0, %16
  br i1 %31, label %35, label %38

33:                                               ; preds = %5
  %34 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  tail call fastcc void @trace_nfs4_xdr_bad_operation(ptr noundef %0, i32 noundef %34, i32 noundef 18) #12
  br label %177

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.nfs_openres, ptr %1, i32 0, i32 6
  %37 = load ptr, ptr %36, align 8
  tail call void @nfs_increment_open_seqid(i32 noundef -121, ptr noundef %37) #12
  br label %177

38:                                               ; preds = %29, %21
  %39 = phi i32 [ %32, %29 ], [ %23, %21 ]
  %40 = getelementptr inbounds %struct.nfs_openres, ptr %1, i32 0, i32 6
  %41 = load ptr, ptr %40, align 8
  tail call void @nfs_increment_open_seqid(i32 noundef %39, ptr noundef %41) #12
  %42 = icmp eq i32 %39, 0
  br i1 %42, label %43, label %177

43:                                               ; preds = %38, %12
  %44 = getelementptr inbounds %struct.nfs_openres, ptr %1, i32 0, i32 1, i32 1
  store i32 2, ptr %44, align 4
  %45 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 16) #12
  %46 = icmp eq ptr %45, null
  br i1 %46, label %177, label %47, !prof !8

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.nfs_openres, ptr %1, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %48, ptr noundef nonnull align 4 dereferenceable(16) %45, i32 16, i1 false) #12
  %49 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 20) #12
  %50 = icmp eq ptr %49, null
  br i1 %50, label %63, label %51, !prof !8

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.nfs_openres, ptr %1, i32 0, i32 3
  %53 = getelementptr i32, ptr %49, i32 1
  %54 = load i32, ptr %49, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #12
  store i32 %55, ptr %52, align 8
  %56 = getelementptr inbounds %struct.nfs_openres, ptr %1, i32 0, i32 3, i32 1
  %57 = load i64, ptr %53, align 1
  %58 = tail call i64 @llvm.bswap.i64(i64 %57) #12
  store i64 %58, ptr %56, align 8
  %59 = getelementptr i32, ptr %49, i32 3
  %60 = getelementptr inbounds %struct.nfs_openres, ptr %1, i32 0, i32 3, i32 2
  %61 = load i64, ptr %59, align 1
  %62 = tail call i64 @llvm.bswap.i64(i64 %61) #12
  store i64 %62, ptr %60, align 8
  br label %63

63:                                               ; preds = %51, %47
  %64 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 8) #12
  %65 = icmp eq ptr %64, null
  br i1 %65, label %177, label %66, !prof !8

66:                                               ; preds = %63
  %67 = getelementptr i32, ptr %64, i32 1
  %68 = load i32, ptr %64, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #12
  %70 = getelementptr inbounds %struct.nfs_openres, ptr %1, i32 0, i32 4
  store i32 %69, ptr %70, align 8
  %71 = load i32, ptr %67, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #12
  %73 = icmp ugt i32 %72, 10
  br i1 %73, label %177, label %74

74:                                               ; preds = %66
  %75 = shl nuw nsw i32 %72, 2
  %76 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %75) #12
  %77 = icmp eq ptr %76, null
  br i1 %77, label %177, label %78, !prof !8

78:                                               ; preds = %74
  %79 = tail call i32 @llvm.umin.i32(i32 %72, i32 3)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %89

81:                                               ; preds = %100, %94, %89
  %82 = icmp ugt i32 %72, 2
  br i1 %82, label %105, label %83

83:                                               ; preds = %81, %78
  %84 = phi i32 [ %79, %81 ], [ 0, %78 ]
  %85 = shl nuw nsw i32 %84, 2
  %86 = add nuw nsw i32 %85, 248
  %87 = getelementptr i8, ptr %1, i32 %86
  %88 = sub nuw nsw i32 12, %85
  call void @llvm.memset.p0.i32(ptr align 4 %87, i8 0, i32 %88, i1 false)
  br label %105

89:                                               ; preds = %78
  %90 = load i32, ptr %76, align 4
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #12
  %92 = getelementptr %struct.nfs_openres, ptr %1, i32 0, i32 12, i32 0
  store i32 %91, ptr %92, align 4
  %93 = icmp eq i32 %79, 1
  br i1 %93, label %81, label %94

94:                                               ; preds = %89
  %95 = getelementptr i32, ptr %76, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #12
  %98 = getelementptr %struct.nfs_openres, ptr %1, i32 0, i32 12, i32 1
  store i32 %97, ptr %98, align 4
  %99 = icmp eq i32 %79, 2
  br i1 %99, label %81, label %100

100:                                              ; preds = %94
  %101 = getelementptr i32, ptr %76, i32 2
  %102 = load i32, ptr %101, align 4
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #12
  %104 = getelementptr %struct.nfs_openres, ptr %1, i32 0, i32 12, i32 2
  store i32 %103, ptr %104, align 4
  br label %81

105:                                              ; preds = %83, %81
  %106 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %107 = icmp eq ptr %106, null
  br i1 %107, label %177, label %108, !prof !8

108:                                              ; preds = %105
  %109 = load i32, ptr %106, align 4
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #12
  %111 = getelementptr inbounds %struct.nfs_openres, ptr %1, i32 0, i32 8
  store i32 0, ptr %111, align 8
  switch i32 %110, label %176 [
    i32 0, label %177
    i32 1, label %112
    i32 2, label %112
    i32 3, label %166
  ]

112:                                              ; preds = %108, %108
  %113 = getelementptr inbounds %struct.nfs_openres, ptr %1, i32 0, i32 9, i32 1
  store i32 4, ptr %113, align 4
  %114 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 16) #12
  %115 = icmp eq ptr %114, null
  br i1 %115, label %177, label %116, !prof !8

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.nfs_openres, ptr %1, i32 0, i32 9
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %117, ptr noundef nonnull align 4 dereferenceable(16) %114, i32 16, i1 false) #12
  %118 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %119 = icmp eq ptr %118, null
  br i1 %119, label %177, label %120, !prof !8

120:                                              ; preds = %116
  %121 = load i32, ptr %118, align 4
  %122 = tail call i32 @llvm.bswap.i32(i32 %121) #12
  %123 = getelementptr inbounds %struct.nfs_openres, ptr %1, i32 0, i32 11
  store i32 %122, ptr %123, align 4
  switch i32 %110, label %150 [
    i32 1, label %124
    i32 2, label %125
  ]

124:                                              ; preds = %120
  store i32 1, ptr %111, align 8
  br label %150

125:                                              ; preds = %120
  store i32 3, ptr %111, align 8
  %126 = getelementptr inbounds %struct.nfs_openres, ptr %1, i32 0, i32 10
  %127 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 12) #12
  %128 = icmp eq ptr %127, null
  br i1 %128, label %177, label %129, !prof !8

129:                                              ; preds = %125
  %130 = getelementptr i32, ptr %127, i32 1
  %131 = load i32, ptr %127, align 4
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #12
  switch i32 %132, label %145 [
    i32 1, label %133
    i32 2, label %136
  ]

133:                                              ; preds = %129
  %134 = load i64, ptr %130, align 1
  %135 = tail call i64 @llvm.bswap.i64(i64 %134) #12
  br label %145

136:                                              ; preds = %129
  %137 = getelementptr i32, ptr %127, i32 2
  %138 = load i32, ptr %130, align 4
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #12
  %140 = load i32, ptr %137, align 4
  %141 = tail call i32 @llvm.bswap.i32(i32 %140) #12
  %142 = zext i32 %139 to i64
  %143 = zext i32 %141 to i64
  %144 = mul nuw i64 %143, %142
  br label %145

145:                                              ; preds = %136, %133, %129
  %146 = phi i64 [ 0, %129 ], [ %144, %136 ], [ %135, %133 ]
  %147 = lshr i64 %146, 12
  %148 = tail call i64 @llvm.umin.i64(i64 %147, i64 4294967295) #12
  %149 = trunc i64 %148 to i32
  store i32 %149, ptr %126, align 4
  br label %150

150:                                              ; preds = %145, %124, %120
  %151 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 12) #12
  %152 = icmp eq ptr %151, null
  br i1 %152, label %177, label %153, !prof !8

153:                                              ; preds = %150
  %154 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %155 = icmp eq ptr %154, null
  br i1 %155, label %177, label %156, !prof !8

156:                                              ; preds = %153
  %157 = load i32, ptr %154, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %165, label %159

159:                                              ; preds = %156
  %160 = tail call i32 @llvm.bswap.i32(i32 %157) #12
  %161 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %160) #12
  %162 = icmp eq ptr %161, null
  %163 = icmp ugt i32 %160, 1024
  %164 = or i1 %163, %162
  br i1 %164, label %177, label %165, !prof !12

165:                                              ; preds = %159, %156
  br label %177

166:                                              ; preds = %108
  %167 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %168 = icmp eq ptr %167, null
  br i1 %168, label %177, label %169, !prof !8

169:                                              ; preds = %166
  %170 = load i32, ptr %167, align 4
  %171 = tail call i32 @llvm.bswap.i32(i32 %170) #12
  %172 = add i32 %171, -1
  %173 = icmp ult i32 %172, 2
  br i1 %173, label %174, label %177

174:                                              ; preds = %169
  %175 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  br label %177

176:                                              ; preds = %108
  br label %177

177:                                              ; preds = %176, %174, %169, %166, %165, %159, %153, %150, %125, %116, %112, %108, %105, %74, %66, %63, %43, %38, %35, %33, %2
  %178 = phi i32 [ %39, %38 ], [ -5, %63 ], [ -5, %74 ], [ -5, %66 ], [ -121, %33 ], [ -5, %2 ], [ -121, %35 ], [ -5, %43 ], [ -5, %176 ], [ -5, %105 ], [ %110, %108 ], [ -5, %116 ], [ -5, %112 ], [ -5, %150 ], [ 0, %165 ], [ -5, %159 ], [ -5, %153 ], [ -5, %125 ], [ -5, %166 ], [ 0, %169 ], [ 0, %174 ]
  ret i32 %178
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_getfh(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(130) %1, i8 0, i32 130, i1 false)
  %3 = tail call fastcc i32 @decode_op_hdr(ptr noundef %0, i32 noundef 10)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %35

5:                                                ; preds = %2
  %6 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %35, label %8, !prof !8

8:                                                ; preds = %5
  %9 = load i32, ptr %6, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #12
  %11 = add i32 %10, -129
  %12 = icmp ult i32 %11, -128
  br i1 %12, label %13, label %29

13:                                               ; preds = %8
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_xdr_bad_filehandle, i32 0, i32 1), align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %13
  %17 = tail call ptr @llvm.thread.pointer() #12
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = lshr i32 %19, 5
  %21 = getelementptr i32, ptr @__cpu_online_mask, i32 %20
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %19, 31
  %24 = shl nuw i32 1, %23
  %25 = and i32 %24, %22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %16
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !10
  %28 = tail call i32 @__traceiter_nfs4_xdr_bad_filehandle(ptr noundef null, ptr noundef %0, i32 noundef 10, i32 noundef 10001) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br label %35

29:                                               ; preds = %8
  %30 = trunc i32 %10 to i16
  store i16 %30, ptr %1, align 2
  %31 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %10) #12
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !8

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.nfs_fh, ptr %1, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %34, ptr nonnull align 4 %31, i32 %10, i1 false)
  br label %35

35:                                               ; preds = %33, %29, %27, %16, %13, %5, %2
  %36 = phi i32 [ 0, %33 ], [ %3, %2 ], [ -5, %5 ], [ -5, %29 ], [ -121, %13 ], [ -121, %16 ], [ -121, %27 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_access(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @decode_op_hdr(ptr noundef %0, i32 noundef 3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 8) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9, !prof !8

9:                                                ; preds = %6
  %10 = getelementptr i32, ptr %7, i32 1
  %11 = load i32, ptr %7, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #12
  %13 = load i32, ptr %10, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #12
  store i32 %12, ptr %1, align 4
  store i32 %14, ptr %2, align 4
  br label %15

15:                                               ; preds = %9, %6, %3
  %16 = phi i32 [ 0, %9 ], [ %4, %3 ], [ -5, %6 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_layoutget(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @decode_op_hdr(ptr noundef %0, i32 noundef 50)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %57

5:                                                ; preds = %2
  %6 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %57, label %8, !prof !8

8:                                                ; preds = %5
  %9 = load i32, ptr %6, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #12
  %11 = getelementptr inbounds %struct.nfs4_layoutget_res, ptr %1, i32 0, i32 2
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nfs4_layoutget_res, ptr %1, i32 0, i32 5, i32 1
  store i32 5, ptr %12, align 4
  %13 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 16) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15, !prof !8

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.nfs4_layoutget_res, ptr %1, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %16, ptr noundef nonnull align 4 dereferenceable(16) %13, i32 16, i1 false) #12
  br label %17

17:                                               ; preds = %15, %8
  %18 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %57, label %20, !prof !8

20:                                               ; preds = %17
  %21 = load i32, ptr %18, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %57, label %23

23:                                               ; preds = %20
  %24 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 28) #12
  %25 = icmp eq ptr %24, null
  br i1 %25, label %57, label %26, !prof !8

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.nfs4_layoutget_res, ptr %1, i32 0, i32 3
  %28 = getelementptr inbounds %struct.nfs4_layoutget_res, ptr %1, i32 0, i32 3, i32 1
  %29 = load i64, ptr %24, align 1
  %30 = tail call i64 @llvm.bswap.i64(i64 %29) #12
  store i64 %30, ptr %28, align 8
  %31 = getelementptr i32, ptr %24, i32 2
  %32 = getelementptr inbounds %struct.nfs4_layoutget_res, ptr %1, i32 0, i32 3, i32 2
  %33 = load i64, ptr %31, align 1
  %34 = tail call i64 @llvm.bswap.i64(i64 %33) #12
  store i64 %34, ptr %32, align 8
  %35 = getelementptr i32, ptr %24, i32 4
  %36 = getelementptr i32, ptr %24, i32 5
  %37 = load i32, ptr %35, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #12
  store i32 %38, ptr %27, align 8
  %39 = getelementptr i32, ptr %24, i32 6
  %40 = load i32, ptr %36, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #12
  %42 = getelementptr inbounds %struct.nfs4_layoutget_res, ptr %1, i32 0, i32 4
  store i32 %41, ptr %42, align 8
  %43 = load i32, ptr %39, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #12
  %45 = getelementptr inbounds %struct.nfs4_layoutget_res, ptr %1, i32 0, i32 6
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.nfs4_layoutdriver_data, ptr %46, i32 0, i32 2
  store i32 %44, ptr %47, align 4
  %48 = load ptr, ptr %45, align 8
  %49 = getelementptr inbounds %struct.nfs4_layoutdriver_data, ptr %48, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = tail call i32 @xdr_read_pages(ptr noundef %0, i32 noundef %50) #12
  %52 = load ptr, ptr %45, align 8
  %53 = getelementptr inbounds %struct.nfs4_layoutdriver_data, ptr %52, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = icmp ugt i32 %54, %51
  %56 = select i1 %55, i32 -22, i32 0
  br label %57

57:                                               ; preds = %26, %23, %20, %17, %5, %2
  %58 = phi i32 [ %3, %2 ], [ -22, %20 ], [ %56, %26 ], [ -5, %23 ], [ -5, %17 ], [ -5, %5 ]
  %59 = getelementptr inbounds %struct.nfs4_layoutget_res, ptr %1, i32 0, i32 1
  store i32 %58, ptr %59, align 8
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_increment_open_seqid(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @encode_layoutreturn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !8

6:                                                ; preds = %3
  store i32 855638016, ptr %4, align 4
  br label %10

7:                                                ; preds = %3
  %8 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %8, label %10, label %9, !prof !9

9:                                                ; preds = %7
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %10

10:                                               ; preds = %9, %7, %6
  %11 = getelementptr inbounds %struct.compound_hdr, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.compound_hdr, ptr %2, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 7
  store i32 %16, ptr %14, align 4
  %17 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 16) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20, !prof !8

19:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

20:                                               ; preds = %10
  %21 = getelementptr i32, ptr %17, i32 1
  store i32 0, ptr %17, align 4
  %22 = getelementptr inbounds %struct.nfs4_layoutreturn_args, ptr %1, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = getelementptr i32, ptr %17, i32 2
  store i32 %24, ptr %21, align 4
  %26 = getelementptr inbounds %struct.nfs4_layoutreturn_args, ptr %1, i32 0, i32 3
  %27 = load i32, ptr %26, align 8
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = getelementptr i32, ptr %17, i32 3
  store i32 %28, ptr %25, align 4
  store i32 16777216, ptr %29, align 4
  %30 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 16) #12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33, !prof !8

32:                                               ; preds = %20
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/nfs4xdr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.nfs4_layoutreturn_args, ptr %1, i32 0, i32 3, i32 1
  %35 = load i64, ptr %34, align 8
  %36 = tail call i64 @llvm.bswap.i64(i64 %35) #12
  store i64 %36, ptr %30, align 1
  %37 = getelementptr i32, ptr %30, i32 2
  %38 = getelementptr inbounds %struct.nfs4_layoutreturn_args, ptr %1, i32 0, i32 3, i32 2
  %39 = load i64, ptr %38, align 8
  %40 = tail call i64 @llvm.bswap.i64(i64 %39) #12
  store i64 %40, ptr %37, align 1
  %41 = getelementptr inbounds %struct.nfs4_layoutreturn_args, ptr %1, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %43) #12
  %44 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 16) #12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46, !prof !8

46:                                               ; preds = %33
  %47 = getelementptr inbounds %struct.nfs4_layoutreturn_args, ptr %1, i32 0, i32 4
  %48 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %44, ptr noundef %47, i32 noundef 16) #12
  br label %52

49:                                               ; preds = %33
  %50 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %50, label %52, label %51, !prof !9

51:                                               ; preds = %49
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %52

52:                                               ; preds = %51, %49, %46
  %53 = load ptr, ptr %41, align 4
  %54 = getelementptr inbounds %struct.inode, ptr %53, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !26
  %55 = load i16, ptr %54, align 4
  %56 = add i16 %55, 1
  store i16 %56, ptr %54, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !27
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !29
  %57 = getelementptr inbounds %struct.nfs4_layoutreturn_args, ptr %1, i32 0, i32 6
  %58 = load ptr, ptr %57, align 8
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %52
  %62 = load ptr, ptr %59, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  tail call void %62(ptr noundef %0, ptr noundef %1, ptr noundef %58) #12
  br label %72

65:                                               ; preds = %61, %52
  %66 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #12
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68, !prof !8

68:                                               ; preds = %65
  store i32 0, ptr %66, align 4
  br label %72

69:                                               ; preds = %65
  %70 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %70, label %72, label %71, !prof !9

71:                                               ; preds = %69
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %72

72:                                               ; preds = %71, %69, %68, %64
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_fsinfo(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !14
  %4 = tail call fastcc i32 @decode_op_hdr(ptr noundef %0, i32 noundef 9)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %118

6:                                                ; preds = %2
  %7 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %118, label %9, !prof !8

9:                                                ; preds = %6
  %10 = load i32, ptr %7, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #12
  %12 = shl i32 %11, 2
  %13 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %12) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %118, label %15, !prof !8

15:                                               ; preds = %9
  %16 = icmp ugt i32 %11, 3
  br i1 %16, label %24, label %17

17:                                               ; preds = %15
  %18 = icmp eq i32 %10, 50331648
  br i1 %18, label %24, label %19

19:                                               ; preds = %17
  %20 = getelementptr i32, ptr %3, i32 %11
  %21 = mul nsw i32 %11, -4
  %22 = add nsw i32 %21, 12
  call void @llvm.memset.p0.i32(ptr align 4 %20, i8 0, i32 %22, i1 false) #12
  %23 = icmp eq i32 %10, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %19, %17, %15
  %25 = phi i32 [ %11, %19 ], [ 3, %17 ], [ -90, %15 ]
  %26 = phi i32 [ %11, %19 ], [ 3, %17 ], [ 3, %15 ]
  br label %27

27:                                               ; preds = %27, %24
  %28 = phi ptr [ %33, %27 ], [ %13, %24 ]
  %29 = phi i32 [ %35, %27 ], [ %26, %24 ]
  %30 = phi ptr [ %34, %27 ], [ %3, %24 ]
  %31 = load i32, ptr %28, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #12
  store i32 %32, ptr %30, align 4
  %33 = getelementptr i32, ptr %28, i32 1
  %34 = getelementptr i32, ptr %30, i32 1
  %35 = add i32 %29, -1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %27

37:                                               ; preds = %27
  %38 = icmp sgt i32 %25, -1
  br i1 %38, label %41, label %39, !prof !9

39:                                               ; preds = %37
  %40 = icmp eq i32 %25, -90
  br i1 %40, label %41, label %118

41:                                               ; preds = %39, %37, %19
  %42 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %43 = icmp eq ptr %42, null
  br i1 %43, label %118, label %44, !prof !8

44:                                               ; preds = %41
  %45 = load i32, ptr %42, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #12
  %47 = tail call i32 @xdr_stream_pos(ptr noundef %0) #12
  %48 = getelementptr inbounds %struct.nfs_fsinfo, ptr %1, i32 0, i32 6
  store i32 512, ptr %48, align 8
  %49 = getelementptr inbounds %struct.nfs_fsinfo, ptr %1, i32 0, i32 3
  store i32 512, ptr %49, align 4
  %50 = getelementptr inbounds %struct.nfs_fsinfo, ptr %1, i32 0, i32 10
  store i32 60, ptr %50, align 4
  %51 = load i32, ptr %3, align 4
  %52 = and i32 %51, 1023
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %118, !prof !9

54:                                               ; preds = %44
  %55 = and i32 %51, 1024
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %64, label %57, !prof !8

57:                                               ; preds = %54
  %58 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %59 = icmp eq ptr %58, null
  br i1 %59, label %118, label %60, !prof !8

60:                                               ; preds = %57
  %61 = load i32, ptr %58, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #12
  store i32 %62, ptr %50, align 4
  %63 = and i32 %51, -1025
  store i32 %63, ptr %3, align 4
  br label %64

64:                                               ; preds = %60, %54
  %65 = getelementptr inbounds %struct.nfs_fsinfo, ptr %1, i32 0, i32 8
  %66 = call fastcc i32 @decode_attr_maxfilesize(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %65)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %118

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.nfs_fsinfo, ptr %1, i32 0, i32 1
  %70 = call fastcc i32 @decode_attr_maxread(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %69)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %118

72:                                               ; preds = %68
  %73 = load i32, ptr %69, align 4
  %74 = getelementptr inbounds %struct.nfs_fsinfo, ptr %1, i32 0, i32 7
  store i32 %73, ptr %74, align 4
  %75 = getelementptr inbounds %struct.nfs_fsinfo, ptr %1, i32 0, i32 2
  store i32 %73, ptr %75, align 8
  %76 = getelementptr inbounds %struct.nfs_fsinfo, ptr %1, i32 0, i32 4
  %77 = call fastcc i32 @decode_attr_maxwrite(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %76)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %118

79:                                               ; preds = %72
  %80 = load i32, ptr %76, align 8
  %81 = getelementptr inbounds %struct.nfs_fsinfo, ptr %1, i32 0, i32 5
  store i32 %80, ptr %81, align 4
  %82 = load i32, ptr %3, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %118, !prof !9

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.nfs_fsinfo, ptr %1, i32 0, i32 9
  %86 = call fastcc i32 @decode_attr_time_delta(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %85)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %118

88:                                               ; preds = %84
  %89 = call fastcc i32 @decode_attr_pnfstype(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1)
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %118

91:                                               ; preds = %88
  %92 = getelementptr inbounds [3 x i32], ptr %3, i32 0, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %118, !prof !9

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.nfs_fsinfo, ptr %1, i32 0, i32 13
  %97 = call fastcc i32 @decode_attr_layout_blksize(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %96)
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %118

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.nfs_fsinfo, ptr %1, i32 0, i32 14
  %101 = call fastcc i32 @decode_attr_clone_blksize(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %100)
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.nfs_fsinfo, ptr %1, i32 0, i32 15
  %105 = call fastcc i32 @decode_attr_change_attr_type(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %104)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.nfs_fsinfo, ptr %1, i32 0, i32 16
  %109 = call fastcc i32 @decode_attr_xattrsupport(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %108)
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %107
  %112 = add i32 %46, 3
  %113 = tail call i32 @xdr_stream_pos(ptr noundef %0) #12
  %114 = sub i32 %113, %47
  %115 = xor i32 %114, %112
  %116 = icmp ult i32 %115, 4
  %117 = select i1 %116, i32 0, i32 -5, !prof !9
  br label %118

118:                                              ; preds = %111, %107, %103, %99, %95, %91, %88, %84, %79, %72, %68, %64, %57, %44, %41, %39, %9, %6, %2
  %119 = phi i32 [ %4, %2 ], [ %66, %64 ], [ %70, %68 ], [ %77, %72 ], [ -5, %79 ], [ %86, %84 ], [ %89, %88 ], [ -5, %91 ], [ %97, %95 ], [ %101, %99 ], [ %105, %103 ], [ %109, %107 ], [ %117, %111 ], [ -5, %41 ], [ -5, %44 ], [ -5, %57 ], [ -5, %39 ], [ -5, %6 ], [ -5, %9 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  ret i32 %119
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_attr_maxfilesize(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  store i64 0, ptr %2, align 8
  %4 = load i32, ptr %1, align 4
  %5 = and i32 %4, 134217727
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18, !prof !9

7:                                                ; preds = %3
  %8 = and i32 %4, 134217728
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10, !prof !8

10:                                               ; preds = %7
  %11 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 8) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !8

13:                                               ; preds = %10
  %14 = load i64, ptr %11, align 1
  %15 = tail call i64 @llvm.bswap.i64(i64 %14) #12
  store i64 %15, ptr %2, align 8
  %16 = load i32, ptr %1, align 4
  %17 = and i32 %16, -134217729
  store i32 %17, ptr %1, align 4
  br label %18

18:                                               ; preds = %13, %10, %7, %3
  %19 = phi i32 [ -5, %3 ], [ -5, %10 ], [ 0, %7 ], [ 0, %13 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_attr_maxread(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  store i32 1024, ptr %2, align 4
  %4 = load i32, ptr %1, align 4
  %5 = and i32 %4, 1073741823
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %20, !prof !9

7:                                                ; preds = %3
  %8 = and i32 %4, 1073741824
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10, !prof !8

10:                                               ; preds = %7
  %11 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 8) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13, !prof !8

13:                                               ; preds = %10
  %14 = load i64, ptr %11, align 1
  %15 = tail call i64 @llvm.bswap.i64(i64 %14) #12
  %16 = tail call i64 @llvm.umin.i64(i64 %15, i64 2147483647)
  %17 = trunc i64 %16 to i32
  store i32 %17, ptr %2, align 4
  %18 = load i32, ptr %1, align 4
  %19 = and i32 %18, -1073741825
  store i32 %19, ptr %1, align 4
  br label %20

20:                                               ; preds = %13, %10, %7, %3
  %21 = phi i32 [ -5, %3 ], [ 0, %13 ], [ 0, %7 ], [ -5, %10 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_attr_maxwrite(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  store i32 1024, ptr %2, align 4
  %4 = load i32, ptr %1, align 4
  %5 = and i32 %4, 2147483647
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %19, !prof !9

7:                                                ; preds = %3
  %8 = icmp sgt i32 %4, -1
  br i1 %8, label %19, label %9, !prof !8

9:                                                ; preds = %7
  %10 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 8) #12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12, !prof !8

12:                                               ; preds = %9
  %13 = load i64, ptr %10, align 1
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #12
  %15 = tail call i64 @llvm.umin.i64(i64 %14, i64 2147483647)
  %16 = trunc i64 %15 to i32
  store i32 %16, ptr %2, align 4
  %17 = load i32, ptr %1, align 4
  %18 = and i32 %17, 2147483647
  store i32 %18, ptr %1, align 4
  br label %19

19:                                               ; preds = %12, %9, %7, %3
  %20 = phi i32 [ -5, %3 ], [ 0, %12 ], [ 0, %7 ], [ -5, %9 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_attr_time_delta(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  store i64 0, ptr %2, align 8
  %4 = getelementptr inbounds %struct.timespec64, ptr %2, i32 0, i32 1
  store i32 0, ptr %4, align 8
  %5 = getelementptr i32, ptr %1, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 524287
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %25, !prof !9

9:                                                ; preds = %3
  %10 = and i32 %6, 524288
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %25, label %12, !prof !8

12:                                               ; preds = %9
  %13 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 12) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15, !prof !8

15:                                               ; preds = %12
  %16 = load i64, ptr %13, align 1
  %17 = tail call i64 @llvm.bswap.i64(i64 %16) #12
  %18 = getelementptr i32, ptr %13, i32 2
  store i64 %17, ptr %2, align 8
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #12
  store i32 %20, ptr %4, align 8
  br label %21

21:                                               ; preds = %15, %12
  %22 = phi i32 [ 0, %15 ], [ -5, %12 ]
  %23 = load i32, ptr %5, align 4
  %24 = and i32 %23, -524289
  store i32 %24, ptr %5, align 4
  br label %25

25:                                               ; preds = %21, %9, %3
  %26 = phi i32 [ -5, %3 ], [ %22, %21 ], [ 0, %9 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_attr_pnfstype(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = getelementptr i32, ptr %1, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1073741823
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %45, !prof !9

8:                                                ; preds = %3
  %9 = and i32 %5, 1073741824
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %45, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %41, label %14, !prof !8

14:                                               ; preds = %11
  %15 = load i32, ptr %12, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #12
  %17 = getelementptr inbounds %struct.nfs_fsinfo, ptr %2, i32 0, i32 11
  store i32 %16, ptr %17, align 4
  %18 = icmp eq i32 %15, 0
  br i1 %18, label %41, label %19

19:                                               ; preds = %14
  %20 = shl i32 %16, 2
  %21 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %20) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %41, label %23, !prof !8

23:                                               ; preds = %19
  %24 = load i32, ptr %17, align 4
  %25 = icmp ugt i32 %24, 8
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @__func__.decode_pnfs_layout_types, i32 noundef %24) #13
  store i32 8, ptr %17, align 4
  br label %30

28:                                               ; preds = %23
  %29 = icmp eq i32 %24, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %28, %26
  br label %31

31:                                               ; preds = %31, %30
  %32 = phi i32 [ %38, %31 ], [ 0, %30 ]
  %33 = phi ptr [ %34, %31 ], [ %21, %30 ]
  %34 = getelementptr i32, ptr %33, i32 1
  %35 = load i32, ptr %33, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #12
  %37 = getelementptr %struct.nfs_fsinfo, ptr %2, i32 0, i32 12, i32 %32
  store i32 %36, ptr %37, align 4
  %38 = add nuw i32 %32, 1
  %39 = load i32, ptr %17, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %31, label %41

41:                                               ; preds = %31, %28, %19, %14, %11
  %42 = phi i32 [ -5, %11 ], [ 0, %14 ], [ -5, %19 ], [ 0, %28 ], [ 0, %31 ]
  %43 = load i32, ptr %4, align 4
  %44 = and i32 %43, -1073741825
  store i32 %44, ptr %4, align 4
  br label %45

45:                                               ; preds = %41, %8, %3
  %46 = phi i32 [ -5, %3 ], [ %42, %41 ], [ 0, %8 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_attr_layout_blksize(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  store i32 0, ptr %2, align 4
  %4 = getelementptr i32, ptr %1, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11, !prof !8

11:                                               ; preds = %8
  %12 = load i32, ptr %9, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #12
  store i32 %13, ptr %2, align 4
  %14 = load i32, ptr %4, align 4
  %15 = and i32 %14, -3
  store i32 %15, ptr %4, align 4
  br label %16

16:                                               ; preds = %11, %8, %3
  %17 = phi i32 [ -5, %8 ], [ 0, %11 ], [ 0, %3 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_attr_clone_blksize(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  store i32 0, ptr %2, align 4
  %4 = getelementptr i32, ptr %1, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 8192
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11, !prof !8

11:                                               ; preds = %8
  %12 = load i32, ptr %9, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #12
  store i32 %13, ptr %2, align 4
  %14 = load i32, ptr %4, align 4
  %15 = and i32 %14, -8193
  store i32 %15, ptr %4, align 4
  br label %16

16:                                               ; preds = %11, %8, %3
  %17 = phi i32 [ -5, %8 ], [ 0, %11 ], [ 0, %3 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_attr_change_attr_type(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = getelementptr i32, ptr %1, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 32768
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11, !prof !8

11:                                               ; preds = %8
  %12 = load i32, ptr %9, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #12
  %14 = load i32, ptr %4, align 4
  %15 = and i32 %14, -32769
  store i32 %15, ptr %4, align 4
  %16 = tail call i32 @llvm.umin.i32(i32 %13, i32 4)
  br label %17

17:                                               ; preds = %11, %3
  %18 = phi i32 [ 4, %3 ], [ %16, %11 ]
  store i32 %18, ptr %2, align 4
  br label %19

19:                                               ; preds = %17, %8
  %20 = phi i32 [ 0, %17 ], [ -5, %8 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_attr_xattrsupport(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  store i32 0, ptr %2, align 4
  %4 = getelementptr i32, ptr %1, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 262143
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %19, !prof !9

8:                                                ; preds = %3
  %9 = and i32 %5, 262144
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11, !prof !8

11:                                               ; preds = %8
  %12 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14, !prof !8

14:                                               ; preds = %11
  %15 = load i32, ptr %12, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #12
  store i32 %16, ptr %2, align 4
  %17 = load i32, ptr %4, align 4
  %18 = and i32 %17, -262145
  store i32 %18, ptr %4, align 4
  br label %19

19:                                               ; preds = %14, %11, %8, %3
  %20 = phi i32 [ -5, %3 ], [ -5, %11 ], [ 0, %8 ], [ 0, %14 ]
  ret i32 %20
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_increment_lock_seqid(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @encode_lookup(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !8

6:                                                ; preds = %3
  store i32 251658240, ptr %4, align 4
  br label %10

7:                                                ; preds = %3
  %8 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %8, label %10, label %9, !prof !9

9:                                                ; preds = %7
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %10

10:                                               ; preds = %9, %7, %6
  %11 = getelementptr inbounds %struct.compound_hdr, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.compound_hdr, ptr %2, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 2
  store i32 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.anon.4, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.qstr, ptr %1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = add i32 %18, 7
  %22 = and i32 %21, -4
  %23 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef %22) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25, !prof !8

25:                                               ; preds = %10
  %26 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %23, ptr noundef %20, i32 noundef %18) #12
  %27 = icmp slt i32 %22, 0
  br label %28

28:                                               ; preds = %25, %10
  %29 = phi i1 [ %27, %25 ], [ true, %10 ]
  %30 = load i1, ptr @encode_string.__already_done, align 1
  %31 = xor i1 %30, true
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %34, !prof !8

33:                                               ; preds = %28
  store i1 true, ptr @encode_string.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 978, i32 noundef 9, ptr noundef null) #12
  br label %34

34:                                               ; preds = %33, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_rename(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @decode_op_hdr(ptr noundef %0, i32 noundef 29)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %33

6:                                                ; preds = %3
  %7 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 20) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9, !prof !8

9:                                                ; preds = %6
  %10 = getelementptr i32, ptr %7, i32 1
  %11 = load i32, ptr %7, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #12
  store i32 %12, ptr %1, align 8
  %13 = getelementptr inbounds %struct.nfs4_change_info, ptr %1, i32 0, i32 1
  %14 = load i64, ptr %10, align 1
  %15 = tail call i64 @llvm.bswap.i64(i64 %14) #12
  store i64 %15, ptr %13, align 8
  %16 = getelementptr i32, ptr %7, i32 3
  %17 = getelementptr inbounds %struct.nfs4_change_info, ptr %1, i32 0, i32 2
  %18 = load i64, ptr %16, align 1
  %19 = tail call i64 @llvm.bswap.i64(i64 %18) #12
  store i64 %19, ptr %17, align 8
  %20 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 20) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %33, label %22, !prof !8

22:                                               ; preds = %9
  %23 = getelementptr i32, ptr %20, i32 1
  %24 = load i32, ptr %20, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #12
  store i32 %25, ptr %2, align 8
  %26 = getelementptr inbounds %struct.nfs4_change_info, ptr %2, i32 0, i32 1
  %27 = load i64, ptr %23, align 1
  %28 = tail call i64 @llvm.bswap.i64(i64 %27) #12
  store i64 %28, ptr %26, align 8
  %29 = getelementptr i32, ptr %20, i32 3
  %30 = getelementptr inbounds %struct.nfs4_change_info, ptr %2, i32 0, i32 2
  %31 = load i64, ptr %29, align 1
  %32 = tail call i64 @llvm.bswap.i64(i64 %31) #12
  store i64 %32, ptr %30, align 8
  br label %33

33:                                               ; preds = %22, %9, %6, %3
  %34 = phi i32 [ %4, %3 ], [ -5, %6 ], [ 0, %22 ], [ -5, %9 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_link(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @decode_op_hdr(ptr noundef %0, i32 noundef 11)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %2
  %6 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 20) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8, !prof !8

8:                                                ; preds = %5
  %9 = getelementptr i32, ptr %6, i32 1
  %10 = load i32, ptr %6, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #12
  store i32 %11, ptr %1, align 8
  %12 = getelementptr inbounds %struct.nfs4_change_info, ptr %1, i32 0, i32 1
  %13 = load i64, ptr %9, align 1
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #12
  store i64 %14, ptr %12, align 8
  %15 = getelementptr i32, ptr %6, i32 3
  %16 = getelementptr inbounds %struct.nfs4_change_info, ptr %1, i32 0, i32 2
  %17 = load i64, ptr %15, align 1
  %18 = tail call i64 @llvm.bswap.i64(i64 %17) #12
  store i64 %18, ptr %16, align 8
  br label %19

19:                                               ; preds = %8, %5, %2
  %20 = phi i32 [ %3, %2 ], [ 0, %8 ], [ -5, %5 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_terminate_string(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_attr_fh_expire_type(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  store i32 0, ptr %2, align 4
  %4 = load i32, ptr %1, align 4
  %5 = and i32 %4, 3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18, !prof !9

7:                                                ; preds = %3
  %8 = and i32 %4, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10, !prof !8

10:                                               ; preds = %7
  %11 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !8

13:                                               ; preds = %10
  %14 = load i32, ptr %11, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  store i32 %15, ptr %2, align 4
  %16 = load i32, ptr %1, align 4
  %17 = and i32 %16, -5
  store i32 %17, ptr %1, align 4
  br label %18

18:                                               ; preds = %13, %10, %7, %3
  %19 = phi i32 [ -5, %3 ], [ -5, %10 ], [ 0, %7 ], [ 0, %13 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_attr_link_support(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  store i32 0, ptr %2, align 4
  %4 = load i32, ptr %1, align 4
  %5 = and i32 %4, 31
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18, !prof !9

7:                                                ; preds = %3
  %8 = and i32 %4, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10, !prof !8

10:                                               ; preds = %7
  %11 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !8

13:                                               ; preds = %10
  %14 = load i32, ptr %11, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  store i32 %15, ptr %2, align 4
  %16 = load i32, ptr %1, align 4
  %17 = and i32 %16, -33
  store i32 %17, ptr %1, align 4
  br label %18

18:                                               ; preds = %13, %10, %7, %3
  %19 = phi i32 [ -5, %3 ], [ -5, %10 ], [ 0, %7 ], [ 0, %13 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_attr_symlink_support(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  store i32 0, ptr %2, align 4
  %4 = load i32, ptr %1, align 4
  %5 = and i32 %4, 63
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18, !prof !9

7:                                                ; preds = %3
  %8 = and i32 %4, 64
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10, !prof !8

10:                                               ; preds = %7
  %11 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !8

13:                                               ; preds = %10
  %14 = load i32, ptr %11, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  store i32 %15, ptr %2, align 4
  %16 = load i32, ptr %1, align 4
  %17 = and i32 %16, -65
  store i32 %17, ptr %1, align 4
  br label %18

18:                                               ; preds = %13, %10, %7, %3
  %19 = phi i32 [ -5, %3 ], [ -5, %10 ], [ 0, %7 ], [ 0, %13 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_attr_aclsupport(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  store i32 0, ptr %2, align 4
  %4 = load i32, ptr %1, align 4
  %5 = and i32 %4, 8191
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18, !prof !9

7:                                                ; preds = %3
  %8 = and i32 %4, 8192
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10, !prof !8

10:                                               ; preds = %7
  %11 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !8

13:                                               ; preds = %10
  %14 = load i32, ptr %11, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  store i32 %15, ptr %2, align 4
  %16 = load i32, ptr %1, align 4
  %17 = and i32 %16, -8193
  store i32 %17, ptr %1, align 4
  br label %18

18:                                               ; preds = %13, %10, %7, %3
  %19 = phi i32 [ -5, %3 ], [ -5, %10 ], [ 0, %7 ], [ 0, %13 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_attr_case_insensitive(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  store i32 0, ptr %2, align 4
  %4 = load i32, ptr %1, align 4
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18, !prof !9

7:                                                ; preds = %3
  %8 = and i32 %4, 65536
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10, !prof !8

10:                                               ; preds = %7
  %11 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !8

13:                                               ; preds = %10
  %14 = load i32, ptr %11, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  store i32 %15, ptr %2, align 4
  %16 = load i32, ptr %1, align 4
  %17 = and i32 %16, -65537
  store i32 %17, ptr %1, align 4
  br label %18

18:                                               ; preds = %13, %10, %7, %3
  %19 = phi i32 [ -5, %3 ], [ -5, %10 ], [ 0, %7 ], [ 0, %13 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_attr_case_preserving(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  store i32 0, ptr %2, align 4
  %4 = load i32, ptr %1, align 4
  %5 = and i32 %4, 131071
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18, !prof !9

7:                                                ; preds = %3
  %8 = and i32 %4, 131072
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10, !prof !8

10:                                               ; preds = %7
  %11 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !8

13:                                               ; preds = %10
  %14 = load i32, ptr %11, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  store i32 %15, ptr %2, align 4
  %16 = load i32, ptr %1, align 4
  %17 = and i32 %16, -131073
  store i32 %17, ptr %1, align 4
  br label %18

18:                                               ; preds = %13, %10, %7, %3
  %19 = phi i32 [ -5, %3 ], [ -5, %10 ], [ 0, %7 ], [ 0, %13 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_attr_exclcreat_supported(ptr noundef %0, ptr nocapture noundef %1, ptr noundef writeonly %2) unnamed_addr #0 {
  %4 = getelementptr i32, ptr %1, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 2048
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %49, label %8, !prof !8

8:                                                ; preds = %3
  %9 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %52, label %11, !prof !8

11:                                               ; preds = %8
  %12 = load i32, ptr %9, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #12
  %14 = shl i32 %13, 2
  %15 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %14) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %52, label %17, !prof !8

17:                                               ; preds = %11
  %18 = icmp eq ptr %2, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %17
  %20 = icmp ugt i32 %13, 3
  br i1 %20, label %28, label %21

21:                                               ; preds = %19
  %22 = icmp eq i32 %12, 50331648
  br i1 %22, label %28, label %23

23:                                               ; preds = %21
  %24 = getelementptr i32, ptr %2, i32 %13
  %25 = mul nsw i32 %13, -4
  %26 = add nsw i32 %25, 12
  tail call void @llvm.memset.p0.i32(ptr align 4 %24, i8 0, i32 %26, i1 false) #12
  %27 = icmp eq i32 %12, 0
  br i1 %27, label %46, label %28

28:                                               ; preds = %23, %21, %19
  %29 = phi i32 [ %13, %23 ], [ 3, %21 ], [ -90, %19 ]
  %30 = phi i32 [ %13, %23 ], [ 3, %21 ], [ 3, %19 ]
  br label %31

31:                                               ; preds = %31, %28
  %32 = phi ptr [ %37, %31 ], [ %15, %28 ]
  %33 = phi i32 [ %39, %31 ], [ %30, %28 ]
  %34 = phi ptr [ %38, %31 ], [ %2, %28 ]
  %35 = load i32, ptr %32, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #12
  store i32 %36, ptr %34, align 4
  %37 = getelementptr i32, ptr %32, i32 1
  %38 = getelementptr i32, ptr %34, i32 1
  %39 = add i32 %33, -1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %31

41:                                               ; preds = %31, %17
  %42 = phi i32 [ %13, %17 ], [ %29, %31 ]
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %46, label %44, !prof !9

44:                                               ; preds = %41
  %45 = icmp eq i32 %42, -90
  br i1 %45, label %46, label %52

46:                                               ; preds = %44, %41, %23
  %47 = load i32, ptr %4, align 4
  %48 = and i32 %47, -2049
  store i32 %48, ptr %4, align 4
  br label %52

49:                                               ; preds = %3
  %50 = getelementptr i32, ptr %2, i32 2
  store i32 0, ptr %50, align 4
  %51 = getelementptr i32, ptr %2, i32 1
  store i32 0, ptr %51, align 4
  store i32 0, ptr %2, align 4
  br label %52

52:                                               ; preds = %49, %46, %44, %11, %8
  %53 = phi i32 [ 0, %46 ], [ 0, %49 ], [ -5, %8 ], [ -5, %11 ], [ -5, %44 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_enter_page(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_page_pos(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_secinfo_common(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %54, label %5, !prof !8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.nfs4_secinfo_res, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  store i32 0, ptr %7, align 4
  %8 = load i32, ptr %3, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %54, label %10

10:                                               ; preds = %5
  %11 = tail call i32 @llvm.bswap.i32(i32 %8) #12
  %12 = call i32 @llvm.umax.i32(i32 %11, i32 1)
  br label %13

13:                                               ; preds = %48, %10
  %14 = phi i32 [ %52, %48 ], [ 0, %10 ]
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr %struct.nfs4_secinfo_flavors, ptr %15, i32 0, i32 1, i32 %14
  %17 = icmp eq i32 %14, 85
  br i1 %17, label %54, label %18

18:                                               ; preds = %13
  %19 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %54, label %21, !prof !8

21:                                               ; preds = %18
  %22 = load i32, ptr %19, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #12
  store i32 %23, ptr %16, align 4
  %24 = icmp eq i32 %22, 100663296
  br i1 %24, label %25, label %48

25:                                               ; preds = %21
  %26 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %27 = icmp eq ptr %26, null
  br i1 %27, label %54, label %28, !prof !8

28:                                               ; preds = %25
  %29 = load i32, ptr %26, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #12
  %31 = icmp ugt i32 %30, 32
  br i1 %31, label %54, label %32

32:                                               ; preds = %28
  %33 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef %30) #12
  %34 = icmp eq ptr %33, null
  br i1 %34, label %54, label %35, !prof !8

35:                                               ; preds = %32
  %36 = getelementptr %struct.nfs4_secinfo_flavors, ptr %15, i32 0, i32 1, i32 %14, i32 1
  %37 = getelementptr %struct.nfs4_secinfo_flavors, ptr %15, i32 0, i32 1, i32 %14, i32 1, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %37, ptr nonnull align 4 %33, i32 %30, i1 false) #12
  store i32 %30, ptr %36, align 4
  %38 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 8) #12
  %39 = icmp eq ptr %38, null
  br i1 %39, label %54, label %40, !prof !8

40:                                               ; preds = %35
  %41 = getelementptr i32, ptr %38, i32 1
  %42 = load i32, ptr %38, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #12
  %44 = getelementptr %struct.nfs4_secinfo_flavors, ptr %15, i32 0, i32 1, i32 %14, i32 1, i32 1
  store i32 %43, ptr %44, align 4
  %45 = load i32, ptr %41, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #12
  %47 = getelementptr %struct.nfs4_secinfo_flavors, ptr %15, i32 0, i32 1, i32 %14, i32 1, i32 2
  store i32 %46, ptr %47, align 4
  br label %48

48:                                               ; preds = %40, %21
  %49 = load ptr, ptr %6, align 4
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 4
  %52 = add nuw nsw i32 %14, 1
  %53 = icmp eq i32 %52, %12
  br i1 %53, label %54, label %13

54:                                               ; preds = %48, %35, %32, %28, %25, %18, %13, %5, %2
  %55 = phi i32 [ -5, %2 ], [ 0, %5 ], [ -5, %18 ], [ 0, %48 ], [ 0, %13 ], [ -5, %25 ], [ -22, %28 ], [ -5, %32 ], [ -5, %35 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @encode_op_map(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !8

5:                                                ; preds = %2
  store i32 50331648, ptr %3, align 4
  br label %9

6:                                                ; preds = %2
  %7 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %7, label %9, label %8, !prof !9

8:                                                ; preds = %6
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %9

9:                                                ; preds = %8, %6, %5
  %10 = load i32, ptr %1, align 4
  %11 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13, !prof !8

13:                                               ; preds = %9
  %14 = tail call i32 @llvm.bswap.i32(i32 %10) #12
  store i32 %14, ptr %11, align 4
  br label %18

15:                                               ; preds = %9
  %16 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %16, label %18, label %17, !prof !9

17:                                               ; preds = %15
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %18

18:                                               ; preds = %17, %15, %13
  %19 = getelementptr [3 x i32], ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23, !prof !8

23:                                               ; preds = %18
  %24 = tail call i32 @llvm.bswap.i32(i32 %20) #12
  store i32 %24, ptr %21, align 4
  br label %28

25:                                               ; preds = %18
  %26 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %26, label %28, label %27, !prof !9

27:                                               ; preds = %25
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %28

28:                                               ; preds = %27, %25, %23
  %29 = getelementptr [3 x i32], ptr %1, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #12
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !8

33:                                               ; preds = %28
  %34 = tail call i32 @llvm.bswap.i32(i32 %30) #12
  store i32 %34, ptr %31, align 4
  br label %38

35:                                               ; preds = %28
  %36 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %36, label %38, label %37, !prof !9

37:                                               ; preds = %35
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %38

38:                                               ; preds = %37, %35, %33
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_chan_attrs(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 28) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %40, label %5, !prof !8

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %40

8:                                                ; preds = %5
  %9 = getelementptr i32, ptr %3, i32 1
  %10 = getelementptr i32, ptr %3, i32 2
  %11 = load i32, ptr %9, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #12
  store i32 %12, ptr %1, align 4
  %13 = getelementptr i32, ptr %3, i32 3
  %14 = load i32, ptr %10, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  %16 = getelementptr inbounds %struct.nfs4_channel_attrs, ptr %1, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  %17 = getelementptr i32, ptr %3, i32 4
  %18 = load i32, ptr %13, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #12
  %20 = getelementptr inbounds %struct.nfs4_channel_attrs, ptr %1, i32 0, i32 2
  store i32 %19, ptr %20, align 4
  %21 = getelementptr i32, ptr %3, i32 5
  %22 = load i32, ptr %17, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #12
  %24 = getelementptr inbounds %struct.nfs4_channel_attrs, ptr %1, i32 0, i32 3
  store i32 %23, ptr %24, align 4
  %25 = getelementptr i32, ptr %3, i32 6
  %26 = load i32, ptr %21, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #12
  %28 = getelementptr inbounds %struct.nfs4_channel_attrs, ptr %1, i32 0, i32 4
  store i32 %27, ptr %28, align 4
  %29 = load i32, ptr %25, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #12
  %31 = icmp ugt i32 %30, 1
  br i1 %31, label %32, label %34, !prof !8

32:                                               ; preds = %8
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @__func__.decode_chan_attrs, i32 noundef %30) #13
  br label %40

34:                                               ; preds = %8
  %35 = icmp eq i32 %29, 16777216
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39, !prof !8

39:                                               ; preds = %36, %34
  br label %40

40:                                               ; preds = %39, %36, %32, %5, %2
  %41 = phi i32 [ -22, %32 ], [ 0, %39 ], [ -5, %2 ], [ -22, %5 ], [ -5, %36 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @encode_fallocate(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 16) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.nfs42_falloc_args, ptr %1, i32 0, i32 2
  %7 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef nonnull %3, ptr noundef %6, i32 noundef 16) #12
  br label %11

8:                                                ; preds = %2
  %9 = load i1, ptr @encode_opaque_fixed.__already_done, align 1
  br i1 %9, label %11, label %10, !prof !9

10:                                               ; preds = %8
  store i1 true, ptr @encode_opaque_fixed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 973, i32 noundef 9, ptr noundef null) #12
  br label %11

11:                                               ; preds = %10, %8, %5
  %12 = getelementptr inbounds %struct.nfs42_falloc_args, ptr %1, i32 0, i32 3
  %13 = load i64, ptr %12, align 8
  %14 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 8) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16, !prof !8

16:                                               ; preds = %11
  %17 = tail call i64 @llvm.bswap.i64(i64 %13) #12
  store i64 %17, ptr %14, align 1
  br label %21

18:                                               ; preds = %11
  %19 = load i1, ptr @encode_uint64.__already_done, align 1
  br i1 %19, label %21, label %20, !prof !9

20:                                               ; preds = %18
  store i1 true, ptr @encode_uint64.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 988, i32 noundef 9, ptr noundef null) #12
  br label %21

21:                                               ; preds = %20, %18, %16
  %22 = getelementptr inbounds %struct.nfs42_falloc_args, ptr %1, i32 0, i32 4
  %23 = load i64, ptr %22, align 8
  %24 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 8) #12
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26, !prof !8

26:                                               ; preds = %21
  %27 = tail call i64 @llvm.bswap.i64(i64 %23) #12
  store i64 %27, ptr %24, align 1
  br label %31

28:                                               ; preds = %21
  %29 = load i1, ptr @encode_uint64.__already_done, align 1
  br i1 %29, label %31, label %30, !prof !9

30:                                               ; preds = %28
  store i1 true, ptr @encode_uint64.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 988, i32 noundef 9, ptr noundef null) #12
  br label %31

31:                                               ; preds = %30, %28, %26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @encode_nl4_server(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4
  %4 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 4) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !8

6:                                                ; preds = %2
  %7 = tail call i32 @llvm.bswap.i32(i32 %3) #12
  store i32 %7, ptr %4, align 4
  br label %11

8:                                                ; preds = %2
  %9 = load i1, ptr @encode_uint32.__already_done, align 1
  br i1 %9, label %11, label %10, !prof !9

10:                                               ; preds = %8
  store i1 true, ptr @encode_uint32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 983, i32 noundef 9, ptr noundef null) #12
  br label %11

11:                                               ; preds = %10, %8, %6
  %12 = load i32, ptr %1, align 4
  switch i32 %12, label %64 [
    i32 1, label %13
    i32 2, label %13
    i32 3, label %30
  ]

13:                                               ; preds = %11, %11
  %14 = getelementptr inbounds %struct.nl4_server, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 7
  %17 = and i32 %16, -4
  %18 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef %17) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20, !prof !8

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.nl4_server, ptr %1, i32 0, i32 1, i32 0, i32 1
  %22 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %18, ptr noundef %21, i32 noundef %15) #12
  %23 = icmp slt i32 %17, 0
  br label %24

24:                                               ; preds = %20, %13
  %25 = phi i1 [ %23, %20 ], [ true, %13 ]
  %26 = load i1, ptr @encode_string.__already_done, align 1
  %27 = xor i1 %26, true
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %67, !prof !8

29:                                               ; preds = %24
  store i1 true, ptr @encode_string.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 978, i32 noundef 9, ptr noundef null) #12
  br label %67

30:                                               ; preds = %11
  %31 = getelementptr inbounds %struct.nl4_server, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 60
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 7
  %34 = and i32 %33, -4
  %35 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef %34) #12
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37, !prof !8

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.nl4_server, ptr %1, i32 0, i32 1
  %39 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %35, ptr noundef %38, i32 noundef %32) #12
  %40 = icmp slt i32 %34, 0
  br label %41

41:                                               ; preds = %37, %30
  %42 = phi i1 [ %40, %37 ], [ true, %30 ]
  %43 = load i1, ptr @encode_string.__already_done, align 1
  %44 = xor i1 %43, true
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %47, !prof !8

46:                                               ; preds = %41
  store i1 true, ptr @encode_string.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 978, i32 noundef 9, ptr noundef null) #12
  br label %47

47:                                               ; preds = %46, %41
  %48 = getelementptr inbounds %struct.nl4_server, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 64
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, 7
  %51 = and i32 %50, -4
  %52 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef %51) #12
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54, !prof !8

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.nl4_server, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 1
  %56 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %52, ptr noundef %55, i32 noundef %49) #12
  %57 = icmp slt i32 %51, 0
  br label %58

58:                                               ; preds = %54, %47
  %59 = phi i1 [ %57, %54 ], [ true, %47 ]
  %60 = load i1, ptr @encode_string.__already_done, align 1
  %61 = xor i1 %60, true
  %62 = select i1 %59, i1 %61, i1 false
  br i1 %62, label %63, label %67, !prof !8

63:                                               ; preds = %58
  store i1 true, ptr @encode_string.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 978, i32 noundef 9, ptr noundef null) #12
  br label %67

64:                                               ; preds = %11
  %65 = load i1, ptr @encode_nl4_server.__already_done, align 1
  br i1 %65, label %67, label %66, !prof !9

66:                                               ; preds = %64
  store i1 true, ptr @encode_nl4_server.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.79, i32 noundef 293, i32 noundef 9, ptr noundef null) #12
  br label %67

67:                                               ; preds = %66, %64, %63, %58, %29, %24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @decode_copy(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @decode_op_hdr(ptr noundef %0, i32 noundef 60)
  switch i32 %3, label %50 [
    i32 10094, label %4
    i32 0, label %7
  ]

4:                                                ; preds = %2
  %5 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 8) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %50, label %39, !prof !8

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.nfs42_copy_res, ptr %1, i32 0, i32 1
  %9 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 4) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %50, label %11, !prof !8

11:                                               ; preds = %7
  %12 = load i32, ptr %9, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #12
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %50, label %15

15:                                               ; preds = %11
  %16 = icmp eq i32 %12, 16777216
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 16) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %50, label %20, !prof !8

20:                                               ; preds = %17
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %18, i32 16, i1 false) #12
  br label %21

21:                                               ; preds = %20, %15
  %22 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 12) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %50, label %24, !prof !8

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.nfs42_copy_res, ptr %1, i32 0, i32 1, i32 1
  %26 = load i64, ptr %22, align 1
  %27 = tail call i64 @llvm.bswap.i64(i64 %26) #12
  store i64 %27, ptr %25, align 8
  %28 = getelementptr i32, ptr %22, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #12
  %31 = getelementptr inbounds %struct.nfs42_copy_res, ptr %1, i32 0, i32 1, i32 2, i32 1
  store i32 %30, ptr %31, align 8
  %32 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 8) #12
  %33 = icmp eq ptr %32, null
  br i1 %33, label %50, label %34, !prof !8

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.nfs42_copy_res, ptr %1, i32 0, i32 1, i32 2
  %36 = load i64, ptr %32, align 4
  store i64 %36, ptr %35, align 1
  %37 = tail call ptr @xdr_inline_decode(ptr noundef %0, i32 noundef 8) #12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %50, label %39, !prof !8

39:                                               ; preds = %34, %4
  %40 = phi ptr [ %5, %4 ], [ %37, %34 ]
  %41 = getelementptr i32, ptr %40, i32 1
  %42 = load i32, ptr %40, align 4
  %43 = icmp ne i32 %42, 0
  %44 = getelementptr inbounds %struct.nfs42_copy_res, ptr %1, i32 0, i32 2
  %45 = zext i1 %43 to i8
  store i8 %45, ptr %44, align 8
  %46 = load i32, ptr %41, align 4
  %47 = icmp ne i32 %46, 0
  %48 = getelementptr inbounds %struct.nfs42_copy_res, ptr %1, i32 0, i32 3
  %49 = zext i1 %47 to i8
  store i8 %49, ptr %48, align 1
  br label %50

50:                                               ; preds = %39, %34, %24, %21, %17, %11, %7, %4, %2
  %51 = phi i32 [ %3, %2 ], [ -5, %4 ], [ -5, %34 ], [ -5, %24 ], [ -5, %17 ], [ -5, %21 ], [ -121, %11 ], [ -5, %7 ], [ %3, %39 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_align_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_expand_hole(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2156739140}
!11 = !{i64 2156739326}
!12 = !{!"branch_weights", i32 4001, i32 4000000}
!13 = !{i64 2158388553, i64 2158389034, i64 2158388590, i64 2158388646, i64 2158388680, i64 2158388704, i64 2158388745, i64 2158388766, i64 2158388794, i64 2158388828}
!14 = !{!"auto-init"}
!15 = !{i8 0, i8 2}
!16 = !{i64 2149633242}
!17 = !{i64 2149633459}
!18 = !{!"branch_weights", i32 6003000, i32 -294967296}
!19 = !{!"branch_weights", i32 2002, i32 2000}
!20 = !{i64 2156718016}
!21 = !{i64 2156718186}
!22 = !{i64 2156700869}
!23 = !{i64 2156701059}
!24 = !{i64 2158408778, i64 2158409260, i64 2158408815, i64 2158408871, i64 2158408905, i64 2158408929, i64 2158408970, i64 2158408991, i64 2158409019, i64 2158409053}
!25 = !{i64 2158411783, i64 2158412265, i64 2158411820, i64 2158411876, i64 2158411910, i64 2158411934, i64 2158411975, i64 2158411996, i64 2158412024, i64 2158412058}
!26 = !{i64 2149234470}
!27 = !{i64 2149230294}
!28 = !{i64 2149230369, i64 2149230396, i64 2149230443, i64 2149230465, i64 2149230493, i64 2149230513}
!29 = !{i64 2149257473}
