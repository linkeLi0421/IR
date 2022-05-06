; ModuleID = '/llk/IR/net/sunrpc/auth_gss/auth_gss.c_pt.bc'
source_filename = "../net/sunrpc/auth_gss/auth_gss.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rpc_authops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.32 }
%union.anon.32 = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.rpc_pipe_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.rpc_pipe_dir_object_ops = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rpc_credops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.gss_alloc_pdo = type { ptr, ptr, ptr }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, %union.anon.146, ptr, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.146 = type { %struct.work_struct }
%struct.gss_auth = type { %struct.kref, %struct.hlist_node, %struct.rpc_auth, ptr, i32, ptr, ptr, [2 x ptr], ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.rpc_auth = type { i32, i32, i32, i32, i32, ptr, i32, %struct.refcount_struct, ptr }
%struct.rpc_auth_create_args = type { i32, ptr }
%struct.gss_api_mech = type { %struct.list_head, ptr, %struct.rpcsec_gss_oid, ptr, ptr, i32, ptr, ptr }
%struct.rpcsec_gss_oid = type { i32, [32 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.40 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.40 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rpc_cred = type { %struct.hlist_node, %struct.list_head, %struct.callback_head, ptr, ptr, i32, i32, %struct.refcount_struct, ptr }
%struct.gss_cred = type { %struct.rpc_cred, i32, ptr, ptr, ptr, i32 }
%struct.auth_cred = type { ptr, ptr }
%struct.gss_pipe = type { %struct.rpc_pipe_dir_object, ptr, ptr, ptr, %struct.kref }
%struct.rpc_pipe_dir_object = type { %struct.list_head, ptr, ptr }
%struct.rpc_pipe = type { %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, %struct.delayed_work, ptr, %struct.spinlock, ptr }
%struct.rpc_pipe_msg = type { %struct.list_head, ptr, i32, i32, i32 }
%struct.file = type { %union.anon.21, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.21 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.rpc_inode = type { %struct.inode, ptr, ptr, %struct.wait_queue_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.133, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.134, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.135, ptr, %struct.address_space, %struct.list_head, %union.anon.136, i32, i32, ptr, ptr }
%union.anon.133 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.134 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.135 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.136 = type { ptr }
%struct.gss_cl_ctx = type { %struct.refcount_struct, i32, i32, i32, %struct.spinlock, ptr, %struct.xdr_netobj, %struct.xdr_netobj, i32, i32, %struct.callback_head }
%struct.xdr_netobj = type { i32, ptr }
%struct.gss_upcall_msg = type { %struct.refcount_struct, %struct.kuid_t, ptr, %struct.rpc_pipe_msg, %struct.list_head, ptr, ptr, %struct.rpc_wait_queue, %struct.wait_queue_head, ptr, [256 x i8] }
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
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.10, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { ptr, i32, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [40 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [60 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.130, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.130 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.sunrpc_net = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.spinlock, ptr, ptr, %struct.spinlock, i32, i8, %struct.mutex, ptr, i32, i32, %struct.atomic_t, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.34 }
%union.anon.34 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.35 }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.55 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.139, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.139 = type { %struct.rpc_wait }
%struct.rpc_wait = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.rpc_rqst = type { ptr, %struct.xdr_buf, %struct.xdr_buf, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.140, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.xdr_buf, i32, i32, i32, i64, i32, i32, %struct.atomic_t, i32, i64, i32, %struct.list_head, i32, %struct.list_head }
%union.anon.140 = type { %struct.rb_node }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.gss_ctx = type { ptr, ptr, i32, i32 }

@rpcsec_gss_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @rpcsec_gss_init_net, ptr null, ptr @rpcsec_gss_exit_net, ptr null, ptr null, i32 0 }, align 4
@authgss_ops = internal constant %struct.rpc_authops { ptr null, i32 6, ptr @.str, ptr @gss_create, ptr @gss_destroy, ptr @gss_hash_cred, ptr @gss_lookup_cred, ptr @gss_create_cred, ptr @gss_mech_info2flavor, ptr @gss_mech_flavor2info, ptr null }, align 4
@__UNIQUE_ID_alias518 = internal constant [29 x i8] c"auth_rpcgss.alias=rpc-auth-6\00", section ".modinfo", align 1
@__UNIQUE_ID_file519 = internal constant [49 x i8] c"auth_rpcgss.file=net/sunrpc/auth_gss/auth_rpcgss\00", section ".modinfo", align 1
@__UNIQUE_ID_license520 = internal constant [24 x i8] c"auth_rpcgss.license=GPL\00", section ".modinfo", align 1
@__param_str_expired_cred_retry_delay = internal constant [37 x i8] c"auth_rpcgss.expired_cred_retry_delay\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@gss_expired_cred_retry_delay = internal global i32 5, align 4
@__param_expired_cred_retry_delay = internal constant %struct.kernel_param { ptr @__param_str_expired_cred_retry_delay, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.32 { ptr @gss_expired_cred_retry_delay } }, section "__param", align 4
@__UNIQUE_ID_expired_cred_retry_delaytype521 = internal constant [51 x i8] c"auth_rpcgss.parmtype=expired_cred_retry_delay:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_expired_cred_retry_delay522 = internal constant [114 x i8] c"auth_rpcgss.parm=expired_cred_retry_delay:Timeout (in seconds) until the RPC engine retries an expired credential\00", section ".modinfo", align 1
@__param_str_key_expire_timeo = internal constant [29 x i8] c"auth_rpcgss.key_expire_timeo\00", align 1
@gss_key_expire_timeo = internal global i32 240, align 4
@__param_key_expire_timeo = internal constant %struct.kernel_param { ptr @__param_str_key_expire_timeo, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.32 { ptr @gss_key_expire_timeo } }, section "__param", align 4
@__UNIQUE_ID_key_expire_timeotype523 = internal constant [43 x i8] c"auth_rpcgss.parmtype=key_expire_timeo:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_key_expire_timeo524 = internal constant [147 x i8] c"auth_rpcgss.parm=key_expire_timeo:Time (in seconds) at the end of a credential keys lifetime where the NFS layer cleans up prior to key expiration\00", section ".modinfo", align 1
@__initcall__kmod_auth_rpcgss__525_2262_init_rpcsec_gss6 = internal global ptr @init_rpcsec_gss, section ".initcall6.init", align 4
@__exitcall_exit_rpcsec_gss = internal global ptr @exit_rpcsec_gss, section ".exitcall.exit", align 4
@.str = private unnamed_addr constant [11 x i8] c"RPCSEC_GSS\00", align 1
@gss_auth_hash_lock = internal global %struct.spinlock zeroinitializer, align 4
@gss_auth_hash_table = internal global [16 x %struct.hlist_head] zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"gssd\00", align 1
@gss_upcall_ops_v1 = internal constant %struct.rpc_pipe_ops { ptr @gss_v1_upcall, ptr @gss_pipe_downcall, ptr @gss_pipe_release, ptr @gss_pipe_open_v1, ptr @gss_pipe_destroy_msg }, align 4
@gss_upcall_ops_v0 = internal constant %struct.rpc_pipe_ops { ptr @gss_v0_upcall, ptr @gss_pipe_downcall, ptr @gss_pipe_release, ptr @gss_pipe_open_v0, ptr @gss_pipe_destroy_msg }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@gss_pipe_dir_object_ops = internal constant %struct.rpc_pipe_dir_object_ops { ptr @gss_pipe_dentry_create, ptr @gss_pipe_dentry_destroy }, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"mech=%s uid=%d\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" target=%s\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" service=%s\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c" service=%.*s srchost=%s\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c" enctypes=%s\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@gss_encode_v1_msg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"net/sunrpc/auth_gss/auth_gss.c\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_rpcgss_upcall_msg = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.10 = private unnamed_addr constant [45 x i8] c"\012%s: bad return from gss_fill_context: %zd\0A\00", align 1
@__func__.gss_pipe_downcall = private unnamed_addr constant [18 x i8] c"gss_pipe_downcall\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__tracepoint_rpcgss_import_ctx = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpcgss_context = external dso_local global %struct.tracepoint, align 4
@sunrpc_net_id = external dso_local local_unnamed_addr global i32, align 4
@pipe_version_lock = internal global %struct.spinlock zeroinitializer, align 4
@pipe_version_rpc_waitqueue = internal global %struct.rpc_wait_queue zeroinitializer, align 4
@pipe_version_waitqueue = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pipe_version_waitqueue, i64 4), ptr getelementptr (i8, ptr @pipe_version_waitqueue, i64 4) } }, align 4
@__tracepoint_rpcgss_createauth = external dso_local global %struct.tracepoint, align 4
@gss_credops = internal constant %struct.rpc_credops { ptr @.str.13, ptr @gss_cred_init, ptr @gss_destroy_cred, ptr @gss_match, ptr @gss_marshal, ptr @gss_refresh, ptr @gss_validate, ptr @gss_wrap_req, ptr @gss_unwrap_resp, ptr @gss_key_timeout, ptr @gss_stringify_acceptor, ptr @gss_xmit_need_reencode }, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"AUTH_GSS\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"RPCSEC_GSS upcall waitq\00", align 1
@gss_alloc_msg.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"&gss_msg->waitqueue\00", align 1
@__tracepoint_rpcgss_ctx_init = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpcgss_upcall_result = external dso_local global %struct.tracepoint, align 4
@gss_nullops = internal constant %struct.rpc_credops { ptr @.str.13, ptr null, ptr @gss_destroy_nullcred, ptr @gss_match, ptr @gss_marshal, ptr @gss_refresh_null, ptr @gss_validate, ptr @gss_wrap_req, ptr @gss_unwrap_resp, ptr null, ptr @gss_stringify_acceptor, ptr null }, align 4
@__tracepoint_rpcgss_ctx_destroy = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpcgss_seqno = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpcgss_get_mic = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpcgss_verify_mic = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpcgss_wrap = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpcgss_update_slack = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpcgss_unwrap_failed = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpcgss_bad_seqno = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpcgss_unwrap = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpcgss_need_reencode = external dso_local global %struct.tracepoint, align 4
@.str.16 = private unnamed_addr constant [17 x i8] c"gss pipe version\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_alias518, ptr @__UNIQUE_ID_expired_cred_retry_delay522, ptr @__UNIQUE_ID_expired_cred_retry_delaytype521, ptr @__UNIQUE_ID_file519, ptr @__UNIQUE_ID_key_expire_timeo524, ptr @__UNIQUE_ID_key_expire_timeotype523, ptr @__UNIQUE_ID_license520, ptr @__exitcall_exit_rpcsec_gss, ptr @__initcall__kmod_auth_rpcgss__525_2262_init_rpcsec_gss6, ptr @__param_expired_cred_retry_delay, ptr @__param_key_expire_timeo, ptr @exit_rpcsec_gss], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exit_rpcsec_gss() #0 section ".exit.text" {
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @rpcsec_gss_net_ops) #16
  tail call void @gss_svc_shutdown() #16
  %1 = tail call i32 @rpcauth_unregister(ptr noundef nonnull @authgss_ops) #16
  tail call void @rcu_barrier() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gss_svc_shutdown() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcauth_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_rpcsec_gss() #0 section ".init.text" {
  %1 = tail call i32 @rpcauth_register(ptr noundef nonnull @authgss_ops) #16
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %14

3:                                                ; preds = %0
  %4 = tail call i32 @gss_svc_init() #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @rpcsec_gss_net_ops) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @rpc_init_wait_queue(ptr noundef nonnull @pipe_version_rpc_waitqueue, ptr noundef nonnull @.str.16) #16
  br label %14

10:                                               ; preds = %6
  tail call void @gss_svc_shutdown() #16
  br label %11

11:                                               ; preds = %10, %3
  %12 = phi i32 [ %4, %3 ], [ %7, %10 ]
  %13 = tail call i32 @rpcauth_unregister(ptr noundef nonnull @authgss_ops) #16
  br label %14

14:                                               ; preds = %11, %9, %0
  %15 = phi i32 [ 0, %9 ], [ %1, %0 ], [ %12, %11 ]
  ret i32 %15
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rpcsec_gss_init_net(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 @gss_svc_init_net(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rpcsec_gss_exit_net(ptr noundef %0) #2 section ".ref.text" {
  tail call void @gss_svc_shutdown_net(ptr noundef %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_svc_init_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gss_svc_shutdown_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @gss_create(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = alloca %struct.gss_alloc_pdo, align 4
  %4 = alloca %struct.gss_alloc_pdo, align 4
  %5 = getelementptr inbounds %struct.rpc_clnt, ptr %1, i32 0, i32 27
  %6 = load volatile ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %12, %2
  %8 = phi ptr [ %1, %2 ], [ %10, %12 ]
  %9 = getelementptr inbounds %struct.rpc_clnt, ptr %8, i32 0, i32 21
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rpc_clnt, ptr %10, i32 0, i32 27
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %6
  br i1 %15, label %7, label %16

16:                                               ; preds = %12, %7
  %17 = tail call fastcc ptr @gss_auth_find_or_add_hashed(ptr noundef %0, ptr noundef %8, ptr noundef null) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %130

19:                                               ; preds = %16
  %20 = load i32, ptr %0, align 4
  %21 = tail call zeroext i1 @try_module_get(ptr noundef null) #16
  br i1 %21, label %22, label %135

22:                                               ; preds = %19
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3264, i32 noundef 76) #17
  %25 = icmp eq ptr %24, null
  br i1 %25, label %103, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.gss_auth, ptr %24, i32 0, i32 1
  store ptr null, ptr %27, align 4
  %28 = getelementptr inbounds %struct.gss_auth, ptr %24, i32 0, i32 1, i32 1
  store ptr null, ptr %28, align 8
  %29 = getelementptr inbounds %struct.gss_auth, ptr %24, i32 0, i32 8
  store ptr null, ptr %29, align 8
  %30 = getelementptr inbounds %struct.rpc_auth_create_args, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = tail call noalias ptr @kstrdup(ptr noundef nonnull %31, i32 noundef 3264) #16
  store ptr %34, ptr %29, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %100, label %36

36:                                               ; preds = %33, %26
  %37 = getelementptr inbounds %struct.gss_auth, ptr %24, i32 0, i32 5
  store ptr %8, ptr %37, align 8
  %38 = tail call ptr @rpc_net_ns(ptr noundef %8) #16
  %39 = getelementptr inbounds %struct.gss_auth, ptr %24, i32 0, i32 6
  store ptr %38, ptr %39, align 4
  %40 = tail call ptr @gss_mech_get_by_pseudoflavor(i32 noundef %20) #16
  %41 = getelementptr inbounds %struct.gss_auth, ptr %24, i32 0, i32 3
  store ptr %40, ptr %41, align 8
  %42 = icmp eq ptr %40, null
  br i1 %42, label %100, label %43

43:                                               ; preds = %36
  %44 = tail call i32 @gss_pseudoflavor_to_service(ptr noundef nonnull %40, i32 noundef %20) #16
  %45 = getelementptr inbounds %struct.gss_auth, ptr %24, i32 0, i32 4
  store i32 %44, ptr %45, align 4
  %46 = icmp eq i32 %44, 0
  br i1 %46, label %97, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %39, align 4
  %49 = tail call zeroext i1 @gssd_running(ptr noundef %48) #16
  br i1 %49, label %50, label %97

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.gss_auth, ptr %24, i32 0, i32 2
  store i32 200, ptr %51, align 4
  %52 = getelementptr inbounds %struct.gss_auth, ptr %24, i32 0, i32 2, i32 1
  store i32 37, ptr %52, align 8
  %53 = getelementptr inbounds %struct.gss_auth, ptr %24, i32 0, i32 2, i32 2
  store i32 25, ptr %53, align 4
  %54 = getelementptr inbounds %struct.gss_auth, ptr %24, i32 0, i32 2, i32 3
  store i32 25, ptr %54, align 8
  %55 = getelementptr inbounds %struct.gss_auth, ptr %24, i32 0, i32 2, i32 4
  %56 = load i32, ptr %55, align 4
  %57 = or i32 %56, 4
  store i32 %57, ptr %55, align 4
  %58 = getelementptr inbounds %struct.gss_auth, ptr %24, i32 0, i32 2, i32 5
  store ptr @authgss_ops, ptr %58, align 8
  %59 = getelementptr inbounds %struct.gss_auth, ptr %24, i32 0, i32 2, i32 6
  store i32 %20, ptr %59, align 4
  %60 = load ptr, ptr %41, align 8
  %61 = tail call zeroext i1 @gss_pseudoflavor_to_datatouch(ptr noundef %60, i32 noundef %20) #16
  br i1 %61, label %62, label %65

62:                                               ; preds = %50
  %63 = load i32, ptr %55, align 4
  %64 = or i32 %63, 2
  store i32 %64, ptr %55, align 4
  br label %65

65:                                               ; preds = %62, %50
  %66 = getelementptr inbounds %struct.gss_auth, ptr %24, i32 0, i32 2, i32 7
  store volatile i32 1, ptr %66, align 8
  store volatile i32 1, ptr %24, align 8
  %67 = tail call i32 @rpcauth_init_credcache(ptr noundef %51) #16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %97

69:                                               ; preds = %65
  %70 = tail call ptr @rpc_net_ns(ptr noundef %8) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  store ptr %8, ptr %3, align 4
  %71 = getelementptr inbounds %struct.gss_alloc_pdo, ptr %3, i32 0, i32 1
  store ptr @.str.1, ptr %71, align 4
  %72 = getelementptr inbounds %struct.gss_alloc_pdo, ptr %3, i32 0, i32 2
  store ptr @gss_upcall_ops_v1, ptr %72, align 4
  %73 = getelementptr inbounds %struct.rpc_clnt, ptr %8, i32 0, i32 20
  %74 = call ptr @rpc_find_or_alloc_pipe_dir_object(ptr noundef %70, ptr noundef %73, ptr noundef nonnull @gss_pipe_match_pdo, ptr noundef nonnull @gss_pipe_alloc_pdo, ptr noundef nonnull %3) #16
  %75 = icmp eq ptr %74, null
  %76 = select i1 %75, ptr inttoptr (i32 -12 to ptr), ptr %74
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  %77 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  br i1 %77, label %94, label %78

78:                                               ; preds = %69
  %79 = getelementptr %struct.gss_auth, ptr %24, i32 0, i32 7, i32 1
  store ptr %76, ptr %79, align 4
  %80 = load ptr, ptr %41, align 8
  %81 = getelementptr inbounds %struct.gss_api_mech, ptr %80, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  %83 = call ptr @rpc_net_ns(ptr noundef %8) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  store ptr %8, ptr %4, align 4
  %84 = getelementptr inbounds %struct.gss_alloc_pdo, ptr %4, i32 0, i32 1
  store ptr %82, ptr %84, align 4
  %85 = getelementptr inbounds %struct.gss_alloc_pdo, ptr %4, i32 0, i32 2
  store ptr @gss_upcall_ops_v0, ptr %85, align 4
  %86 = call ptr @rpc_find_or_alloc_pipe_dir_object(ptr noundef %83, ptr noundef %73, ptr noundef nonnull @gss_pipe_match_pdo, ptr noundef nonnull @gss_pipe_alloc_pdo, ptr noundef nonnull %4) #16
  %87 = icmp eq ptr %86, null
  %88 = select i1 %87, ptr inttoptr (i32 -12 to ptr), ptr %86
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  %89 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %89, label %90, label %92

90:                                               ; preds = %78
  %91 = load ptr, ptr %79, align 4
  call fastcc void @gss_pipe_free(ptr noundef %91) #16
  br label %94

92:                                               ; preds = %78
  %93 = getelementptr inbounds %struct.gss_auth, ptr %24, i32 0, i32 7
  store ptr %88, ptr %93, align 8
  br label %122

94:                                               ; preds = %90, %69
  %95 = phi ptr [ %88, %90 ], [ %76, %69 ]
  %96 = ptrtoint ptr %95 to i32
  call void @rpcauth_destroy_credcache(ptr noundef %51) #16
  br label %97

97:                                               ; preds = %94, %65, %47, %43
  %98 = phi i32 [ -22, %43 ], [ %67, %65 ], [ %96, %94 ], [ -22, %47 ]
  %99 = load ptr, ptr %41, align 8
  call void @gss_mech_put(ptr noundef %99) #16
  br label %100

100:                                              ; preds = %97, %36, %33
  %101 = phi i32 [ -12, %33 ], [ %98, %97 ], [ -22, %36 ]
  %102 = load ptr, ptr %29, align 8
  call void @kfree(ptr noundef %102) #16
  call void @kfree(ptr noundef nonnull %24) #16
  br label %103

103:                                              ; preds = %100, %22
  %104 = phi i32 [ %101, %100 ], [ -12, %22 ]
  call void @module_put(ptr noundef null) #16
  %105 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_createauth, i32 0, i32 1), align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %103
  %108 = tail call ptr @llvm.thread.pointer() #16
  %109 = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 2
  %110 = load i32, ptr %109, align 8
  %111 = lshr i32 %110, 5
  %112 = getelementptr i32, ptr @__cpu_online_mask, i32 %111
  %113 = load volatile i32, ptr %112, align 4
  %114 = and i32 %110, 31
  %115 = shl nuw i32 1, %114
  %116 = and i32 %115, %113
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %107
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !8
  %119 = call i32 @__traceiter_rpcgss_createauth(ptr noundef null, i32 noundef %20, i32 noundef %104) #16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  br label %120

120:                                              ; preds = %118, %107, %103
  %121 = inttoptr i32 %104 to ptr
  br label %122

122:                                              ; preds = %120, %92
  %123 = phi ptr [ %121, %120 ], [ %24, %92 ]
  %124 = icmp ugt ptr %123, inttoptr (i32 -4096 to ptr)
  br i1 %124, label %130, label %125

125:                                              ; preds = %122
  %126 = call fastcc ptr @gss_auth_find_or_add_hashed(ptr noundef %0, ptr noundef %8, ptr noundef %123) #16
  %127 = icmp eq ptr %126, %123
  br i1 %127, label %130, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.gss_auth, ptr %123, i32 0, i32 2
  call void @gss_destroy(ptr noundef %129) #16
  br label %130

130:                                              ; preds = %128, %125, %122, %16
  %131 = phi ptr [ %123, %122 ], [ %17, %16 ], [ %126, %128 ], [ %123, %125 ]
  %132 = icmp ugt ptr %131, inttoptr (i32 -4096 to ptr)
  %133 = getelementptr inbounds %struct.gss_auth, ptr %131, i32 0, i32 2
  %134 = select i1 %132, ptr %131, ptr %133
  br label %135

135:                                              ; preds = %130, %19
  %136 = phi ptr [ inttoptr (i32 -12 to ptr), %19 ], [ %134, %130 ]
  ret ptr %136
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gss_destroy(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef nonnull @gss_auth_hash_lock) #16
  %7 = load ptr, ptr %3, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %2, align 4
  store volatile ptr %10, ptr %7, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1
  store volatile ptr %7, ptr %13, align 4
  br label %14

14:                                               ; preds = %12, %9
  store ptr null, ptr %2, align 4
  store ptr null, ptr %3, align 4
  br label %15

15:                                               ; preds = %14, %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %16 = load i16, ptr @gss_auth_hash_lock, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr @gss_auth_hash_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  br label %18

18:                                               ; preds = %15, %1
  %19 = getelementptr i8, ptr %0, i32 -12
  %20 = getelementptr i8, ptr %0, i32 52
  %21 = load ptr, ptr %20, align 4
  tail call fastcc void @gss_pipe_free(ptr noundef %21)
  store ptr null, ptr %20, align 4
  %22 = getelementptr i8, ptr %0, i32 56
  %23 = load ptr, ptr %22, align 4
  tail call fastcc void @gss_pipe_free(ptr noundef %23)
  store ptr null, ptr %22, align 4
  tail call void @rpcauth_destroy_credcache(ptr noundef %0) #16
  tail call fastcc void @gss_put_auth(ptr noundef %19)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @gss_hash_cred(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = mul i32 %5, 1640531527
  %7 = sub i32 32, %1
  %8 = lshr i32 %6, %7
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @gss_lookup_cred(ptr noundef %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = tail call ptr @rpcauth_lookup_credcache(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 3136) #16
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @gss_create_cred(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #3 {
  %5 = or i32 %3, 256
  %6 = and i32 %3, 17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8, !prof !14

8:                                                ; preds = %4
  %9 = and i32 %3, 1
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 1, i32 2
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ 0, %4 ], [ %11, %8 ]
  %14 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %13, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef %5, i32 noundef 68) #17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %36, label %18

18:                                               ; preds = %12
  %19 = getelementptr i8, ptr %0, i32 -12
  tail call void @rpcauth_init_cred(ptr noundef nonnull %16, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @gss_credops) #16
  %20 = getelementptr inbounds %struct.rpc_cred, ptr %16, i32 0, i32 6
  store i32 1, ptr %20, align 4
  %21 = getelementptr i8, ptr %0, i32 40
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.gss_cred, ptr %16, i32 0, i32 1
  store i32 %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.auth_cred, ptr %1, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.gss_cred, ptr %16, i32 0, i32 4
  store ptr %25, ptr %26, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #16, !srcloc !15
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #16, !srcloc !16
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30, !prof !17

30:                                               ; preds = %18
  %31 = add i32 %28, 1
  %32 = or i32 %31, %28
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %36, label %34, !prof !14

34:                                               ; preds = %30, %18
  %35 = phi i32 [ 2, %18 ], [ 1, %30 ]
  tail call void @refcount_warn_saturate(ptr noundef %19, i32 noundef %35) #16
  br label %36

36:                                               ; preds = %34, %30, %12
  %37 = phi ptr [ %16, %30 ], [ %16, %34 ], [ inttoptr (i32 -12 to ptr), %12 ]
  ret ptr %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_mech_info2flavor(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_mech_flavor2info(i32 noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @gss_auth_find_or_add_hashed(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 {
  %4 = ptrtoint ptr %1 to i32
  tail call void @_raw_spin_lock(ptr noundef nonnull @gss_auth_hash_lock) #16
  %5 = mul i32 %4, 1640531527
  %6 = lshr i32 %5, 28
  %7 = getelementptr [16 x %struct.hlist_head], ptr @gss_auth_hash_table, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = getelementptr i8, ptr %8, i32 -4
  %11 = icmp eq ptr %10, null
  %12 = or i1 %9, %11
  br i1 %12, label %68, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.rpc_auth_create_args, ptr %0, i32 0, i32 1
  br label %15

15:                                               ; preds = %61, %13
  %16 = phi ptr [ %10, %13 ], [ %65, %61 ]
  %17 = getelementptr inbounds %struct.gss_auth, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %20, label %61

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.gss_auth, ptr %16, i32 0, i32 2, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %0, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %61

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.gss_auth, ptr %16, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %14, align 4
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = icmp eq ptr %27, null
  %32 = icmp eq ptr %28, null
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %61, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @strcmp(ptr noundef nonnull %27, ptr noundef nonnull %28)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %34, %25
  %38 = getelementptr inbounds %struct.gss_auth, ptr %16, i32 0, i32 2, i32 7
  %39 = load volatile i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %51, %37
  %42 = phi i32 [ %49, %51 ], [ %39, %37 ]
  %43 = add i32 %42, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #16, !srcloc !15
  br label %44

44:                                               ; preds = %44, %41
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 %42, i32 %43, ptr elementtype(i32) %38) #16, !srcloc !18
  %46 = extractvalue { i32, i32 } %45, 0
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %44

48:                                               ; preds = %44
  %49 = extractvalue { i32, i32 } %45, 1
  %50 = icmp eq i32 %49, %42
  br i1 %50, label %53, label %51, !prof !14

51:                                               ; preds = %48
  %52 = icmp eq i32 %49, 0
  br i1 %52, label %53, label %41

53:                                               ; preds = %51, %48, %37
  %54 = phi i32 [ 0, %37 ], [ 0, %51 ], [ %42, %48 ]
  %55 = add i32 %54, 1
  %56 = or i32 %55, %54
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %59, label %58, !prof !14

58:                                               ; preds = %53
  tail call void @refcount_warn_saturate(ptr noundef %38, i32 noundef 0) #16
  br label %59

59:                                               ; preds = %58, %53
  %60 = icmp eq i32 %54, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %59, %34, %30, %20, %15
  %62 = getelementptr inbounds %struct.gss_auth, ptr %16, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  %65 = getelementptr i8, ptr %63, i32 -4
  %66 = icmp eq ptr %65, null
  %67 = or i1 %64, %66
  br i1 %67, label %68, label %15

68:                                               ; preds = %61, %3
  %69 = icmp eq ptr %2, null
  br i1 %69, label %78, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.gss_auth, ptr %2, i32 0, i32 1
  %72 = load ptr, ptr %7, align 4
  store volatile ptr %72, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.hlist_node, ptr %72, i32 0, i32 1
  store volatile ptr %71, ptr %75, align 4
  br label %76

76:                                               ; preds = %74, %70
  store volatile ptr %71, ptr %7, align 4
  %77 = getelementptr inbounds %struct.gss_auth, ptr %2, i32 0, i32 1, i32 1
  store volatile ptr %7, ptr %77, align 4
  br label %78

78:                                               ; preds = %76, %68, %59
  %79 = phi ptr [ %2, %76 ], [ null, %68 ], [ %16, %59 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %80 = load i16, ptr @gss_auth_hash_lock, align 4
  %81 = add i16 %80, 1
  store i16 %81, ptr @gss_auth_hash_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  ret ptr %79
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_net_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gss_mech_get_by_pseudoflavor(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_pseudoflavor_to_service(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gssd_running(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gss_pseudoflavor_to_datatouch(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcauth_init_credcache(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gss_pipe_free(ptr noundef %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gss_pipe, ptr %0, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #16, !srcloc !15
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #16, !srcloc !20
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %18, label %10, !prof !14

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #16
  br label %18

11:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  %12 = getelementptr %struct.gss_pipe, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call ptr @rpc_net_ns(ptr noundef %13) #16
  %15 = getelementptr inbounds %struct.rpc_clnt, ptr %13, i32 0, i32 20
  tail call void @rpc_remove_pipe_dir_object(ptr noundef %14, ptr noundef %15, ptr noundef nonnull %0) #16
  %16 = getelementptr %struct.gss_pipe, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void @rpc_destroy_pipe_data(ptr noundef %17) #16
  tail call void @kfree(ptr noundef nonnull %0) #16
  br label %18

18:                                               ; preds = %11, %10, %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpcauth_destroy_credcache(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gss_mech_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_find_or_alloc_pipe_dir_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gss_pipe_match_pdo(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.rpc_pipe_dir_object, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @gss_pipe_dir_object_ops
  br i1 %5, label %6, label %38

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gss_pipe, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.gss_alloc_pdo, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @strcmp(ptr noundef %8, ptr noundef %10)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.gss_pipe, ptr %0, i32 0, i32 4
  %15 = load volatile i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %27, %13
  %18 = phi i32 [ %25, %27 ], [ %15, %13 ]
  %19 = add i32 %18, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #16, !srcloc !15
  br label %20

20:                                               ; preds = %20, %17
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 %18, i32 %19, ptr elementtype(i32) %14) #16, !srcloc !18
  %22 = extractvalue { i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %20

24:                                               ; preds = %20
  %25 = extractvalue { i32, i32 } %21, 1
  %26 = icmp eq i32 %25, %18
  br i1 %26, label %29, label %27, !prof !14

27:                                               ; preds = %24
  %28 = icmp eq i32 %25, 0
  br i1 %28, label %29, label %17

29:                                               ; preds = %27, %24, %13
  %30 = phi i32 [ 0, %13 ], [ %18, %24 ], [ 0, %27 ]
  %31 = add i32 %30, 1
  %32 = or i32 %31, %30
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %35, label %34, !prof !14

34:                                               ; preds = %29
  tail call void @refcount_warn_saturate(ptr noundef %14, i32 noundef 0) #16
  br label %35

35:                                               ; preds = %34, %29
  %36 = icmp ne i32 %30, 0
  %37 = zext i1 %36 to i32
  br label %38

38:                                               ; preds = %35, %6, %2
  %39 = phi i32 [ 0, %2 ], [ 0, %6 ], [ %37, %35 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @gss_pipe_alloc_pdo(ptr nocapture noundef readonly %0) #3 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.gss_alloc_pdo, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gss_alloc_pdo, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 32) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = tail call ptr @rpc_mkpipe_data(ptr noundef %6, i32 noundef 1) #16
  %12 = getelementptr inbounds %struct.gss_pipe, ptr %8, i32 0, i32 1
  store ptr %11, ptr %12, align 8
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @kfree(ptr noundef nonnull %8) #16
  br label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.gss_pipe, ptr %8, i32 0, i32 3
  store ptr %4, ptr %16, align 8
  %17 = getelementptr inbounds %struct.gss_pipe, ptr %8, i32 0, i32 2
  store ptr %2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.gss_pipe, ptr %8, i32 0, i32 4
  store volatile i32 1, ptr %18, align 4
  tail call void @rpc_init_pipe_dir_object(ptr noundef nonnull %8, ptr noundef nonnull @gss_pipe_dir_object_ops, ptr noundef nonnull %8) #16
  br label %19

19:                                               ; preds = %15, %14, %1
  %20 = phi ptr [ %8, %15 ], [ inttoptr (i32 -12 to ptr), %1 ], [ %11, %14 ]
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %22 = select i1 %21, ptr null, ptr %20
  ret ptr %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gss_pipe_dentry_create(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.rpc_pipe_dir_object, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gss_pipe, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.gss_pipe, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.gss_pipe, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @rpc_mkpipe_dentry(ptr noundef %0, ptr noundef %6, ptr noundef %8, ptr noundef %10) #16
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = ptrtoint ptr %11 to i32
  br label %18

15:                                               ; preds = %2
  %16 = load ptr, ptr %9, align 4
  %17 = getelementptr inbounds %struct.rpc_pipe, ptr %16, i32 0, i32 10
  store ptr %11, ptr %17, align 4
  br label %18

18:                                               ; preds = %15, %13
  %19 = phi i32 [ %14, %13 ], [ 0, %15 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gss_pipe_dentry_destroy(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.rpc_pipe_dir_object, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gss_pipe, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rpc_pipe, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @rpc_unlink(ptr noundef nonnull %8) #16
  store ptr null, ptr %7, align 4
  br label %12

12:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_mkpipe_dentry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_unlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_mkpipe_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_init_pipe_dir_object(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gss_v1_upcall(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = getelementptr inbounds %struct.rpc_pipe_msg, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %97

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %1, i32 -4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %1, i32 32
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.gss_auth, ptr %12, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.gss_auth, ptr %12, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %1, i32 160
  %18 = getelementptr inbounds %struct.gss_api_mech, ptr %16, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %1, i32 -8
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, -1
  %23 = load i32, ptr @overflowuid, align 4
  %24 = select i1 %22, i32 %23, i32 %21
  %25 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %17, i32 noundef 256, ptr noundef nonnull @.str.2, ptr noundef %19, i32 noundef %24) #16
  %26 = sub i32 256, %25
  %27 = getelementptr i8, ptr %17, i32 %25
  %28 = getelementptr i8, ptr %1, i32 12
  store i32 %25, ptr %28, align 4
  %29 = icmp eq ptr %14, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %8
  %31 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %27, i32 noundef %26, ptr noundef nonnull @.str.3, ptr noundef nonnull %14) #16
  %32 = sub i32 %26, %31
  %33 = getelementptr i8, ptr %27, i32 %31
  %34 = load i32, ptr %28, align 4
  %35 = add i32 %34, %31
  store i32 %35, ptr %28, align 4
  br label %36

36:                                               ; preds = %30, %8
  %37 = phi ptr [ %33, %30 ], [ %27, %8 ]
  %38 = phi i32 [ %32, %30 ], [ %26, %8 ]
  %39 = icmp eq ptr %10, null
  br i1 %39, label %57, label %40

40:                                               ; preds = %36
  %41 = tail call ptr @strchr(ptr noundef nonnull %10, i32 noundef 64) #16
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %37, i32 noundef %38, ptr noundef nonnull @.str.4, ptr noundef nonnull %10) #16
  br label %51

45:                                               ; preds = %40
  %46 = ptrtoint ptr %41 to i32
  %47 = ptrtoint ptr %10 to i32
  %48 = sub i32 %46, %47
  %49 = getelementptr i8, ptr %41, i32 1
  %50 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %37, i32 noundef %38, ptr noundef nonnull @.str.5, i32 noundef %48, ptr noundef nonnull %10, ptr noundef %49) #16
  br label %51

51:                                               ; preds = %45, %43
  %52 = phi i32 [ %50, %45 ], [ %44, %43 ]
  %53 = sub i32 %38, %52
  %54 = getelementptr i8, ptr %37, i32 %52
  %55 = load i32, ptr %28, align 4
  %56 = add i32 %55, %52
  store i32 %56, ptr %28, align 4
  br label %57

57:                                               ; preds = %51, %36
  %58 = phi ptr [ %54, %51 ], [ %37, %36 ]
  %59 = phi i32 [ %53, %51 ], [ %38, %36 ]
  %60 = getelementptr inbounds %struct.gss_api_mech, ptr %16, i32 0, i32 7
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %58, i32 noundef %59, ptr noundef nonnull @.str.6, ptr noundef nonnull %61) #16
  %65 = sub i32 %59, %64
  %66 = getelementptr i8, ptr %58, i32 %64
  %67 = load i32, ptr %28, align 4
  %68 = add i32 %67, %64
  store i32 %68, ptr %28, align 4
  br label %69

69:                                               ; preds = %63, %57
  %70 = phi ptr [ %66, %63 ], [ %58, %57 ]
  %71 = phi i32 [ %65, %63 ], [ %59, %57 ]
  %72 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_upcall_msg, i32 0, i32 1), align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = tail call ptr @llvm.thread.pointer() #16
  %76 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 2
  %77 = load i32, ptr %76, align 8
  %78 = lshr i32 %77, 5
  %79 = getelementptr i32, ptr @__cpu_online_mask, i32 %78
  %80 = load volatile i32, ptr %79, align 4
  %81 = and i32 %77, 31
  %82 = shl nuw i32 1, %81
  %83 = and i32 %82, %80
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %74
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %86 = tail call i32 @__traceiter_rpcgss_upcall_msg(ptr noundef null, ptr noundef %17) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %87

87:                                               ; preds = %85, %74, %69
  %88 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %70, i32 noundef %71, ptr noundef nonnull @.str.7) #16
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i1, ptr @gss_encode_v1_msg.__already_done, align 1
  br i1 %91, label %99, label %92, !prof !14

92:                                               ; preds = %90
  store i1 true, ptr @gss_encode_v1_msg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 482, i32 noundef 9, ptr noundef null) #16
  br label %99

93:                                               ; preds = %87
  %94 = load i32, ptr %28, align 4
  %95 = add i32 %94, %88
  store i32 %95, ptr %28, align 4
  %96 = getelementptr i8, ptr %1, i32 8
  store ptr %17, ptr %96, align 4
  br label %97

97:                                               ; preds = %93, %4
  %98 = tail call i32 @rpc_pipe_generic_upcall(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #16
  br label %99

99:                                               ; preds = %97, %92, %90
  %100 = phi i32 [ %98, %97 ], [ -12, %92 ], [ -12, %90 ]
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gss_pipe_downcall(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rpc_inode, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ugt i32 %2, 1024
  br i1 %8, label %92, label %9

9:                                                ; preds = %3
  %10 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %2, i32 noundef 3136) #18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %92, label %12

12:                                               ; preds = %9
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %2, i32 -1090519040) #19, !srcloc !24
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23, !prof !14

16:                                               ; preds = %12
  %17 = tail call ptr @llvm.thread.pointer() #16
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %18) #20, !srcloc !25
  %20 = and i32 %19, -13
  %21 = or i32 %20, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #16, !srcloc !26
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !27
  %22 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %10, ptr noundef %1, i32 noundef %2) #16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #16, !srcloc !26
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !27
  br label %23

23:                                               ; preds = %16, %12
  %24 = phi i32 [ %22, %16 ], [ %2, %12 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26, !prof !14

26:                                               ; preds = %23
  %27 = sub i32 %2, %24
  %28 = getelementptr i8, ptr %10, i32 %27
  tail call void @llvm.memset.p0.i32(ptr align 1 %28, i8 0, i32 %24, i1 false) #16
  br label %90

29:                                               ; preds = %23
  %30 = getelementptr i8, ptr %10, i32 %2
  %31 = getelementptr i8, ptr %10, i32 4
  %32 = icmp ugt ptr %31, %30
  %33 = icmp ult ptr %31, %10
  %34 = or i1 %32, %33
  br i1 %34, label %37, label %35, !prof !17

35:                                               ; preds = %29
  %36 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %40

37:                                               ; preds = %35, %29
  %38 = phi ptr [ %31, %35 ], [ inttoptr (i32 -14 to ptr), %29 ]
  %39 = ptrtoint ptr %38 to i32
  br label %90

40:                                               ; preds = %35
  %41 = load i32, ptr %10, align 64
  %42 = insertvalue [1 x i32] poison, i32 %41, 0
  %43 = icmp eq i32 %41, -1
  br i1 %43, label %90, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %46 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 3392, i32 noundef 56) #17
  %47 = icmp eq ptr %46, null
  br i1 %47, label %90, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.gss_cl_ctx, ptr %46, i32 0, i32 1
  store i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.gss_cl_ctx, ptr %46, i32 0, i32 2
  store i32 1, ptr %50, align 8
  %51 = getelementptr inbounds %struct.gss_cl_ctx, ptr %46, i32 0, i32 4
  store i32 0, ptr %51, align 8
  store volatile i32 1, ptr %46, align 8
  %52 = getelementptr inbounds %struct.rpc_pipe, ptr %7, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %52) #16
  %53 = tail call fastcc ptr @__gss_find_upcall(ptr noundef %7, [1 x i32] %42, ptr noundef null)
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %56 = load i16, ptr %52, align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr %52, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  br label %88

58:                                               ; preds = %48
  %59 = getelementptr inbounds %struct.gss_upcall_msg, ptr %53, i32 0, i32 4
  %60 = getelementptr inbounds %struct.gss_upcall_msg, ptr %53, i32 0, i32 4, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = load ptr, ptr %59, align 4
  %63 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  store ptr %61, ptr %63, align 4
  store volatile ptr %62, ptr %61, align 4
  store volatile ptr %59, ptr %59, align 4
  store ptr %59, ptr %60, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %64 = load i16, ptr %52, align 4
  %65 = add i16 %64, 1
  store i16 %65, ptr %52, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  %66 = getelementptr inbounds %struct.gss_upcall_msg, ptr %53, i32 0, i32 5
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.gss_auth, ptr %67, i32 0, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = tail call fastcc ptr @gss_fill_context(ptr noundef %31, ptr noundef %30, ptr noundef nonnull %46, ptr noundef %69)
  %71 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %71, label %72, label %81

72:                                               ; preds = %58
  %73 = ptrtoint ptr %70 to i32
  switch i32 %73, label %78 [
    i32 -13, label %74
    i32 -127, label %74
    i32 -14, label %76
    i32 -12, label %76
    i32 -22, label %76
    i32 -38, label %76
  ]

74:                                               ; preds = %72, %72
  %75 = getelementptr inbounds %struct.gss_upcall_msg, ptr %53, i32 0, i32 3, i32 4
  store i32 %73, ptr %75, align 4
  br label %84

76:                                               ; preds = %72, %72, %72, %72
  %77 = getelementptr inbounds %struct.gss_upcall_msg, ptr %53, i32 0, i32 3, i32 4
  store i32 -11, ptr %77, align 4
  br label %84

78:                                               ; preds = %72
  %79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.gss_pipe_downcall, i32 noundef %73) #21
  %80 = getelementptr inbounds %struct.gss_upcall_msg, ptr %53, i32 0, i32 3, i32 4
  store i32 -5, ptr %80, align 4
  br label %84

81:                                               ; preds = %58
  %82 = tail call fastcc ptr @gss_get_ctx(ptr noundef nonnull %46)
  %83 = getelementptr inbounds %struct.gss_upcall_msg, ptr %53, i32 0, i32 9
  store ptr %46, ptr %83, align 4
  br label %84

84:                                               ; preds = %81, %78, %76, %74
  %85 = phi i32 [ %73, %78 ], [ %73, %76 ], [ %2, %74 ], [ %2, %81 ]
  tail call void @_raw_spin_lock(ptr noundef %52) #16
  tail call fastcc void @__gss_unhash_msg(ptr noundef nonnull %53)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %86 = load i16, ptr %52, align 4
  %87 = add i16 %86, 1
  store i16 %87, ptr %52, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  tail call fastcc void @gss_release_msg(ptr noundef nonnull %53)
  br label %88

88:                                               ; preds = %84, %55
  %89 = phi i32 [ -2, %55 ], [ %85, %84 ]
  tail call fastcc void @gss_put_ctx(ptr noundef nonnull %46)
  br label %90

90:                                               ; preds = %88, %44, %40, %37, %26
  %91 = phi i32 [ %39, %37 ], [ %89, %88 ], [ -22, %40 ], [ -14, %26 ], [ -12, %44 ]
  tail call void @kfree(ptr noundef nonnull %10) #16
  br label %92

92:                                               ; preds = %90, %9, %3
  %93 = phi i32 [ -27, %3 ], [ %91, %90 ], [ -12, %9 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gss_pipe_release(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rpc_inode, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rpc_pipe, ptr %7, i32 0, i32 9
  %9 = getelementptr inbounds %struct.rpc_pipe, ptr %7, i32 0, i32 2
  br label %10

10:                                               ; preds = %43, %1
  tail call void @_raw_spin_lock(ptr noundef %8) #16
  br label %11

11:                                               ; preds = %15, %10
  %12 = phi ptr [ %9, %10 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %9
  br i1 %14, label %46, label %15

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %13, i32 -24
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %19, label %11

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %13, i32 -36
  %21 = getelementptr i8, ptr %13, i32 -4
  store i32 -32, ptr %21, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #16, !srcloc !15
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #16, !srcloc !16
  %23 = extractvalue { i32, i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25, !prof !17

25:                                               ; preds = %19
  %26 = add i32 %23, 1
  %27 = or i32 %26, %23
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %31, label %29, !prof !14

29:                                               ; preds = %25, %19
  %30 = phi i32 [ 2, %19 ], [ 1, %25 ]
  tail call void @refcount_warn_saturate(ptr noundef %20, i32 noundef %30) #16
  br label %31

31:                                               ; preds = %29, %25
  %32 = getelementptr i8, ptr %13, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %13, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %33, ptr %35, align 4
  store volatile ptr %34, ptr %33, align 4
  store volatile ptr %13, ptr %13, align 4
  store ptr %13, ptr %32, align 4
  %36 = getelementptr i8, ptr %13, i32 16
  %37 = load i32, ptr %21, align 4
  tail call void @rpc_wake_up_status(ptr noundef %36, i32 noundef %37) #16
  %38 = getelementptr i8, ptr %13, i32 120
  tail call void @__wake_up(ptr noundef %38, i32 noundef 3, i32 noundef 0, ptr noundef null) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #16, !srcloc !15
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #16, !srcloc !20
  %40 = extractvalue { i32, i32, i32 } %39, 0
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %42, label %43, !prof !17

42:                                               ; preds = %31
  tail call void @refcount_warn_saturate(ptr noundef %20, i32 noundef 4) #16
  br label %43

43:                                               ; preds = %42, %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %44 = load i16, ptr %8, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  tail call fastcc void @gss_release_msg(ptr noundef %20)
  br label %10

46:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %47 = load i16, ptr %8, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  %49 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !28
  %50 = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 37
  %51 = load volatile ptr, ptr %50, align 64
  %52 = getelementptr [0 x ptr], ptr %51, i32 0, i32 %49
  %53 = load ptr, ptr %52, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  %54 = getelementptr inbounds %struct.sunrpc_net, ptr %53, i32 0, i32 19
  %55 = tail call i32 @_atomic_dec_and_lock(ptr noundef %54, ptr noundef nonnull @pipe_version_lock) #16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.sunrpc_net, ptr %53, i32 0, i32 18
  store i32 -1, ptr %58, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %59 = load i16, ptr @pipe_version_lock, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr @pipe_version_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  br label %61

61:                                               ; preds = %57, %46
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gss_pipe_open_v1(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !28
  %7 = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 37
  %8 = load volatile ptr, ptr %7, align 64
  %9 = getelementptr [0 x ptr], ptr %8, i32 0, i32 %6
  %10 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  tail call void @_raw_spin_lock(ptr noundef nonnull @pipe_version_lock) #16
  %11 = getelementptr inbounds %struct.sunrpc_net, ptr %10, i32 0, i32 18
  %12 = load i32, ptr %11, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 1, ptr %11, align 4
  tail call void @rpc_wake_up(ptr noundef nonnull @pipe_version_rpc_waitqueue) #16
  tail call void @__wake_up(ptr noundef nonnull @pipe_version_waitqueue, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  br label %17

15:                                               ; preds = %1
  %16 = icmp eq i32 %12, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %15, %14
  %18 = getelementptr inbounds %struct.sunrpc_net, ptr %10, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #16, !srcloc !15
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #16, !srcloc !30
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi i32 [ 0, %17 ], [ -16, %15 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %22 = load i16, ptr @pipe_version_lock, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr @pipe_version_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gss_pipe_destroy_msg(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -12
  %3 = getelementptr inbounds %struct.rpc_pipe_msg, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #16, !srcloc !15
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #16, !srcloc !16
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10, !prof !17

10:                                               ; preds = %6
  %11 = add i32 %8, 1
  %12 = or i32 %11, %8
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %16, label %14, !prof !14

14:                                               ; preds = %10, %6
  %15 = phi i32 [ 2, %6 ], [ 1, %10 ]
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef %15) #16
  br label %16

16:                                               ; preds = %14, %10
  tail call fastcc void @gss_unhash_msg(ptr noundef %2)
  tail call fastcc void @gss_release_msg(ptr noundef %2)
  br label %17

17:                                               ; preds = %16, %1
  tail call fastcc void @gss_release_msg(ptr noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_pipe_generic_upcall(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_upcall_msg(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__gss_find_upcall(ptr noundef readonly %0, [1 x i32] %1, ptr noundef readonly %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.rpc_pipe, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %38, label %7

7:                                                ; preds = %3
  %8 = extractvalue [1 x i32] %1, 0
  %9 = icmp eq ptr %2, null
  %10 = getelementptr inbounds %struct.gss_auth, ptr %2, i32 0, i32 4
  br label %11

11:                                               ; preds = %35, %7
  %12 = phi ptr [ %5, %7 ], [ %36, %35 ]
  %13 = getelementptr i8, ptr %12, i32 -32
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %8
  br i1 %15, label %16, label %35

16:                                               ; preds = %11
  br i1 %9, label %24, label %17

17:                                               ; preds = %16
  %18 = getelementptr i8, ptr %12, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.gss_auth, ptr %19, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr %10, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %17, %16
  %25 = getelementptr i8, ptr %12, i32 -36
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #16, !srcloc !15
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #16, !srcloc !16
  %27 = extractvalue { i32, i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29, !prof !17

29:                                               ; preds = %24
  %30 = add i32 %27, 1
  %31 = or i32 %30, %27
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %38, label %33, !prof !14

33:                                               ; preds = %29, %24
  %34 = phi i32 [ 2, %24 ], [ 1, %29 ]
  tail call void @refcount_warn_saturate(ptr noundef %25, i32 noundef %34) #16
  br label %38

35:                                               ; preds = %17, %11
  %36 = load ptr, ptr %12, align 4
  %37 = icmp eq ptr %36, %4
  br i1 %37, label %38, label %11

38:                                               ; preds = %35, %33, %29, %3
  %39 = phi ptr [ %25, %29 ], [ %25, %33 ], [ null, %3 ], [ null, %35 ]
  ret ptr %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @gss_fill_context(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 {
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = getelementptr i8, ptr %0, i32 4
  %7 = icmp ugt ptr %6, %1
  %8 = icmp ult ptr %6, %0
  %9 = or i1 %7, %8
  br i1 %9, label %98, label %10, !prof !17

10:                                               ; preds = %4
  %11 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %98, label %12

12:                                               ; preds = %10
  %13 = load i32, ptr %0, align 1
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 3600, i32 %13
  %16 = mul i32 %15, 100
  %17 = add i32 %16, %5
  %18 = getelementptr inbounds %struct.gss_cl_ctx, ptr %2, i32 0, i32 9
  store i32 %17, ptr %18, align 4
  %19 = getelementptr i8, ptr %0, i32 8
  %20 = icmp ugt ptr %19, %1
  %21 = icmp ult ptr %19, %6
  %22 = or i1 %20, %21
  br i1 %22, label %98, label %23, !prof !17

23:                                               ; preds = %12
  %24 = load i32, ptr %6, align 1
  %25 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %98, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.gss_cl_ctx, ptr %2, i32 0, i32 8
  store i32 %24, ptr %27, align 4
  %28 = icmp eq i32 %24, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = getelementptr i8, ptr %0, i32 12
  %31 = icmp ugt ptr %30, %1
  %32 = icmp ult ptr %30, %19
  %33 = or i1 %31, %32
  br i1 %33, label %98, label %34, !prof !17

34:                                               ; preds = %29
  %35 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %98, label %36

36:                                               ; preds = %34
  %37 = load i32, ptr %19, align 1
  %38 = icmp eq i32 %37, -127
  %39 = select i1 %38, ptr inttoptr (i32 -127 to ptr), ptr inttoptr (i32 -13 to ptr)
  br label %98

40:                                               ; preds = %26
  %41 = getelementptr inbounds %struct.gss_cl_ctx, ptr %2, i32 0, i32 6
  %42 = getelementptr i8, ptr %0, i32 12
  %43 = icmp ugt ptr %42, %1
  %44 = icmp ult ptr %42, %19
  %45 = or i1 %43, %44
  br i1 %45, label %98, label %46, !prof !17

46:                                               ; preds = %40
  %47 = load i32, ptr %19, align 1
  %48 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %63, label %49

49:                                               ; preds = %46
  %50 = getelementptr i8, ptr %42, i32 %47
  %51 = icmp ugt ptr %50, %1
  %52 = icmp ult ptr %50, %42
  %53 = or i1 %51, %52
  br i1 %53, label %98, label %54, !prof !17

54:                                               ; preds = %49
  %55 = icmp eq i32 %47, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %54
  %57 = tail call ptr @kmemdup(ptr noundef %42, i32 noundef %47, i32 noundef 3136) #16
  %58 = getelementptr inbounds %struct.gss_cl_ctx, ptr %2, i32 0, i32 6, i32 1
  store ptr %57, ptr %58, align 4
  %59 = icmp eq ptr %57, null
  br i1 %59, label %98, label %62, !prof !17

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.gss_cl_ctx, ptr %2, i32 0, i32 6, i32 1
  store ptr null, ptr %61, align 4
  br label %62

62:                                               ; preds = %60, %56
  store i32 %47, ptr %41, align 4
  br label %63

63:                                               ; preds = %62, %46
  %64 = phi ptr [ %50, %62 ], [ %42, %46 ]
  %65 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %98, label %66

66:                                               ; preds = %63
  %67 = getelementptr i8, ptr %64, i32 4
  %68 = icmp ugt ptr %67, %1
  %69 = icmp ult ptr %67, %64
  %70 = or i1 %68, %69
  br i1 %70, label %98, label %71, !prof !17

71:                                               ; preds = %66
  %72 = load i32, ptr %64, align 1
  %73 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %73, label %98, label %74

74:                                               ; preds = %71
  %75 = getelementptr i8, ptr %67, i32 %72
  %76 = icmp ugt ptr %75, %1
  %77 = icmp ult ptr %75, %67
  %78 = or i1 %76, %77
  br i1 %78, label %98, label %79, !prof !17

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.gss_cl_ctx, ptr %2, i32 0, i32 5
  %81 = tail call i32 @gss_import_sec_context(ptr noundef %67, i32 noundef %72, ptr noundef %3, ptr noundef %80, ptr noundef null, i32 noundef 3136) #16
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  tail call fastcc void @trace_rpcgss_import_ctx(i32 noundef %81)
  %84 = inttoptr i32 %81 to ptr
  br label %98

85:                                               ; preds = %79
  %86 = icmp eq ptr %75, %1
  br i1 %86, label %91, label %87

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.gss_cl_ctx, ptr %2, i32 0, i32 7
  %89 = tail call fastcc ptr @simple_get_netobj(ptr noundef %75, ptr noundef %1, ptr noundef %88)
  %90 = icmp ugt ptr %89, inttoptr (i32 -4096 to ptr)
  br i1 %90, label %98, label %91

91:                                               ; preds = %87, %85
  %92 = phi ptr [ %89, %87 ], [ %1, %85 ]
  %93 = load i32, ptr %18, align 4
  %94 = getelementptr inbounds %struct.gss_cl_ctx, ptr %2, i32 0, i32 7
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds %struct.gss_cl_ctx, ptr %2, i32 0, i32 7, i32 1
  %97 = load ptr, ptr %96, align 4
  tail call fastcc void @trace_rpcgss_context(i32 noundef %24, i32 noundef %93, i32 noundef %5, i32 noundef %15, i32 noundef %95, ptr noundef %97)
  br label %98

98:                                               ; preds = %91, %87, %83, %74, %71, %66, %63, %56, %49, %40, %36, %34, %29, %23, %12, %10, %4
  %99 = phi ptr [ %6, %10 ], [ %19, %23 ], [ %30, %34 ], [ %64, %63 ], [ %67, %71 ], [ %84, %83 ], [ %92, %91 ], [ %89, %87 ], [ inttoptr (i32 -14 to ptr), %74 ], [ inttoptr (i32 -14 to ptr), %4 ], [ inttoptr (i32 -14 to ptr), %12 ], [ inttoptr (i32 -14 to ptr), %29 ], [ inttoptr (i32 -14 to ptr), %40 ], [ inttoptr (i32 -12 to ptr), %56 ], [ inttoptr (i32 -14 to ptr), %49 ], [ inttoptr (i32 -14 to ptr), %66 ], [ %39, %36 ]
  ret ptr %99
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @gss_get_ctx(ptr noundef returned %0) unnamed_addr #13 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #16, !srcloc !15
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #16, !srcloc !16
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5, !prof !17

5:                                                ; preds = %1
  %6 = add i32 %3, 1
  %7 = or i32 %6, %3
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %11, label %9, !prof !14

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 2, %1 ], [ 1, %5 ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %10) #16
  br label %11

11:                                               ; preds = %9, %5
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__gss_unhash_msg(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gss_upcall_msg, ptr %0, i32 0, i32 4
  %3 = getelementptr inbounds %struct.gss_upcall_msg, ptr %0, i32 0, i32 4, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store volatile ptr %2, ptr %2, align 4
  store ptr %2, ptr %3, align 4
  %7 = getelementptr inbounds %struct.gss_upcall_msg, ptr %0, i32 0, i32 7
  %8 = getelementptr inbounds %struct.gss_upcall_msg, ptr %0, i32 0, i32 3, i32 4
  %9 = load i32, ptr %8, align 4
  tail call void @rpc_wake_up_status(ptr noundef %7, i32 noundef %9) #16
  %10 = getelementptr inbounds %struct.gss_upcall_msg, ptr %0, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %10, i32 noundef 3, i32 noundef 0, ptr noundef null) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #16, !srcloc !15
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #16, !srcloc !20
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %15, !prof !17

14:                                               ; preds = %1
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 4) #16
  br label %15

15:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gss_release_msg(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gss_upcall_msg, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gss_auth, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #16, !srcloc !15
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #16, !srcloc !20
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = icmp sgt i32 %7, 0
  br i1 %10, label %48, label %11, !prof !14

11:                                               ; preds = %9
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #16
  br label %48

12:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  %13 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !28
  %14 = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 37
  %15 = load volatile ptr, ptr %14, align 64
  %16 = getelementptr [0 x ptr], ptr %15, i32 0, i32 %13
  %17 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  %18 = getelementptr inbounds %struct.sunrpc_net, ptr %17, i32 0, i32 19
  %19 = tail call i32 @_atomic_dec_and_lock(ptr noundef %18, ptr noundef nonnull @pipe_version_lock) #16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.sunrpc_net, ptr %17, i32 0, i32 18
  store i32 -1, ptr %22, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %23 = load i16, ptr @pipe_version_lock, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr @pipe_version_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  br label %25

25:                                               ; preds = %21, %12
  %26 = getelementptr inbounds %struct.gss_upcall_msg, ptr %0, i32 0, i32 4
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %30, label %29, !prof !14

29:                                               ; preds = %25
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/auth_gss/auth_gss.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 288, 0\0A.popsection", ""() #16, !srcloc !31
  unreachable

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.gss_upcall_msg, ptr %0, i32 0, i32 9
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %32) #16, !srcloc !15
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %32, ptr nonnull %32, i32 1, ptr nonnull elementtype(i32) %32) #16, !srcloc !20
  %36 = extractvalue { i32, i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = icmp sgt i32 %36, 0
  br i1 %39, label %43, label %40, !prof !14

40:                                               ; preds = %38
  tail call void @refcount_warn_saturate(ptr noundef nonnull %32, i32 noundef 3) #16
  br label %43

41:                                               ; preds = %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  %42 = getelementptr inbounds %struct.gss_cl_ctx, ptr %32, i32 0, i32 10
  tail call void @call_rcu(ptr noundef %42, ptr noundef nonnull @gss_free_ctx_callback) #16
  br label %43

43:                                               ; preds = %41, %40, %38, %30
  %44 = getelementptr inbounds %struct.gss_upcall_msg, ptr %0, i32 0, i32 7
  tail call void @rpc_destroy_wait_queue(ptr noundef %44) #16
  %45 = load ptr, ptr %2, align 4
  tail call fastcc void @gss_put_auth(ptr noundef %45)
  %46 = getelementptr inbounds %struct.gss_upcall_msg, ptr %0, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  tail call void @kfree_const(ptr noundef %47) #16
  tail call void @kfree(ptr noundef %0) #16
  br label %48

48:                                               ; preds = %43, %11, %9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gss_put_ctx(ptr noundef %0) unnamed_addr #13 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #16, !srcloc !15
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #16, !srcloc !20
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %10, label %7, !prof !14

7:                                                ; preds = %5
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #16
  br label %10

8:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  %9 = getelementptr inbounds %struct.gss_cl_ctx, ptr %0, i32 0, i32 10
  tail call void @call_rcu(ptr noundef %9, ptr noundef nonnull @gss_free_ctx_callback) #16
  br label %10

10:                                               ; preds = %8, %7, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @simple_get_netobj(ptr noundef %0, ptr noundef readnone %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 {
  %4 = getelementptr i8, ptr %0, i32 4
  %5 = icmp ugt ptr %4, %1
  %6 = icmp ult ptr %4, %0
  %7 = or i1 %5, %6
  br i1 %7, label %25, label %8, !prof !17

8:                                                ; preds = %3
  %9 = load i32, ptr %0, align 1
  %10 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %25, label %11

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %4, i32 %9
  %13 = icmp ugt ptr %12, %1
  %14 = icmp ult ptr %12, %4
  %15 = or i1 %13, %14
  br i1 %15, label %25, label %16, !prof !17

16:                                               ; preds = %11
  %17 = icmp eq i32 %9, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %16
  %19 = tail call ptr @kmemdup(ptr noundef %4, i32 noundef %9, i32 noundef 3136) #16
  %20 = getelementptr inbounds %struct.xdr_netobj, ptr %2, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  %21 = icmp eq ptr %19, null
  br i1 %21, label %25, label %24, !prof !17

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.xdr_netobj, ptr %2, i32 0, i32 1
  store ptr null, ptr %23, align 4
  br label %24

24:                                               ; preds = %22, %18
  store i32 %9, ptr %2, align 4
  br label %25

25:                                               ; preds = %24, %18, %11, %8, %3
  %26 = phi ptr [ %12, %24 ], [ %4, %8 ], [ inttoptr (i32 -14 to ptr), %11 ], [ inttoptr (i32 -12 to ptr), %18 ], [ inttoptr (i32 -14 to ptr), %3 ]
  ret ptr %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_import_sec_context(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_import_ctx(i32 noundef %0) unnamed_addr #13 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_import_ctx, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #16
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !32
  %16 = tail call i32 @__traceiter_rpcgss_import_ctx(ptr noundef null, i32 noundef %0) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !33
  br label %17

17:                                               ; preds = %15, %4, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_context(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #13 {
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_context, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = tail call ptr @llvm.thread.pointer() #16
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  %21 = tail call i32 @__traceiter_rpcgss_context(ptr noundef null, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !35
  br label %22

22:                                               ; preds = %20, %9, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_import_ctx(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_context(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_wake_up_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_destroy_wait_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gss_put_auth(ptr noundef %0) unnamed_addr #3 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #16, !srcloc !15
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #16, !srcloc !20
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %17, label %7, !prof !14

7:                                                ; preds = %5
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #16
  br label %17

8:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  %9 = getelementptr inbounds %struct.gss_auth, ptr %0, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  tail call fastcc void @gss_pipe_free(ptr noundef %10) #16
  %11 = getelementptr %struct.gss_auth, ptr %0, i32 0, i32 7, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call fastcc void @gss_pipe_free(ptr noundef %12) #16
  %13 = getelementptr inbounds %struct.gss_auth, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  tail call void @gss_mech_put(ptr noundef %14) #16
  %15 = getelementptr inbounds %struct.gss_auth, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %16) #16
  tail call void @kfree(ptr noundef %0) #16
  tail call void @module_put(ptr noundef null) #16
  br label %17

17:                                               ; preds = %8, %7, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_atomic_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gss_free_ctx_callback(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -48
  %3 = getelementptr i8, ptr %0, i32 -28
  %4 = tail call i32 @gss_delete_sec_context(ptr noundef %3) #16
  %5 = getelementptr i8, ptr %0, i32 -20
  %6 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %6) #16
  %7 = getelementptr i8, ptr %0, i32 -12
  %8 = load ptr, ptr %7, align 4
  tail call void @kfree(ptr noundef %8) #16
  tail call void @kfree(ptr noundef %2) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_delete_sec_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_wake_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gss_unhash_msg(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gss_upcall_msg, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gss_upcall_msg, ptr %0, i32 0, i32 4
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rpc_pipe, ptr %3, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %8) #16
  %9 = load volatile ptr, ptr %4, align 4
  %10 = icmp eq ptr %9, %4
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gss_upcall_msg, ptr %0, i32 0, i32 4, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  store volatile ptr %9, ptr %13, align 4
  store volatile ptr %4, ptr %4, align 4
  store ptr %4, ptr %12, align 4
  %15 = getelementptr inbounds %struct.gss_upcall_msg, ptr %0, i32 0, i32 7
  %16 = getelementptr inbounds %struct.gss_upcall_msg, ptr %0, i32 0, i32 3, i32 4
  %17 = load i32, ptr %16, align 4
  tail call void @rpc_wake_up_status(ptr noundef %15, i32 noundef %17) #16
  %18 = getelementptr inbounds %struct.gss_upcall_msg, ptr %0, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %18, i32 noundef 3, i32 noundef 0, ptr noundef null) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #16, !srcloc !15
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #16, !srcloc !20
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %23, !prof !17

22:                                               ; preds = %11
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 4) #16
  br label %23

23:                                               ; preds = %22, %11, %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %24 = load i16, ptr %8, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  br label %26

26:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gss_v0_upcall(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = getelementptr inbounds %struct.rpc_pipe_msg, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %1, i32 -8
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, -1
  %12 = load i32, ptr @overflowuid, align 4
  %13 = select i1 %11, i32 %12, i32 %10
  %14 = getelementptr i8, ptr %1, i32 160
  store i32 %13, ptr %14, align 4
  %15 = getelementptr i8, ptr %1, i32 8
  store ptr %14, ptr %15, align 4
  %16 = getelementptr i8, ptr %1, i32 12
  store i32 4, ptr %16, align 4
  br label %17

17:                                               ; preds = %8, %4
  %18 = tail call i32 @rpc_pipe_generic_upcall(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #16
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gss_pipe_open_v0(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !28
  %7 = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 37
  %8 = load volatile ptr, ptr %7, align 64
  %9 = getelementptr [0 x ptr], ptr %8, i32 0, i32 %6
  %10 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  tail call void @_raw_spin_lock(ptr noundef nonnull @pipe_version_lock) #16
  %11 = getelementptr inbounds %struct.sunrpc_net, ptr %10, i32 0, i32 18
  %12 = load i32, ptr %11, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, ptr %11, align 4
  tail call void @rpc_wake_up(ptr noundef nonnull @pipe_version_rpc_waitqueue) #16
  tail call void @__wake_up(ptr noundef nonnull @pipe_version_waitqueue, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  br label %17

15:                                               ; preds = %1
  %16 = icmp eq i32 %12, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %15, %14
  %18 = getelementptr inbounds %struct.sunrpc_net, ptr %10, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #16, !srcloc !15
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #16, !srcloc !30
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi i32 [ 0, %17 ], [ -16, %15 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %22 = load i16, ptr @pipe_version_lock, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr @pipe_version_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_remove_pipe_dir_object(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_destroy_pipe_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_createauth(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpcauth_lookup_credcache(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpcauth_init_cred(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gss_cred_init(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = getelementptr i8, ptr %0, i32 -12
  %6 = getelementptr i8, ptr %0, i32 48
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 1
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 2
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3, i32 1
  %11 = getelementptr inbounds %struct.rpc_cred, ptr %1, i32 0, i32 6
  %12 = getelementptr inbounds %struct.gss_cred, ptr %1, i32 0, i32 2
  %13 = getelementptr inbounds %struct.rpc_cred, ptr %1, i32 0, i32 8
  br label %14

14:                                               ; preds = %146, %2
  %15 = load ptr, ptr %6, align 4
  %16 = load i32, ptr @sunrpc_net_id, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !28
  %17 = getelementptr inbounds %struct.net, ptr %15, i32 0, i32 37
  %18 = load volatile ptr, ptr %17, align 64
  %19 = getelementptr [0 x ptr], ptr %18, i32 0, i32 %16
  %20 = load ptr, ptr %19, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #16
  %21 = tail call ptr @llvm.thread.pointer() #16
  store i32 0, ptr %3, align 4
  store ptr %21, ptr %7, align 4
  store ptr @autoremove_wake_function, ptr %8, align 4
  store ptr %9, ptr %9, align 4
  store ptr %9, ptr %10, align 4
  %22 = getelementptr inbounds %struct.sunrpc_net, ptr %20, i32 0, i32 18
  br label %23

23:                                               ; preds = %55, %14
  %24 = call zeroext i1 @gssd_running(ptr noundef %15) #16
  br i1 %24, label %25, label %127

25:                                               ; preds = %23
  %26 = call fastcc ptr @gss_setup_upcall(ptr noundef %5, ptr noundef %1) #16
  %27 = icmp eq ptr %26, inttoptr (i32 -11 to ptr)
  br i1 %27, label %28, label %58

28:                                               ; preds = %25
  %29 = load i32, ptr %22, align 4
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %55, label %31

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false) #16, !annotation !36
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #16
  %32 = call i32 @prepare_to_wait_event(ptr noundef nonnull @pipe_version_waitqueue, ptr noundef nonnull %4, i32 noundef 1) #16
  %33 = load i32, ptr %22, align 4
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %51, label %35

35:                                               ; preds = %40, %31
  %36 = phi i32 [ %48, %40 ], [ 1500, %31 ]
  %37 = phi i32 [ %42, %40 ], [ %32, %31 ]
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #16
  br label %127

40:                                               ; preds = %35
  %41 = call i32 @schedule_timeout(i32 noundef %36) #16
  %42 = call i32 @prepare_to_wait_event(ptr noundef nonnull @pipe_version_waitqueue, ptr noundef nonnull %4, i32 noundef 1) #16
  %43 = load i32, ptr %22, align 4
  %44 = icmp sgt i32 %43, -1
  %45 = xor i1 %44, true
  %46 = icmp ne i32 %41, 0
  %47 = select i1 %45, i1 true, i1 %46
  %48 = select i1 %47, i32 %41, i32 1
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %44, i1 true, i1 %49
  br i1 %50, label %51, label %35

51:                                               ; preds = %40, %31
  %52 = phi i32 [ 1500, %31 ], [ %48, %40 ]
  call void @finish_wait(ptr noundef nonnull @pipe_version_waitqueue, ptr noundef nonnull %4) #16
  %53 = load i32, ptr %22, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #16
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %127, label %55

55:                                               ; preds = %51, %28
  %56 = phi i32 [ %52, %51 ], [ 1500, %28 ]
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %127, label %23

58:                                               ; preds = %25
  %59 = ptrtoint ptr %26 to i32
  %60 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %127, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.gss_upcall_msg, ptr %26, i32 0, i32 6
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.gss_upcall_msg, ptr %26, i32 0, i32 8
  call void @prepare_to_wait(ptr noundef %64, ptr noundef nonnull %3, i32 noundef 258) #16
  %65 = getelementptr inbounds %struct.rpc_pipe, ptr %63, i32 0, i32 9
  call void @_raw_spin_lock(ptr noundef %65) #16
  %66 = getelementptr inbounds %struct.gss_upcall_msg, ptr %26, i32 0, i32 9
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %88

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.gss_upcall_msg, ptr %26, i32 0, i32 3, i32 4
  %71 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 98, i32 1
  br label %72

72:                                               ; preds = %85, %69
  %73 = load i32, ptr %70, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %121, label %75

75:                                               ; preds = %72
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %76 = load i16, ptr %65, align 4
  %77 = add i16 %76, 1
  store i16 %77, ptr %65, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  %78 = load volatile i32, ptr %21, align 4
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %75
  %82 = load i32, ptr %71, align 4
  %83 = and i32 %82, 256
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %125

85:                                               ; preds = %81, %75
  call void @schedule() #16
  call void @prepare_to_wait(ptr noundef %64, ptr noundef nonnull %3, i32 noundef 258) #16
  call void @_raw_spin_lock(ptr noundef %65) #16
  %86 = load ptr, ptr %66, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %72, label %88

88:                                               ; preds = %85, %61
  %89 = phi ptr [ %67, %61 ], [ %86, %85 ]
  %90 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_ctx_init, i32 0, i32 1), align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %94 = load i32, ptr %93, align 8
  %95 = lshr i32 %94, 5
  %96 = getelementptr i32, ptr @__cpu_online_mask, i32 %95
  %97 = load volatile i32, ptr %96, align 4
  %98 = and i32 %94, 31
  %99 = shl nuw i32 1, %98
  %100 = and i32 %99, %97
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %92
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !37
  %103 = call i32 @__traceiter_rpcgss_ctx_init(ptr noundef null, ptr noundef %1) #16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !38
  %104 = load ptr, ptr %66, align 4
  br label %105

105:                                              ; preds = %102, %92, %88
  %106 = phi ptr [ %89, %88 ], [ %89, %92 ], [ %104, %102 ]
  %107 = load volatile i32, ptr %11, align 4
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %121, label %110

110:                                              ; preds = %105
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %106) #16, !srcloc !15
  %111 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %106, ptr %106, i32 1, ptr elementtype(i32) %106) #16, !srcloc !16
  %112 = extractvalue { i32, i32, i32 } %111, 0
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %118, label %114, !prof !17

114:                                              ; preds = %110
  %115 = add i32 %112, 1
  %116 = or i32 %115, %112
  %117 = icmp sgt i32 %116, -1
  br i1 %117, label %120, label %118, !prof !14

118:                                              ; preds = %114, %110
  %119 = phi i32 [ 2, %110 ], [ 1, %114 ]
  call void @refcount_warn_saturate(ptr noundef %106, i32 noundef %119) #16
  br label %120

120:                                              ; preds = %118, %114
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !39
  store volatile ptr %106, ptr %12, align 4
  call void @_set_bit(i32 noundef 1, ptr noundef %11) #16
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !40
  call void @_clear_bit(i32 noundef 0, ptr noundef %11) #16
  br label %121

121:                                              ; preds = %120, %105, %72
  %122 = phi i32 [ 0, %105 ], [ 0, %120 ], [ %73, %72 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %123 = load i16, ptr %65, align 4
  %124 = add i16 %123, 1
  store i16 %124, ptr %65, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  br label %125

125:                                              ; preds = %121, %81
  %126 = phi i32 [ %122, %121 ], [ -512, %81 ]
  call void @finish_wait(ptr noundef %64, ptr noundef nonnull %3) #16
  call fastcc void @gss_release_msg(ptr noundef %26) #16
  br label %127

127:                                              ; preds = %125, %58, %55, %51, %39, %23
  %128 = phi i32 [ %126, %125 ], [ %59, %58 ], [ -13, %39 ], [ %56, %55 ], [ -13, %23 ], [ -13, %51 ]
  %129 = load ptr, ptr %13, align 4
  %130 = getelementptr inbounds %struct.cred, ptr %129, i32 0, i32 7
  %131 = load i32, ptr %130, align 4
  %132 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_upcall_result, i32 0, i32 1), align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %136 = load i32, ptr %135, align 8
  %137 = lshr i32 %136, 5
  %138 = getelementptr i32, ptr @__cpu_online_mask, i32 %137
  %139 = load volatile i32, ptr %138, align 4
  %140 = and i32 %136, 31
  %141 = shl nuw i32 1, %140
  %142 = and i32 %141, %139
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %134
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !41
  %145 = call i32 @__traceiter_rpcgss_upcall_result(ptr noundef null, i32 noundef %131, i32 noundef %128) #16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !42
  br label %146

146:                                              ; preds = %144, %134, %127
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #16
  %147 = icmp eq i32 %128, -11
  br i1 %147, label %14, label %148

148:                                              ; preds = %146
  ret i32 %128
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gss_destroy_cred(ptr noundef %0) #3 {
  %2 = alloca %struct.auth_cred, align 8
  %3 = getelementptr inbounds %struct.rpc_cred, ptr %0, i32 0, i32 6
  %4 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %3) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %71, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rpc_cred, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 -12
  %10 = getelementptr inbounds %struct.gss_cred, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3392, i32 noundef 68) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %71, label %15

15:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %16 = getelementptr inbounds %struct.rpc_cred, ptr %0, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  store ptr %17, ptr %2, align 8
  %18 = getelementptr inbounds %struct.auth_cred, ptr %2, i32 0, i32 1
  store ptr null, ptr %18, align 4
  %19 = load ptr, ptr %10, align 4
  call void @rpcauth_init_cred(ptr noundef nonnull %13, ptr noundef nonnull %2, ptr noundef %8, ptr noundef nonnull @gss_nullops) #16
  %20 = getelementptr inbounds %struct.rpc_cred, ptr %13, i32 0, i32 6
  store i32 2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.gss_cred, ptr %0, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.gss_cred, ptr %13, i32 0, i32 1
  store i32 %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.gss_cred, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.gss_cred, ptr %13, i32 0, i32 4
  store ptr %25, ptr %26, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #16, !srcloc !15
  %27 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #16, !srcloc !16
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30, !prof !17

30:                                               ; preds = %15
  %31 = add i32 %28, 1
  %32 = or i32 %31, %28
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %36, label %34, !prof !14

34:                                               ; preds = %30, %15
  %35 = phi i32 [ 2, %15 ], [ 1, %30 ]
  call void @refcount_warn_saturate(ptr noundef %9, i32 noundef %35) #16
  br label %36

36:                                               ; preds = %34, %30
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !43
  %37 = getelementptr inbounds %struct.gss_cred, ptr %13, i32 0, i32 2
  store volatile ptr %19, ptr %37, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #16, !srcloc !15
  %38 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #16, !srcloc !16
  %39 = extractvalue { i32, i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41, !prof !17

41:                                               ; preds = %36
  %42 = add i32 %39, 1
  %43 = or i32 %42, %39
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %47, label %45, !prof !14

45:                                               ; preds = %41, %36
  %46 = phi i32 [ 2, %36 ], [ 1, %41 ]
  call void @refcount_warn_saturate(ptr noundef %19, i32 noundef %46) #16
  br label %47

47:                                               ; preds = %45, %41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  %48 = getelementptr inbounds %struct.gss_cl_ctx, ptr %11, i32 0, i32 1
  store i32 3, ptr %48, align 4
  %49 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_ctx_destroy, i32 0, i32 1), align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = tail call ptr @llvm.thread.pointer() #16
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
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !44
  %63 = call i32 @__traceiter_rpcgss_ctx_destroy(ptr noundef null, ptr noundef %0) #16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !45
  br label %64

64:                                               ; preds = %62, %51, %47
  %65 = getelementptr i8, ptr %8, i32 44
  %66 = load ptr, ptr %65, align 4
  %67 = call ptr @rpc_call_null(ptr noundef %66, ptr noundef nonnull %13, i32 noundef 1) #16
  %68 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  call void @rpc_put_task(ptr noundef %67) #16
  br label %70

70:                                               ; preds = %69, %64
  call void @put_rpccred(ptr noundef nonnull %13) #16
  br label %71

71:                                               ; preds = %70, %6, %1
  call void @gss_destroy_nullcred(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gss_match(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.rpc_cred, ptr %1, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !28
  %9 = getelementptr inbounds %struct.gss_cred, ptr %1, i32 0, i32 2
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.gss_cl_ctx, ptr %10, i32 0, i32 9
  %14 = load i32, ptr %13, align 4
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = sub i32 %14, %15
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  br label %47

19:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  %20 = load volatile i32, ptr %4, align 4
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %47, label %23

23:                                               ; preds = %19, %3
  %24 = getelementptr inbounds %struct.auth_cred, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  %27 = getelementptr inbounds %struct.gss_cred, ptr %1, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %26, label %34, label %30

30:                                               ; preds = %23
  br i1 %29, label %47, label %31

31:                                               ; preds = %30
  %32 = tail call i32 @strcmp(ptr noundef nonnull %25, ptr noundef nonnull %28)
  %33 = icmp eq i32 %32, 0
  br label %44

34:                                               ; preds = %23
  br i1 %29, label %35, label %47

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.rpc_cred, ptr %1, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.cred, ptr %37, i32 0, i32 7
  %39 = load ptr, ptr %0, align 4
  %40 = getelementptr inbounds %struct.cred, ptr %39, i32 0, i32 7
  %41 = load i32, ptr %38, align 4
  %42 = load i32, ptr %40, align 4
  %43 = icmp eq i32 %41, %42
  br label %44

44:                                               ; preds = %35, %31
  %45 = phi i1 [ %33, %31 ], [ %43, %35 ]
  %46 = zext i1 %45 to i32
  br label %47

47:                                               ; preds = %44, %34, %30, %19, %18
  %48 = phi i32 [ %46, %44 ], [ 0, %18 ], [ 0, %19 ], [ 0, %30 ], [ 0, %34 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gss_marshal(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca %struct.xdr_netobj, align 8
  %4 = alloca %struct.kvec, align 8
  %5 = alloca %struct.xdr_buf, align 4
  %6 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rpc_rqst, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !28
  %10 = getelementptr inbounds %struct.gss_cred, ptr %9, i32 0, i32 2
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %11) #16, !srcloc !15
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #16, !srcloc !16
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17, !prof !17

17:                                               ; preds = %13
  %18 = add i32 %15, 1
  %19 = or i32 %18, %15
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %23, label %21, !prof !14

21:                                               ; preds = %17, %13
  %22 = phi i32 [ 2, %13 ], [ 1, %17 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %11, i32 noundef %22) #16
  br label %23

23:                                               ; preds = %21, %17, %2
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store i64 0, ptr %3, align 8, !annotation !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store i64 0, ptr %4, align 8, !annotation !36
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %5, i8 0, i32 44, i1 false), !annotation !36
  %24 = getelementptr inbounds %struct.gss_cl_ctx, ptr %11, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 28
  %27 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %26) #16
  %28 = icmp eq ptr %27, null
  br i1 %28, label %114, label %29

29:                                               ; preds = %23
  %30 = getelementptr i32, ptr %27, i32 1
  store i32 100663296, ptr %27, align 4
  %31 = getelementptr i32, ptr %27, i32 2
  %32 = getelementptr inbounds %struct.gss_cl_ctx, ptr %11, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %32) #16
  %33 = getelementptr inbounds %struct.gss_cl_ctx, ptr %11, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = add nuw i32 %34, 1
  store i32 %37, ptr %33, align 4
  br label %38

38:                                               ; preds = %36, %29
  %39 = phi i32 [ %34, %36 ], [ -2147483648, %29 ]
  %40 = getelementptr inbounds %struct.rpc_rqst, ptr %7, i32 0, i32 7
  store i32 %39, ptr %40, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %41 = load i16, ptr %32, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %32, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  %43 = load i32, ptr %40, align 4
  %44 = icmp eq i32 %43, -2147483648
  br i1 %44, label %112, label %45

45:                                               ; preds = %38
  %46 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_seqno, i32 0, i32 1), align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = tail call ptr @llvm.thread.pointer() #16
  %50 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %51 = load i32, ptr %50, align 8
  %52 = lshr i32 %51, 5
  %53 = getelementptr i32, ptr @__cpu_online_mask, i32 %52
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %51, 31
  %56 = shl nuw i32 1, %55
  %57 = and i32 %56, %54
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %48
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !46
  %60 = tail call i32 @__traceiter_rpcgss_seqno(ptr noundef null, ptr noundef %0) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !47
  br label %61

61:                                               ; preds = %59, %48, %45
  %62 = getelementptr i32, ptr %27, i32 3
  store i32 16777216, ptr %31, align 4
  %63 = getelementptr inbounds %struct.gss_cl_ctx, ptr %11, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  %66 = getelementptr i32, ptr %27, i32 4
  store i32 %65, ptr %62, align 4
  %67 = load i32, ptr %40, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  %69 = getelementptr i32, ptr %27, i32 5
  store i32 %68, ptr %66, align 4
  %70 = getelementptr inbounds %struct.gss_cred, ptr %9, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  %73 = getelementptr i32, ptr %27, i32 6
  store i32 %72, ptr %69, align 4
  %74 = tail call ptr @xdr_encode_netobj(ptr noundef %73, ptr noundef %24) #16
  %75 = ptrtoint ptr %74 to i32
  %76 = ptrtoint ptr %31 to i32
  %77 = sub i32 %75, %76
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  store i32 %78, ptr %30, align 4
  %79 = getelementptr inbounds %struct.rpc_rqst, ptr %7, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  store ptr %80, ptr %4, align 8
  %81 = ptrtoint ptr %80 to i32
  %82 = sub i32 %75, %81
  %83 = getelementptr inbounds %struct.kvec, ptr %4, i32 0, i32 1
  store i32 %82, ptr %83, align 4
  call void @xdr_buf_from_iov(ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %84 = call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #16
  %85 = icmp eq ptr %84, null
  br i1 %85, label %114, label %86

86:                                               ; preds = %61
  store i32 100663296, ptr %84, align 4
  %87 = getelementptr i32, ptr %84, i32 2
  %88 = getelementptr inbounds %struct.xdr_netobj, ptr %3, i32 0, i32 1
  store ptr %87, ptr %88, align 4
  %89 = getelementptr inbounds %struct.gss_cl_ctx, ptr %11, i32 0, i32 5
  %90 = load ptr, ptr %89, align 4
  %91 = call i32 @gss_get_mic(ptr noundef %90, ptr noundef nonnull %5, ptr noundef nonnull %3) #16
  switch i32 %91, label %115 [
    i32 786432, label %112
    i32 0, label %92
  ]

92:                                               ; preds = %86
  %93 = load i32, ptr %3, align 8
  %94 = add i32 %93, 7
  %95 = and i32 %94, -4
  %96 = call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %95) #16
  %97 = icmp eq ptr %96, null
  br i1 %97, label %114, label %98, !prof !17

98:                                               ; preds = %92
  %99 = call ptr @xdr_encode_opaque(ptr noundef nonnull %96, ptr noundef null, i32 noundef %93) #16
  %100 = icmp slt i32 %95, 0
  br i1 %100, label %114, label %101

101:                                              ; preds = %129, %118, %115, %114, %112, %98
  %102 = phi i32 [ -127, %112 ], [ -90, %114 ], [ 0, %98 ], [ -5, %115 ], [ -5, %118 ], [ -5, %129 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #16, !srcloc !15
  %103 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #16, !srcloc !20
  %104 = extractvalue { i32, i32, i32 } %103, 0
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = icmp sgt i32 %104, 0
  br i1 %107, label %111, label %108, !prof !14

108:                                              ; preds = %106
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #16
  br label %111

109:                                              ; preds = %101
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  %110 = getelementptr inbounds %struct.gss_cl_ctx, ptr %11, i32 0, i32 10
  call void @call_rcu(ptr noundef %110, ptr noundef nonnull @gss_free_ctx_callback) #16
  br label %111

111:                                              ; preds = %109, %108, %106
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret i32 %102

112:                                              ; preds = %86, %38
  %113 = getelementptr inbounds %struct.rpc_cred, ptr %9, i32 0, i32 6
  call void @_clear_bit(i32 noundef 1, ptr noundef %113) #16
  br label %101

114:                                              ; preds = %98, %92, %61, %23
  br label %101

115:                                              ; preds = %86
  %116 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_get_mic, i32 0, i32 1), align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %101

118:                                              ; preds = %115
  %119 = tail call ptr @llvm.thread.pointer() #16
  %120 = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 2
  %121 = load i32, ptr %120, align 8
  %122 = lshr i32 %121, 5
  %123 = getelementptr i32, ptr @__cpu_online_mask, i32 %122
  %124 = load volatile i32, ptr %123, align 4
  %125 = and i32 %121, 31
  %126 = shl nuw i32 1, %125
  %127 = and i32 %126, %124
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %101, label %129

129:                                              ; preds = %118
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !48
  %130 = call i32 @__traceiter_rpcgss_get_mic(ptr noundef null, ptr noundef %0, i32 noundef %91) #16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !49
  br label %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gss_refresh(ptr noundef %0) #3 {
  %2 = alloca %struct.auth_cred, align 8
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rpc_rqst, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rpc_cred, ptr %6, i32 0, i32 6
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %1
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = getelementptr inbounds %struct.gss_cred, ptr %6, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 %12, %14
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load i32, ptr @gss_expired_cred_retry_delay, align 4
  %19 = mul i32 %18, -100
  %20 = add i32 %19, %15
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %127, label %22

22:                                               ; preds = %17, %11, %1
  %23 = load volatile i32, ptr %7, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %22
  %27 = load volatile i32, ptr %7, align 4
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.rpc_cred, ptr %6, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %33 = getelementptr inbounds %struct.rpc_cred, ptr %6, i32 0, i32 8
  %34 = load ptr, ptr %33, align 4
  store ptr %34, ptr %2, align 8
  %35 = getelementptr inbounds %struct.auth_cred, ptr %2, i32 0, i32 1
  %36 = getelementptr inbounds %struct.gss_cred, ptr %6, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  store ptr %37, ptr %35, align 4
  %38 = call ptr @rpcauth_lookup_credcache(ptr noundef %32, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 3136) #16
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %43, label %40

40:                                               ; preds = %30
  %41 = load ptr, ptr %3, align 4
  %42 = getelementptr inbounds %struct.rpc_rqst, ptr %41, i32 0, i32 4
  store ptr %38, ptr %42, align 8
  call void @put_rpccred(ptr noundef %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  br label %46

43:                                               ; preds = %30
  %44 = ptrtoint ptr %38 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  %45 = icmp slt ptr %38, null
  br i1 %45, label %127, label %46

46:                                               ; preds = %43, %40
  %47 = phi i32 [ 0, %40 ], [ %44, %43 ]
  %48 = load ptr, ptr %3, align 4
  %49 = getelementptr inbounds %struct.rpc_rqst, ptr %48, i32 0, i32 4
  %50 = load ptr, ptr %49, align 8
  br label %51

51:                                               ; preds = %46, %26, %22
  %52 = phi ptr [ %6, %22 ], [ %6, %26 ], [ %50, %46 ]
  %53 = phi i32 [ 0, %22 ], [ 0, %26 ], [ %47, %46 ]
  %54 = getelementptr inbounds %struct.rpc_cred, ptr %52, i32 0, i32 6
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %127, label %58

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.rpc_cred, ptr %52, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %60, i32 -12
  %62 = call fastcc ptr @gss_setup_upcall(ptr noundef %61, ptr noundef %52) #16
  %63 = icmp eq ptr %62, inttoptr (i32 -11 to ptr)
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load volatile i32, ptr @jiffies, align 64
  %66 = add i32 %65, 1500
  call void @rpc_sleep_on_timeout(ptr noundef nonnull @pipe_version_rpc_waitqueue, ptr noundef %0, ptr noundef null, i32 noundef %66) #16
  br label %106

67:                                               ; preds = %58
  %68 = ptrtoint ptr %62 to i32
  %69 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %106, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.gss_upcall_msg, ptr %62, i32 0, i32 6
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.rpc_pipe, ptr %72, i32 0, i32 9
  call void @_raw_spin_lock(ptr noundef %73) #16
  %74 = getelementptr inbounds %struct.gss_cred, ptr %52, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.gss_upcall_msg, ptr %75, i32 0, i32 7
  call void @rpc_sleep_on(ptr noundef %78, ptr noundef %0, ptr noundef null) #16
  br label %102

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct.gss_upcall_msg, ptr %62, i32 0, i32 9
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %99

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.gss_upcall_msg, ptr %62, i32 0, i32 3, i32 4
  %85 = load i32, ptr %84, align 4
  %86 = icmp sgt i32 %85, -1
  br i1 %86, label %87, label %99

87:                                               ; preds = %83
  store ptr %62, ptr %74, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %62) #16, !srcloc !15
  %88 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %62, ptr %62, i32 1, ptr elementtype(i32) %62) #16, !srcloc !16
  %89 = extractvalue { i32, i32, i32 } %88, 0
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91, !prof !17

91:                                               ; preds = %87
  %92 = add i32 %89, 1
  %93 = or i32 %92, %89
  %94 = icmp sgt i32 %93, -1
  br i1 %94, label %97, label %95, !prof !14

95:                                               ; preds = %91, %87
  %96 = phi i32 [ 2, %87 ], [ 1, %91 ]
  call void @refcount_warn_saturate(ptr noundef %62, i32 noundef %96) #16
  br label %97

97:                                               ; preds = %95, %91
  %98 = getelementptr inbounds %struct.gss_upcall_msg, ptr %62, i32 0, i32 7
  call void @rpc_sleep_on(ptr noundef %98, ptr noundef %0, ptr noundef nonnull @gss_upcall_callback) #16
  br label %102

99:                                               ; preds = %83, %79
  call fastcc void @gss_handle_downcall_result(ptr noundef %52, ptr noundef %62) #16
  %100 = getelementptr inbounds %struct.gss_upcall_msg, ptr %62, i32 0, i32 3, i32 4
  %101 = load i32, ptr %100, align 4
  br label %102

102:                                              ; preds = %99, %97, %77
  %103 = phi i32 [ 0, %77 ], [ 0, %97 ], [ %101, %99 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %104 = load i16, ptr %73, align 4
  %105 = add i16 %104, 1
  store i16 %105, ptr %73, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  call fastcc void @gss_release_msg(ptr noundef %62) #16
  br label %106

106:                                              ; preds = %102, %67, %64
  %107 = phi i32 [ -11, %64 ], [ %103, %102 ], [ %68, %67 ]
  %108 = getelementptr inbounds %struct.rpc_cred, ptr %52, i32 0, i32 8
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.cred, ptr %109, i32 0, i32 7
  %111 = load i32, ptr %110, align 4
  %112 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_upcall_result, i32 0, i32 1), align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %106
  %115 = tail call ptr @llvm.thread.pointer() #16
  %116 = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 2
  %117 = load i32, ptr %116, align 8
  %118 = lshr i32 %117, 5
  %119 = getelementptr i32, ptr @__cpu_online_mask, i32 %118
  %120 = load volatile i32, ptr %119, align 4
  %121 = and i32 %117, 31
  %122 = shl nuw i32 1, %121
  %123 = and i32 %122, %120
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %114
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !41
  %126 = call i32 @__traceiter_rpcgss_upcall_result(ptr noundef null, i32 noundef %111, i32 noundef %107) #16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !42
  br label %127

127:                                              ; preds = %125, %114, %106, %51, %43, %17
  %128 = phi i32 [ %53, %51 ], [ %44, %43 ], [ -127, %17 ], [ %107, %106 ], [ %107, %114 ], [ %107, %125 ]
  ret i32 %128
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gss_validate(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca %struct.kvec, align 8
  %4 = alloca %struct.xdr_buf, align 4
  %5 = alloca %struct.xdr_netobj, align 8
  %6 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rpc_rqst, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !28
  %10 = getelementptr inbounds %struct.gss_cred, ptr %9, i32 0, i32 2
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %11) #16, !srcloc !15
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #16, !srcloc !16
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17, !prof !17

17:                                               ; preds = %13
  %18 = add i32 %15, 1
  %19 = or i32 %18, %15
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %23, label %21, !prof !14

21:                                               ; preds = %17, %13
  %22 = phi i32 [ 2, %13 ], [ 1, %17 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %11, i32 noundef %22) #16
  br label %23

23:                                               ; preds = %21, %17, %2
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store i64 0, ptr %3, align 8, !annotation !36
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %4, i8 0, i32 44, i1 false), !annotation !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  store i64 0, ptr %5, align 8, !annotation !36
  %24 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #16
  %25 = icmp eq ptr %24, null
  br i1 %25, label %65, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr %24, align 4
  %28 = icmp eq i32 %27, 100663296
  br i1 %28, label %29, label %65

29:                                               ; preds = %26
  %30 = getelementptr i32, ptr %24, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #16
  %33 = icmp ugt i32 %32, 400
  br i1 %33, label %65, label %34

34:                                               ; preds = %29
  %35 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %32) #16
  %36 = icmp eq ptr %35, null
  br i1 %36, label %65, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %39 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3136, i32 noundef 4) #17
  %40 = icmp eq ptr %39, null
  br i1 %40, label %65, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %6, align 4
  %43 = getelementptr inbounds %struct.rpc_rqst, ptr %42, i32 0, i32 7
  %44 = load i32, ptr %43, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  store i32 %45, ptr %39, align 8
  store ptr %39, ptr %3, align 8
  %46 = getelementptr inbounds %struct.kvec, ptr %3, i32 0, i32 1
  store i32 4, ptr %46, align 4
  call void @xdr_buf_from_iov(ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %47 = getelementptr inbounds %struct.xdr_netobj, ptr %5, i32 0, i32 1
  store ptr %35, ptr %47, align 4
  store i32 %32, ptr %5, align 8
  %48 = getelementptr inbounds %struct.gss_cl_ctx, ptr %11, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = call i32 @gss_verify_mic(ptr noundef %49, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  switch i32 %50, label %77 [
    i32 786432, label %51
    i32 0, label %53
  ]

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.rpc_cred, ptr %9, i32 0, i32 6
  call void @_clear_bit(i32 noundef 1, ptr noundef %52) #16
  br label %77

53:                                               ; preds = %41
  %54 = getelementptr inbounds %struct.rpc_cred, ptr %9, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.rpc_auth, ptr %55, i32 0, i32 4
  %57 = load volatile i32, ptr %56, align 4
  %58 = and i32 %57, 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %53
  %61 = add nuw nsw i32 %32, 3
  %62 = lshr i32 %61, 2
  %63 = add nuw nsw i32 %62, 2
  %64 = getelementptr inbounds %struct.rpc_auth, ptr %55, i32 0, i32 2
  store i32 %63, ptr %64, align 4
  br label %65

65:                                               ; preds = %91, %80, %77, %60, %53, %37, %34, %29, %26, %23
  %66 = phi ptr [ %39, %60 ], [ %39, %53 ], [ null, %37 ], [ null, %34 ], [ null, %29 ], [ null, %26 ], [ null, %23 ], [ %39, %77 ], [ %39, %80 ], [ %39, %91 ]
  %67 = phi i32 [ 0, %60 ], [ 0, %53 ], [ -5, %37 ], [ -5, %34 ], [ -5, %29 ], [ -5, %26 ], [ -5, %23 ], [ -13, %77 ], [ -13, %80 ], [ -13, %91 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #16, !srcloc !15
  %68 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #16, !srcloc !20
  %69 = extractvalue { i32, i32, i32 } %68, 0
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %74, label %71

71:                                               ; preds = %65
  %72 = icmp sgt i32 %69, 0
  br i1 %72, label %76, label %73, !prof !14

73:                                               ; preds = %71
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #16
  br label %76

74:                                               ; preds = %65
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  %75 = getelementptr inbounds %struct.gss_cl_ctx, ptr %11, i32 0, i32 10
  call void @call_rcu(ptr noundef %75, ptr noundef nonnull @gss_free_ctx_callback) #16
  br label %76

76:                                               ; preds = %74, %73, %71
  call void @kfree(ptr noundef %66) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret i32 %67

77:                                               ; preds = %51, %41
  %78 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_verify_mic, i32 0, i32 1), align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %65

80:                                               ; preds = %77
  %81 = tail call ptr @llvm.thread.pointer() #16
  %82 = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 2
  %83 = load i32, ptr %82, align 8
  %84 = lshr i32 %83, 5
  %85 = getelementptr i32, ptr @__cpu_online_mask, i32 %84
  %86 = load volatile i32, ptr %85, align 4
  %87 = and i32 %83, 31
  %88 = shl nuw i32 1, %87
  %89 = and i32 %88, %86
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %65, label %91

91:                                               ; preds = %80
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !50
  %92 = call i32 @__traceiter_rpcgss_verify_mic(ptr noundef null, ptr noundef %0, i32 noundef %50) #16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !51
  br label %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gss_wrap_req(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rpc_rqst, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !28
  %7 = getelementptr inbounds %struct.gss_cred, ptr %6, i32 0, i32 2
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %8) #16, !srcloc !15
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %8, ptr nonnull %8, i32 1, ptr nonnull elementtype(i32) %8) #16, !srcloc !16
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14, !prof !17

14:                                               ; preds = %10
  %15 = add i32 %12, 1
  %16 = or i32 %15, %12
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %20, label %18, !prof !14

18:                                               ; preds = %14, %10
  %19 = phi i32 [ 2, %10 ], [ 1, %14 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %8, i32 noundef %19) #16
  br label %20

20:                                               ; preds = %18, %14, %2
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  %21 = getelementptr inbounds %struct.gss_cl_ctx, ptr %8, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @rpcauth_wrap_req_encode(ptr noundef %0, ptr noundef %1) #16
  br label %35

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.gss_cred, ptr %6, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  switch i32 %28, label %35 [
    i32 1, label %29
    i32 2, label %31
    i32 3, label %33
  ]

29:                                               ; preds = %26
  %30 = tail call i32 @rpcauth_wrap_req_encode(ptr noundef %0, ptr noundef %1) #16
  br label %35

31:                                               ; preds = %26
  %32 = tail call fastcc i32 @gss_wrap_req_integ(ptr noundef %6, ptr noundef %8, ptr noundef %0, ptr noundef %1)
  br label %35

33:                                               ; preds = %26
  %34 = tail call fastcc i32 @gss_wrap_req_priv(ptr noundef %6, ptr noundef %8, ptr noundef %0, ptr noundef %1)
  br label %35

35:                                               ; preds = %33, %31, %29, %26, %24
  %36 = phi i32 [ %25, %24 ], [ %34, %33 ], [ %32, %31 ], [ %30, %29 ], [ -5, %26 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #16, !srcloc !15
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #16, !srcloc !20
  %38 = extractvalue { i32, i32, i32 } %37, 0
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = icmp sgt i32 %38, 0
  br i1 %41, label %45, label %42, !prof !14

42:                                               ; preds = %40
  tail call void @refcount_warn_saturate(ptr noundef %8, i32 noundef 3) #16
  br label %45

43:                                               ; preds = %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  %44 = getelementptr inbounds %struct.gss_cl_ctx, ptr %8, i32 0, i32 10
  tail call void @call_rcu(ptr noundef %44, ptr noundef nonnull @gss_free_ctx_callback) #16
  br label %45

45:                                               ; preds = %43, %42, %40
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gss_unwrap_resp(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rpc_rqst, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !28
  %7 = getelementptr inbounds %struct.gss_cred, ptr %6, i32 0, i32 2
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %8) #16, !srcloc !15
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %8, ptr nonnull %8, i32 1, ptr nonnull elementtype(i32) %8) #16, !srcloc !16
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14, !prof !17

14:                                               ; preds = %10
  %15 = add i32 %12, 1
  %16 = or i32 %15, %12
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %20, label %18, !prof !14

18:                                               ; preds = %14, %10
  %19 = phi i32 [ 2, %10 ], [ 1, %14 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %8, i32 noundef %19) #16
  br label %20

20:                                               ; preds = %18, %14, %2
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  %21 = getelementptr inbounds %struct.gss_cl_ctx, ptr %8, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %60

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.gss_cred, ptr %6, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  switch i32 %26, label %62 [
    i32 1, label %27
    i32 2, label %53
    i32 3, label %55
  ]

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.rpc_cred, ptr %6, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.rpc_auth, ptr %29, i32 0, i32 4
  %31 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %30) #16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %60, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.rpc_auth, ptr %29, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.rpc_auth, ptr %29, i32 0, i32 3
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.rpc_auth, ptr %29, i32 0, i32 1
  store i32 %35, ptr %37, align 4
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_update_slack, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %33
  %41 = tail call ptr @llvm.thread.pointer() #16
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !52
  %52 = tail call i32 @__traceiter_rpcgss_update_slack(ptr noundef null, ptr noundef %0, ptr noundef %29) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !53
  br label %60

53:                                               ; preds = %24
  %54 = tail call fastcc i32 @gss_unwrap_resp_integ(ptr noundef %0, ptr noundef %6, ptr noundef %8, ptr noundef %4, ptr noundef %1)
  br label %57

55:                                               ; preds = %24
  %56 = tail call fastcc i32 @gss_unwrap_resp_priv(ptr noundef %0, ptr noundef %6, ptr noundef %8, ptr noundef %4, ptr noundef %1)
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %56, %55 ], [ %54, %53 ]
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57, %51, %40, %33, %27, %20
  %61 = tail call i32 @rpcauth_unwrap_resp_decode(ptr noundef %0, ptr noundef %1) #16
  br label %62

62:                                               ; preds = %60, %57, %24
  %63 = phi i32 [ %61, %60 ], [ %58, %57 ], [ -5, %24 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #16, !srcloc !15
  %64 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #16, !srcloc !20
  %65 = extractvalue { i32, i32, i32 } %64, 0
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = icmp sgt i32 %65, 0
  br i1 %68, label %72, label %69, !prof !14

69:                                               ; preds = %67
  tail call void @refcount_warn_saturate(ptr noundef %8, i32 noundef 3) #16
  br label %72

70:                                               ; preds = %62
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  %71 = getelementptr inbounds %struct.gss_cl_ctx, ptr %8, i32 0, i32 10
  tail call void @call_rcu(ptr noundef %71, ptr noundef nonnull @gss_free_ctx_callback) #16
  br label %72

72:                                               ; preds = %70, %69, %67
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gss_key_timeout(ptr noundef %0) #3 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = load i32, ptr @gss_key_expire_timeo, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !28
  %4 = getelementptr inbounds %struct.gss_cred, ptr %0, i32 0, i32 2
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.gss_cl_ctx, ptr %5, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = mul i32 %3, -100
  %11 = sub i32 %10, %2
  %12 = add i32 %11, %9
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %7, %1
  br label %15

15:                                               ; preds = %14, %7
  %16 = phi i32 [ -13, %14 ], [ 0, %7 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @gss_stringify_acceptor(ptr noundef %0) #3 {
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !28
  %2 = getelementptr inbounds %struct.gss_cred, ptr %0, i32 0, i32 2
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gss_cl_ctx, ptr %3, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %32, label %9

9:                                                ; preds = %24, %5
  %10 = phi i32 [ %19, %24 ], [ %7, %5 ]
  %11 = add i32 %10, 1
  %12 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #18
  %13 = icmp eq ptr %12, null
  br i1 %13, label %32, label %14

14:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !28
  %15 = load volatile ptr, ptr %2, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.gss_cl_ctx, ptr %15, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %14
  tail call void @kfree(ptr noundef nonnull %12) #16
  br label %30

22:                                               ; preds = %17
  %23 = icmp ult i32 %10, %19
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  tail call void @kfree(ptr noundef nonnull %12) #16
  br label %9

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.gss_cl_ctx, ptr %15, i32 0, i32 7, i32 1
  %27 = load ptr, ptr %26, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %12, ptr align 1 %27, i32 %19, i1 false)
  %28 = load i32, ptr %18, align 4
  %29 = getelementptr i8, ptr %12, i32 %28
  store i8 0, ptr %29, align 1
  br label %30

30:                                               ; preds = %25, %21, %1
  %31 = phi ptr [ %12, %25 ], [ null, %21 ], [ null, %1 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  br label %32

32:                                               ; preds = %30, %9, %5
  %33 = phi ptr [ %31, %30 ], [ null, %5 ], [ null, %9 ]
  ret ptr %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @gss_xmit_need_reencode(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !28
  %6 = getelementptr inbounds %struct.gss_cred, ptr %5, i32 0, i32 2
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %7) #16, !srcloc !15
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #16, !srcloc !16
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13, !prof !17

13:                                               ; preds = %9
  %14 = add i32 %11, 1
  %15 = or i32 %14, %11
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %20, label %17, !prof !14

17:                                               ; preds = %13, %9
  %18 = phi i32 [ 2, %9 ], [ 1, %13 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %7, i32 noundef %18) #16
  br label %20

19:                                               ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  br label %71

20:                                               ; preds = %17, %13
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  %21 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.gss_cl_ctx, ptr %7, i32 0, i32 2
  %24 = load volatile i32, ptr %23, align 4
  %25 = sub i32 %22, %24
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %58, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.gss_cl_ctx, ptr %7, i32 0, i32 3
  %29 = load volatile i32, ptr %28, align 4
  %30 = sub i32 %22, %29
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %42, %27
  %33 = phi i32 [ %40, %42 ], [ %29, %27 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !54
  %34 = load i32, ptr %21, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #16, !srcloc !15
  br label %35

35:                                               ; preds = %35, %32
  %36 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %28, i32 %33, i32 %34) #16, !srcloc !55
  %37 = extractvalue { i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %35

39:                                               ; preds = %35
  %40 = extractvalue { i32, i32 } %36, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !56
  %41 = icmp eq i32 %40, %33
  br i1 %41, label %58, label %42

42:                                               ; preds = %39
  %43 = load i32, ptr %21, align 4
  %44 = sub i32 %43, %40
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %32, label %46

46:                                               ; preds = %42
  %47 = extractvalue { i32, i32 } %36, 1
  br label %48

48:                                               ; preds = %46, %27
  %49 = phi i32 [ %29, %27 ], [ %47, %46 ]
  %50 = phi i32 [ %30, %27 ], [ %44, %46 ]
  %51 = getelementptr inbounds %struct.gss_cl_ctx, ptr %7, i32 0, i32 8
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %48
  %55 = add i32 %50, %52
  %56 = icmp slt i32 %55, 1
  %57 = zext i1 %56 to i8
  br label %58

58:                                               ; preds = %54, %48, %39, %20
  %59 = phi i8 [ 1, %20 ], [ %57, %54 ], [ 1, %48 ], [ 0, %39 ]
  %60 = phi i32 [ 0, %20 ], [ %49, %54 ], [ %49, %48 ], [ %33, %39 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %7) #16, !srcloc !15
  %61 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #16, !srcloc !20
  %62 = extractvalue { i32, i32, i32 } %61, 0
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = icmp sgt i32 %62, 0
  br i1 %65, label %69, label %66, !prof !14

66:                                               ; preds = %64
  tail call void @refcount_warn_saturate(ptr noundef nonnull %7, i32 noundef 3) #16
  br label %69

67:                                               ; preds = %58
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  %68 = getelementptr inbounds %struct.gss_cl_ctx, ptr %7, i32 0, i32 10
  tail call void @call_rcu(ptr noundef %68, ptr noundef nonnull @gss_free_ctx_callback) #16
  br label %69

69:                                               ; preds = %67, %66, %64
  %70 = icmp ne i8 %59, 0
  br label %71

71:                                               ; preds = %69, %19
  %72 = phi i1 [ %70, %69 ], [ true, %19 ]
  %73 = phi i32 [ %60, %69 ], [ 0, %19 ]
  %74 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_need_reencode, i32 0, i32 1), align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %71
  %77 = tail call ptr @llvm.thread.pointer() #16
  %78 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 2
  %79 = load i32, ptr %78, align 8
  %80 = lshr i32 %79, 5
  %81 = getelementptr i32, ptr @__cpu_online_mask, i32 %80
  %82 = load volatile i32, ptr %81, align 4
  %83 = and i32 %79, 31
  %84 = shl nuw i32 1, %83
  %85 = and i32 %84, %82
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %76
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !57
  %88 = tail call i32 @__traceiter_rpcgss_need_reencode(ptr noundef null, ptr noundef %0, i32 noundef %73, i1 noundef zeroext %72) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !58
  br label %89

89:                                               ; preds = %87, %76, %71
  ret i1 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @gss_setup_upcall(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.rpc_cred, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.gss_cred, ptr %1, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3392, i32 noundef 428) #17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %75, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.gss_auth, ptr %0, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !28
  %16 = getelementptr inbounds %struct.net, ptr %14, i32 0, i32 37
  %17 = load volatile ptr, ptr %16, align 64
  %18 = getelementptr [0 x ptr], ptr %17, i32 0, i32 %15
  %19 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  tail call void @_raw_spin_lock(ptr noundef nonnull @pipe_version_lock) #16
  %20 = getelementptr inbounds %struct.sunrpc_net, ptr %19, i32 0, i32 18
  %21 = load i32, ptr %20, align 4
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %27

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.sunrpc_net, ptr %19, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #16, !srcloc !15
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #16, !srcloc !30
  %26 = load i32, ptr %20, align 4
  br label %27

27:                                               ; preds = %23, %12
  %28 = phi i32 [ %26, %23 ], [ -11, %12 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %29 = load i16, ptr @pipe_version_lock, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr @pipe_version_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  %31 = icmp slt i32 %28, 0
  br i1 %31, label %73, label %32

32:                                               ; preds = %27
  %33 = getelementptr %struct.gss_auth, ptr %0, i32 0, i32 7, i32 %28
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.gss_pipe, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.gss_upcall_msg, ptr %10, i32 0, i32 6
  store ptr %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.gss_upcall_msg, ptr %10, i32 0, i32 4
  store volatile ptr %38, ptr %38, align 4
  %39 = getelementptr inbounds %struct.gss_upcall_msg, ptr %10, i32 0, i32 4, i32 1
  store ptr %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.gss_upcall_msg, ptr %10, i32 0, i32 7
  tail call void @rpc_init_wait_queue(ptr noundef %40, ptr noundef nonnull @.str.14) #16
  %41 = getelementptr inbounds %struct.gss_upcall_msg, ptr %10, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %41, ptr noundef nonnull @.str.15, ptr noundef nonnull @gss_alloc_msg.__key) #16
  store volatile i32 1, ptr %10, align 8
  %42 = getelementptr inbounds %struct.gss_upcall_msg, ptr %10, i32 0, i32 1
  store i32 %6, ptr %42, align 4
  %43 = getelementptr inbounds %struct.gss_upcall_msg, ptr %10, i32 0, i32 5
  store ptr %0, ptr %43, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #16, !srcloc !15
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #16, !srcloc !16
  %45 = extractvalue { i32, i32, i32 } %44, 0
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47, !prof !17

47:                                               ; preds = %32
  %48 = add i32 %45, 1
  %49 = or i32 %48, %45
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %53, label %51, !prof !14

51:                                               ; preds = %47, %32
  %52 = phi i32 [ 2, %32 ], [ 1, %47 ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %52) #16
  br label %53

53:                                               ; preds = %51, %47
  %54 = icmp eq ptr %8, null
  br i1 %54, label %78, label %55

55:                                               ; preds = %53
  %56 = tail call ptr @kstrdup_const(ptr noundef nonnull %8, i32 noundef 3136) #16
  %57 = getelementptr inbounds %struct.gss_upcall_msg, ptr %10, i32 0, i32 2
  store ptr %56, ptr %57, align 8
  %58 = icmp eq ptr %56, null
  br i1 %58, label %59, label %78

59:                                               ; preds = %55
  %60 = load ptr, ptr %13, align 4
  %61 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !28
  %62 = getelementptr inbounds %struct.net, ptr %60, i32 0, i32 37
  %63 = load volatile ptr, ptr %62, align 64
  %64 = getelementptr [0 x ptr], ptr %63, i32 0, i32 %61
  %65 = load ptr, ptr %64, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  %66 = getelementptr inbounds %struct.sunrpc_net, ptr %65, i32 0, i32 19
  %67 = tail call i32 @_atomic_dec_and_lock(ptr noundef %66, ptr noundef nonnull @pipe_version_lock) #16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.sunrpc_net, ptr %65, i32 0, i32 18
  store i32 -1, ptr %70, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %71 = load i16, ptr @pipe_version_lock, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr @pipe_version_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  br label %73

73:                                               ; preds = %69, %59, %27
  %74 = phi i32 [ %28, %27 ], [ -12, %59 ], [ -12, %69 ]
  tail call void @kfree(ptr noundef nonnull %10) #16
  br label %75

75:                                               ; preds = %73, %2
  %76 = phi i32 [ -12, %2 ], [ %74, %73 ]
  %77 = inttoptr i32 %76 to ptr
  br label %78

78:                                               ; preds = %75, %55, %53
  %79 = phi ptr [ %77, %75 ], [ %10, %55 ], [ %10, %53 ]
  %80 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  br i1 %80, label %167, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.gss_upcall_msg, ptr %79, i32 0, i32 6
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.rpc_pipe, ptr %83, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %84) #16
  %85 = getelementptr inbounds %struct.gss_upcall_msg, ptr %79, i32 0, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr inbounds %struct.rpc_pipe, ptr %83, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, %87
  br i1 %89, label %124, label %90

90:                                               ; preds = %81
  %91 = getelementptr inbounds %struct.gss_upcall_msg, ptr %79, i32 0, i32 5
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  %94 = getelementptr inbounds %struct.gss_auth, ptr %92, i32 0, i32 4
  br label %95

95:                                               ; preds = %119, %90
  %96 = phi ptr [ %88, %90 ], [ %120, %119 ]
  %97 = getelementptr i8, ptr %96, i32 -32
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, %86
  br i1 %99, label %100, label %119

100:                                              ; preds = %95
  br i1 %93, label %108, label %101

101:                                              ; preds = %100
  %102 = getelementptr i8, ptr %96, i32 8
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.gss_auth, ptr %103, i32 0, i32 4
  %105 = load i32, ptr %104, align 4
  %106 = load i32, ptr %94, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %101, %100
  %109 = getelementptr i8, ptr %96, i32 -36
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %109) #16, !srcloc !15
  %110 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %109, ptr %109, i32 1, ptr elementtype(i32) %109) #16, !srcloc !16
  %111 = extractvalue { i32, i32, i32 } %110, 0
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %117, label %113, !prof !17

113:                                              ; preds = %108
  %114 = add i32 %111, 1
  %115 = or i32 %114, %111
  %116 = icmp sgt i32 %115, -1
  br i1 %116, label %122, label %117, !prof !14

117:                                              ; preds = %113, %108
  %118 = phi i32 [ 2, %108 ], [ 1, %113 ]
  tail call void @refcount_warn_saturate(ptr noundef %109, i32 noundef %118) #16
  br label %122

119:                                              ; preds = %101, %95
  %120 = load ptr, ptr %96, align 4
  %121 = icmp eq ptr %120, %87
  br i1 %121, label %124, label %95

122:                                              ; preds = %117, %113
  %123 = icmp eq ptr %109, null
  br i1 %123, label %124, label %139

124:                                              ; preds = %122, %119, %81
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %79) #16, !srcloc !15
  %125 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %79, ptr %79, i32 1, ptr elementtype(i32) %79) #16, !srcloc !16
  %126 = extractvalue { i32, i32, i32 } %125, 0
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %132, label %128, !prof !17

128:                                              ; preds = %124
  %129 = add i32 %126, 1
  %130 = or i32 %129, %126
  %131 = icmp sgt i32 %130, -1
  br i1 %131, label %134, label %132, !prof !14

132:                                              ; preds = %128, %124
  %133 = phi i32 [ 2, %124 ], [ 1, %128 ]
  tail call void @refcount_warn_saturate(ptr noundef %79, i32 noundef %133) #16
  br label %134

134:                                              ; preds = %132, %128
  %135 = getelementptr inbounds %struct.gss_upcall_msg, ptr %79, i32 0, i32 4
  %136 = load ptr, ptr %87, align 4
  %137 = getelementptr inbounds %struct.list_head, ptr %136, i32 0, i32 1
  store ptr %135, ptr %137, align 4
  store ptr %136, ptr %135, align 4
  %138 = getelementptr inbounds %struct.gss_upcall_msg, ptr %79, i32 0, i32 4, i32 1
  store ptr %87, ptr %138, align 4
  store volatile ptr %135, ptr %87, align 4
  br label %139

139:                                              ; preds = %134, %122
  %140 = phi ptr [ %79, %134 ], [ %109, %122 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %141 = load i16, ptr %84, align 4
  %142 = add i16 %141, 1
  store i16 %142, ptr %84, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  %143 = icmp eq ptr %140, %79
  br i1 %143, label %144, label %166

144:                                              ; preds = %139
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %79) #16, !srcloc !15
  %145 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %79, ptr %79, i32 1, ptr elementtype(i32) %79) #16, !srcloc !16
  %146 = extractvalue { i32, i32, i32 } %145, 0
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %152, label %148, !prof !17

148:                                              ; preds = %144
  %149 = add i32 %146, 1
  %150 = or i32 %149, %146
  %151 = icmp sgt i32 %150, -1
  br i1 %151, label %154, label %152, !prof !14

152:                                              ; preds = %148, %144
  %153 = phi i32 [ 2, %144 ], [ 1, %148 ]
  tail call void @refcount_warn_saturate(ptr noundef %79, i32 noundef %153) #16
  br label %154

154:                                              ; preds = %152, %148
  %155 = load ptr, ptr %82, align 4
  %156 = getelementptr inbounds %struct.gss_upcall_msg, ptr %79, i32 0, i32 3
  %157 = tail call i32 @rpc_queue_upcall(ptr noundef %155, ptr noundef %156) #16
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %167, label %159

159:                                              ; preds = %154
  tail call fastcc void @gss_unhash_msg(ptr noundef %79)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %79) #16, !srcloc !15
  %160 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %79, ptr %79, i32 1, ptr elementtype(i32) %79) #16, !srcloc !20
  %161 = extractvalue { i32, i32, i32 } %160, 0
  %162 = icmp slt i32 %161, 2
  br i1 %162, label %163, label %164, !prof !17

163:                                              ; preds = %159
  tail call void @refcount_warn_saturate(ptr noundef %79, i32 noundef 4) #16
  br label %164

164:                                              ; preds = %163, %159
  tail call fastcc void @gss_release_msg(ptr noundef %79)
  %165 = inttoptr i32 %157 to ptr
  br label %167

166:                                              ; preds = %139
  tail call fastcc void @gss_release_msg(ptr noundef %79)
  br label %167

167:                                              ; preds = %166, %164, %154, %78
  %168 = phi ptr [ %79, %78 ], [ %140, %166 ], [ %165, %164 ], [ %79, %154 ]
  ret ptr %168
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_queue_upcall(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_init_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_ctx_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_upcall_result(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gss_destroy_nullcred(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.rpc_cred, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gss_cred, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  store volatile ptr null, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rpc_cred, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !59
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %7) #16, !srcloc !15
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #16, !srcloc !60
  %11 = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !61
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @__put_cred(ptr noundef nonnull %7) #16
  br label %14

14:                                               ; preds = %13, %9, %1
  %15 = getelementptr inbounds %struct.rpc_cred, ptr %0, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %15, ptr noundef nonnull @gss_free_cred_callback) #16
  %16 = icmp eq ptr %5, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %5) #16, !srcloc !15
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #16, !srcloc !20
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = icmp sgt i32 %19, 0
  br i1 %22, label %26, label %23, !prof !14

23:                                               ; preds = %21
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #16
  br label %26

24:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  %25 = getelementptr inbounds %struct.gss_cl_ctx, ptr %5, i32 0, i32 10
  tail call void @call_rcu(ptr noundef %25, ptr noundef nonnull @gss_free_ctx_callback) #16
  br label %26

26:                                               ; preds = %24, %23, %21, %14
  %27 = getelementptr i8, ptr %3, i32 -12
  tail call fastcc void @gss_put_auth(ptr noundef %27)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_call_null(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_put_task(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_rpccred(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @gss_refresh_null(ptr nocapture noundef readnone %0) #14 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_ctx_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gss_free_cred_callback(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -16
  tail call void @kfree(ptr noundef %2) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #15

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_netobj(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_buf_from_iov(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_get_mic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_seqno(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_get_mic(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_sleep_on_timeout(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_sleep_on(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gss_upcall_callback(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.gss_cred, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gss_upcall_msg, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rpc_pipe, ptr %9, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %10) #16
  tail call fastcc void @gss_handle_downcall_result(ptr noundef %5, ptr noundef %7)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %11 = load i16, ptr %10, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !13
  %13 = getelementptr inbounds %struct.gss_upcall_msg, ptr %7, i32 0, i32 3, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  tail call fastcc void @gss_release_msg(ptr noundef %7)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gss_handle_downcall_result(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.gss_upcall_msg, ptr %1, i32 0, i32 3, i32 4
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %29 [
    i32 0, label %5
    i32 -127, label %27
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.gss_upcall_msg, ptr %1, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rpc_cred, ptr %0, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %10) #16
  %11 = load ptr, ptr %6, align 4
  %12 = load volatile i32, ptr %10, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #16, !srcloc !15
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #16, !srcloc !16
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !17

19:                                               ; preds = %15
  %20 = add i32 %17, 1
  %21 = or i32 %20, %17
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %25, label %23, !prof !14

23:                                               ; preds = %19, %15
  %24 = phi i32 [ 2, %15 ], [ 1, %19 ]
  tail call void @refcount_warn_saturate(ptr noundef %11, i32 noundef %24) #16
  br label %25

25:                                               ; preds = %23, %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !39
  %26 = getelementptr inbounds %struct.gss_cred, ptr %0, i32 0, i32 2
  store volatile ptr %11, ptr %26, align 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %10) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !40
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %10) #16
  br label %29

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.rpc_cred, ptr %0, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %28) #16
  br label %29

29:                                               ; preds = %27, %25, %9, %5, %2
  %30 = load volatile i32, ptr @jiffies, align 64
  %31 = getelementptr inbounds %struct.gss_cred, ptr %0, i32 0, i32 5
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.gss_cred, ptr %0, i32 0, i32 3
  store ptr null, ptr %32, align 4
  %33 = getelementptr inbounds %struct.gss_upcall_msg, ptr %1, i32 0, i32 7
  %34 = load i32, ptr %3, align 4
  tail call void @rpc_wake_up_status(ptr noundef %33, i32 noundef %34) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_verify_mic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_rpcgss_verify_mic(ptr noundef %0, i32 noundef %1) unnamed_addr #13 {
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_verify_mic, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = tail call ptr @llvm.thread.pointer() #16
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !50
  %17 = tail call i32 @__traceiter_rpcgss_verify_mic(ptr noundef null, ptr noundef %0, i32 noundef %1) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !51
  br label %18

18:                                               ; preds = %16, %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_verify_mic(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcauth_wrap_req_encode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gss_wrap_req_integ(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 {
  %5 = alloca %struct.xdr_buf, align 4
  %6 = alloca %struct.xdr_netobj, align 8
  %7 = getelementptr inbounds %struct.rpc_task, ptr %2, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %5, i8 0, i32 44, i1 false), !annotation !36
  %9 = getelementptr inbounds %struct.rpc_rqst, ptr %8, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  store i64 0, ptr %6, align 8, !annotation !36
  %10 = tail call ptr @xdr_reserve_space(ptr noundef %3, i32 noundef 8) #16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %52, label %12

12:                                               ; preds = %4
  %13 = getelementptr i32, ptr %10, i32 1
  %14 = getelementptr inbounds %struct.rpc_rqst, ptr %8, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  store i32 %16, ptr %13, align 4
  %17 = tail call i32 @rpcauth_wrap_req_encode(ptr noundef %2, ptr noundef %3) #16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %12
  %20 = load ptr, ptr %9, align 4
  %21 = ptrtoint ptr %13 to i32
  %22 = ptrtoint ptr %20 to i32
  %23 = sub i32 %21, %22
  %24 = getelementptr inbounds %struct.rpc_rqst, ptr %8, i32 0, i32 1, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = sub i32 %25, %23
  %27 = call i32 @xdr_buf_subsegment(ptr noundef %9, ptr noundef nonnull %5, i32 noundef %23, i32 noundef %26) #16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.xdr_buf, ptr %5, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  store i32 %32, ptr %10, align 4
  %33 = call ptr @xdr_reserve_space(ptr noundef %3, i32 noundef 0) #16
  %34 = icmp eq ptr %33, null
  br i1 %34, label %52, label %35

35:                                               ; preds = %29
  %36 = getelementptr i32, ptr %33, i32 1
  %37 = getelementptr inbounds %struct.xdr_netobj, ptr %6, i32 0, i32 1
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.gss_cl_ctx, ptr %1, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  %40 = call i32 @gss_get_mic(ptr noundef %39, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  switch i32 %40, label %53 [
    i32 786432, label %41
    i32 0, label %43
  ]

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.rpc_cred, ptr %0, i32 0, i32 6
  call void @_clear_bit(i32 noundef 1, ptr noundef %42) #16
  br label %43

43:                                               ; preds = %41, %35
  %44 = load i32, ptr %6, align 8
  %45 = add i32 %44, 7
  %46 = and i32 %45, -4
  %47 = call ptr @xdr_reserve_space(ptr noundef %3, i32 noundef %46) #16
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49, !prof !17

49:                                               ; preds = %43
  %50 = call ptr @xdr_encode_opaque(ptr noundef nonnull %47, ptr noundef null, i32 noundef %44) #16
  %51 = icmp slt i32 %46, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %49, %43, %29, %19, %12, %4
  br label %69

53:                                               ; preds = %35
  %54 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_get_mic, i32 0, i32 1), align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = tail call ptr @llvm.thread.pointer() #16
  %58 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %59 = load i32, ptr %58, align 8
  %60 = lshr i32 %59, 5
  %61 = getelementptr i32, ptr @__cpu_online_mask, i32 %60
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %59, 31
  %64 = shl nuw i32 1, %63
  %65 = and i32 %64, %62
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %56
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !48
  %68 = call i32 @__traceiter_rpcgss_get_mic(ptr noundef null, ptr noundef %2, i32 noundef %40) #16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !49
  br label %69

69:                                               ; preds = %67, %56, %53, %52, %49
  %70 = phi i32 [ -90, %52 ], [ 0, %49 ], [ -5, %53 ], [ -5, %56 ], [ -5, %67 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #16
  ret i32 %70
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gss_wrap_req_priv(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.rpc_task, ptr %2, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rpc_rqst, ptr %6, i32 0, i32 1
  %8 = tail call ptr @xdr_reserve_space(ptr noundef %3, i32 noundef 8) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %177, label %10

10:                                               ; preds = %4
  %11 = getelementptr i32, ptr %8, i32 1
  %12 = getelementptr inbounds %struct.rpc_rqst, ptr %6, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  store i32 %14, ptr %11, align 4
  %15 = tail call i32 @rpcauth_wrap_req_encode(ptr noundef %2, ptr noundef %3) #16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %177

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.rpc_rqst, ptr %6, i32 0, i32 10
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void %19(ptr noundef %6) #16
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds %struct.rpc_rqst, ptr %6, i32 0, i32 1, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.rpc_rqst, ptr %6, i32 0, i32 8
  store i32 0, ptr %27, align 8
  %28 = getelementptr inbounds %struct.rpc_rqst, ptr %6, i32 0, i32 9
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.rpc_rqst, ptr %6, i32 0, i32 1, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = lshr i32 %31, 12
  %33 = getelementptr inbounds %struct.rpc_rqst, ptr %6, i32 0, i32 1, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr ptr, ptr %34, i32 %32
  store ptr %29, ptr %33, align 4
  %36 = and i32 %31, 4095
  store i32 %36, ptr %30, align 4
  br label %97

37:                                               ; preds = %22
  %38 = getelementptr inbounds %struct.rpc_rqst, ptr %6, i32 0, i32 1, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = lshr i32 %39, 12
  %41 = add i32 %24, -1
  %42 = add i32 %41, %39
  %43 = lshr i32 %42, 12
  %44 = sub nsw i32 %43, %40
  %45 = add nsw i32 %44, 2
  %46 = getelementptr inbounds %struct.rpc_rqst, ptr %6, i32 0, i32 8
  store i32 %45, ptr %46, align 8
  %47 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %45, i32 4) #16
  %48 = extractvalue { i32, i1 } %47, 1
  br i1 %48, label %49, label %51, !prof !17

49:                                               ; preds = %37
  %50 = getelementptr inbounds %struct.rpc_rqst, ptr %6, i32 0, i32 9
  store ptr null, ptr %50, align 4
  br label %177

51:                                               ; preds = %37
  %52 = extractvalue { i32, i1 } %47, 0
  %53 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %52, i32 noundef 3136) #18
  %54 = getelementptr inbounds %struct.rpc_rqst, ptr %6, i32 0, i32 9
  store ptr %53, ptr %54, align 4
  %55 = icmp eq ptr %53, null
  br i1 %55, label %177, label %56

56:                                               ; preds = %51
  %57 = load i32, ptr %46, align 8
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %85

59:                                               ; preds = %68, %56
  %60 = phi i32 [ %69, %68 ], [ 0, %56 ]
  %61 = tail call ptr @__alloc_pages(i32 noundef 3136, i32 noundef 0, i32 noundef 0, ptr noundef null) #16
  %62 = load ptr, ptr %54, align 4
  %63 = getelementptr ptr, ptr %62, i32 %60
  store ptr %61, ptr %63, align 4
  %64 = load ptr, ptr %54, align 4
  %65 = getelementptr ptr, ptr %64, i32 %60
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %59
  %69 = add nuw nsw i32 %60, 1
  %70 = load i32, ptr %46, align 8
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %59, label %85

72:                                               ; preds = %59
  store i32 %60, ptr %46, align 8
  %73 = icmp eq i32 %60, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %74, %72
  %75 = phi ptr [ %82, %74 ], [ %64, %72 ]
  %76 = phi i32 [ %79, %74 ], [ 0, %72 ]
  %77 = getelementptr ptr, ptr %75, i32 %76
  %78 = load ptr, ptr %77, align 4
  tail call void @__free_pages(ptr noundef %78, i32 noundef 0) #16
  %79 = add nuw nsw i32 %76, 1
  %80 = load i32, ptr %46, align 8
  %81 = icmp slt i32 %79, %80
  %82 = load ptr, ptr %54, align 4
  br i1 %81, label %74, label %83

83:                                               ; preds = %74, %72
  %84 = phi ptr [ %64, %72 ], [ %82, %74 ]
  tail call void @kfree(ptr noundef %84) #16
  store ptr null, ptr %18, align 8
  br label %177

85:                                               ; preds = %68, %56
  %86 = phi i32 [ %57, %56 ], [ %70, %68 ]
  %87 = phi ptr [ %53, %56 ], [ %64, %68 ]
  store ptr @priv_release_snd_buf, ptr %18, align 8
  %88 = load i32, ptr %23, align 4
  %89 = icmp eq i32 %88, 0
  %90 = getelementptr inbounds %struct.rpc_rqst, ptr %6, i32 0, i32 1, i32 4
  %91 = load i32, ptr %90, align 4
  %92 = lshr i32 %91, 12
  %93 = getelementptr inbounds %struct.rpc_rqst, ptr %6, i32 0, i32 1, i32 3
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr ptr, ptr %94, i32 %92
  store ptr %87, ptr %93, align 4
  %96 = and i32 %91, 4095
  store i32 %96, ptr %90, align 4
  br i1 %89, label %97, label %104

97:                                               ; preds = %85, %26
  %98 = phi ptr [ %35, %26 ], [ %95, %85 ]
  %99 = phi ptr [ %29, %26 ], [ %87, %85 ]
  %100 = phi i32 [ 0, %26 ], [ %86, %85 ]
  %101 = getelementptr inbounds %struct.rpc_rqst, ptr %6, i32 0, i32 1, i32 1, i32 0, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %116, label %104

104:                                              ; preds = %97, %85
  %105 = phi ptr [ %98, %97 ], [ %95, %85 ]
  %106 = phi ptr [ %99, %97 ], [ %87, %85 ]
  %107 = phi i32 [ %100, %97 ], [ %86, %85 ]
  %108 = add i32 %107, -1
  %109 = getelementptr ptr, ptr %106, i32 %108
  %110 = load ptr, ptr %109, align 4
  %111 = tail call ptr @page_address(ptr noundef %110) #16
  %112 = getelementptr inbounds %struct.rpc_rqst, ptr %6, i32 0, i32 1, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.rpc_rqst, ptr %6, i32 0, i32 1, i32 1, i32 0, i32 1
  %115 = load i32, ptr %114, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %111, ptr align 1 %113, i32 %115, i1 false)
  store ptr %111, ptr %112, align 4
  br label %116

116:                                              ; preds = %104, %97
  %117 = phi ptr [ %105, %104 ], [ %98, %97 ]
  %118 = load ptr, ptr %7, align 4
  %119 = ptrtoint ptr %11 to i32
  %120 = ptrtoint ptr %118 to i32
  %121 = sub i32 %119, %120
  %122 = getelementptr inbounds %struct.gss_cl_ctx, ptr %1, i32 0, i32 5
  %123 = load ptr, ptr %122, align 4
  %124 = tail call i32 @gss_wrap(ptr noundef %123, i32 noundef %121, ptr noundef %7, ptr noundef %117) #16
  %125 = getelementptr inbounds %struct.rpc_rqst, ptr %6, i32 0, i32 1, i32 8
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr inbounds %struct.rpc_rqst, ptr %6, i32 0, i32 1, i32 7
  %128 = load i32, ptr %127, align 4
  %129 = icmp ugt i32 %126, %128
  br i1 %129, label %177, label %130, !prof !17

130:                                              ; preds = %116
  switch i32 %124, label %161 [
    i32 786432, label %131
    i32 0, label %134
  ]

131:                                              ; preds = %130
  %132 = getelementptr inbounds %struct.rpc_cred, ptr %0, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %132) #16
  %133 = load i32, ptr %125, align 4
  br label %134

134:                                              ; preds = %131, %130
  %135 = phi i32 [ %126, %130 ], [ %133, %131 ]
  %136 = sub i32 %135, %121
  %137 = tail call i32 @llvm.bswap.i32(i32 %136)
  store i32 %137, ptr %8, align 4
  %138 = load i32, ptr %23, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.rpc_rqst, ptr %6, i32 0, i32 1, i32 1, i32 0, i32 1
  %142 = load i32, ptr %141, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %140, %134
  %145 = getelementptr inbounds %struct.rpc_rqst, ptr %6, i32 0, i32 1, i32 1
  br label %146

146:                                              ; preds = %144, %140
  %147 = phi ptr [ %145, %144 ], [ %7, %140 ]
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr inbounds %struct.kvec, ptr %147, i32 0, i32 1
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr i8, ptr %148, i32 %150
  %152 = load i32, ptr %125, align 4
  %153 = sub i32 %152, %121
  %154 = add i32 %153, 3
  %155 = and i32 %154, -4
  %156 = sub i32 %155, %153
  tail call void @llvm.memset.p0.i32(ptr align 4 %151, i8 0, i32 %156, i1 false)
  %157 = load i32, ptr %149, align 4
  %158 = add i32 %156, %157
  store i32 %158, ptr %149, align 4
  %159 = load i32, ptr %125, align 4
  %160 = add i32 %159, %156
  store i32 %160, ptr %125, align 4
  br label %177

161:                                              ; preds = %130
  %162 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_wrap, i32 0, i32 1), align 4
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %177

164:                                              ; preds = %161
  %165 = tail call ptr @llvm.thread.pointer() #16
  %166 = getelementptr inbounds %struct.thread_info, ptr %165, i32 0, i32 2
  %167 = load i32, ptr %166, align 8
  %168 = lshr i32 %167, 5
  %169 = getelementptr i32, ptr @__cpu_online_mask, i32 %168
  %170 = load volatile i32, ptr %169, align 4
  %171 = and i32 %167, 31
  %172 = shl nuw i32 1, %171
  %173 = and i32 %172, %170
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %164
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !62
  %176 = tail call i32 @__traceiter_rpcgss_wrap(ptr noundef null, ptr noundef %2, i32 noundef %124) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !63
  br label %177

177:                                              ; preds = %175, %164, %161, %146, %116, %83, %51, %49, %10, %4
  %178 = phi i32 [ 0, %146 ], [ -5, %10 ], [ 0, %116 ], [ -5, %4 ], [ -5, %161 ], [ -5, %164 ], [ -5, %175 ], [ -11, %51 ], [ -11, %83 ], [ -11, %49 ]
  ret i32 %178
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_buf_subsegment(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_wrap(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @priv_release_snd_buf(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 8
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 9
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %12, %7 ]
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr ptr, ptr %9, i32 %8
  %11 = load ptr, ptr %10, align 4
  tail call void @__free_pages(ptr noundef %11, i32 noundef 0) #16
  %12 = add nuw nsw i32 %8, 1
  %13 = load i32, ptr %2, align 8
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %7, label %15

15:                                               ; preds = %7, %1
  %16 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 9
  %17 = load ptr, ptr %16, align 4
  tail call void @kfree(ptr noundef %17) #16
  %18 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 10
  store ptr null, ptr %18, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #15

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_wrap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gss_unwrap_resp_integ(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 {
  %6 = alloca %struct.xdr_buf, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xdr_netobj, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %6, i8 0, i32 44, i1 false), !annotation !36
  %9 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !annotation !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  store i64 0, ptr %8, align 8, !annotation !36
  %10 = getelementptr inbounds %struct.xdr_netobj, ptr %8, i32 0, i32 1
  store ptr null, ptr %10, align 4
  %11 = tail call ptr @xdr_inline_decode(ptr noundef %4, i32 noundef 4) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %66, label %13, !prof !17

13:                                               ; preds = %5
  %14 = load i32, ptr %11, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #16
  store i32 %15, ptr %7, align 4
  %16 = and i32 %15, 3
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %66

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 2, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.xdr_stream, ptr %4, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = mul i32 %22, -4
  %24 = add i32 %23, %20
  %25 = tail call ptr @xdr_inline_decode(ptr noundef %4, i32 noundef 4) #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %66, label %27, !prof !17

27:                                               ; preds = %18
  %28 = load i32, ptr %25, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #16
  %30 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 7
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %82

33:                                               ; preds = %27
  %34 = call i32 @xdr_buf_subsegment(ptr noundef %9, ptr noundef nonnull %6, i32 noundef %24, i32 noundef %15) #16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %33
  %37 = add i32 %15, %24
  %38 = call i32 @xdr_decode_word(ptr noundef %9, i32 noundef %37, ptr noundef nonnull %7) #16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %66

40:                                               ; preds = %36
  %41 = add i32 %37, 4
  %42 = load i32, ptr %7, align 4
  %43 = add i32 %42, %41
  %44 = load i32, ptr %19, align 4
  %45 = icmp ugt i32 %43, %44
  br i1 %45, label %66, label %46

46:                                               ; preds = %40
  store i32 %42, ptr %8, align 8
  %47 = call noalias align 64 ptr @__kmalloc(i32 noundef %42, i32 noundef 3136) #18
  store ptr %47, ptr %10, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %66, label %49

49:                                               ; preds = %46
  %50 = call i32 @read_bytes_from_xdr_buf(ptr noundef %9, i32 noundef %41, ptr noundef nonnull %47, i32 noundef %42) #16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.gss_cl_ctx, ptr %2, i32 0, i32 5
  %54 = load ptr, ptr %53, align 4
  %55 = call i32 @gss_verify_mic(ptr noundef %54, ptr noundef nonnull %6, ptr noundef nonnull %8) #16
  switch i32 %55, label %98 [
    i32 786432, label %56
    i32 0, label %58
  ]

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.rpc_cred, ptr %1, i32 0, i32 6
  call void @_clear_bit(i32 noundef 1, ptr noundef %57) #16
  br label %98

58:                                               ; preds = %52
  %59 = load i32, ptr %8, align 8
  %60 = add i32 %59, 3
  %61 = lshr i32 %60, 2
  %62 = add nuw nsw i32 %61, 3
  call fastcc void @gss_update_rslack(ptr noundef %0, ptr noundef %1, i32 noundef 2, i32 noundef %62)
  br label %63

63:                                               ; preds = %98, %96, %85, %82, %80, %69, %66, %58
  %64 = phi i32 [ -5, %98 ], [ 0, %58 ], [ -5, %66 ], [ -5, %69 ], [ -5, %80 ], [ -5, %82 ], [ -5, %85 ], [ -5, %96 ]
  %65 = load ptr, ptr %10, align 4
  call void @kfree(ptr noundef %65) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %6) #16
  ret i32 %64

66:                                               ; preds = %49, %46, %40, %36, %33, %18, %13, %5
  %67 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_unwrap_failed, i32 0, i32 1), align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %63

69:                                               ; preds = %66
  %70 = tail call ptr @llvm.thread.pointer() #16
  %71 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %72 = load i32, ptr %71, align 8
  %73 = lshr i32 %72, 5
  %74 = getelementptr i32, ptr @__cpu_online_mask, i32 %73
  %75 = load volatile i32, ptr %74, align 4
  %76 = and i32 %72, 31
  %77 = shl nuw i32 1, %76
  %78 = and i32 %77, %75
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %63, label %80

80:                                               ; preds = %69
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !64
  %81 = call i32 @__traceiter_rpcgss_unwrap_failed(ptr noundef null, ptr noundef %0) #16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !65
  br label %63

82:                                               ; preds = %27
  %83 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_bad_seqno, i32 0, i32 1), align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %63

85:                                               ; preds = %82
  %86 = tail call ptr @llvm.thread.pointer() #16
  %87 = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 2
  %88 = load i32, ptr %87, align 8
  %89 = lshr i32 %88, 5
  %90 = getelementptr i32, ptr @__cpu_online_mask, i32 %89
  %91 = load volatile i32, ptr %90, align 4
  %92 = and i32 %88, 31
  %93 = shl nuw i32 1, %92
  %94 = and i32 %93, %91
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %63, label %96

96:                                               ; preds = %85
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !66
  %97 = tail call i32 @__traceiter_rpcgss_bad_seqno(ptr noundef null, ptr noundef %0, i32 noundef %31, i32 noundef %29) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !67
  br label %63

98:                                               ; preds = %56, %52
  call fastcc void @trace_rpcgss_verify_mic(ptr noundef %0, i32 noundef %55)
  br label %63
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gss_unwrap_resp_priv(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 2
  %7 = tail call ptr @xdr_inline_decode(ptr noundef %4, i32 noundef 8) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %68, label %9, !prof !17

9:                                                ; preds = %5
  %10 = getelementptr i32, ptr %7, i32 1
  %11 = load i32, ptr %7, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #16
  %13 = load ptr, ptr %6, align 4
  %14 = ptrtoint ptr %10 to i32
  %15 = ptrtoint ptr %13 to i32
  %16 = sub i32 %14, %15
  %17 = add i32 %16, %12
  %18 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 2, i32 8
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %17, %19
  br i1 %20, label %68, label %21

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.gss_cl_ctx, ptr %2, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @gss_unwrap(ptr noundef %23, i32 noundef %16, i32 noundef %17, ptr noundef %6) #16
  switch i32 %24, label %100 [
    i32 786432, label %25
    i32 0, label %27
  ]

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.rpc_cred, ptr %1, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %26) #16
  br label %100

27:                                               ; preds = %21
  %28 = load i32, ptr %10, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #16
  %30 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 7
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %84

33:                                               ; preds = %27
  %34 = getelementptr i32, ptr %7, i32 2
  tail call void @xdr_init_decode(ptr noundef %4, ptr noundef %6, ptr noundef %34, ptr noundef %3) #16
  %35 = load ptr, ptr %22, align 4
  %36 = getelementptr inbounds %struct.gss_ctx, ptr %35, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.gss_ctx, ptr %35, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.rpc_cred, ptr %1, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.rpc_auth, ptr %41, i32 0, i32 4
  %43 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %42) #16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %116, label %45

45:                                               ; preds = %33
  %46 = getelementptr inbounds %struct.rpc_auth, ptr %41, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, 2
  %49 = add i32 %48, %37
  %50 = getelementptr inbounds %struct.rpc_auth, ptr %41, i32 0, i32 3
  store i32 %49, ptr %50, align 4
  %51 = add i32 %48, %39
  %52 = getelementptr inbounds %struct.rpc_auth, ptr %41, i32 0, i32 1
  store i32 %51, ptr %52, align 4
  %53 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_update_slack, i32 0, i32 1), align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %116

55:                                               ; preds = %45
  %56 = tail call ptr @llvm.thread.pointer() #16
  %57 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %58 = load i32, ptr %57, align 8
  %59 = lshr i32 %58, 5
  %60 = getelementptr i32, ptr @__cpu_online_mask, i32 %59
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %58, 31
  %63 = shl nuw i32 1, %62
  %64 = and i32 %63, %61
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %116, label %66

66:                                               ; preds = %55
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !52
  %67 = tail call i32 @__traceiter_rpcgss_update_slack(ptr noundef null, ptr noundef %0, ptr noundef %41) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !53
  br label %116

68:                                               ; preds = %9, %5
  %69 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_unwrap_failed, i32 0, i32 1), align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %116

71:                                               ; preds = %68
  %72 = tail call ptr @llvm.thread.pointer() #16
  %73 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %74 = load i32, ptr %73, align 8
  %75 = lshr i32 %74, 5
  %76 = getelementptr i32, ptr @__cpu_online_mask, i32 %75
  %77 = load volatile i32, ptr %76, align 4
  %78 = and i32 %74, 31
  %79 = shl nuw i32 1, %78
  %80 = and i32 %79, %77
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %116, label %82

82:                                               ; preds = %71
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !64
  %83 = tail call i32 @__traceiter_rpcgss_unwrap_failed(ptr noundef null, ptr noundef %0) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !65
  br label %116

84:                                               ; preds = %27
  %85 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_bad_seqno, i32 0, i32 1), align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %116

87:                                               ; preds = %84
  %88 = tail call ptr @llvm.thread.pointer() #16
  %89 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 2
  %90 = load i32, ptr %89, align 8
  %91 = lshr i32 %90, 5
  %92 = getelementptr i32, ptr @__cpu_online_mask, i32 %91
  %93 = load volatile i32, ptr %92, align 4
  %94 = and i32 %90, 31
  %95 = shl nuw i32 1, %94
  %96 = and i32 %95, %93
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %116, label %98

98:                                               ; preds = %87
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !66
  %99 = tail call i32 @__traceiter_rpcgss_bad_seqno(ptr noundef null, ptr noundef %0, i32 noundef %31, i32 noundef %29) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !67
  br label %116

100:                                              ; preds = %25, %21
  %101 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_unwrap, i32 0, i32 1), align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %100
  %104 = tail call ptr @llvm.thread.pointer() #16
  %105 = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 2
  %106 = load i32, ptr %105, align 8
  %107 = lshr i32 %106, 5
  %108 = getelementptr i32, ptr @__cpu_online_mask, i32 %107
  %109 = load volatile i32, ptr %108, align 4
  %110 = and i32 %106, 31
  %111 = shl nuw i32 1, %110
  %112 = and i32 %111, %109
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %103
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !68
  %115 = tail call i32 @__traceiter_rpcgss_unwrap(ptr noundef null, ptr noundef %0, i32 noundef %24) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !69
  br label %116

116:                                              ; preds = %114, %103, %100, %98, %87, %84, %82, %71, %68, %66, %55, %45, %33
  %117 = phi i32 [ 0, %33 ], [ 0, %45 ], [ 0, %55 ], [ 0, %66 ], [ -5, %68 ], [ -5, %71 ], [ -5, %82 ], [ -5, %84 ], [ -5, %87 ], [ -5, %98 ], [ -5, %100 ], [ -5, %103 ], [ -5, %114 ]
  ret i32 %117
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcauth_unwrap_resp_decode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gss_update_rslack(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.rpc_cred, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rpc_auth, ptr %6, i32 0, i32 4
  %8 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %7) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.rpc_auth, ptr %6, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %2
  %14 = getelementptr inbounds %struct.rpc_auth, ptr %6, i32 0, i32 3
  store i32 %13, ptr %14, align 4
  %15 = add i32 %12, %3
  %16 = getelementptr inbounds %struct.rpc_auth, ptr %6, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcgss_update_slack, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %10
  %20 = tail call ptr @llvm.thread.pointer() #16
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
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !52
  %31 = tail call i32 @__traceiter_rpcgss_update_slack(ptr noundef null, ptr noundef %0, ptr noundef %6) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !53
  br label %32

32:                                               ; preds = %30, %19, %10, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_update_slack(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_decode_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_bytes_from_xdr_buf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_unwrap_failed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_bad_seqno(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_unwrap(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_init_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_unwrap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcgss_need_reencode(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcauth_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gss_svc_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readnone }
attributes #20 = { nounwind readonly }
attributes #21 = { cold nounwind }

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
!8 = !{i64 2156556561}
!9 = !{i64 2156556733}
!10 = !{i64 2148981485}
!11 = !{i64 2148977309}
!12 = !{i64 2148977384, i64 2148977411, i64 2148977458, i64 2148977480, i64 2148977508, i64 2148977528}
!13 = !{i64 2149004488}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 596960, i64 2148086931, i64 2148086957, i64 2148087004, i64 2148087026, i64 2148087054, i64 2148087074}
!16 = !{i64 2148099804, i64 2148099836, i64 2148099865, i64 2148099899, i64 2148099930, i64 2148099953}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 583023, i64 583047, i64 583068, i64 583085, i64 583102}
!19 = !{i64 2148200026}
!20 = !{i64 2148102161, i64 2148102193, i64 2148102222, i64 2148102256, i64 2148102287, i64 2148102310}
!21 = !{i64 2149049473}
!22 = !{i64 2156501843}
!23 = !{i64 2156501995}
!24 = !{i64 2151879056, i64 2151879081}
!25 = !{i64 4375168}
!26 = !{i64 4375365}
!27 = !{i64 2151860644}
!28 = !{i64 2149099840}
!29 = !{i64 2149100057}
!30 = !{i64 2148098346, i64 2148098372, i64 2148098401, i64 2148098435, i64 2148098466, i64 2148098489}
!31 = !{i64 2156604896, i64 2156605391, i64 2156604933, i64 2156604989, i64 2156605023, i64 2156605047, i64 2156605088, i64 2156605109, i64 2156605137, i64 2156605171}
!32 = !{i64 2156126066}
!33 = !{i64 2156126224}
!34 = !{i64 2156535896}
!35 = !{i64 2156536124}
!36 = !{!"auto-init"}
!37 = !{i64 2156212265}
!38 = !{i64 2156212411}
!39 = !{i64 2156595618}
!40 = !{i64 2156598370}
!41 = !{i64 2156518009}
!42 = !{i64 2156518183}
!43 = !{i64 2156678066}
!44 = !{i64 2156232456}
!45 = !{i64 2156232608}
!46 = !{i64 2156392499}
!47 = !{i64 2156392643}
!48 = !{i64 2156142616}
!49 = !{i64 2156142784}
!50 = !{i64 2156163325}
!51 = !{i64 2156163499}
!52 = !{i64 2156430043}
!53 = !{i64 2156430213}
!54 = !{i64 2156730881}
!55 = !{i64 608334, i64 608355, i64 608378, i64 608397, i64 608416}
!56 = !{i64 2156731270}
!57 = !{i64 2156408975}
!58 = !{i64 2156409165}
!59 = !{i64 2148199025}
!60 = !{i64 2148101387, i64 2148101419, i64 2148101448, i64 2148101482, i64 2148101513, i64 2148101536}
!61 = !{i64 2148199228}
!62 = !{i64 2156179895}
!63 = !{i64 2156180057}
!64 = !{i64 2156359557}
!65 = !{i64 2156359717}
!66 = !{i64 2156376414}
!67 = !{i64 2156376606}
!68 = !{i64 2156196221}
!69 = !{i64 2156196387}
