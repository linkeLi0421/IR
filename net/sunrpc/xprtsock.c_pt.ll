; ModuleID = '/llk/IR/net/sunrpc/xprtsock.c_pt.bc'
source_filename = "../net/sunrpc/xprtsock.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_srcport:\09\09\09\09\09"
module asm "\09.asciz \09\22get_srcport\22\09\09\09\09\09"
module asm "__kstrtabns_get_srcport:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.108 }
%union.anon.108 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.rpc_xprt_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%struct.lock_class_key = type {}
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.142, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.142 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.__kernel_sockaddr_storage = type { %union.anon.177 }
%union.anon.177 = type { ptr, [124 x i8] }
%struct.sock_xprt = type { %struct.rpc_xprt, ptr, ptr, ptr, %struct.anon.188, %struct.anon.190, i32, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.mutex, %struct.__kernel_sockaddr_storage, i16, i32, i32, i32, %struct.rpc_timeout, ptr, ptr, ptr, ptr }
%struct.rpc_xprt = type { %struct.kref, ptr, i32, ptr, %struct.__kernel_sockaddr_storage, i32, i32, i32, i32, i32, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.list_head, i32, i32, i32, i32, i8, %struct.atomic_t, i32, %struct.list_head, i32, i32, i32, %struct.work_struct, %struct.timer_list, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, %struct.atomic_t, ptr, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.rb_root, %struct.anon.181, ptr, ptr, [6 x ptr], %struct.callback_head, ptr, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.anon.181 = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.callback_head = type { ptr, ptr }
%struct.anon.188 = type { %struct.anon.189, i32, i32, i32 }
%struct.anon.189 = type { i32, i32, i32 }
%struct.anon.190 = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.57 }
%union.anon.57 = type { [4 x i32] }
%struct.xprt_create = type { i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.sockaddr_un = type { i16, [108 x i8] }
%struct.kvec = type { ptr, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.34, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.31, %union.anon.32 }
%union.anon.31 = type { ptr }
%union.anon.32 = type { i64 }
%union.anon.34 = type { ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.158, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.110 }
%union.anon.110 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.111 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.158 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.rpc_rqst = type { ptr, %struct.xdr_buf, %struct.xdr_buf, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.176, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.xdr_buf, i32, i32, i32, i64, i32, i32, %struct.atomic_t, i32, i64, i32, %struct.list_head, i32, %struct.list_head }
%union.anon.176 = type { %struct.rb_node }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [40 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.66, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.103, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.104, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon.25, %union.anon.27, %union.anon.28, i16, i8, i8, i32, %union.anon.30, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.58, [0 x i32], %union.anon.59, i16, i16, %union.anon.60, %struct.refcount_struct, [0 x i32], %union.anon.61 }
%union.anon.25 = type { i64 }
%union.anon.27 = type { i32 }
%union.anon.28 = type { i32 }
%union.anon.30 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.atomic64_t = type { i64 }
%union.anon.58 = type { i32 }
%union.anon.59 = type { %struct.hlist_node }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.anon.66 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.103 = type { ptr }
%union.anon.104 = type { ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.netns_tracker = type {}
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.1, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.1 = type { %struct.rpc_wait }
%struct.rpc_wait = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.174, %struct.atomic_t }
%union.anon.2 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.174 = type { %struct.atomic_t }
%struct.sk_buff = type { %union.anon.35, %union.anon.38, %union.anon.39, [48 x i8], %union.anon.40, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.42, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, ptr, %union.anon.37 }
%union.anon.37 = type { ptr }
%union.anon.38 = type { ptr }
%union.anon.39 = type { i64 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { i32, ptr }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.44, i32, i32, i32, i16, i16, %union.anon.46, %union.anon.47, %union.anon.48, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.44 = type { i32 }
%union.anon.46 = type { i32 }
%union.anon.47 = type { i32 }
%union.anon.48 = type { i16 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.137 }
%union.anon.137 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, i32, i32, i32, i32, i32, %union.anon.191, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.191 = type { %struct.anon.192 }
%struct.anon.192 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.55, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.55 = type { ptr }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.svc_sock = type { %struct.svc_xprt, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t, [259 x ptr] }
%struct.rpc_buffer = type { i32, [0 x i8] }

@__kstrtab_get_srcport = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_srcport = external dso_local constant [0 x i8], align 1
@__ksymtab_get_srcport = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_srcport to i32), ptr @__kstrtab_get_srcport, ptr @__kstrtabns_get_srcport }, section "___ksymtab+get_srcport", align 4
@sunrpc_table_header = internal unnamed_addr global ptr null, align 4
@sunrpc_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str, ptr null, i32 0, i16 365, ptr @xs_tunables_table, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@__param_str_min_resvport = internal constant [20 x i8] c"sunrpc.min_resvport\00", align 1
@param_ops_portnr = internal constant %struct.kernel_param_ops { i32 0, ptr @param_set_portnr, ptr @param_get_uint, ptr null }, align 4
@xprt_min_resvport = internal global i32 665, align 4
@__param_min_resvport = internal constant %struct.kernel_param { ptr @__param_str_min_resvport, ptr null, ptr @param_ops_portnr, i16 420, i8 -1, i8 0, %union.anon.108 { ptr @xprt_min_resvport } }, section "__param", align 4
@__UNIQUE_ID_min_resvporttype807 = internal constant [36 x i8] c"sunrpc.parmtype=min_resvport:portnr\00", section ".modinfo", align 1
@__param_str_max_resvport = internal constant [20 x i8] c"sunrpc.max_resvport\00", align 1
@xprt_max_resvport = internal global i32 1023, align 4
@__param_max_resvport = internal constant %struct.kernel_param { ptr @__param_str_max_resvport, ptr null, ptr @param_ops_portnr, i16 420, i8 -1, i8 0, %union.anon.108 { ptr @xprt_max_resvport } }, section "__param", align 4
@__UNIQUE_ID_max_resvporttype808 = internal constant [36 x i8] c"sunrpc.parmtype=max_resvport:portnr\00", section ".modinfo", align 1
@__param_str_tcp_slot_table_entries = internal constant [30 x i8] c"sunrpc.tcp_slot_table_entries\00", align 1
@param_ops_slot_table_size = internal constant %struct.kernel_param_ops { i32 0, ptr @param_set_slot_table_size, ptr @param_get_uint, ptr null }, align 4
@xprt_tcp_slot_table_entries = internal global i32 2, align 4
@__param_tcp_slot_table_entries = internal constant %struct.kernel_param { ptr @__param_str_tcp_slot_table_entries, ptr null, ptr @param_ops_slot_table_size, i16 420, i8 -1, i8 0, %union.anon.108 { ptr @xprt_tcp_slot_table_entries } }, section "__param", align 4
@__UNIQUE_ID_tcp_slot_table_entriestype809 = internal constant [55 x i8] c"sunrpc.parmtype=tcp_slot_table_entries:slot_table_size\00", section ".modinfo", align 1
@__param_str_tcp_max_slot_table_entries = internal constant [34 x i8] c"sunrpc.tcp_max_slot_table_entries\00", align 1
@param_ops_max_slot_table_size = internal constant %struct.kernel_param_ops { i32 0, ptr @param_set_max_slot_table_size, ptr @param_get_uint, ptr null }, align 4
@xprt_max_tcp_slot_table_entries = internal global i32 65536, align 4
@__param_tcp_max_slot_table_entries = internal constant %struct.kernel_param { ptr @__param_str_tcp_max_slot_table_entries, ptr null, ptr @param_ops_max_slot_table_size, i16 420, i8 -1, i8 0, %union.anon.108 { ptr @xprt_max_tcp_slot_table_entries } }, section "__param", align 4
@__UNIQUE_ID_tcp_max_slot_table_entriestype810 = internal constant [63 x i8] c"sunrpc.parmtype=tcp_max_slot_table_entries:max_slot_table_size\00", section ".modinfo", align 1
@__param_str_udp_slot_table_entries = internal constant [30 x i8] c"sunrpc.udp_slot_table_entries\00", align 1
@xprt_udp_slot_table_entries = internal global i32 16, align 4
@__param_udp_slot_table_entries = internal constant %struct.kernel_param { ptr @__param_str_udp_slot_table_entries, ptr null, ptr @param_ops_slot_table_size, i16 420, i8 -1, i8 0, %union.anon.108 { ptr @xprt_udp_slot_table_entries } }, section "__param", align 4
@__UNIQUE_ID_udp_slot_table_entriestype811 = internal constant [55 x i8] c"sunrpc.parmtype=udp_slot_table_entries:slot_table_size\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [7 x i8] c"sunrpc\00", align 1
@xs_tunables_table = internal global [7 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.1, ptr @xprt_udp_slot_table_entries, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_slot_table_size, ptr @max_slot_table_size }, %struct.ctl_table { ptr @.str.2, ptr @xprt_tcp_slot_table_entries, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_slot_table_size, ptr @max_slot_table_size }, %struct.ctl_table { ptr @.str.3, ptr @xprt_max_tcp_slot_table_entries, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_slot_table_size, ptr @max_tcp_slot_table_limit }, %struct.ctl_table { ptr @.str.4, ptr @xprt_min_resvport, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @xprt_min_resvport_limit, ptr @xprt_max_resvport_limit }, %struct.ctl_table { ptr @.str.5, ptr @xprt_max_resvport, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @xprt_min_resvport_limit, ptr @xprt_max_resvport_limit }, %struct.ctl_table { ptr @.str.6, ptr @xs_tcp_fin_timeout, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"udp_slot_table_entries\00", align 1
@min_slot_table_size = internal global i32 2, align 4
@max_slot_table_size = internal global i32 65536, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"tcp_slot_table_entries\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"tcp_max_slot_table_entries\00", align 1
@max_tcp_slot_table_limit = internal global i32 65536, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"min_resvport\00", align 1
@xprt_min_resvport_limit = internal global i32 1, align 4
@xprt_max_resvport_limit = internal global i32 65535, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"max_resvport\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"tcp_fin_timeout\00", align 1
@xs_tcp_fin_timeout = internal global i32 1500, section ".data..read_mostly", align 4
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@xs_local_transport = internal global { %struct.list_head, i32, ptr, ptr, [32 x i8], [1 x ptr] } { %struct.list_head { ptr @xs_local_transport, ptr @xs_local_transport }, i32 257, ptr @xs_setup_local, ptr null, [32 x i8] c"named UNIX socket\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [1 x ptr] [ptr @.str.7] }, align 4
@xs_local_ops = internal constant %struct.rpc_xprt_ops { ptr null, ptr @xprt_reserve_xprt, ptr @xprt_release_xprt, ptr @xprt_alloc_slot, ptr @xprt_free_slot, ptr @xs_local_rpcbind, ptr @xs_local_set_port, ptr @xs_local_connect, ptr @rpc_malloc, ptr @rpc_free, ptr @xs_stream_prepare_request, ptr @xs_local_send_request, ptr @xprt_wait_for_reply_request_def, ptr null, ptr null, ptr @xs_close, ptr @xs_destroy, ptr null, ptr @xs_local_print_stats, ptr @xs_enable_swap, ptr @xs_disable_swap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@xs_local_default_timeout = internal constant %struct.rpc_timeout { i32 1000, i32 1000, i32 0, i32 2, i8 0 }, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@xs_setup_xprt.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"&new->recv_mutex\00", align 1
@xs_init_anyaddr.sin = internal unnamed_addr constant %struct.sockaddr_in { i16 2, i16 0, %struct.in_addr zeroinitializer, [8 x i8] zeroinitializer }, align 4
@xs_init_anyaddr.sin6 = internal unnamed_addr constant { i16, i16, i32, { { [16 x i8] } }, i32 } { i16 10, i16 0, i32 0, { { [16 x i8] } } zeroinitializer, i32 0 }, align 4
@__tracepoint_rpc_socket_nospace = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_rpc_socket_close = external dso_local global %struct.tracepoint, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.13 = private unnamed_addr constant [66 x i8] c"\09xprt:\09local %lu %lu %lu %ld %lu %lu %lu %llu %llu %lu %llu %llu\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"net/sunrpc/xprtsock.c\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"\014Callback slot table overflowed\0A\00", align 1
@bvec_iter_advance.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"include/linux/bvec.h\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"Attempted to advance past end of bvec iter\0A\00", align 1
@__tracepoint_xs_stream_read_request = external dso_local global %struct.tracepoint, align 4
@xprtiod_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_xs_stream_read_data = external dso_local global %struct.tracepoint, align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"%pi6\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"%4hx\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"\013%s: unhandled error (%d) connecting to %s\0A\00", align 1
@__func__.xs_local_setup_socket = private unnamed_addr constant [22 x i8] c"xs_local_setup_socket\00", align 1
@__tracepoint_rpc_socket_error = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpc_socket_connect = external dso_local global %struct.tracepoint, align 4
@.str.23 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"udp6\00", align 1
@xs_udp_transport = internal global { %struct.list_head, i32, ptr, ptr, [32 x i8], [3 x ptr] } { %struct.list_head { ptr @xs_udp_transport, ptr @xs_udp_transport }, i32 17, ptr @xs_setup_udp, ptr null, [32 x i8] c"udp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [3 x ptr] [ptr @.str.23, ptr @.str.24, ptr @.str.7] }, align 4
@xs_udp_ops = internal constant %struct.rpc_xprt_ops { ptr @xs_udp_set_buffer_size, ptr @xprt_reserve_xprt_cong, ptr @xprt_release_xprt_cong, ptr @xprt_alloc_slot, ptr @xprt_free_slot, ptr @rpcb_getport_async, ptr @xs_set_port, ptr @xs_connect, ptr @rpc_malloc, ptr @rpc_free, ptr null, ptr @xs_udp_send_request, ptr @xprt_wait_for_reply_request_rtt, ptr @xs_udp_timer, ptr @xprt_release_rqst_cong, ptr @xs_close, ptr @xs_destroy, ptr null, ptr @xs_udp_print_stats, ptr @xs_enable_swap, ptr @xs_disable_swap, ptr @xs_inject_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@xs_udp_default_timeout = internal constant %struct.rpc_timeout { i32 500, i32 3000, i32 500, i32 5, i8 0 }, align 4
@xs_connect.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = private unnamed_addr constant [55 x i8] c"\09xprt:\09udp %u %lu %lu %lu %lu %llu %llu %lu %llu %llu\0A\00", align 1
@init_net = external dso_local local_unnamed_addr global %struct.net, align 64
@.str.28 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"tcp6\00", align 1
@xs_tcp_transport = internal global { %struct.list_head, i32, ptr, ptr, [32 x i8], [3 x ptr] } { %struct.list_head { ptr @xs_tcp_transport, ptr @xs_tcp_transport }, i32 6, ptr @xs_setup_tcp, ptr null, [32 x i8] c"tcp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [3 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.7] }, align 4
@xs_tcp_ops = internal constant %struct.rpc_xprt_ops { ptr null, ptr @xprt_reserve_xprt, ptr @xprt_release_xprt, ptr @xprt_alloc_slot, ptr @xprt_free_slot, ptr @rpcb_getport_async, ptr @xs_set_port, ptr @xs_connect, ptr @rpc_malloc, ptr @rpc_free, ptr @xs_stream_prepare_request, ptr @xs_tcp_send_request, ptr @xprt_wait_for_reply_request_def, ptr null, ptr null, ptr @xs_tcp_shutdown, ptr @xs_destroy, ptr @xs_tcp_set_connect_timeout, ptr @xs_tcp_print_stats, ptr @xs_enable_swap, ptr @xs_disable_swap, ptr @xs_inject_disconnect, ptr @xprt_setup_bc, ptr @xs_tcp_bc_maxpayload, ptr @xprt_bc_max_slots, ptr @xprt_free_bc_rqst, ptr @xprt_destroy_bc }, align 4
@xs_tcp_default_timeout = internal constant %struct.rpc_timeout { i32 6000, i32 6000, i32 0, i32 2, i8 0 }, align 4
@xs_tcp_send_request.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_rpc_socket_shutdown = external dso_local global %struct.tracepoint, align 4
@.str.31 = private unnamed_addr constant [67 x i8] c"\09xprt:\09tcp %u %lu %lu %lu %ld %lu %lu %lu %llu %llu %lu %llu %llu\0A\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c"%s: connect returned unhandled error %d\0A\00", align 1
@__func__.xs_tcp_setup_socket = private unnamed_addr constant [20 x i8] c"xs_tcp_setup_socket\00", align 1
@__tracepoint_rpc_socket_state_change = external dso_local global %struct.tracepoint, align 4
@xs_bc_tcp_transport = internal global { %struct.list_head, i32, ptr, ptr, [32 x i8], [1 x ptr] } { %struct.list_head { ptr @xs_bc_tcp_transport, ptr @xs_bc_tcp_transport }, i32 -2147483642, ptr @xs_setup_bc_tcp, ptr null, [32 x i8] c"tcp NFSv4.1 backchannel\00\00\00\00\00\00\00\00\00", [1 x ptr] [ptr @.str.7] }, align 4
@bc_tcp_ops = internal constant %struct.rpc_xprt_ops { ptr null, ptr @xprt_reserve_xprt, ptr @xprt_release_xprt, ptr @xprt_alloc_slot, ptr @xprt_free_slot, ptr null, ptr null, ptr null, ptr @bc_malloc, ptr @bc_free, ptr null, ptr @bc_send_request, ptr @xprt_wait_for_reply_request_def, ptr null, ptr null, ptr @bc_close, ptr @bc_destroy, ptr null, ptr @xs_tcp_print_stats, ptr @xs_enable_swap, ptr @xs_disable_swap, ptr @xs_inject_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@bc_malloc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c"xprtsock: large bc buffer request (size %zu)\0A\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_max_resvporttype808, ptr @__UNIQUE_ID_min_resvporttype807, ptr @__UNIQUE_ID_tcp_max_slot_table_entriestype810, ptr @__UNIQUE_ID_tcp_slot_table_entriestype809, ptr @__UNIQUE_ID_udp_slot_table_entriestype811, ptr @__ksymtab_get_srcport, ptr @__param_max_resvport, ptr @__param_min_resvport, ptr @__param_tcp_max_slot_table_entries, ptr @__param_tcp_slot_table_entries, ptr @__param_udp_slot_table_entries], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @get_srcport(ptr noundef %0) #0 {
  %2 = alloca %struct.__kernel_sockaddr_storage, align 4
  %3 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %2, i8 0, i32 128, i1 false) #12, !annotation !9
  %8 = call i32 @kernel_getsockname(ptr noundef nonnull %5, ptr noundef nonnull %2) #12
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %7
  %11 = load i16, ptr %2, align 4
  switch i16 %11, label %20 [
    i16 10, label %12
    i16 2, label %16
  ]

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.sockaddr_in6, ptr %2, i32 0, i32 1
  %14 = load i16, ptr %13, align 2
  %15 = call i16 @llvm.bswap.i16(i16 %14) #12
  br label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.sockaddr_in, ptr %2, i32 0, i32 1
  %18 = load i16, ptr %17, align 2
  %19 = call i16 @llvm.bswap.i16(i16 %18) #12
  br label %20

20:                                               ; preds = %16, %12, %10, %7
  %21 = phi i16 [ 0, %7 ], [ 0, %10 ], [ %19, %16 ], [ %15, %12 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #12
  br label %22

22:                                               ; preds = %20, %1
  %23 = phi i16 [ %21, %20 ], [ 0, %1 ]
  call void @mutex_unlock(ptr noundef %3) #12
  ret i16 %23
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @init_socket_xprt() local_unnamed_addr #0 {
  %1 = load ptr, ptr @sunrpc_table_header, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @register_sysctl_table(ptr noundef nonnull @sunrpc_table) #12
  store ptr %4, ptr @sunrpc_table_header, align 4
  br label %5

5:                                                ; preds = %3, %0
  %6 = tail call i32 @xprt_register_transport(ptr noundef nonnull @xs_local_transport) #12
  %7 = tail call i32 @xprt_register_transport(ptr noundef nonnull @xs_udp_transport) #12
  %8 = tail call i32 @xprt_register_transport(ptr noundef nonnull @xs_tcp_transport) #12
  %9 = tail call i32 @xprt_register_transport(ptr noundef nonnull @xs_bc_tcp_transport) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_register_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cleanup_socket_xprt() local_unnamed_addr #0 {
  %1 = load ptr, ptr @sunrpc_table_header, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @unregister_sysctl_table(ptr noundef nonnull %1) #12
  store ptr null, ptr @sunrpc_table_header, align 4
  br label %4

4:                                                ; preds = %3, %0
  %5 = tail call i32 @xprt_unregister_transport(ptr noundef nonnull @xs_local_transport) #12
  %6 = tail call i32 @xprt_unregister_transport(ptr noundef nonnull @xs_udp_transport) #12
  %7 = tail call i32 @xprt_unregister_transport(ptr noundef nonnull @xs_tcp_transport) #12
  %8 = tail call i32 @xprt_unregister_transport(ptr noundef nonnull @xs_bc_tcp_transport) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_sysctl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_unregister_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_getsockname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @xs_setup_local(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.xprt_create, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.xprt_create, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 128
  br i1 %6, label %83, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr @xprt_max_tcp_slot_table_entries, align 4
  %9 = load i32, ptr @xprt_tcp_slot_table_entries, align 4
  %10 = getelementptr inbounds %struct.xprt_create, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @xprt_alloc(ptr noundef %11, i32 noundef 1200, i32 noundef %9, i32 noundef %8) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %83, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.sock_xprt, ptr %12, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %15, ptr noundef nonnull @.str.10, ptr noundef nonnull @xs_setup_xprt.__key) #12
  %16 = getelementptr inbounds %struct.rpc_xprt, ptr %12, i32 0, i32 4
  %17 = load ptr, ptr %2, align 4
  %18 = load i32, ptr %4, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %16, ptr align 2 %17, i32 %18, i1 false) #12
  %19 = load i32, ptr %4, align 4
  %20 = getelementptr inbounds %struct.rpc_xprt, ptr %12, i32 0, i32 5
  store i32 %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.xprt_create, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.sock_xprt, ptr %12, i32 0, i32 11
  %26 = load i32, ptr %4, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %25, ptr nonnull align 2 %22, i32 %26, i1 false) #12
  br label %33

27:                                               ; preds = %14
  %28 = load ptr, ptr %2, align 4
  %29 = load i16, ptr %28, align 2
  %30 = getelementptr inbounds %struct.sock_xprt, ptr %12, i32 0, i32 11
  switch i16 %29, label %81 [
    i16 1, label %33
    i16 2, label %31
    i16 10, label %32
  ]

31:                                               ; preds = %27
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(16) %30, ptr noundef nonnull align 4 dereferenceable(16) @xs_init_anyaddr.sin, i32 16, i1 false) #12
  br label %33

32:                                               ; preds = %27
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(28) %30, ptr noundef nonnull align 4 dereferenceable(28) @xs_init_anyaddr.sin6, i32 28, i1 false) #12
  br label %33

33:                                               ; preds = %32, %31, %27, %24
  %34 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %83, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.rpc_xprt, ptr %12, i32 0, i32 6
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.rpc_xprt, ptr %12, i32 0, i32 53
  store ptr @xs_local_transport, ptr %37, align 8
  %38 = getelementptr inbounds %struct.rpc_xprt, ptr %12, i32 0, i32 9
  store i32 2147483647, ptr %38, align 8
  %39 = getelementptr inbounds %struct.rpc_xprt, ptr %12, i32 0, i32 23
  store i32 6000, ptr %39, align 8
  %40 = getelementptr inbounds %struct.rpc_xprt, ptr %12, i32 0, i32 24
  store i32 300, ptr %40, align 4
  %41 = getelementptr inbounds %struct.rpc_xprt, ptr %12, i32 0, i32 29
  store i32 30000, ptr %41, align 4
  %42 = getelementptr inbounds %struct.rpc_xprt, ptr %12, i32 0, i32 1
  store ptr @xs_local_ops, ptr %42, align 4
  %43 = getelementptr inbounds %struct.rpc_xprt, ptr %12, i32 0, i32 3
  store ptr @xs_local_default_timeout, ptr %43, align 4
  %44 = getelementptr inbounds %struct.sock_xprt, ptr %12, i32 0, i32 9
  store i32 -32, ptr %44, align 8
  %45 = getelementptr inbounds %struct.sock_xprt, ptr %12, i32 0, i32 9, i32 1
  store volatile ptr %45, ptr %45, align 4
  %46 = getelementptr inbounds %struct.sock_xprt, ptr %12, i32 0, i32 9, i32 1, i32 1
  store ptr %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.sock_xprt, ptr %12, i32 0, i32 9, i32 2
  store ptr @xs_stream_data_receive_workfn, ptr %47, align 4
  %48 = getelementptr inbounds %struct.sock_xprt, ptr %12, i32 0, i32 8
  store i32 -32, ptr %48, align 8
  %49 = getelementptr inbounds %struct.sock_xprt, ptr %12, i32 0, i32 8, i32 1
  store volatile ptr %49, ptr %49, align 4
  %50 = getelementptr inbounds %struct.sock_xprt, ptr %12, i32 0, i32 8, i32 1, i32 1
  store ptr %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.sock_xprt, ptr %12, i32 0, i32 8, i32 2
  store ptr @xs_error_handle, ptr %51, align 4
  %52 = getelementptr inbounds %struct.sock_xprt, ptr %12, i32 0, i32 7
  store i32 -32, ptr %52, align 4
  %53 = getelementptr inbounds %struct.sock_xprt, ptr %12, i32 0, i32 7, i32 0, i32 1
  store volatile ptr %53, ptr %53, align 4
  %54 = getelementptr inbounds %struct.sock_xprt, ptr %12, i32 0, i32 7, i32 0, i32 1, i32 1
  store ptr %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.sock_xprt, ptr %12, i32 0, i32 7, i32 0, i32 2
  store ptr @xs_dummy_setup_socket, ptr %55, align 4
  %56 = getelementptr inbounds %struct.sock_xprt, ptr %12, i32 0, i32 7, i32 1
  tail call void @init_timer_key(ptr noundef %56, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #12
  %57 = load i16, ptr %3, align 2
  %58 = icmp eq i16 %57, 1
  br i1 %58, label %59, label %71

59:                                               ; preds = %35
  %60 = getelementptr inbounds %struct.sockaddr_un, ptr %3, i32 0, i32 1
  %61 = load i8, ptr %60, align 2
  %62 = icmp eq i8 %61, 47
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.rpc_xprt, ptr %12, i32 0, i32 18
  %65 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %64) #12
  tail call fastcc void @xs_format_peer_addresses(ptr noundef nonnull %12, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.9)
  %66 = tail call fastcc i32 @xs_local_setup_socket(ptr noundef nonnull %12)
  %67 = inttoptr i32 %66 to ptr
  %68 = icmp eq i32 %66, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = tail call zeroext i1 @try_module_get(ptr noundef null) #12
  br i1 %70, label %83, label %71

71:                                               ; preds = %69, %63, %59, %35
  %72 = phi ptr [ %67, %63 ], [ inttoptr (i32 -22 to ptr), %59 ], [ inttoptr (i32 -97 to ptr), %35 ], [ inttoptr (i32 -22 to ptr), %69 ]
  %73 = getelementptr %struct.rpc_xprt, ptr %12, i32 0, i32 51, i32 0
  %74 = load ptr, ptr %73, align 4
  tail call void @kfree(ptr noundef %74) #12
  %75 = getelementptr %struct.rpc_xprt, ptr %12, i32 0, i32 51, i32 1
  %76 = load ptr, ptr %75, align 4
  tail call void @kfree(ptr noundef %76) #12
  %77 = getelementptr %struct.rpc_xprt, ptr %12, i32 0, i32 51, i32 3
  %78 = load ptr, ptr %77, align 4
  tail call void @kfree(ptr noundef %78) #12
  %79 = getelementptr %struct.rpc_xprt, ptr %12, i32 0, i32 51, i32 4
  %80 = load ptr, ptr %79, align 4
  tail call void @kfree(ptr noundef %80) #12
  br label %81

81:                                               ; preds = %71, %27
  %82 = phi ptr [ %72, %71 ], [ inttoptr (i32 -97 to ptr), %27 ]
  tail call void @xprt_free(ptr noundef nonnull %12) #12
  br label %83

83:                                               ; preds = %81, %69, %33, %7, %1
  %84 = phi ptr [ %12, %33 ], [ %12, %69 ], [ inttoptr (i32 -12 to ptr), %7 ], [ inttoptr (i32 -9 to ptr), %1 ], [ %82, %81 ]
  ret ptr %84
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xs_stream_data_receive_workfn(ptr noundef %0) #0 {
  %2 = alloca %struct.kvec, align 8
  %3 = alloca %struct.msghdr, align 8
  %4 = getelementptr i8, ptr %0, i32 -984
  %5 = tail call ptr @llvm.thread.pointer() #12
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = or i32 %7, 262144
  store i32 %8, ptr %6, align 4
  %9 = getelementptr i8, ptr %0, i32 16
  tail call void @mutex_lock(ptr noundef %9) #12
  %10 = getelementptr i8, ptr %0, i32 -104
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %203, label %13

13:                                               ; preds = %1
  %14 = getelementptr i8, ptr %0, i32 -92
  %15 = getelementptr i8, ptr %0, i32 -76
  %16 = getelementptr i8, ptr %0, i32 -72
  %17 = getelementptr i8, ptr %0, i32 -80
  %18 = getelementptr inbounds %struct.kvec, ptr %2, i32 0, i32 1
  %19 = getelementptr inbounds %struct.msghdr, ptr %3, i32 0, i32 2
  %20 = getelementptr i8, ptr %0, i32 -84
  %21 = getelementptr i8, ptr %0, i32 -284
  %22 = getelementptr i8, ptr %0, i32 -88
  %23 = getelementptr inbounds %struct.msghdr, ptr %3, i32 0, i32 6
  %24 = getelementptr i8, ptr %0, i32 -256
  %25 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  br label %26

26:                                               ; preds = %172, %13
  %27 = phi i32 [ %174, %172 ], [ 0, %13 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i32 56, i1 false) #12
  %28 = load i32, ptr %15, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %26
  %31 = load i32, ptr %16, align 4
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 12, i32 4
  %34 = load i32, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store ptr %14, ptr %2, align 8
  store i32 %33, ptr %18, align 4
  %35 = load ptr, ptr %10, align 8
  call void @iov_iter_kvec(ptr noundef %19, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 1, i32 noundef %33) #12
  %36 = icmp eq i32 %34, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  call void @iov_iter_advance(ptr noundef %19, i32 noundef %34) #12
  br label %38

38:                                               ; preds = %37, %30
  %39 = call i32 @sock_recvmsg(ptr noundef %35, ptr noundef nonnull %3, i32 noundef 64) #12
  %40 = icmp sgt i32 %39, 0
  %41 = select i1 %40, i32 %34, i32 0
  %42 = add i32 %41, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %163, label %44

44:                                               ; preds = %38
  store i32 %42, ptr %17, align 4
  %45 = icmp eq i32 %42, %33
  br i1 %45, label %47, label %46

46:                                               ; preds = %44
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #12
  br label %172

47:                                               ; preds = %44
  %48 = load i32, ptr %14, align 4
  %49 = and i32 %48, -129
  %50 = call i32 @llvm.bswap.i32(i32 %49) #12
  store i32 %50, ptr %15, align 4
  %51 = add nsw i32 %33, -4
  store i32 %51, ptr %17, align 4
  br label %52

52:                                               ; preds = %47, %26
  %53 = phi i32 [ %33, %47 ], [ 0, %26 ]
  %54 = load i32, ptr %20, align 4
  %55 = call i32 @llvm.bswap.i32(i32 %54) #12
  switch i32 %55, label %56 [
    i32 0, label %59
    i32 1, label %84
  ]

56:                                               ; preds = %52
  %57 = load i32, ptr %23, align 4
  %58 = or i32 %57, 32
  store i32 %58, ptr %23, align 4
  br label %117

59:                                               ; preds = %52
  %60 = load ptr, ptr %24, align 8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %117, label %62

62:                                               ; preds = %59
  %63 = load i32, ptr %22, align 4
  %64 = call ptr @xprt_lookup_bc_request(ptr noundef %4, i32 noundef %63) #12
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #13
  br label %117

68:                                               ; preds = %62
  %69 = load i32, ptr %16, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.rpc_rqst, ptr %64, i32 0, i32 20, i32 8
  %73 = load i32, ptr %72, align 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %117, label %75

75:                                               ; preds = %71, %68
  %76 = call fastcc i32 @xs_read_stream_request(ptr noundef %4, ptr noundef nonnull %3, ptr noundef nonnull %64) #12
  %77 = load i32, ptr %23, align 4
  %78 = and i32 %77, 160
  %79 = icmp eq i32 %78, 0
  %80 = load i32, ptr %16, align 4
  br i1 %79, label %82, label %81

81:                                               ; preds = %75
  call void @xprt_complete_bc_request(ptr noundef nonnull %64, i32 noundef %80) #12
  br label %117

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.rpc_rqst, ptr %64, i32 0, i32 20, i32 8
  store i32 %80, ptr %83, align 8
  br label %117

84:                                               ; preds = %52
  call void @_raw_spin_lock(ptr noundef %21) #12
  %85 = load i32, ptr %22, align 4
  %86 = call ptr @xprt_lookup_rqst(ptr noundef %4, i32 noundef %85) #12
  %87 = icmp eq ptr %86, null
  br i1 %87, label %95, label %88

88:                                               ; preds = %84
  %89 = load i32, ptr %16, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.rpc_rqst, ptr %86, i32 0, i32 20, i32 8
  %93 = load i32, ptr %92, align 8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91, %84
  %96 = load i32, ptr %23, align 4
  %97 = or i32 %96, 32
  store i32 %97, ptr %23, align 4
  br label %113

98:                                               ; preds = %91, %88
  call void @xprt_pin_rqst(ptr noundef nonnull %86) #12
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %99 = load i16, ptr %21, align 4
  %100 = add i16 %99, 1
  store i16 %100, ptr %21, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %101 = call fastcc i32 @xs_read_stream_request(ptr noundef %4, ptr noundef nonnull %3, ptr noundef nonnull %86) #12
  call void @_raw_spin_lock(ptr noundef %21) #12
  %102 = load i32, ptr %23, align 4
  %103 = and i32 %102, 160
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.rpc_rqst, ptr %86, i32 0, i32 3
  %107 = load ptr, ptr %106, align 4
  %108 = load i32, ptr %16, align 4
  call void @xprt_complete_rqst(ptr noundef %107, i32 noundef %108) #12
  br label %112

109:                                              ; preds = %98
  %110 = load i32, ptr %16, align 4
  %111 = getelementptr inbounds %struct.rpc_rqst, ptr %86, i32 0, i32 20, i32 8
  store i32 %110, ptr %111, align 8
  br label %112

112:                                              ; preds = %109, %105
  call void @xprt_unpin_rqst(ptr noundef nonnull %86) #12
  br label %113

113:                                              ; preds = %112, %95
  %114 = phi i32 [ %101, %112 ], [ 0, %95 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %115 = load i16, ptr %21, align 4
  %116 = add i16 %115, 1
  store i16 %116, ptr %21, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  br label %117

117:                                              ; preds = %113, %82, %81, %71, %66, %59, %56
  %118 = phi i32 [ %53, %56 ], [ %114, %113 ], [ -108, %66 ], [ -108, %59 ], [ -108, %71 ], [ %76, %82 ], [ %76, %81 ]
  %119 = load i32, ptr %23, align 4
  %120 = and i32 %119, 32
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %117
  store i32 -1, ptr %20, align 4
  store i32 -1, ptr %16, align 4
  br label %123

123:                                              ; preds = %122, %117
  %124 = icmp slt i32 %118, 0
  br i1 %124, label %167, label %125

125:                                              ; preds = %123
  %126 = add nuw i32 %118, %53
  %127 = load i32, ptr %17, align 4
  %128 = load i32, ptr %15, align 4
  %129 = icmp ugt i32 %128, %127
  br i1 %129, label %130, label %142

130:                                              ; preds = %125
  br i1 %121, label %169, label %131

131:                                              ; preds = %130
  store i32 0, ptr %23, align 4
  %132 = load ptr, ptr %10, align 8
  %133 = sub i32 %128, %127
  call void @iov_iter_discard(ptr noundef %19, i32 noundef 0, i32 noundef %133) #12
  %134 = call i32 @sock_recvmsg(ptr noundef %132, ptr noundef nonnull %3, i32 noundef 64) #12
  %135 = icmp slt i32 %134, 1
  br i1 %135, label %163, label %136

136:                                              ; preds = %131
  %137 = load i32, ptr %17, align 4
  %138 = add i32 %137, %134
  store i32 %138, ptr %17, align 4
  %139 = add i32 %134, %126
  %140 = load i32, ptr %15, align 4
  %141 = icmp eq i32 %138, %140
  br i1 %141, label %142, label %169

142:                                              ; preds = %136, %125
  %143 = phi i32 [ %139, %136 ], [ %126, %125 ]
  %144 = load i32, ptr %14, align 4
  %145 = and i32 %144, 128
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %162, label %147

147:                                              ; preds = %142
  %148 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xs_stream_read_request, i32 0, i32 1), align 4
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %147
  %151 = load i32, ptr %25, align 8
  %152 = lshr i32 %151, 5
  %153 = getelementptr i32, ptr @__cpu_online_mask, i32 %152
  %154 = load volatile i32, ptr %153, align 4
  %155 = and i32 %151, 31
  %156 = shl nuw i32 1, %155
  %157 = and i32 %156, %154
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %150
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %160 = call i32 @__traceiter_xs_stream_read_request(ptr noundef null, ptr noundef %4) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  br label %161

161:                                              ; preds = %159, %150, %147
  store i32 0, ptr %16, align 4
  br label %162

162:                                              ; preds = %161, %142
  store i32 0, ptr %17, align 4
  store i32 0, ptr %15, align 4
  br label %169

163:                                              ; preds = %131, %38
  %164 = phi i32 [ %42, %38 ], [ %134, %131 ]
  %165 = icmp eq i32 %164, 0
  %166 = select i1 %165, i32 -108, i32 %164
  br label %167

167:                                              ; preds = %163, %123
  %168 = phi i32 [ %166, %163 ], [ %118, %123 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #12
  br label %176

169:                                              ; preds = %162, %136, %130
  %170 = phi i32 [ %143, %162 ], [ %126, %130 ], [ %139, %136 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #12
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %169, %46
  %173 = phi i32 [ %42, %46 ], [ %170, %169 ]
  %174 = add i32 %173, %27
  %175 = call i32 @__cond_resched() #12
  br label %26

176:                                              ; preds = %169, %167
  %177 = phi i32 [ %168, %167 ], [ %170, %169 ]
  %178 = icmp eq i32 %177, -108
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load ptr, ptr %10, align 8
  %181 = call i32 @kernel_sock_shutdown(ptr noundef %180, i32 noundef 2) #12
  br label %203

182:                                              ; preds = %176
  %183 = getelementptr i8, ptr %0, i32 -64
  call void @_clear_bit(i32 noundef 2, ptr noundef %183) #12
  %184 = load ptr, ptr %10, align 8
  %185 = getelementptr inbounds %struct.socket, ptr %184, i32 0, i32 5
  %186 = load ptr, ptr %185, align 4
  %187 = getelementptr inbounds %struct.proto_ops, ptr %186, i32 0, i32 8
  %188 = load ptr, ptr %187, align 4
  %189 = getelementptr i8, ptr %0, i32 -96
  %190 = load ptr, ptr %189, align 8
  %191 = call i32 %188(ptr noundef %190, ptr noundef %184, ptr noundef null) #12
  %192 = and i32 %191, 65
  %193 = icmp ne i32 %192, 0
  %194 = and i32 %191, 8192
  %195 = icmp eq i32 %194, 0
  %196 = and i1 %193, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %182
  %198 = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %183) #12
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load ptr, ptr @xprtiod_workqueue, align 4
  %202 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %201, ptr noundef %0) #12
  br label %203

203:                                              ; preds = %200, %197, %182, %179, %1
  %204 = phi i32 [ 0, %1 ], [ -108, %179 ], [ %177, %182 ], [ %177, %197 ], [ %177, %200 ]
  %205 = phi i32 [ 0, %1 ], [ %27, %179 ], [ %27, %182 ], [ %27, %197 ], [ %27, %200 ]
  call void @mutex_unlock(ptr noundef %9) #12
  %206 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xs_stream_read_data, i32 0, i32 1), align 4
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %208, label %220

208:                                              ; preds = %203
  %209 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %210 = load i32, ptr %209, align 8
  %211 = lshr i32 %210, 5
  %212 = getelementptr i32, ptr @__cpu_online_mask, i32 %211
  %213 = load volatile i32, ptr %212, align 4
  %214 = and i32 %210, 31
  %215 = shl nuw i32 1, %214
  %216 = and i32 %215, %213
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %208
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  %219 = call i32 @__traceiter_xs_stream_read_data(ptr noundef null, ptr noundef %4, i32 noundef %204, i32 noundef %205) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  br label %220

220:                                              ; preds = %218, %208, %203
  %221 = and i32 %7, 262144
  %222 = load i32, ptr %6, align 4
  %223 = and i32 %222, -262145
  %224 = or i32 %223, %221
  store i32 %224, ptr %6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xs_error_handle(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -968
  %3 = getelementptr i8, ptr %0, i32 -48
  %4 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %3) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @xprt_force_disconnect(ptr noundef %2) #12
  br label %7

7:                                                ; preds = %6, %1
  %8 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %3) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call zeroext i1 @xprt_write_space(ptr noundef %2) #12
  br label %12

12:                                               ; preds = %10, %7
  %13 = load volatile i32, ptr %3, align 4
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %0, i32 32
  tail call void @mutex_lock(ptr noundef %17) #12
  %18 = getelementptr i8, ptr %0, i32 -88
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %16
  %22 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %3) #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = getelementptr i8, ptr %0, i32 184
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #12, !srcloc !19
  %26 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %25) #12, !srcloc !20
  %27 = extractvalue { i32, i32 } %26, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !21
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  tail call void @xprt_wake_pending_tasks(ptr noundef %2, i32 noundef %27) #12
  br label %30

30:                                               ; preds = %29, %24, %21, %16
  tail call void @mutex_unlock(ptr noundef %17) #12
  br label %31

31:                                               ; preds = %30, %12
  %32 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %3) #12
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void @xprt_wake_pending_tasks(ptr noundef %2, i32 noundef -11) #12
  br label %35

35:                                               ; preds = %34, %31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @xs_dummy_setup_socket(ptr nocapture noundef %0) #6 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xs_format_peer_addresses(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [128 x i8], align 1
  %5 = getelementptr %struct.rpc_xprt, ptr %0, i32 0, i32 51, i32 2
  store ptr %1, ptr %5, align 8
  %6 = getelementptr %struct.rpc_xprt, ptr %0, i32 0, i32 51, i32 5
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %4, i8 0, i32 128, i1 false) #12, !annotation !9
  %8 = load i16, ptr %7, align 2
  switch i16 %8, label %28 [
    i16 1, label %9
    i16 2, label %14
    i16 10, label %22
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.sockaddr_un, ptr %7, i32 0, i32 1
  %11 = call i32 @strlcpy(ptr noundef nonnull %4, ptr noundef %10, i32 noundef 128) #12
  %12 = call noalias ptr @kstrdup(ptr noundef nonnull %4, i32 noundef 3264) #12
  %13 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 51
  store ptr %12, ptr %13, align 8
  br label %29

14:                                               ; preds = %3
  %15 = call i32 @rpc_ntop(ptr noundef %7, ptr noundef nonnull %4, i32 noundef 128) #12
  %16 = call noalias ptr @kstrdup(ptr noundef nonnull %4, i32 noundef 3264) #12
  %17 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 51
  store ptr %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 4, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19) #12
  %21 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 128, ptr noundef nonnull @.str.18, i32 noundef %20) #12
  br label %29

22:                                               ; preds = %3
  %23 = call i32 @rpc_ntop(ptr noundef %7, ptr noundef nonnull %4, i32 noundef 128) #12
  %24 = call noalias ptr @kstrdup(ptr noundef nonnull %4, i32 noundef 3264) #12
  %25 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 51
  store ptr %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 4, i32 0, i32 1, i32 4
  %27 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 128, ptr noundef nonnull @.str.19, ptr noundef %26) #12
  br label %29

28:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/xprtsock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 282, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

29:                                               ; preds = %22, %14, %9
  %30 = call noalias ptr @kstrdup(ptr noundef nonnull %4, i32 noundef 3264) #12
  %31 = getelementptr %struct.rpc_xprt, ptr %0, i32 0, i32 51, i32 3
  store ptr %30, ptr %31, align 4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #12
  call fastcc void @xs_format_common_peer_ports(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xs_local_setup_socket(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store ptr null, ptr %2, align 4, !annotation !9
  %3 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 49
  %4 = load ptr, ptr %3, align 8
  %5 = call i32 @__sock_create(ptr noundef %4, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 1) #12
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %82, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 4
  %9 = call ptr @sock_alloc_file(ptr noundef %8, i32 noundef 2048, ptr noundef null) #12
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = ptrtoint ptr %9 to i32
  br label %82

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 3
  store ptr %9, ptr %14, align 8
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %40

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.socket, ptr %15, i32 0, i32 4
  %21 = load ptr, ptr %20, align 16
  call void @lock_sock_nested(ptr noundef %21, i32 noundef 0) #12
  %22 = getelementptr inbounds %struct.sock, ptr %21, i32 0, i32 76
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 17
  store ptr %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.sock, ptr %21, i32 0, i32 75
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 18
  store ptr %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.sock, ptr %21, i32 0, i32 77
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 19
  store ptr %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.sock, ptr %21, i32 0, i32 78
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 20
  store ptr %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.sock, ptr %21, i32 0, i32 72
  store ptr %0, ptr %34, align 4
  store ptr @xs_data_ready, ptr %22, align 8
  store ptr @xs_udp_write_space, ptr %28, align 4
  %35 = getelementptr inbounds %struct.sock_common, ptr %21, i32 0, i32 13
  %36 = load i32, ptr %35, align 4
  %37 = or i32 %36, 65536
  store i32 %37, ptr %35, align 4
  store ptr @xs_error_report, ptr %31, align 8
  %38 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 18
  call void @_clear_bit(i32 noundef 1, ptr noundef %38) #12
  %39 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 1
  store ptr %15, ptr %39, align 8
  store ptr %21, ptr %16, align 4
  call void @release_sock(ptr noundef %21) #12
  br label %40

40:                                               ; preds = %19, %13
  %41 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 4
  %44 = load volatile i32, ptr @jiffies, align 64
  %45 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 2
  store i32 %44, ptr %45, align 8
  %46 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 4
  %47 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 5
  %48 = load i32, ptr %47, align 8
  %49 = call i32 @kernel_connect(ptr noundef %15, ptr noundef %46, i32 noundef %48, i32 noundef 0) #12
  %50 = load ptr, ptr %2, align 4
  %51 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_socket_connect, i32 0, i32 1), align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %40
  %54 = tail call ptr @llvm.thread.pointer() #12
  %55 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %56 = load i32, ptr %55, align 8
  %57 = lshr i32 %56, 5
  %58 = getelementptr i32, ptr @__cpu_online_mask, i32 %57
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %56, 31
  %61 = shl nuw i32 1, %60
  %62 = and i32 %61, %59
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %53
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !23
  %65 = call i32 @__traceiter_rpc_socket_connect(ptr noundef null, ptr noundef %0, ptr noundef %50, i32 noundef %49) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !24
  br label %66

66:                                               ; preds = %64, %53, %40
  switch i32 %49, label %77 [
    i32 0, label %67
    i32 -105, label %82
    i32 -2, label %82
    i32 -111, label %82
  ]

67:                                               ; preds = %66
  %68 = load i32, ptr %41, align 4
  %69 = add i32 %68, 1
  store i32 %69, ptr %41, align 4
  %70 = load volatile i32, ptr @jiffies, align 64
  %71 = load i32, ptr %45, align 8
  %72 = sub i32 %70, %71
  %73 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %72, %74
  store i32 %75, ptr %73, align 4
  %76 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 18
  call void @_set_bit(i32 noundef 1, ptr noundef %76) #12
  br label %82

77:                                               ; preds = %66
  %78 = sub i32 0, %49
  %79 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 51
  %80 = load ptr, ptr %79, align 8
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.xs_local_setup_socket, i32 noundef %78, ptr noundef %80) #13
  br label %82

82:                                               ; preds = %77, %67, %66, %66, %66, %11, %1
  %83 = phi i32 [ %5, %1 ], [ %12, %11 ], [ %49, %77 ], [ %49, %66 ], [ %49, %66 ], [ %49, %66 ], [ 0, %67 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !25
  %84 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 18
  call void @_clear_bit(i32 noundef 2, ptr noundef %84) #12
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !26
  call void @xprt_wake_pending_tasks(ptr noundef %0, i32 noundef %83) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_reserve_xprt(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_release_xprt(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_alloc_slot(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_free_slot(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xs_local_rpcbind(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 18
  %5 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %4) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @xs_local_set_port(ptr nocapture noundef %0, i16 noundef zeroext %1) #6 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xs_local_connect(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 20
  %4 = load i16, ptr %3, align 4
  %5 = and i16 %4, 1
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rpc_task, ptr %1, i32 0, i32 9
  store i32 -107, ptr %8, align 4
  tail call void @rpc_exit(ptr noundef %1, i32 noundef -107) #12
  br label %18

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @xs_local_setup_socket(ptr noundef %0)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = load i16, ptr %3, align 4
  %14 = and i16 %13, 1024
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call i32 @msleep_interruptible(i32 noundef 15000) #12
  br label %18

18:                                               ; preds = %16, %12, %9, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_malloc(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_free(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xs_stream_prepare_request(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 2
  tail call void @xdr_free_bvec(ptr noundef %2) #12
  %3 = tail call i32 @xdr_alloc_bvec(ptr noundef %2, i32 noundef 3264) #12
  %4 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rpc_task, ptr %5, i32 0, i32 1
  store i32 %3, ptr %6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xs_local_send_request(ptr noundef %0) #0 {
  %2 = alloca %struct.msghdr, align 8
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 1, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  %9 = or i32 %7, -2147483648
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #12
  %11 = select i1 %8, i32 0, i32 %10
  %12 = add i32 %7, 4
  %13 = select i1 %8, i32 0, i32 %12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i32 56, i1 false)
  %14 = getelementptr inbounds { ptr, i32, { i8, i8, i8, [1 x i8], i32, i32, %union.anon.31, %union.anon.32 }, %union.anon.34, i8, [3 x i8], i32, i32, ptr, [4 x i8] }, ptr %2, i32 0, i32 7
  store i32 16448, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !9
  %15 = getelementptr inbounds %struct.sock_xprt, ptr %4, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 28
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  tail call fastcc void @xs_reset_transport(ptr noundef %4) #12
  %23 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 24
  store i32 0, ptr %23, align 4
  br label %61

24:                                               ; preds = %18, %1
  %25 = tail call i64 @ktime_get() #12
  %26 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 29
  store i64 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.sock_xprt, ptr %4, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = load i32, ptr %15, align 4
  %30 = call i32 @xprt_sock_sendmsg(ptr noundef %28, ptr noundef nonnull %2, ptr noundef %5, i32 noundef %29, i32 noundef %11, ptr noundef nonnull %3) #12
  %31 = icmp eq i32 %30, -11
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.sock_xprt, ptr %4, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.sock, ptr %34, i32 0, i32 23
  %36 = load volatile i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.sock, ptr %34, i32 0, i32 21
  %38 = load volatile i32, ptr %37, align 8
  %39 = ashr i32 %38, 1
  %40 = icmp ult i32 %36, %39
  %41 = select i1 %40, i32 -105, i32 -11
  br label %42

42:                                               ; preds = %32, %24
  %43 = phi i32 [ %30, %24 ], [ %41, %32 ]
  %44 = load i32, ptr %3, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47, !prof !27

46:                                               ; preds = %42
  switch i32 %43, label %59 [
    i32 0, label %47
    i32 -105, label %61
    i32 -11, label %57
  ]

47:                                               ; preds = %46, %42
  %48 = load i32, ptr %15, align 4
  %49 = add i32 %48, %44
  store i32 %49, ptr %15, align 4
  %50 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 28
  store i32 %49, ptr %50, align 4
  %51 = icmp ult i32 %49, %13
  br i1 %51, label %57, label %52, !prof !27

52:                                               ; preds = %47
  %53 = load i32, ptr %15, align 4
  %54 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 18
  %55 = load i32, ptr %54, align 8
  %56 = add i32 %55, %53
  store i32 %56, ptr %54, align 8
  store i32 0, ptr %15, align 4
  br label %61

57:                                               ; preds = %47, %46
  %58 = call fastcc i32 @xs_nospace(ptr noundef %0)
  br label %61

59:                                               ; preds = %46
  call fastcc void @xs_reset_transport(ptr noundef %4) #12
  %60 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 24
  store i32 0, ptr %60, align 4
  br label %61

61:                                               ; preds = %59, %57, %52, %46, %22
  %62 = phi i32 [ -107, %22 ], [ 0, %52 ], [ -107, %59 ], [ %58, %57 ], [ %43, %46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #12
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_wait_for_reply_request_def(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xs_close(ptr noundef %0) #0 {
  tail call fastcc void @xs_reset_transport(ptr noundef %0)
  %2 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 24
  store i32 0, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xs_destroy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 7
  %3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %2) #12
  tail call fastcc void @xs_reset_transport(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 24
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 9
  %6 = tail call zeroext i1 @cancel_work_sync(ptr noundef %5) #12
  %7 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 8
  %8 = tail call zeroext i1 @cancel_work_sync(ptr noundef %7) #12
  %9 = getelementptr %struct.rpc_xprt, ptr %0, i32 0, i32 51, i32 0
  %10 = load ptr, ptr %9, align 4
  tail call void @kfree(ptr noundef %10) #12
  %11 = getelementptr %struct.rpc_xprt, ptr %0, i32 0, i32 51, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void @kfree(ptr noundef %12) #12
  %13 = getelementptr %struct.rpc_xprt, ptr %0, i32 0, i32 51, i32 3
  %14 = load ptr, ptr %13, align 4
  tail call void @kfree(ptr noundef %14) #12
  %15 = getelementptr %struct.rpc_xprt, ptr %0, i32 0, i32 51, i32 4
  %16 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %16) #12
  tail call void @xprt_free(ptr noundef %0) #12
  tail call void @module_put(ptr noundef null) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xs_local_print_stats(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 18
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load volatile i32, ptr @jiffies, align 64
  %9 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 28
  %10 = load i32, ptr %9, align 8
  %11 = sub i32 %8, %10
  %12 = sdiv i32 %11, 100
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi i32 [ %12, %7 ], [ 0, %2 ]
  %15 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = udiv i32 %20, 100
  %22 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 4
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 6
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 8
  %29 = load i64, ptr %28, align 8
  %30 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 9
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 10
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 11
  %37 = load i64, ptr %36, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %16, i32 noundef %18, i32 noundef %21, i32 noundef %14, i32 noundef %23, i32 noundef %25, i32 noundef %27, i64 noundef %29, i64 noundef %31, i32 noundef %33, i64 noundef %35, i64 noundef %37) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @xs_enable_swap(ptr nocapture noundef readnone %0) #6 {
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @xs_disable_swap(ptr nocapture noundef %0) #6 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_exit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_free_bvec(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_alloc_bvec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_sock_sendmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xs_nospace(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.sock_xprt, ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_socket_nospace, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  %19 = tail call i32 @__traceiter_rpc_socket_nospace(ptr noundef null, ptr noundef %0, ptr noundef %2) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !29
  br label %20

20:                                               ; preds = %18, %7, %1
  %21 = getelementptr inbounds %struct.rpc_xprt, ptr %2, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %21) #12
  %22 = getelementptr inbounds %struct.rpc_xprt, ptr %2, i32 0, i32 18
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 28
  %28 = load i32, ptr %27, align 8
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 8
  tail call void @xprt_wait_for_buffer_space(ptr noundef %2) #12
  br label %30

30:                                               ; preds = %26, %20
  %31 = phi i32 [ -11, %26 ], [ -107, %20 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %32 = load i16, ptr %21, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  br i1 %25, label %40, label %34

34:                                               ; preds = %30
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !30
  %35 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 17
  %36 = load volatile ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.socket_wq, ptr %36, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %37) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !31
  %38 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 77
  %39 = load ptr, ptr %38, align 4
  tail call void %39(ptr noundef %4) #12
  br label %40

40:                                               ; preds = %34, %30
  ret i32 %31
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_wait_for_buffer_space(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_socket_nospace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xs_reset_transport(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %5, null
  br i1 %8, label %52, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 20
  %11 = load volatile i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @sk_clear_memalloc(ptr noundef nonnull %5) #12
  br label %14

14:                                               ; preds = %13, %9
  %15 = tail call i32 @kernel_sock_shutdown(ptr noundef %3, i32 noundef 2) #12
  %16 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %16) #12
  tail call void @lock_sock_nested(ptr noundef nonnull %5, i32 noundef 0) #12
  store ptr null, ptr %4, align 4
  store ptr null, ptr %2, align 8
  store ptr null, ptr %6, align 8
  %17 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 72
  store ptr null, ptr %17, align 4
  %18 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 17
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 76
  store ptr %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 18
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 75
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 19
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 77
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 20
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 78
  store ptr %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 18
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %30) #12
  %31 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 25
  %32 = load i32, ptr %31, align 8
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !32
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %30) #12
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %30) #12
  %34 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %34) #12
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %34) #12
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %34) #12
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %34) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !33
  %35 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 4, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %35, i8 0, i64 16, i1 false) #12
  tail call void @release_sock(ptr noundef nonnull %5) #12
  tail call void @mutex_unlock(ptr noundef %16) #12
  %36 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_socket_close, i32 0, i32 1), align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %14
  %39 = tail call ptr @llvm.thread.pointer() #12
  %40 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = lshr i32 %41, 5
  %43 = getelementptr i32, ptr @__cpu_online_mask, i32 %42
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %41, 31
  %46 = shl nuw i32 1, %45
  %47 = and i32 %46, %44
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %38
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !34
  %50 = tail call i32 @__traceiter_rpc_socket_close(ptr noundef null, ptr noundef %0, ptr noundef %3) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !35
  br label %51

51:                                               ; preds = %49, %38, %14
  tail call void @fput(ptr noundef %7) #12
  tail call void @xprt_disconnect_done(ptr noundef %0) #12
  br label %52

52:                                               ; preds = %51, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_clear_memalloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sock_shutdown(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_disconnect_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_socket_close(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_recvmsg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_lookup_bc_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xs_read_stream_request(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rpc_rqst, ptr %2, i32 0, i32 20
  %5 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 4, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 4, i32 1
  %10 = load i32, ptr %9, align 4
  br label %23

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.rpc_rqst, ptr %2, i32 0, i32 20, i32 0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 4, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %13, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 4, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %18, ptr align 4 %19, i32 %15, i1 false) #12
  %20 = load i32, ptr %14, align 4
  br label %21

21:                                               ; preds = %17, %11
  %22 = phi i32 [ %20, %17 ], [ %15, %11 ]
  store i32 %22, ptr %5, align 4
  br label %23

23:                                               ; preds = %21, %8
  %24 = phi i32 [ %6, %8 ], [ %22, %21 ]
  %25 = phi i32 [ %10, %8 ], [ %22, %21 ]
  %26 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 4, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 4, i32 1
  %29 = icmp eq i32 %27, %25
  br i1 %29, label %244, label %30

30:                                               ; preds = %23
  %31 = sub i32 %27, %25
  %32 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8
  %34 = add i32 %24, %31
  %35 = getelementptr inbounds %struct.rpc_rqst, ptr %2, i32 0, i32 20, i32 0, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 %34) #12
  %38 = icmp ult i32 %24, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  tail call void @iov_iter_kvec(ptr noundef %40, i32 noundef 0, ptr noundef %4, i32 noundef 1, i32 noundef %37) #12
  %41 = icmp eq i32 %24, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  tail call void @iov_iter_advance(ptr noundef %40, i32 noundef %24) #12
  br label %43

43:                                               ; preds = %42, %39
  %44 = tail call i32 @sock_recvmsg(ptr noundef %33, ptr noundef %1, i32 noundef 64) #12
  %45 = icmp sgt i32 %44, 0
  %46 = select i1 %45, i32 %24, i32 0
  %47 = add i32 %46, %44
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %229, label %49

49:                                               ; preds = %43
  %50 = icmp eq i32 %47, %34
  br i1 %50, label %234, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 160
  %55 = icmp eq i32 %54, 0
  %56 = icmp eq i32 %47, %37
  %57 = select i1 %55, i1 %56, i1 false
  br i1 %57, label %60, label %234

58:                                               ; preds = %30
  %59 = sub i32 %24, %37
  br label %60

60:                                               ; preds = %58, %51
  %61 = phi i32 [ %59, %58 ], [ 0, %51 ]
  %62 = sub i32 %34, %37
  %63 = getelementptr inbounds %struct.rpc_rqst, ptr %2, i32 0, i32 20, i32 5
  %64 = load i32, ptr %63, align 4
  %65 = tail call i32 @llvm.umin.i32(i32 %62, i32 %64) #12
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %107, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.rpc_rqst, ptr %2, i32 0, i32 20, i32 6
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %107, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.rpc_rqst, ptr %2, i32 0, i32 20, i32 4
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %65, 4095
  %76 = add i32 %75, %74
  %77 = icmp ult i32 %76, 4096
  br i1 %77, label %107, label %78

78:                                               ; preds = %72
  %79 = lshr i32 %76, 12
  %80 = getelementptr inbounds %struct.rpc_rqst, ptr %2, i32 0, i32 20, i32 3
  %81 = getelementptr inbounds %struct.rpc_rqst, ptr %2, i32 0, i32 20, i32 2
  %82 = load ptr, ptr %80, align 4
  br label %83

83:                                               ; preds = %103, %78
  %84 = phi ptr [ %82, %78 ], [ %104, %103 ]
  %85 = phi i32 [ 0, %78 ], [ %105, %103 ]
  %86 = getelementptr ptr, ptr %84, i32 %85
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %103

89:                                               ; preds = %83
  %90 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %91 = load ptr, ptr %80, align 4
  %92 = getelementptr ptr, ptr %91, i32 %85
  store ptr %90, ptr %92, align 4
  %93 = load ptr, ptr %81, align 4
  %94 = getelementptr %struct.bio_vec, ptr %93, i32 %85
  store ptr %90, ptr %94, align 4
  %95 = load ptr, ptr %80, align 4
  %96 = getelementptr ptr, ptr %95, i32 %85
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %89
  %100 = shl i32 %85, 12
  %101 = load i32, ptr %73, align 4
  %102 = tail call i32 @llvm.usub.sat.i32(i32 %100, i32 %101) #12
  br label %107

103:                                              ; preds = %89, %83
  %104 = phi ptr [ %95, %89 ], [ %84, %83 ]
  %105 = add nuw nsw i32 %85, 1
  %106 = icmp eq i32 %105, %79
  br i1 %106, label %107, label %83

107:                                              ; preds = %103, %99, %72, %67, %60
  %108 = phi i32 [ %102, %99 ], [ %65, %67 ], [ 0, %60 ], [ %65, %72 ], [ %65, %103 ]
  %109 = icmp ult i32 %61, %108
  br i1 %109, label %110, label %193

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.rpc_rqst, ptr %2, i32 0, i32 20, i32 2
  %112 = load ptr, ptr %111, align 4
  %113 = tail call i32 @xdr_buf_pagecount(ptr noundef %4) #12
  %114 = getelementptr inbounds %struct.rpc_rqst, ptr %2, i32 0, i32 20, i32 4
  %115 = load i32, ptr %114, align 4
  %116 = add i32 %115, %108
  %117 = add i32 %115, %61
  %118 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  tail call void @iov_iter_bvec(ptr noundef %118, i32 noundef 0, ptr noundef %112, i32 noundef %113, i32 noundef %116) #12
  %119 = icmp eq i32 %117, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %110
  tail call void @iov_iter_advance(ptr noundef %118, i32 noundef %117) #12
  br label %121

121:                                              ; preds = %120, %110
  %122 = tail call i32 @sock_recvmsg(ptr noundef %33, ptr noundef %1, i32 noundef 64) #12
  %123 = icmp sgt i32 %122, 0
  %124 = select i1 %123, i32 %117, i32 0
  %125 = add i32 %124, %122
  %126 = icmp slt i32 %125, 1
  br i1 %126, label %229, label %127

127:                                              ; preds = %121
  %128 = load ptr, ptr %111, align 4
  %129 = load i32, ptr %114, align 4
  %130 = add i32 %129, %61
  %131 = and i32 %130, -4096
  %132 = icmp ult i32 %125, %131
  %133 = load i1, ptr @bvec_iter_advance.__already_done, align 1
  %134 = xor i1 %133, true
  %135 = select i1 %132, i1 %134, i1 false
  br i1 %135, label %136, label %137, !prof !27

136:                                              ; preds = %127
  store i1 true, ptr @bvec_iter_advance.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 107, i32 noundef 9, ptr noundef nonnull @.str.17) #12
  br label %137

137:                                              ; preds = %136, %127
  br i1 %132, label %181, label %138

138:                                              ; preds = %137
  %139 = sub i32 %125, %131
  %140 = icmp eq i32 %131, 0
  br i1 %140, label %151, label %141

141:                                              ; preds = %147, %138
  %142 = phi i32 [ %148, %147 ], [ %131, %138 ]
  %143 = phi i32 [ %149, %147 ], [ 0, %138 ]
  %144 = getelementptr %struct.bio_vec, ptr %128, i32 %143, i32 1
  %145 = load i32, ptr %144, align 4
  %146 = icmp ult i32 %142, %145
  br i1 %146, label %151, label %147

147:                                              ; preds = %141
  %148 = sub i32 %142, %145
  %149 = add i32 %143, 1
  %150 = icmp eq i32 %148, 0
  br i1 %150, label %151, label %141

151:                                              ; preds = %147, %141, %138
  %152 = phi i32 [ 0, %138 ], [ %149, %147 ], [ %143, %141 ]
  %153 = phi i32 [ 0, %138 ], [ 0, %147 ], [ %142, %141 ]
  %154 = icmp eq i32 %139, 0
  br i1 %154, label %181, label %155

155:                                              ; preds = %155, %151
  %156 = phi i32 [ %178, %155 ], [ %153, %151 ]
  %157 = phi i32 [ %177, %155 ], [ %152, %151 ]
  %158 = phi i32 [ %179, %155 ], [ %139, %151 ]
  %159 = getelementptr %struct.bio_vec, ptr %128, i32 %157
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr %struct.bio_vec, ptr %128, i32 %157, i32 2
  %162 = load i32, ptr %161, align 4
  %163 = add i32 %162, %156
  %164 = lshr i32 %163, 12
  %165 = getelementptr %struct.page, ptr %160, i32 %164
  %166 = getelementptr %struct.bio_vec, ptr %128, i32 %157, i32 1
  %167 = load i32, ptr %166, align 4
  %168 = sub i32 %167, %156
  %169 = tail call i32 @llvm.umin.i32(i32 %158, i32 %168) #12
  %170 = and i32 %163, 4095
  %171 = sub nuw nsw i32 4096, %170
  %172 = tail call i32 @llvm.umin.i32(i32 %169, i32 %171) #12
  tail call void @flush_dcache_page(ptr noundef %165) #12
  %173 = add i32 %172, %156
  %174 = load i32, ptr %166, align 4
  %175 = icmp eq i32 %173, %174
  %176 = zext i1 %175 to i32
  %177 = add i32 %157, %176
  %178 = select i1 %175, i32 0, i32 %173
  %179 = sub i32 %158, %172
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %155

181:                                              ; preds = %155, %151, %137
  %182 = load i32, ptr %114, align 4
  %183 = sub i32 %125, %182
  %184 = add i32 %183, %37
  %185 = icmp eq i32 %184, %34
  br i1 %185, label %234, label %186

186:                                              ; preds = %181
  %187 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %188 = load i32, ptr %187, align 4
  %189 = and i32 %188, 160
  %190 = icmp eq i32 %189, 0
  %191 = icmp eq i32 %183, %108
  %192 = select i1 %190, i1 %191, i1 false
  br i1 %192, label %196, label %234

193:                                              ; preds = %107
  %194 = sub i32 %61, %108
  %195 = add i32 %108, %37
  br label %196

196:                                              ; preds = %193, %186
  %197 = phi i32 [ %195, %193 ], [ %184, %186 ]
  %198 = phi i32 [ %194, %193 ], [ 0, %186 ]
  %199 = sub i32 %34, %197
  %200 = getelementptr inbounds %struct.rpc_rqst, ptr %2, i32 0, i32 20, i32 1, i32 0, i32 1
  %201 = load i32, ptr %200, align 4
  %202 = tail call i32 @llvm.umin.i32(i32 %199, i32 %201) #12
  %203 = icmp ult i32 %198, %202
  br i1 %203, label %204, label %225

204:                                              ; preds = %196
  %205 = getelementptr inbounds %struct.rpc_rqst, ptr %2, i32 0, i32 20, i32 1
  %206 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  tail call void @iov_iter_kvec(ptr noundef %206, i32 noundef 0, ptr noundef %205, i32 noundef 1, i32 noundef %202) #12
  %207 = icmp eq i32 %198, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %204
  tail call void @iov_iter_advance(ptr noundef %206, i32 noundef %198) #12
  br label %209

209:                                              ; preds = %208, %204
  %210 = tail call i32 @sock_recvmsg(ptr noundef %33, ptr noundef %1, i32 noundef 64) #12
  %211 = icmp sgt i32 %210, 0
  %212 = select i1 %211, i32 %198, i32 0
  %213 = add i32 %212, %210
  %214 = icmp slt i32 %213, 1
  br i1 %214, label %229, label %215

215:                                              ; preds = %209
  %216 = add i32 %213, %197
  %217 = icmp eq i32 %216, %34
  br i1 %217, label %234, label %218

218:                                              ; preds = %215
  %219 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %220 = load i32, ptr %219, align 4
  %221 = and i32 %220, 160
  %222 = icmp eq i32 %221, 0
  %223 = icmp eq i32 %213, %202
  %224 = select i1 %222, i1 %223, i1 false
  br i1 %224, label %227, label %234

225:                                              ; preds = %196
  %226 = tail call i32 @llvm.umax.i32(i32 %197, i32 %24) #12
  br label %227

227:                                              ; preds = %225, %218
  %228 = phi i32 [ %216, %218 ], [ %226, %225 ]
  br label %234

229:                                              ; preds = %209, %121, %43
  %230 = phi i32 [ %47, %43 ], [ %125, %121 ], [ %213, %209 ]
  %231 = phi i32 [ 0, %43 ], [ %37, %121 ], [ %197, %209 ]
  %232 = phi i32 [ %24, %43 ], [ %61, %121 ], [ %198, %209 ]
  %233 = add i32 %232, %231
  br label %234

234:                                              ; preds = %229, %227, %218, %215, %186, %181, %51, %49
  %235 = phi i32 [ %230, %229 ], [ %34, %49 ], [ %47, %51 ], [ %183, %181 ], [ %183, %186 ], [ %213, %215 ], [ %213, %218 ], [ -90, %227 ]
  %236 = phi i32 [ %233, %229 ], [ %34, %49 ], [ %47, %51 ], [ %34, %181 ], [ %184, %186 ], [ %34, %215 ], [ %216, %218 ], [ %228, %227 ]
  %237 = sub i32 %236, %24
  %238 = load i32, ptr %28, align 4
  %239 = add i32 %238, %237
  store i32 %239, ptr %28, align 4
  %240 = load i32, ptr %5, align 4
  %241 = add i32 %240, %237
  store i32 %241, ptr %5, align 4
  %242 = load i32, ptr %26, align 4
  %243 = icmp eq i32 %239, %242
  br i1 %243, label %244, label %255

244:                                              ; preds = %234, %23
  %245 = phi i32 [ %235, %234 ], [ 0, %23 ]
  %246 = phi i32 [ %237, %234 ], [ 0, %23 ]
  %247 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 4
  %248 = load i32, ptr %247, align 4
  %249 = and i32 %248, 128
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %255, label %251

251:                                              ; preds = %244
  %252 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %253 = load i32, ptr %252, align 4
  %254 = or i32 %253, 128
  store i32 %254, ptr %252, align 4
  br label %255

255:                                              ; preds = %251, %244, %234
  %256 = phi i32 [ %245, %251 ], [ %245, %244 ], [ %235, %234 ]
  %257 = phi i32 [ %246, %251 ], [ %246, %244 ], [ %237, %234 ]
  br i1 %29, label %266, label %258

258:                                              ; preds = %255
  switch i32 %256, label %263 [
    i32 -14, label %259
    i32 -90, label %259
    i32 0, label %266
  ]

259:                                              ; preds = %258, %258
  %260 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %261 = load i32, ptr %260, align 4
  %262 = or i32 %261, 32
  store i32 %262, ptr %260, align 4
  br label %266

263:                                              ; preds = %258
  %264 = icmp slt i32 %256, 0
  %265 = select i1 %264, i32 %256, i32 %257
  br label %266

266:                                              ; preds = %263, %259, %258, %255
  %267 = phi i32 [ %265, %263 ], [ %257, %259 ], [ 0, %255 ], [ -108, %258 ]
  ret i32 %267
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_complete_bc_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_buf_pagecount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_bvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_lookup_rqst(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_pin_rqst(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_complete_rqst(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_unpin_rqst(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_discard(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xs_stream_read_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xs_stream_read_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_force_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xprt_write_space(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_wake_pending_tasks(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xs_format_common_peer_ports(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca [128 x i8], align 1
  %3 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %2, i8 0, i32 128, i1 false), !annotation !9
  %4 = load i16, ptr %3, align 2
  switch i16 %4, label %14 [
    i16 2, label %5
    i16 10, label %7
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sockaddr_in, ptr %3, i32 0, i32 1
  br label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sockaddr_in6, ptr %3, i32 0, i32 1
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %8, %7 ], [ %6, %5 ]
  %11 = load i16, ptr %10, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #12
  %13 = zext i16 %12 to i32
  br label %14

14:                                               ; preds = %9, %1
  %15 = phi i32 [ 0, %1 ], [ %13, %9 ]
  %16 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 128, ptr noundef nonnull @.str.20, i32 noundef %15)
  %17 = call noalias ptr @kstrdup(ptr noundef nonnull %2, i32 noundef 3264) #12
  %18 = getelementptr %struct.rpc_xprt, ptr %0, i32 0, i32 51, i32 1
  store ptr %17, ptr %18, align 4
  %19 = load i16, ptr %3, align 2
  switch i16 %19, label %29 [
    i16 2, label %20
    i16 10, label %22
  ]

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.sockaddr_in, ptr %3, i32 0, i32 1
  br label %24

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.sockaddr_in6, ptr %3, i32 0, i32 1
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi ptr [ %23, %22 ], [ %21, %20 ]
  %26 = load i16, ptr %25, align 2
  %27 = call i16 @llvm.bswap.i16(i16 %26) #12
  %28 = zext i16 %27 to i32
  br label %29

29:                                               ; preds = %24, %14
  %30 = phi i32 [ 0, %14 ], [ %28, %24 ]
  %31 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 128, ptr noundef nonnull @.str.21, i32 noundef %30)
  %32 = call noalias ptr @kstrdup(ptr noundef nonnull %2, i32 noundef 3264) #12
  %33 = getelementptr %struct.rpc_xprt, ptr %0, i32 0, i32 51, i32 4
  store ptr %32, ptr %33, align 8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #12
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_ntop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sock_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_file(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xs_data_ready(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 72
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sock_xprt, ptr %3, i32 0, i32 17
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef %0) #12
  %8 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 24
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  store i32 0, ptr %8, align 4
  br label %12

12:                                               ; preds = %11, %5
  %13 = getelementptr inbounds %struct.sock_xprt, ptr %3, i32 0, i32 6
  %14 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %13) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load ptr, ptr @xprtiod_workqueue, align 4
  %18 = getelementptr inbounds %struct.sock_xprt, ptr %3, i32 0, i32 9
  %19 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %17, ptr noundef %18) #12
  br label %20

20:                                               ; preds = %16, %12, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xs_udp_write_space(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 23
  %3 = load volatile i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 21
  %5 = load volatile i32, ptr %4, align 8
  %6 = ashr i32 %5, 1
  %7 = icmp ult i32 %3, %6
  br i1 %7, label %8, label %34

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %34, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.socket, ptr %10, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %13) #12
  %14 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 72
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %34, label %17, !prof !27

17:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !30
  %18 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.socket_wq, ptr %19, i32 0, i32 2
  %23 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %22) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.sock_xprt, ptr %15, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 5, ptr noundef %26) #12
  %27 = load ptr, ptr @xprtiod_workqueue, align 4
  %28 = getelementptr inbounds %struct.sock_xprt, ptr %15, i32 0, i32 8
  %29 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %27, ptr noundef %28) #12
  %30 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 28
  %31 = load i32, ptr %30, align 8
  %32 = add i32 %31, -1
  store i32 %32, ptr %30, align 8
  br label %33

33:                                               ; preds = %25, %21, %17
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !31
  br label %34

34:                                               ; preds = %33, %12, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xs_error_report(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 72
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  %7 = load i32, ptr %6, align 4
  %8 = sub i32 0, %7
  %9 = getelementptr inbounds %struct.sock_xprt, ptr %3, i32 0, i32 13
  store i32 %8, ptr %9, align 8
  %10 = icmp eq i32 %7, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %13 = load ptr, ptr %12, align 8
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_socket_error, i32 0, i32 1), align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
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
  br i1 %26, label %29, label %27

27:                                               ; preds = %16
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !36
  %28 = tail call i32 @__traceiter_rpc_socket_error(ptr noundef null, ptr noundef nonnull %3, ptr noundef %13, i32 noundef %8) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !37
  br label %29

29:                                               ; preds = %27, %16, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !38
  %30 = getelementptr inbounds %struct.sock_xprt, ptr %3, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 4, ptr noundef %30) #12
  %31 = load ptr, ptr @xprtiod_workqueue, align 4
  %32 = getelementptr inbounds %struct.sock_xprt, ptr %3, i32 0, i32 8
  %33 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %31, ptr noundef %32) #12
  br label %34

34:                                               ; preds = %29, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_socket_error(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_socket_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @xs_setup_udp(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.xprt_create, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.xprt_create, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 128
  br i1 %6, label %86, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr @xprt_udp_slot_table_entries, align 4
  %9 = getelementptr inbounds %struct.xprt_create, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @xprt_alloc(ptr noundef %10, i32 noundef 1200, i32 noundef %8, i32 noundef %8) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %86, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.sock_xprt, ptr %11, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %14, ptr noundef nonnull @.str.10, ptr noundef nonnull @xs_setup_xprt.__key) #12
  %15 = getelementptr inbounds %struct.rpc_xprt, ptr %11, i32 0, i32 4
  %16 = load ptr, ptr %2, align 4
  %17 = load i32, ptr %4, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %15, ptr align 2 %16, i32 %17, i1 false) #12
  %18 = load i32, ptr %4, align 4
  %19 = getelementptr inbounds %struct.rpc_xprt, ptr %11, i32 0, i32 5
  store i32 %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.xprt_create, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.sock_xprt, ptr %11, i32 0, i32 11
  %25 = load i32, ptr %4, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %24, ptr nonnull align 2 %21, i32 %25, i1 false) #12
  br label %32

26:                                               ; preds = %13
  %27 = load ptr, ptr %2, align 4
  %28 = load i16, ptr %27, align 2
  %29 = getelementptr inbounds %struct.sock_xprt, ptr %11, i32 0, i32 11
  switch i16 %28, label %84 [
    i16 1, label %32
    i16 2, label %30
    i16 10, label %31
  ]

30:                                               ; preds = %26
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(16) %29, ptr noundef nonnull align 4 dereferenceable(16) @xs_init_anyaddr.sin, i32 16, i1 false) #12
  br label %32

31:                                               ; preds = %26
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(28) %29, ptr noundef nonnull align 4 dereferenceable(28) @xs_init_anyaddr.sin6, i32 28, i1 false) #12
  br label %32

32:                                               ; preds = %31, %30, %26, %23
  %33 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %86, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.rpc_xprt, ptr %11, i32 0, i32 6
  store i32 17, ptr %35, align 4
  %36 = getelementptr inbounds %struct.rpc_xprt, ptr %11, i32 0, i32 53
  store ptr @xs_udp_transport, ptr %36, align 8
  %37 = getelementptr inbounds %struct.rpc_xprt, ptr %11, i32 0, i32 9
  store i32 64384, ptr %37, align 8
  %38 = getelementptr inbounds %struct.rpc_xprt, ptr %11, i32 0, i32 23
  store i32 6000, ptr %38, align 8
  %39 = getelementptr inbounds %struct.rpc_xprt, ptr %11, i32 0, i32 24
  store i32 200, ptr %39, align 4
  %40 = getelementptr inbounds %struct.rpc_xprt, ptr %11, i32 0, i32 29
  store i32 30000, ptr %40, align 4
  %41 = getelementptr inbounds %struct.rpc_xprt, ptr %11, i32 0, i32 1
  store ptr @xs_udp_ops, ptr %41, align 4
  %42 = getelementptr inbounds %struct.rpc_xprt, ptr %11, i32 0, i32 3
  store ptr @xs_udp_default_timeout, ptr %42, align 4
  %43 = getelementptr inbounds %struct.sock_xprt, ptr %11, i32 0, i32 9
  store i32 -32, ptr %43, align 8
  %44 = getelementptr inbounds %struct.sock_xprt, ptr %11, i32 0, i32 9, i32 1
  store volatile ptr %44, ptr %44, align 4
  %45 = getelementptr inbounds %struct.sock_xprt, ptr %11, i32 0, i32 9, i32 1, i32 1
  store ptr %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.sock_xprt, ptr %11, i32 0, i32 9, i32 2
  store ptr @xs_udp_data_receive_workfn, ptr %46, align 4
  %47 = getelementptr inbounds %struct.sock_xprt, ptr %11, i32 0, i32 8
  store i32 -32, ptr %47, align 8
  %48 = getelementptr inbounds %struct.sock_xprt, ptr %11, i32 0, i32 8, i32 1
  store volatile ptr %48, ptr %48, align 4
  %49 = getelementptr inbounds %struct.sock_xprt, ptr %11, i32 0, i32 8, i32 1, i32 1
  store ptr %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.sock_xprt, ptr %11, i32 0, i32 8, i32 2
  store ptr @xs_error_handle, ptr %50, align 4
  %51 = getelementptr inbounds %struct.sock_xprt, ptr %11, i32 0, i32 7
  store i32 -32, ptr %51, align 4
  %52 = getelementptr inbounds %struct.sock_xprt, ptr %11, i32 0, i32 7, i32 0, i32 1
  store volatile ptr %52, ptr %52, align 4
  %53 = getelementptr inbounds %struct.sock_xprt, ptr %11, i32 0, i32 7, i32 0, i32 1, i32 1
  store ptr %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.sock_xprt, ptr %11, i32 0, i32 7, i32 0, i32 2
  store ptr @xs_udp_setup_socket, ptr %54, align 4
  %55 = getelementptr inbounds %struct.sock_xprt, ptr %11, i32 0, i32 7, i32 1
  tail call void @init_timer_key(ptr noundef %55, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #12
  %56 = load i16, ptr %3, align 2
  switch i16 %56, label %74 [
    i16 2, label %57
    i16 10, label %61
  ]

57:                                               ; preds = %34
  %58 = getelementptr inbounds %struct.sockaddr_in, ptr %3, i32 0, i32 1
  %59 = load i16, ptr %58, align 2
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %69, label %65

61:                                               ; preds = %34
  %62 = getelementptr inbounds %struct.sockaddr_in6, ptr %3, i32 0, i32 1
  %63 = load i16, ptr %62, align 2
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %61, %57
  %66 = phi ptr [ @.str.23, %57 ], [ @.str.24, %61 ]
  %67 = getelementptr inbounds %struct.rpc_xprt, ptr %11, i32 0, i32 18
  %68 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %67) #12
  br label %69

69:                                               ; preds = %65, %61, %57
  %70 = phi ptr [ @.str.23, %57 ], [ @.str.24, %61 ], [ %66, %65 ]
  tail call fastcc void @xs_format_peer_addresses(ptr noundef nonnull %11, ptr noundef nonnull @.str.23, ptr noundef nonnull %70)
  %71 = getelementptr inbounds %struct.rpc_xprt, ptr %11, i32 0, i32 18
  %72 = load volatile i32, ptr %71, align 4
  %73 = tail call zeroext i1 @try_module_get(ptr noundef null) #12
  br i1 %73, label %86, label %74

74:                                               ; preds = %69, %34
  %75 = phi ptr [ inttoptr (i32 -97 to ptr), %34 ], [ inttoptr (i32 -22 to ptr), %69 ]
  %76 = getelementptr %struct.rpc_xprt, ptr %11, i32 0, i32 51, i32 0
  %77 = load ptr, ptr %76, align 4
  tail call void @kfree(ptr noundef %77) #12
  %78 = getelementptr %struct.rpc_xprt, ptr %11, i32 0, i32 51, i32 1
  %79 = load ptr, ptr %78, align 4
  tail call void @kfree(ptr noundef %79) #12
  %80 = getelementptr %struct.rpc_xprt, ptr %11, i32 0, i32 51, i32 3
  %81 = load ptr, ptr %80, align 4
  tail call void @kfree(ptr noundef %81) #12
  %82 = getelementptr %struct.rpc_xprt, ptr %11, i32 0, i32 51, i32 4
  %83 = load ptr, ptr %82, align 4
  tail call void @kfree(ptr noundef %83) #12
  br label %84

84:                                               ; preds = %74, %26
  %85 = phi ptr [ %75, %74 ], [ inttoptr (i32 -97 to ptr), %26 ]
  tail call void @xprt_free(ptr noundef nonnull %11) #12
  br label %86

86:                                               ; preds = %84, %69, %32, %7, %1
  %87 = phi ptr [ %11, %32 ], [ %11, %69 ], [ inttoptr (i32 -12 to ptr), %7 ], [ inttoptr (i32 -9 to ptr), %1 ], [ %85, %84 ]
  ret ptr %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xs_udp_data_receive_workfn(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr i8, ptr %0, i32 -984
  %6 = tail call ptr @llvm.thread.pointer() #12
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %8, 262144
  store i32 %9, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  %10 = getelementptr i8, ptr %0, i32 16
  tail call void @mutex_lock(ptr noundef %10) #12
  %11 = getelementptr i8, ptr %0, i32 -100
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %122, label %14

14:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4
  %15 = call ptr @__skb_recv_udp(ptr noundef nonnull %12, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %100, label %17

17:                                               ; preds = %14
  %18 = getelementptr i8, ptr %0, i32 -284
  %19 = getelementptr inbounds %struct.sock_common, ptr %12, i32 0, i32 3
  %20 = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 46
  %21 = getelementptr i8, ptr %0, i32 -292
  br label %22

22:                                               ; preds = %96, %17
  %23 = phi ptr [ %15, %17 ], [ %98, %96 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !9
  %24 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 5
  %25 = load i32, ptr %24, align 8
  %26 = icmp slt i32 %25, 4
  br i1 %26, label %96, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = sub i32 %25, %29
  %31 = icmp sgt i32 %30, 3
  br i1 %31, label %35, label %32, !prof !39

32:                                               ; preds = %27
  %33 = call i32 @skb_copy_bits(ptr noundef nonnull %23, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 4) #12
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %96, label %39

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 17
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %96, label %39

39:                                               ; preds = %35, %32
  %40 = phi ptr [ %37, %35 ], [ %2, %32 ]
  call void @_raw_spin_lock(ptr noundef %18) #12
  %41 = load i32, ptr %40, align 4
  %42 = call ptr @xprt_lookup_rqst(ptr noundef %5, i32 noundef %41) #12
  %43 = icmp eq ptr %42, null
  br i1 %43, label %93, label %44

44:                                               ; preds = %39
  call void @xprt_pin_rqst(ptr noundef nonnull %42) #12
  %45 = getelementptr inbounds %struct.rpc_rqst, ptr %42, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  call void @xprt_update_rtt(ptr noundef %46) #12
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %47 = load i16, ptr %18, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %18, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %49 = load ptr, ptr %45, align 4
  %50 = getelementptr inbounds %struct.rpc_rqst, ptr %42, i32 0, i32 20
  %51 = getelementptr inbounds %struct.rpc_rqst, ptr %42, i32 0, i32 20, i32 7
  %52 = load i32, ptr %51, align 4
  %53 = call i32 @csum_partial_copy_to_xdr(ptr noundef %50, ptr noundef nonnull %23) #12
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %44
  call void @_raw_spin_lock(ptr noundef %18) #12
  %56 = load i16, ptr %19, align 8
  %57 = icmp eq i16 %56, 2
  %58 = load i16, ptr %20, align 4
  %59 = icmp eq i16 %58, 136
  %60 = select i1 %59, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 6), ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 4)
  %61 = select i1 %59, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 7), ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 5)
  %62 = select i1 %57, ptr %60, ptr %61
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr [10 x i32], ptr %63, i32 0, i32 3
  %65 = ptrtoint ptr %64 to i32
  %66 = call i32 @llvm.read_register.i32(metadata !0) #12
  %67 = inttoptr i32 %66 to ptr
  %68 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %67) #11, !srcloc !40
  %69 = add i32 %68, %65
  br label %88

70:                                               ; preds = %44
  %71 = call i32 @llvm.smin.i32(i32 %52, i32 %25) #12
  call void @_raw_spin_lock(ptr noundef %21) #12
  call void @xprt_adjust_cwnd(ptr noundef %5, ptr noundef %49, i32 noundef %71) #12
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %72 = load i16, ptr %21, align 4
  %73 = add i16 %72, 1
  store i16 %73, ptr %21, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  call void @_raw_spin_lock(ptr noundef %18) #12
  call void @xprt_complete_rqst(ptr noundef %49, i32 noundef %71) #12
  %74 = load i16, ptr %19, align 8
  %75 = icmp eq i16 %74, 2
  %76 = load i16, ptr %20, align 4
  %77 = icmp eq i16 %76, 136
  %78 = select i1 %77, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 6), ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 4)
  %79 = select i1 %77, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 7), ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 5)
  %80 = select i1 %75, ptr %78, ptr %79
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr [10 x i32], ptr %81, i32 0, i32 1
  %83 = ptrtoint ptr %82 to i32
  %84 = call i32 @llvm.read_register.i32(metadata !0) #12
  %85 = inttoptr i32 %84 to ptr
  %86 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %85) #11, !srcloc !40
  %87 = add i32 %86, %83
  br label %88

88:                                               ; preds = %70, %55
  %89 = phi i32 [ %87, %70 ], [ %69, %55 ]
  %90 = inttoptr i32 %89 to ptr
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %91, 1
  store i32 %92, ptr %90, align 4
  call void @xprt_unpin_rqst(ptr noundef nonnull %42) #12
  br label %93

93:                                               ; preds = %88, %39
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %94 = load i16, ptr %18, align 4
  %95 = add i16 %94, 1
  store i16 %95, ptr %18, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  br label %96

96:                                               ; preds = %93, %35, %32, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  call void @consume_skb(ptr noundef nonnull %23) #12
  %97 = call i32 @__cond_resched() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4
  %98 = call ptr @__skb_recv_udp(ptr noundef nonnull %12, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %22

100:                                              ; preds = %96, %14
  %101 = getelementptr i8, ptr %0, i32 -64
  call void @_clear_bit(i32 noundef 2, ptr noundef %101) #12
  %102 = getelementptr i8, ptr %0, i32 -104
  %103 = load ptr, ptr %102, align 8
  %104 = getelementptr inbounds %struct.socket, ptr %103, i32 0, i32 5
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.proto_ops, ptr %105, i32 0, i32 8
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr i8, ptr %0, i32 -96
  %109 = load ptr, ptr %108, align 8
  %110 = call i32 %107(ptr noundef %109, ptr noundef %103, ptr noundef null) #12
  %111 = and i32 %110, 65
  %112 = icmp ne i32 %111, 0
  %113 = and i32 %110, 8192
  %114 = icmp eq i32 %113, 0
  %115 = and i1 %112, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %100
  %117 = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %101) #12
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load ptr, ptr @xprtiod_workqueue, align 4
  %121 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %120, ptr noundef %0) #12
  br label %122

122:                                              ; preds = %119, %116, %100, %1
  %123 = and i32 %8, 262144
  call void @mutex_unlock(ptr noundef %10) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %124 = load i32, ptr %7, align 4
  %125 = and i32 %124, -262145
  %126 = or i32 %125, %123
  store i32 %126, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xs_udp_setup_socket(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -924
  %3 = getelementptr i8, ptr %0, i32 -908
  %4 = load i16, ptr %3, align 2
  %5 = zext i16 %4 to i32
  %6 = tail call fastcc ptr @xs_create_sock(ptr noundef %2, ptr noundef %2, i32 noundef %5, i32 noundef 2, i32 noundef 17, i1 noundef zeroext false)
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %83, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -40
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %34

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.socket, ptr %6, i32 0, i32 4
  %14 = load ptr, ptr %13, align 16
  tail call void @lock_sock_nested(ptr noundef %14, i32 noundef 0) #12
  %15 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 76
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i8, ptr %0, i32 260
  store ptr %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 75
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %0, i32 264
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 77
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %0, i32 268
  store ptr %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 78
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr i8, ptr %0, i32 272
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 72
  store ptr %2, ptr %27, align 4
  store ptr @xs_data_ready, ptr %15, align 8
  store ptr @xs_udp_write_space, ptr %21, align 4
  %28 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 13
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, 65536
  store i32 %30, ptr %28, align 4
  %31 = getelementptr i8, ptr %0, i32 -324
  tail call void @_set_bit(i32 noundef 1, ptr noundef %31) #12
  %32 = getelementptr i8, ptr %0, i32 -44
  store ptr %6, ptr %32, align 8
  store ptr %14, ptr %9, align 4
  tail call void @release_sock(ptr noundef %14) #12
  %33 = load ptr, ptr %9, align 4
  br label %34

34:                                               ; preds = %12, %8
  %35 = phi ptr [ %33, %12 ], [ %10, %8 ]
  %36 = getelementptr i8, ptr %0, i32 232
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.sock, ptr %35, i32 0, i32 43
  %41 = load i8, ptr %40, align 8
  %42 = or i8 %41, 32
  store i8 %42, ptr %40, align 8
  %43 = load i32, ptr %36, align 4
  %44 = getelementptr i8, ptr %0, i32 -336
  %45 = load i32, ptr %44, align 4
  %46 = shl i32 %43, 1
  %47 = mul i32 %46, %45
  %48 = getelementptr inbounds %struct.sock, ptr %35, i32 0, i32 15
  store i32 %47, ptr %48, align 4
  br label %49

49:                                               ; preds = %39, %34
  %50 = getelementptr i8, ptr %0, i32 236
  %51 = load i32, ptr %50, align 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.sock, ptr %35, i32 0, i32 43
  %55 = load i8, ptr %54, align 8
  %56 = or i8 %55, 16
  store i8 %56, ptr %54, align 8
  %57 = load i32, ptr %50, align 8
  %58 = getelementptr i8, ptr %0, i32 -336
  %59 = load i32, ptr %58, align 4
  %60 = shl i32 %57, 1
  %61 = mul i32 %60, %59
  %62 = getelementptr inbounds %struct.sock, ptr %35, i32 0, i32 21
  store i32 %61, ptr %62, align 8
  %63 = getelementptr inbounds %struct.sock, ptr %35, i32 0, i32 77
  %64 = load ptr, ptr %63, align 4
  tail call void %64(ptr noundef %35) #12
  br label %65

65:                                               ; preds = %53, %49
  %66 = load volatile i32, ptr @jiffies, align 64
  %67 = getelementptr i8, ptr %0, i32 -156
  store i32 %66, ptr %67, align 8
  %68 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_socket_connect, i32 0, i32 1), align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %65
  %71 = tail call ptr @llvm.thread.pointer() #12
  %72 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 2
  %73 = load i32, ptr %72, align 8
  %74 = lshr i32 %73, 5
  %75 = getelementptr i32, ptr @__cpu_online_mask, i32 %74
  %76 = load volatile i32, ptr %75, align 4
  %77 = and i32 %73, 31
  %78 = shl nuw i32 1, %77
  %79 = and i32 %78, %76
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %70
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !23
  %82 = tail call i32 @__traceiter_rpc_socket_connect(ptr noundef null, ptr noundef %2, ptr noundef %6, i32 noundef 0) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !24
  br label %83

83:                                               ; preds = %81, %70, %65, %1
  %84 = phi i32 [ -5, %1 ], [ 0, %65 ], [ 0, %70 ], [ 0, %81 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !25
  %85 = getelementptr i8, ptr %0, i32 -324
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %85) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !26
  tail call void @xprt_unlock_connect(ptr noundef %2, ptr noundef %2) #12
  tail call void @xprt_wake_pending_tasks(ptr noundef %2, i32 noundef %84) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xs_udp_set_buffer_size(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 15
  %5 = icmp eq i32 %1, 0
  %6 = add i32 %1, 1024
  %7 = select i1 %5, i32 0, i32 %6
  store i32 %7, ptr %4, align 8
  %8 = icmp eq i32 %2, 0
  %9 = add i32 %2, 1024
  %10 = select i1 %8, i32 0, i32 %9
  %11 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 14
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq i32 %10, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 43
  %17 = load i8, ptr %16, align 8
  %18 = or i8 %17, 32
  store i8 %18, ptr %16, align 8
  %19 = load i32, ptr %11, align 4
  %20 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 15
  %21 = load i32, ptr %20, align 4
  %22 = shl i32 %19, 1
  %23 = mul i32 %22, %21
  %24 = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 15
  store i32 %23, ptr %24, align 4
  %25 = load i32, ptr %4, align 8
  br label %26

26:                                               ; preds = %15, %3
  %27 = phi i32 [ %25, %15 ], [ %7, %3 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 43
  %31 = load i8, ptr %30, align 8
  %32 = or i8 %31, 16
  store i8 %32, ptr %30, align 8
  %33 = load i32, ptr %4, align 8
  %34 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 15
  %35 = load i32, ptr %34, align 4
  %36 = shl i32 %33, 1
  %37 = mul i32 %36, %35
  %38 = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 21
  store i32 %37, ptr %38, align 8
  %39 = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 77
  %40 = load ptr, ptr %39, align 4
  tail call void %40(ptr noundef %13) #12
  br label %41

41:                                               ; preds = %29, %26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_reserve_xprt_cong(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_release_xprt_cong(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpcb_getport_async(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xs_set_port(ptr nocapture noundef %0, i16 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 4
  %4 = load i16, ptr %3, align 2
  switch i16 %4, label %11 [
    i16 2, label %5
    i16 10, label %8
  ]

5:                                                ; preds = %2
  %6 = tail call i16 @llvm.bswap.i16(i16 %1) #12
  %7 = getelementptr inbounds %struct.sockaddr_in, ptr %3, i32 0, i32 1
  store i16 %6, ptr %7, align 2
  br label %11

8:                                                ; preds = %2
  %9 = tail call i16 @llvm.bswap.i16(i16 %1) #12
  %10 = getelementptr inbounds %struct.sockaddr_in6, ptr %3, i32 0, i32 1
  store i16 %9, ptr %10, align 2
  br label %11

11:                                               ; preds = %8, %5, %2
  %12 = getelementptr %struct.rpc_xprt, ptr %0, i32 0, i32 51, i32 4
  %13 = load ptr, ptr %12, align 8
  tail call void @kfree(ptr noundef %13) #12
  %14 = getelementptr %struct.rpc_xprt, ptr %0, i32 0, i32 51, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void @kfree(ptr noundef %15) #12
  tail call fastcc void @xs_format_common_peer_ports(ptr noundef %0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xs_connect(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call zeroext i1 @xprt_lock_connect(ptr noundef %0, ptr noundef %1, ptr noundef %0) #12
  %4 = load i1, ptr @xs_connect.__already_done, align 1
  %5 = select i1 %3, i1 true, i1 %4
  br i1 %5, label %7, label %6, !prof !39

6:                                                ; preds = %2
  store i1 true, ptr @xs_connect.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 2320, i32 noundef 9, ptr noundef null) #12
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 18
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  tail call fastcc void @xs_reset_transport(ptr noundef %0)
  %17 = tail call i32 @xprt_reconnect_delay(ptr noundef %0) #12
  tail call void @xprt_reconnect_backoff(ptr noundef %0, i32 noundef 300) #12
  br label %18

18:                                               ; preds = %16, %11, %7
  %19 = phi i32 [ 0, %11 ], [ %17, %16 ], [ 0, %7 ]
  %20 = load ptr, ptr @xprtiod_workqueue, align 4
  %21 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 7
  %22 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %20, ptr noundef %21, i32 noundef %19) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xs_udp_send_request(ptr noundef %0) #0 {
  %2 = alloca %struct.msghdr, align 8
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #12
  %6 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 4
  %7 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(48) %7, i8 0, i64 48, i1 false)
  store ptr %6, ptr %2, align 8
  %8 = getelementptr inbounds %struct.msghdr, ptr %2, i32 0, i32 1
  %9 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 5
  %10 = load i32, ptr %9, align 8
  store i32 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.msghdr, ptr %2, i32 0, i32 6
  store i32 16448, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !9
  %12 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 18
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %51, label %16

16:                                               ; preds = %1
  %17 = tail call zeroext i1 @xprt_request_get_cong(ptr noundef %4, ptr noundef %0) #12
  br i1 %17, label %18, label %51

18:                                               ; preds = %16
  %19 = tail call i64 @ktime_get() #12
  %20 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 29
  store i64 %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.sock_xprt, ptr %4, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = call i32 @xprt_sock_sendmsg(ptr noundef %22, ptr noundef nonnull %2, ptr noundef %5, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #12
  switch i32 %23, label %34 [
    i32 -1, label %51
    i32 -11, label %24
  ]

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.sock_xprt, ptr %4, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.sock, ptr %26, i32 0, i32 23
  %28 = load volatile i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.sock, ptr %26, i32 0, i32 21
  %30 = load volatile i32, ptr %29, align 8
  %31 = ashr i32 %30, 1
  %32 = icmp ult i32 %28, %31
  %33 = select i1 %32, i32 -105, i32 -11
  br label %34

34:                                               ; preds = %24, %18
  %35 = phi i32 [ %23, %18 ], [ %33, %24 ]
  %36 = load i32, ptr %3, align 4
  %37 = icmp ne i32 %36, 0
  %38 = icmp eq i32 %35, 0
  %39 = select i1 %37, i1 true, i1 %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 18
  %42 = load i32, ptr %41, align 8
  %43 = add i32 %42, %36
  store i32 %43, ptr %41, align 8
  %44 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 1, i32 8
  %45 = load i32, ptr %44, align 4
  %46 = icmp ult i32 %36, %45
  br i1 %46, label %49, label %51

47:                                               ; preds = %34
  switch i32 %35, label %51 [
    i32 -88, label %48
    i32 -11, label %49
  ]

48:                                               ; preds = %47
  br label %51

49:                                               ; preds = %47, %40
  %50 = call fastcc i32 @xs_nospace(ptr noundef %0)
  br label %51

51:                                               ; preds = %49, %48, %47, %40, %18, %16, %1
  %52 = phi i32 [ -107, %1 ], [ -57, %16 ], [ 0, %40 ], [ %35, %47 ], [ %50, %49 ], [ -107, %48 ], [ %23, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #12
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_wait_for_reply_request_rtt(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xs_udp_timer(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %3) #12
  tail call void @xprt_adjust_cwnd(ptr noundef %0, ptr noundef %1, i32 noundef -110) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %4 = load i16, ptr %3, align 4
  %5 = add i16 %4, 1
  store i16 %5, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_release_rqst_cong(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xs_udp_print_stats(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 12
  %4 = load i16, ptr %3, align 4
  %5 = zext i16 %4 to i32
  %6 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 6
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 8
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 9
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 10
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 11
  %23 = load i64, ptr %22, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i64 noundef %15, i64 noundef %17, i32 noundef %19, i64 noundef %21, i64 noundef %23) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xs_inject_disconnect(ptr noundef %0) #0 {
  tail call void @xprt_disconnect_done(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xprt_lock_connect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_reconnect_delay(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_reconnect_backoff(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xprt_request_get_cong(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_adjust_cwnd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__skb_recv_udp(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_update_rtt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial_copy_to_xdr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @xs_create_sock(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #0 {
  %7 = alloca %struct.__kernel_sockaddr_storage, align 4
  %8 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store ptr null, ptr %8, align 4, !annotation !9
  %9 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 49
  %10 = load ptr, ptr %9, align 8
  %11 = call i32 @__sock_create(ptr noundef %10, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %8, i32 noundef 1) #12
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %108, label %13

13:                                               ; preds = %6
  br i1 %5, label %14, label %18

14:                                               ; preds = %13
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr inbounds %struct.socket, ptr %15, i32 0, i32 4
  %17 = load ptr, ptr %16, align 16
  call void @sock_set_reuseport(ptr noundef %17) #12
  br label %18

18:                                               ; preds = %14, %13
  %19 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %7, i8 0, i32 128, i1 false) #12, !annotation !9
  %20 = getelementptr inbounds %struct.sock_xprt, ptr %1, i32 0, i32 12
  %21 = load i16, ptr %20, align 4
  %22 = zext i16 %21 to i32
  %23 = icmp eq i16 %21, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 19
  %26 = load i8, ptr %25, align 4
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %101, label %29

29:                                               ; preds = %24
  %30 = load i32, ptr @xprt_min_resvport, align 4
  %31 = load i32, ptr @xprt_max_resvport, align 4
  %32 = and i32 %31, 65535
  %33 = and i32 %30, 65535
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %98, label %35

35:                                               ; preds = %29
  %36 = sub i32 %31, %30
  %37 = call i32 @prandom_u32() #12
  %38 = trunc i32 %37 to i16
  %39 = trunc i32 %36 to i16
  %40 = add i16 %39, 1
  %41 = urem i16 %38, %40
  %42 = zext i16 %41 to i32
  %43 = add nuw nsw i32 %33, %42
  br label %44

44:                                               ; preds = %35, %18
  %45 = phi i32 [ %22, %18 ], [ %43, %35 ]
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %101, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.sock_xprt, ptr %1, i32 0, i32 11
  %49 = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 5
  %50 = load i32, ptr %49, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %7, ptr align 4 %48, i32 %50, i1 false) #12
  %51 = getelementptr inbounds %struct.sockaddr_in6, ptr %7, i32 0, i32 1
  %52 = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 19
  br label %53

53:                                               ; preds = %87, %47
  %54 = phi i32 [ 0, %47 ], [ %92, %87 ]
  %55 = phi i32 [ %45, %47 ], [ %89, %87 ]
  %56 = load i16, ptr %7, align 4
  switch i16 %56, label %60 [
    i16 2, label %57
    i16 10, label %57
  ]

57:                                               ; preds = %53, %53
  %58 = trunc i32 %55 to i16
  %59 = call i16 @llvm.bswap.i16(i16 %58) #12
  store i16 %59, ptr %51, align 2
  br label %60

60:                                               ; preds = %57, %53
  %61 = load i32, ptr %49, align 8
  %62 = call i32 @kernel_bind(ptr noundef %19, ptr noundef nonnull %7, i32 noundef %61) #12
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i8, ptr %52, align 4
  %66 = and i8 %65, 2
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %101, label %68

68:                                               ; preds = %64
  %69 = trunc i32 %55 to i16
  store i16 %69, ptr %20, align 4
  br label %101

70:                                               ; preds = %60
  %71 = load i16, ptr %20, align 4
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  store i16 0, ptr %20, align 4
  br label %74

74:                                               ; preds = %73, %70
  %75 = load i8, ptr %52, align 4
  %76 = and i8 %75, 1
  %77 = icmp eq i8 %76, 0
  %78 = and i32 %55, 65535
  br i1 %77, label %87, label %79

79:                                               ; preds = %74
  %80 = load i32, ptr @xprt_min_resvport, align 4
  %81 = icmp uge i32 %80, %78
  %82 = load i32, ptr @xprt_max_resvport, align 4
  %83 = icmp ult i32 %82, %78
  %84 = select i1 %81, i1 true, i1 %83
  %85 = add nuw nsw i32 %55, 65535
  %86 = select i1 %84, i32 %82, i32 %85
  br label %87

87:                                               ; preds = %79, %74
  %88 = phi i32 [ %86, %79 ], [ 0, %74 ]
  %89 = and i32 %88, 65535
  %90 = icmp ult i32 %78, %89
  %91 = zext i1 %90 to i32
  %92 = add i32 %54, %91
  %93 = icmp eq i32 %62, -98
  %94 = icmp ne i32 %92, 2
  %95 = select i1 %93, i1 %94, i1 false
  br i1 %95, label %53, label %96

96:                                               ; preds = %87
  %97 = load ptr, ptr %8, align 4
  br label %98

98:                                               ; preds = %96, %29
  %99 = phi ptr [ %19, %29 ], [ %97, %96 ]
  %100 = phi i32 [ -98, %29 ], [ %62, %96 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #12
  call void @sock_release(ptr noundef %99) #12
  br label %108

101:                                              ; preds = %68, %64, %44, %24
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #12
  %102 = load ptr, ptr %8, align 4
  %103 = call ptr @sock_alloc_file(ptr noundef %102, i32 noundef 2048, ptr noundef null) #12
  %104 = icmp ugt ptr %103, inttoptr (i32 -4096 to ptr)
  br i1 %104, label %111, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.sock_xprt, ptr %1, i32 0, i32 3
  store ptr %103, ptr %106, align 8
  %107 = load ptr, ptr %8, align 4
  br label %111

108:                                              ; preds = %98, %6
  %109 = phi i32 [ %11, %6 ], [ %100, %98 ]
  %110 = inttoptr i32 %109 to ptr
  br label %111

111:                                              ; preds = %108, %105, %101
  %112 = phi ptr [ %110, %108 ], [ %107, %105 ], [ %103, %101 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  ret ptr %112
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_unlock_connect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_set_reuseport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_bind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @xs_setup_tcp(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.xprt_create, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.xprt_create, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 128
  br i1 %6, label %94, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr @xprt_tcp_slot_table_entries, align 4
  %9 = getelementptr inbounds %struct.xprt_create, ptr %0, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  %13 = load i32, ptr @xprt_max_tcp_slot_table_entries, align 4
  %14 = select i1 %12, i32 %13, i32 65536
  %15 = getelementptr inbounds %struct.xprt_create, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr @xprt_alloc(ptr noundef %16, i32 noundef 1200, i32 noundef %8, i32 noundef %14) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %94, label %19

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.sock_xprt, ptr %17, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %20, ptr noundef nonnull @.str.10, ptr noundef nonnull @xs_setup_xprt.__key) #12
  %21 = getelementptr inbounds %struct.rpc_xprt, ptr %17, i32 0, i32 4
  %22 = load ptr, ptr %2, align 4
  %23 = load i32, ptr %4, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %21, ptr align 2 %22, i32 %23, i1 false) #12
  %24 = load i32, ptr %4, align 4
  %25 = getelementptr inbounds %struct.rpc_xprt, ptr %17, i32 0, i32 5
  store i32 %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.xprt_create, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.sock_xprt, ptr %17, i32 0, i32 11
  %31 = load i32, ptr %4, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %30, ptr nonnull align 2 %27, i32 %31, i1 false) #12
  br label %38

32:                                               ; preds = %19
  %33 = load ptr, ptr %2, align 4
  %34 = load i16, ptr %33, align 2
  %35 = getelementptr inbounds %struct.sock_xprt, ptr %17, i32 0, i32 11
  switch i16 %34, label %92 [
    i16 1, label %38
    i16 2, label %36
    i16 10, label %37
  ]

36:                                               ; preds = %32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(16) %35, ptr noundef nonnull align 4 dereferenceable(16) @xs_init_anyaddr.sin, i32 16, i1 false) #12
  br label %38

37:                                               ; preds = %32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(28) %35, ptr noundef nonnull align 4 dereferenceable(28) @xs_init_anyaddr.sin6, i32 28, i1 false) #12
  br label %38

38:                                               ; preds = %37, %36, %32, %29
  %39 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %94, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.rpc_xprt, ptr %17, i32 0, i32 6
  store i32 6, ptr %41, align 4
  %42 = getelementptr inbounds %struct.rpc_xprt, ptr %17, i32 0, i32 53
  store ptr @xs_tcp_transport, ptr %42, align 8
  %43 = getelementptr inbounds %struct.rpc_xprt, ptr %17, i32 0, i32 9
  store i32 2147483647, ptr %43, align 8
  %44 = getelementptr inbounds %struct.rpc_xprt, ptr %17, i32 0, i32 23
  store i32 6000, ptr %44, align 8
  %45 = getelementptr inbounds %struct.rpc_xprt, ptr %17, i32 0, i32 24
  store i32 300, ptr %45, align 4
  %46 = getelementptr inbounds %struct.rpc_xprt, ptr %17, i32 0, i32 29
  store i32 30000, ptr %46, align 4
  %47 = getelementptr inbounds %struct.rpc_xprt, ptr %17, i32 0, i32 1
  store ptr @xs_tcp_ops, ptr %47, align 4
  %48 = getelementptr inbounds %struct.rpc_xprt, ptr %17, i32 0, i32 3
  store ptr @xs_tcp_default_timeout, ptr %48, align 4
  %49 = getelementptr inbounds %struct.rpc_xprt, ptr %17, i32 0, i32 31
  store i32 6000, ptr %49, align 4
  %50 = getelementptr inbounds %struct.rpc_xprt, ptr %17, i32 0, i32 30
  store i32 18000, ptr %50, align 8
  %51 = getelementptr inbounds %struct.sock_xprt, ptr %17, i32 0, i32 9
  store i32 -32, ptr %51, align 8
  %52 = getelementptr inbounds %struct.sock_xprt, ptr %17, i32 0, i32 9, i32 1
  store volatile ptr %52, ptr %52, align 4
  %53 = getelementptr inbounds %struct.sock_xprt, ptr %17, i32 0, i32 9, i32 1, i32 1
  store ptr %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.sock_xprt, ptr %17, i32 0, i32 9, i32 2
  store ptr @xs_stream_data_receive_workfn, ptr %54, align 4
  %55 = getelementptr inbounds %struct.sock_xprt, ptr %17, i32 0, i32 8
  store i32 -32, ptr %55, align 8
  %56 = getelementptr inbounds %struct.sock_xprt, ptr %17, i32 0, i32 8, i32 1
  store volatile ptr %56, ptr %56, align 4
  %57 = getelementptr inbounds %struct.sock_xprt, ptr %17, i32 0, i32 8, i32 1, i32 1
  store ptr %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.sock_xprt, ptr %17, i32 0, i32 8, i32 2
  store ptr @xs_error_handle, ptr %58, align 4
  %59 = getelementptr inbounds %struct.sock_xprt, ptr %17, i32 0, i32 7
  store i32 -32, ptr %59, align 4
  %60 = getelementptr inbounds %struct.sock_xprt, ptr %17, i32 0, i32 7, i32 0, i32 1
  store volatile ptr %60, ptr %60, align 4
  %61 = getelementptr inbounds %struct.sock_xprt, ptr %17, i32 0, i32 7, i32 0, i32 1, i32 1
  store ptr %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.sock_xprt, ptr %17, i32 0, i32 7, i32 0, i32 2
  store ptr @xs_tcp_setup_socket, ptr %62, align 4
  %63 = getelementptr inbounds %struct.sock_xprt, ptr %17, i32 0, i32 7, i32 1
  tail call void @init_timer_key(ptr noundef %63, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #12
  %64 = load i16, ptr %3, align 2
  switch i16 %64, label %82 [
    i16 2, label %65
    i16 10, label %69
  ]

65:                                               ; preds = %40
  %66 = getelementptr inbounds %struct.sockaddr_in, ptr %3, i32 0, i32 1
  %67 = load i16, ptr %66, align 2
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %77, label %73

69:                                               ; preds = %40
  %70 = getelementptr inbounds %struct.sockaddr_in6, ptr %3, i32 0, i32 1
  %71 = load i16, ptr %70, align 2
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69, %65
  %74 = phi ptr [ @.str.28, %65 ], [ @.str.29, %69 ]
  %75 = getelementptr inbounds %struct.rpc_xprt, ptr %17, i32 0, i32 18
  %76 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %75) #12
  br label %77

77:                                               ; preds = %73, %69, %65
  %78 = phi ptr [ @.str.28, %65 ], [ @.str.29, %69 ], [ %74, %73 ]
  tail call fastcc void @xs_format_peer_addresses(ptr noundef nonnull %17, ptr noundef nonnull @.str.28, ptr noundef nonnull %78)
  %79 = getelementptr inbounds %struct.rpc_xprt, ptr %17, i32 0, i32 18
  %80 = load volatile i32, ptr %79, align 4
  %81 = tail call zeroext i1 @try_module_get(ptr noundef null) #12
  br i1 %81, label %94, label %82

82:                                               ; preds = %77, %40
  %83 = phi ptr [ inttoptr (i32 -97 to ptr), %40 ], [ inttoptr (i32 -22 to ptr), %77 ]
  %84 = getelementptr %struct.rpc_xprt, ptr %17, i32 0, i32 51, i32 0
  %85 = load ptr, ptr %84, align 4
  tail call void @kfree(ptr noundef %85) #12
  %86 = getelementptr %struct.rpc_xprt, ptr %17, i32 0, i32 51, i32 1
  %87 = load ptr, ptr %86, align 4
  tail call void @kfree(ptr noundef %87) #12
  %88 = getelementptr %struct.rpc_xprt, ptr %17, i32 0, i32 51, i32 3
  %89 = load ptr, ptr %88, align 4
  tail call void @kfree(ptr noundef %89) #12
  %90 = getelementptr %struct.rpc_xprt, ptr %17, i32 0, i32 51, i32 4
  %91 = load ptr, ptr %90, align 4
  tail call void @kfree(ptr noundef %91) #12
  br label %92

92:                                               ; preds = %82, %32
  %93 = phi ptr [ %83, %82 ], [ inttoptr (i32 -97 to ptr), %32 ]
  tail call void @xprt_free(ptr noundef nonnull %17) #12
  br label %94

94:                                               ; preds = %92, %77, %38, %7, %1
  %95 = phi ptr [ %17, %38 ], [ %17, %77 ], [ inttoptr (i32 -12 to ptr), %7 ], [ inttoptr (i32 -9 to ptr), %1 ], [ %93, %92 ]
  ret ptr %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xs_tcp_setup_socket(ptr noundef %0) #0 {
  %2 = alloca %struct.__kernel_sockaddr_storage, align 4
  %3 = getelementptr i8, ptr %0, i32 -924
  %4 = getelementptr i8, ptr %0, i32 -44
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -908
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = tail call fastcc ptr @xs_create_sock(ptr noundef %3, ptr noundef %3, i32 noundef %10, i32 noundef 1, i32 noundef 6, i1 noundef zeroext true)
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = ptrtoint ptr %11 to i32
  tail call void @xprt_wake_pending_tasks(ptr noundef %3, i32 noundef %14) #12
  br label %144

15:                                               ; preds = %7, %1
  %16 = phi ptr [ %5, %1 ], [ %11, %7 ]
  %17 = getelementptr i8, ptr %0, i32 -40
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %75

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.socket, ptr %16, i32 0, i32 4
  %22 = load ptr, ptr %21, align 16
  %23 = getelementptr i8, ptr %0, i32 -908
  %24 = load i16, ptr %23, align 2
  %25 = icmp eq i16 %24, 10
  br i1 %25, label %26, label %56

26:                                               ; preds = %20
  tail call void @lock_sock_nested(ptr noundef %22, i32 noundef 0) #12
  %27 = getelementptr inbounds %struct.sock_common, ptr %22, i32 0, i32 4
  %28 = load volatile i8, ptr %27, align 2
  %29 = zext i8 %28 to i32
  %30 = shl nuw i32 1, %29
  %31 = and i32 %30, -4161
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.inet_sock, ptr %22, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8
  br label %36

36:                                               ; preds = %33, %26
  %37 = phi ptr [ %35, %33 ], [ null, %26 ]
  %38 = getelementptr inbounds %struct.ipv6_pinfo, ptr %37, i32 0, i32 9
  %39 = load i16, ptr %38, align 2
  %40 = load volatile i8, ptr %27, align 2
  %41 = zext i8 %40 to i32
  %42 = shl nuw i32 1, %41
  %43 = and i32 %42, -4161
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.inet_sock, ptr %22, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8
  br label %48

48:                                               ; preds = %45, %36
  %49 = phi ptr [ %47, %45 ], [ null, %36 ]
  %50 = and i16 %39, 512
  %51 = getelementptr inbounds %struct.ipv6_pinfo, ptr %49, i32 0, i32 9
  %52 = load i16, ptr %51, align 2
  %53 = and i16 %52, -897
  %54 = or i16 %50, %53
  %55 = or i16 %54, 128
  store i16 %55, ptr %51, align 2
  tail call void @release_sock(ptr noundef %22) #12
  br label %56

56:                                               ; preds = %48, %20
  tail call fastcc void @xs_tcp_set_socket_timeouts(ptr noundef %3, ptr noundef %16) #12
  tail call void @tcp_sock_set_nodelay(ptr noundef %22) #12
  tail call void @lock_sock_nested(ptr noundef %22, i32 noundef 0) #12
  %57 = getelementptr inbounds %struct.sock, ptr %22, i32 0, i32 76
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr i8, ptr %0, i32 260
  store ptr %58, ptr %59, align 8
  %60 = getelementptr inbounds %struct.sock, ptr %22, i32 0, i32 75
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %0, i32 264
  store ptr %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.sock, ptr %22, i32 0, i32 77
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %0, i32 268
  store ptr %64, ptr %65, align 8
  %66 = getelementptr inbounds %struct.sock, ptr %22, i32 0, i32 78
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr i8, ptr %0, i32 272
  store ptr %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.sock, ptr %22, i32 0, i32 72
  store ptr %3, ptr %69, align 4
  store ptr @xs_data_ready, ptr %57, align 8
  store ptr @xs_tcp_state_change, ptr %60, align 4
  store ptr @xs_tcp_write_space, ptr %63, align 4
  %70 = getelementptr inbounds %struct.sock_common, ptr %22, i32 0, i32 13
  %71 = load i32, ptr %70, align 4
  store ptr @xs_error_report, ptr %66, align 8
  %72 = and i32 %71, -65553
  %73 = or i32 %72, 65536
  store i32 %73, ptr %70, align 4
  %74 = getelementptr i8, ptr %0, i32 -324
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %74) #12
  store ptr %16, ptr %4, align 8
  store ptr %22, ptr %17, align 4
  tail call void @release_sock(ptr noundef %22) #12
  br label %75

75:                                               ; preds = %56, %15
  %76 = getelementptr i8, ptr %0, i32 -324
  %77 = load volatile i32, ptr %76, align 4
  %78 = and i32 %77, 16
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %75
  %81 = getelementptr i8, ptr %0, i32 -160
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, 1
  store i32 %83, ptr %81, align 4
  %84 = load volatile i32, ptr @jiffies, align 64
  %85 = getelementptr i8, ptr %0, i32 -156
  store i32 %84, ptr %85, align 8
  %86 = getelementptr i8, ptr %0, i32 -4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %86) #12
  %87 = getelementptr i8, ptr %0, i32 -908
  %88 = getelementptr i8, ptr %0, i32 -780
  %89 = load i32, ptr %88, align 8
  %90 = tail call i32 @kernel_connect(ptr noundef %16, ptr noundef %87, i32 noundef %89, i32 noundef 2048) #12
  br label %91

91:                                               ; preds = %80, %75
  %92 = phi i32 [ %90, %80 ], [ -107, %75 ]
  %93 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_socket_connect, i32 0, i32 1), align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %91
  %96 = tail call ptr @llvm.thread.pointer() #12
  %97 = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 2
  %98 = load i32, ptr %97, align 8
  %99 = lshr i32 %98, 5
  %100 = getelementptr i32, ptr @__cpu_online_mask, i32 %99
  %101 = load volatile i32, ptr %100, align 4
  %102 = and i32 %98, 31
  %103 = shl nuw i32 1, %102
  %104 = and i32 %103, %101
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %95
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !23
  %107 = tail call i32 @__traceiter_rpc_socket_connect(ptr noundef null, ptr noundef %3, ptr noundef %16, i32 noundef %92) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !24
  br label %108

108:                                              ; preds = %106, %95, %91
  switch i32 %92, label %140 [
    i32 0, label %109
    i32 -115, label %133
    i32 -114, label %146
    i32 -99, label %138
    i32 -22, label %142
    i32 -111, label %142
    i32 -104, label %142
    i32 -100, label %142
    i32 -101, label %142
    i32 -113, label %142
    i32 -98, label %142
    i32 -105, label %142
  ]

109:                                              ; preds = %108
  %110 = getelementptr i8, ptr %0, i32 224
  %111 = load i16, ptr %110, align 4
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %113, label %133

113:                                              ; preds = %109
  %114 = getelementptr i8, ptr %0, i32 -320
  %115 = load i8, ptr %114, align 4
  %116 = and i8 %115, 2
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %133, label %118

118:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %2, i8 0, i32 128, i1 false) #12, !annotation !9
  %119 = call i32 @kernel_getsockname(ptr noundef %16, ptr noundef nonnull %2) #12
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %131, label %121

121:                                              ; preds = %118
  %122 = load i16, ptr %2, align 4
  switch i16 %122, label %131 [
    i16 10, label %123
    i16 2, label %127
  ]

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.sockaddr_in6, ptr %2, i32 0, i32 1
  %125 = load i16, ptr %124, align 2
  %126 = call i16 @llvm.bswap.i16(i16 %125) #12
  br label %131

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.sockaddr_in, ptr %2, i32 0, i32 1
  %129 = load i16, ptr %128, align 2
  %130 = call i16 @llvm.bswap.i16(i16 %129) #12
  br label %131

131:                                              ; preds = %127, %123, %121, %118
  %132 = phi i16 [ 0, %118 ], [ 0, %121 ], [ %130, %127 ], [ %126, %123 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #12
  store i16 %132, ptr %110, align 4
  br label %133

133:                                              ; preds = %131, %113, %109, %108
  %134 = getelementptr i8, ptr %0, i32 -296
  %135 = load i32, ptr %134, align 4
  %136 = icmp ult i32 %135, 300
  br i1 %136, label %137, label %146

137:                                              ; preds = %133
  store i32 300, ptr %134, align 4
  br label %146

138:                                              ; preds = %108
  %139 = getelementptr i8, ptr %0, i32 224
  store i16 0, ptr %139, align 4
  br label %142

140:                                              ; preds = %108
  %141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.xs_tcp_setup_socket, i32 noundef %92) #13
  br label %142

142:                                              ; preds = %140, %138, %108, %108, %108, %108, %108, %108, %108, %108
  %143 = phi i32 [ -11, %140 ], [ %92, %108 ], [ %92, %108 ], [ %92, %108 ], [ %92, %108 ], [ %92, %108 ], [ %92, %108 ], [ %92, %108 ], [ %92, %108 ], [ -11, %138 ]
  tail call void @xprt_wake_pending_tasks(ptr noundef %3, i32 noundef %143) #12
  tail call void @xprt_force_disconnect(ptr noundef %3) #12
  br label %144

144:                                              ; preds = %142, %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !25
  %145 = getelementptr i8, ptr %0, i32 -324
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %145) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !26
  br label %146

146:                                              ; preds = %144, %137, %133, %108
  call void @xprt_unlock_connect(ptr noundef %3, ptr noundef %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xs_tcp_send_request(ptr noundef %0) #0 {
  %2 = alloca %struct.msghdr, align 8
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 1, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  %9 = or i32 %7, -2147483648
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #12
  %11 = select i1 %8, i32 0, i32 %10
  %12 = add i32 %7, 4
  %13 = select i1 %8, i32 0, i32 %12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i32 56, i1 false)
  %14 = getelementptr inbounds { ptr, i32, { i8, i8, i8, [1 x i8], i32, i32, %union.anon.31, %union.anon.32 }, %union.anon.34, i8, [3 x i8], i32, i32, ptr, [4 x i8] }, ptr %2, i32 0, i32 7
  store i32 16448, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !9
  %15 = getelementptr inbounds %struct.sock_xprt, ptr %4, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 28
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.sock_xprt, ptr %4, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %105, label %26

26:                                               ; preds = %22
  %27 = tail call i32 @kernel_sock_shutdown(ptr noundef nonnull %24, i32 noundef 2) #12
  br label %105

28:                                               ; preds = %18, %1
  %29 = getelementptr inbounds %struct.sock_xprt, ptr %4, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %105, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.sock_xprt, ptr %4, i32 0, i32 6
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.sock_xprt, ptr %4, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  tail call fastcc void @xs_tcp_set_socket_timeouts(ptr noundef %4, ptr noundef %39)
  br label %40

40:                                               ; preds = %37, %32
  %41 = tail call i64 @ktime_get() #12
  %42 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 29
  store i64 %41, ptr %42, align 8
  %43 = load ptr, ptr %29, align 4
  tail call void @tcp_sock_set_cork(ptr noundef %43, i1 noundef zeroext true) #12
  %44 = getelementptr inbounds %struct.sock_xprt, ptr %4, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8
  %46 = load i32, ptr %15, align 4
  %47 = call i32 @xprt_sock_sendmsg(ptr noundef %45, ptr noundef nonnull %2, ptr noundef %5, i32 noundef %46, i32 noundef %11, ptr noundef nonnull %3) #12
  %48 = load i32, ptr %3, align 4
  %49 = load i32, ptr %15, align 4
  %50 = add i32 %49, %48
  store i32 %50, ptr %15, align 4
  %51 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 28
  store i32 %50, ptr %51, align 4
  %52 = icmp ult i32 %50, %13
  br i1 %52, label %63, label %53, !prof !27

53:                                               ; preds = %92, %40
  %54 = load i32, ptr %15, align 4
  %55 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 18
  %56 = load i32, ptr %55, align 8
  %57 = add i32 %56, %54
  store i32 %57, ptr %55, align 8
  store i32 0, ptr %15, align 4
  %58 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 39
  %59 = load volatile i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %105

61:                                               ; preds = %53
  %62 = load ptr, ptr %29, align 4
  call void @tcp_sock_set_cork(ptr noundef %62, i1 noundef zeroext false) #12
  br label %105

63:                                               ; preds = %92, %40
  %64 = phi i32 [ %97, %92 ], [ %48, %40 ]
  %65 = phi i32 [ %96, %92 ], [ %47, %40 ]
  %66 = phi i1 [ %94, %92 ], [ false, %40 ]
  %67 = icmp eq i32 %64, 0
  %68 = icmp eq i32 %65, 0
  %69 = select i1 %67, i1 %68, i1 false
  %70 = load i1, ptr @xs_tcp_send_request.__already_done, align 1
  %71 = xor i1 %70, true
  %72 = select i1 %69, i1 %71, i1 false
  br i1 %72, label %73, label %74, !prof !27

73:                                               ; preds = %63
  store i1 true, ptr @xs_tcp_send_request.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1052, i32 noundef 9, ptr noundef null) #12
  br label %90

74:                                               ; preds = %63
  %75 = icmp eq i32 %65, -11
  br i1 %75, label %76, label %88

76:                                               ; preds = %74
  %77 = load ptr, ptr %44, align 8
  %78 = getelementptr inbounds %struct.socket, ptr %77, i32 0, i32 2
  %79 = load volatile i32, ptr %78, align 4
  %80 = and i32 %79, 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %103

82:                                               ; preds = %76
  %83 = icmp ne i32 %64, 0
  %84 = xor i1 %66, true
  %85 = select i1 %83, i1 true, i1 %84
  %86 = xor i1 %83, true
  %87 = select i1 %86, i1 true, i1 %66
  br i1 %85, label %92, label %105

88:                                               ; preds = %74
  %89 = icmp slt i32 %65, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %88, %73
  %91 = load ptr, ptr %44, align 8
  br label %92

92:                                               ; preds = %90, %82
  %93 = phi ptr [ %91, %90 ], [ %77, %82 ]
  %94 = phi i1 [ false, %90 ], [ %87, %82 ]
  %95 = load i32, ptr %15, align 4
  %96 = call i32 @xprt_sock_sendmsg(ptr noundef %93, ptr noundef nonnull %2, ptr noundef %5, i32 noundef %95, i32 noundef %11, ptr noundef nonnull %3) #12
  %97 = load i32, ptr %3, align 4
  %98 = load i32, ptr %15, align 4
  %99 = add i32 %98, %97
  store i32 %99, ptr %15, align 4
  store i32 %99, ptr %51, align 4
  %100 = icmp ult i32 %99, %13
  br i1 %100, label %63, label %53, !prof !27

101:                                              ; preds = %88
  switch i32 %65, label %105 [
    i32 -88, label %102
    i32 -11, label %103
  ]

102:                                              ; preds = %101
  br label %105

103:                                              ; preds = %101, %76
  %104 = call fastcc i32 @xs_nospace(ptr noundef %0)
  br label %105

105:                                              ; preds = %103, %102, %101, %82, %61, %53, %28, %26, %22
  %106 = phi i32 [ -107, %26 ], [ -107, %22 ], [ -107, %28 ], [ 0, %61 ], [ 0, %53 ], [ %65, %101 ], [ %104, %103 ], [ -107, %102 ], [ -105, %82 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #12
  ret i32 %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xs_tcp_shutdown(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  %9 = load volatile i8, ptr %8, align 2
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi i8 [ %9, %7 ], [ 7, %1 ]
  %12 = icmp eq ptr %3, null
  br i1 %12, label %39, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 19
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 2
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  tail call fastcc void @xs_reset_transport(ptr noundef %0) #12
  %19 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 24
  store i32 0, ptr %19, align 4
  br label %39

20:                                               ; preds = %13
  switch i8 %11, label %38 [
    i8 4, label %39
    i8 5, label %39
    i8 1, label %21
    i8 8, label %21
  ]

21:                                               ; preds = %20, %20
  %22 = tail call i32 @kernel_sock_shutdown(ptr noundef nonnull %3, i32 noundef 2) #12
  %23 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_socket_shutdown, i32 0, i32 1), align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = tail call ptr @llvm.thread.pointer() #12
  %27 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 5
  %30 = getelementptr i32, ptr @__cpu_online_mask, i32 %29
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %28, 31
  %33 = shl nuw i32 1, %32
  %34 = and i32 %33, %31
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %25
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !41
  %37 = tail call i32 @__traceiter_rpc_socket_shutdown(ptr noundef null, ptr noundef %0, ptr noundef nonnull %3) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !42
  br label %39

38:                                               ; preds = %20
  tail call fastcc void @xs_reset_transport(ptr noundef %0)
  br label %39

39:                                               ; preds = %38, %36, %25, %21, %20, %20, %18, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xs_tcp_set_connect_timeout(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %4) #12
  %5 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 31
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, %2
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  store i32 %2, ptr %5, align 4
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 30
  %11 = load i32, ptr %10, align 8
  %12 = icmp ugt i32 %11, %1
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds i8, ptr %15, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds i8, ptr %15, i32 12
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds i8, ptr %15, i32 16
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %19, 1
  %23 = add i32 %19, %1
  %24 = udiv i32 %23, %22
  %25 = tail call i32 @llvm.umax.i32(i32 %24, i32 600)
  %26 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 16
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 16, i32 1
  store i32 %25, ptr %27, align 4
  %28 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 16, i32 2
  store i32 %17, ptr %28, align 4
  %29 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 16, i32 3
  store i32 %19, ptr %29, align 4
  %30 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 16, i32 4
  store i32 %21, ptr %30, align 4
  store ptr %26, ptr %14, align 4
  store i32 %1, ptr %10, align 8
  br label %31

31:                                               ; preds = %13, %9
  %32 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %32) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %33 = load i16, ptr %4, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xs_tcp_print_stats(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 18
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load volatile i32, ptr @jiffies, align 64
  %9 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 28
  %10 = load i32, ptr %9, align 8
  %11 = sub i32 %8, %10
  %12 = sdiv i32 %11, 100
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi i32 [ %12, %7 ], [ 0, %2 ]
  %15 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 12
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = udiv i32 %23, 100
  %25 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 4
  %26 = load i32, ptr %25, align 8
  %27 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 6
  %30 = load i32, ptr %29, align 8
  %31 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 8
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 9
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 10
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 48, i32 11
  %40 = load i64, ptr %39, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %24, i32 noundef %14, i32 noundef %26, i32 noundef %28, i32 noundef %30, i64 noundef %32, i64 noundef %34, i32 noundef %36, i64 noundef %38, i64 noundef %40) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_setup_bc(ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @xs_tcp_bc_maxpayload(ptr nocapture noundef readnone %0) #6 {
  ret i32 4096
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_bc_max_slots(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_free_bc_rqst(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_destroy_bc(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xs_tcp_set_socket_timeouts(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.rpc_xprt, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 99
  %8 = udiv i32 %7, 100
  %9 = getelementptr inbounds %struct.rpc_timeout, ptr %5, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 1
  %12 = tail call i32 @jiffies_to_msecs(i32 noundef %6) #12
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.rpc_timeout, ptr %13, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  %17 = mul i32 %16, %12
  %18 = getelementptr inbounds %struct.sock_xprt, ptr %0, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %18) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %19 = load i16, ptr %3, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %21 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %22 = load ptr, ptr %21, align 16
  tail call void @sock_set_keepalive(ptr noundef %22) #12
  %23 = load ptr, ptr %21, align 16
  %24 = tail call i32 @tcp_sock_set_keepidle(ptr noundef %23, i32 noundef %8) #12
  %25 = load ptr, ptr %21, align 16
  %26 = tail call i32 @tcp_sock_set_keepintvl(ptr noundef %25, i32 noundef %8) #12
  %27 = load ptr, ptr %21, align 16
  %28 = tail call i32 @tcp_sock_set_keepcnt(ptr noundef %27, i32 noundef %11) #12
  %29 = load ptr, ptr %21, align 16
  tail call void @tcp_sock_set_user_timeout(ptr noundef %29, i32 noundef %17) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_sock_set_cork(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_set_keepalive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_sock_set_keepidle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_sock_set_keepintvl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_sock_set_keepcnt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_sock_set_user_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_socket_shutdown(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_sock_set_nodelay(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xs_tcp_state_change(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 72
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %81, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %7 = load ptr, ptr %6, align 8
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_socket_state_change, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %5
  %11 = tail call ptr @llvm.thread.pointer() #12
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr @__cpu_online_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !43
  %22 = tail call i32 @__traceiter_rpc_socket_state_change(ptr noundef null, ptr noundef nonnull %3, ptr noundef %7) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !44
  br label %23

23:                                               ; preds = %21, %10, %5
  %24 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %25 = load volatile i8, ptr %24, align 2
  switch i8 %25, label %81 [
    i8 1, label %26
    i8 4, label %48
    i8 8, label %54
    i8 11, label %63
    i8 9, label %68
    i8 7, label %70
  ]

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 18
  %28 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %27) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %81

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 25
  %32 = load i32, ptr %31, align 8
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 8
  %34 = getelementptr inbounds %struct.sock_xprt, ptr %3, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %34) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !25
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %27) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !26
  %35 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 48, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 4
  %38 = load volatile i32, ptr @jiffies, align 64
  %39 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 48, i32 2
  %40 = load i32, ptr %39, align 8
  %41 = sub i32 %38, %40
  %42 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 48, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %41, %43
  store i32 %44, ptr %42, align 4
  tail call void @_set_bit(i32 noundef 6, ptr noundef %34) #12
  %45 = load ptr, ptr @xprtiod_workqueue, align 4
  %46 = getelementptr inbounds %struct.sock_xprt, ptr %3, i32 0, i32 8
  %47 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %45, ptr noundef %46) #12
  br label %81

48:                                               ; preds = %23
  %49 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 25
  %50 = load i32, ptr %49, align 8
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 8
  %52 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 24
  store i32 0, ptr %52, align 4
  %53 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 6, ptr noundef %53) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !45
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %53) #12
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %53) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !46
  br label %81

54:                                               ; preds = %23
  %55 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 25
  %56 = load i32, ptr %55, align 8
  %57 = add i32 %56, 1
  store i32 %57, ptr %55, align 8
  %58 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 18
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %58) #12
  %59 = getelementptr inbounds %struct.sock_xprt, ptr %3, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 7, ptr noundef %59) #12
  %60 = load ptr, ptr @xprtiod_workqueue, align 4
  %61 = getelementptr inbounds %struct.sock_xprt, ptr %3, i32 0, i32 8
  %62 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %60, ptr noundef %61) #12
  br label %63

63:                                               ; preds = %54, %23
  %64 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 24
  %65 = load i32, ptr %64, align 4
  %66 = icmp ult i32 %65, 300
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  store i32 300, ptr %64, align 4
  br label %81

68:                                               ; preds = %23
  %69 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 6, ptr noundef %69) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !47
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %69) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !48
  br label %81

70:                                               ; preds = %23
  %71 = getelementptr inbounds %struct.sock_xprt, ptr %3, i32 0, i32 6
  %72 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %71) #12
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !25
  %75 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 18
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %75) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !26
  br label %76

76:                                               ; preds = %74, %70
  %77 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 18
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %77) #12
  tail call void @_set_bit(i32 noundef 7, ptr noundef %71) #12
  %78 = load ptr, ptr @xprtiod_workqueue, align 4
  %79 = getelementptr inbounds %struct.sock_xprt, ptr %3, i32 0, i32 8
  %80 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %78, ptr noundef %79) #12
  br label %81

81:                                               ; preds = %76, %68, %67, %63, %48, %30, %26, %23, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xs_tcp_write_space(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 21
  %3 = load volatile i32, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %5 = load volatile i32, ptr %4, align 4
  %6 = sub i32 %3, %5
  %7 = load volatile i32, ptr %4, align 4
  %8 = ashr i32 %7, 1
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %48, label %10

10:                                               ; preds = %1
  %11 = load volatile i32, ptr %4, align 4
  %12 = load volatile i32, ptr %2, align 8
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %48

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.proto, ptr %16, i32 0, i32 26
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = tail call zeroext i1 %18(ptr noundef %0, i32 noundef 0) #12
  br i1 %21, label %22, label %48

22:                                               ; preds = %20, %14
  %23 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %48, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.socket, ptr %24, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %27) #12
  %28 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 72
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %48, label %31, !prof !27

31:                                               ; preds = %26
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !30
  %32 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  %33 = load volatile ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.socket_wq, ptr %33, i32 0, i32 2
  %37 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %36) #12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.sock_xprt, ptr %29, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 5, ptr noundef %40) #12
  %41 = load ptr, ptr @xprtiod_workqueue, align 4
  %42 = getelementptr inbounds %struct.sock_xprt, ptr %29, i32 0, i32 8
  %43 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %41, ptr noundef %42) #12
  %44 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 28
  %45 = load i32, ptr %44, align 8
  %46 = add i32 %45, -1
  store i32 %46, ptr %44, align 8
  br label %47

47:                                               ; preds = %39, %35, %31
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !31
  br label %48

48:                                               ; preds = %47, %26, %22, %20, %10, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_socket_state_change(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @xs_setup_bc_tcp(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.xprt_create, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.xprt_create, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 128
  br i1 %6, label %80, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr @xprt_tcp_slot_table_entries, align 4
  %9 = getelementptr inbounds %struct.xprt_create, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @xprt_alloc(ptr noundef %10, i32 noundef 1200, i32 noundef %8, i32 noundef %8) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %80, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.sock_xprt, ptr %11, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %14, ptr noundef nonnull @.str.10, ptr noundef nonnull @xs_setup_xprt.__key) #12
  %15 = getelementptr inbounds %struct.rpc_xprt, ptr %11, i32 0, i32 4
  %16 = load ptr, ptr %2, align 4
  %17 = load i32, ptr %4, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %15, ptr align 2 %16, i32 %17, i1 false) #12
  %18 = load i32, ptr %4, align 4
  %19 = getelementptr inbounds %struct.rpc_xprt, ptr %11, i32 0, i32 5
  store i32 %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.xprt_create, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.sock_xprt, ptr %11, i32 0, i32 11
  %25 = load i32, ptr %4, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %24, ptr nonnull align 2 %21, i32 %25, i1 false) #12
  br label %32

26:                                               ; preds = %13
  %27 = load ptr, ptr %2, align 4
  %28 = load i16, ptr %27, align 2
  %29 = getelementptr inbounds %struct.sock_xprt, ptr %11, i32 0, i32 11
  switch i16 %28, label %78 [
    i16 1, label %32
    i16 2, label %30
    i16 10, label %31
  ]

30:                                               ; preds = %26
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(16) %29, ptr noundef nonnull align 4 dereferenceable(16) @xs_init_anyaddr.sin, i32 16, i1 false) #12
  br label %32

31:                                               ; preds = %26
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(28) %29, ptr noundef nonnull align 4 dereferenceable(28) @xs_init_anyaddr.sin6, i32 28, i1 false) #12
  br label %32

32:                                               ; preds = %31, %30, %26, %23
  %33 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %80, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.rpc_xprt, ptr %11, i32 0, i32 6
  store i32 6, ptr %35, align 4
  %36 = getelementptr inbounds %struct.rpc_xprt, ptr %11, i32 0, i32 53
  store ptr @xs_bc_tcp_transport, ptr %36, align 8
  %37 = getelementptr inbounds %struct.rpc_xprt, ptr %11, i32 0, i32 9
  store i32 2147483647, ptr %37, align 8
  %38 = getelementptr inbounds %struct.rpc_xprt, ptr %11, i32 0, i32 3
  store ptr @xs_tcp_default_timeout, ptr %38, align 4
  %39 = getelementptr inbounds %struct.rpc_xprt, ptr %11, i32 0, i32 18
  %40 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %39) #12
  %41 = getelementptr inbounds %struct.rpc_xprt, ptr %11, i32 0, i32 23
  store i32 0, ptr %41, align 8
  %42 = getelementptr inbounds %struct.rpc_xprt, ptr %11, i32 0, i32 24
  store i32 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.rpc_xprt, ptr %11, i32 0, i32 29
  store i32 0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.rpc_xprt, ptr %11, i32 0, i32 1
  store ptr @bc_tcp_ops, ptr %44, align 4
  %45 = load i16, ptr %3, align 2
  switch i16 %45, label %68 [
    i16 2, label %47
    i16 10, label %46
  ]

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %34
  %48 = phi ptr [ @.str.29, %46 ], [ @.str.28, %34 ]
  tail call fastcc void @xs_format_peer_addresses(ptr noundef nonnull %11, ptr noundef nonnull @.str.28, ptr noundef nonnull %48)
  %49 = tail call ptr @xprt_get(ptr noundef nonnull %11) #12
  %50 = getelementptr inbounds %struct.xprt_create, ptr %0, i32 0, i32 6
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.svc_xprt, ptr %51, i32 0, i32 21
  store ptr %11, ptr %52, align 4
  %53 = load ptr, ptr %50, align 4
  %54 = getelementptr inbounds %struct.rpc_xprt, ptr %11, i32 0, i32 40
  store ptr %53, ptr %54, align 4
  %55 = load ptr, ptr %50, align 4
  %56 = getelementptr inbounds %struct.svc_sock, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.sock_xprt, ptr %11, i32 0, i32 1
  store ptr %57, ptr %58, align 8
  %59 = getelementptr inbounds %struct.svc_sock, ptr %55, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.sock_xprt, ptr %11, i32 0, i32 2
  store ptr %60, ptr %61, align 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %39) #12
  %62 = tail call zeroext i1 @try_module_get(ptr noundef null) #12
  br i1 %62, label %80, label %63

63:                                               ; preds = %47
  %64 = load ptr, ptr %50, align 4
  %65 = getelementptr inbounds %struct.svc_xprt, ptr %64, i32 0, i32 21
  store ptr null, ptr %65, align 4
  %66 = load ptr, ptr %50, align 4
  %67 = getelementptr inbounds %struct.svc_xprt, ptr %66, i32 0, i32 22
  store ptr null, ptr %67, align 4
  tail call void @xprt_put(ptr noundef nonnull %11) #12
  br label %68

68:                                               ; preds = %63, %34
  %69 = phi ptr [ inttoptr (i32 -22 to ptr), %63 ], [ inttoptr (i32 -97 to ptr), %34 ]
  %70 = getelementptr %struct.rpc_xprt, ptr %11, i32 0, i32 51, i32 0
  %71 = load ptr, ptr %70, align 4
  tail call void @kfree(ptr noundef %71) #12
  %72 = getelementptr %struct.rpc_xprt, ptr %11, i32 0, i32 51, i32 1
  %73 = load ptr, ptr %72, align 4
  tail call void @kfree(ptr noundef %73) #12
  %74 = getelementptr %struct.rpc_xprt, ptr %11, i32 0, i32 51, i32 3
  %75 = load ptr, ptr %74, align 4
  tail call void @kfree(ptr noundef %75) #12
  %76 = getelementptr %struct.rpc_xprt, ptr %11, i32 0, i32 51, i32 4
  %77 = load ptr, ptr %76, align 4
  tail call void @kfree(ptr noundef %77) #12
  br label %78

78:                                               ; preds = %68, %26
  %79 = phi ptr [ %69, %68 ], [ inttoptr (i32 -97 to ptr), %26 ]
  tail call void @xprt_free(ptr noundef nonnull %11) #12
  br label %80

80:                                               ; preds = %78, %47, %32, %7, %1
  %81 = phi ptr [ %11, %32 ], [ %11, %47 ], [ inttoptr (i32 -12 to ptr), %7 ], [ inttoptr (i32 -9 to ptr), %1 ], [ %79, %78 ]
  ret ptr %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bc_malloc(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 15
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 4092
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i1, ptr @bc_malloc.__already_done, align 1
  br i1 %8, label %20, label %9, !prof !39

9:                                                ; preds = %7
  store i1 true, ptr @bc_malloc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 2486, i32 noundef 9, ptr noundef nonnull @.str.34, i32 noundef %5) #12
  br label %20

10:                                               ; preds = %1
  %11 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @page_address(ptr noundef nonnull %11) #12
  store i32 4096, ptr %14, align 4
  %15 = getelementptr inbounds %struct.rpc_buffer, ptr %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 14
  store ptr %15, ptr %16, align 8
  %17 = load i32, ptr %4, align 4
  %18 = getelementptr i8, ptr %15, i32 %17
  %19 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 16
  store ptr %18, ptr %19, align 8
  br label %20

20:                                               ; preds = %13, %10, %9, %7
  %21 = phi i32 [ 0, %13 ], [ -22, %9 ], [ -22, %7 ], [ -12, %10 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bc_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 -4
  %7 = ptrtoint ptr %6 to i32
  tail call void @free_pages(i32 noundef %7, i32 noundef 0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bc_send_request(ptr noundef %0) #0 {
  %2 = alloca %struct.msghdr, align 8
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.rpc_xprt, ptr %4, i32 0, i32 40
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.svc_xprt, ptr %6, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %7) #12
  %8 = getelementptr inbounds %struct.svc_xprt, ptr %6, i32 0, i32 5
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i32 56, i1 false) #12
  %15 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 1, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, -2147483648
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4
  %19 = tail call i64 @ktime_get() #12
  %20 = getelementptr inbounds %struct.rpc_rqst, ptr %0, i32 0, i32 29
  store i64 %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.sock_xprt, ptr %14, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = call i32 @xprt_sock_sendmsg(ptr noundef %22, ptr noundef nonnull %2, ptr noundef %13, i32 noundef 0, i32 noundef %18, ptr noundef nonnull %3) #12
  call void @xdr_free_bvec(ptr noundef %13) #12
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %12
  %26 = load i32, ptr %3, align 4
  %27 = load i32, ptr %15, align 4
  %28 = add i32 %27, 4
  %29 = icmp eq i32 %26, %28
  %30 = select i1 %29, i32 %26, i32 -11
  br label %31

31:                                               ; preds = %25, %12
  %32 = phi i32 [ -11, %12 ], [ %30, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #12
  br label %33

33:                                               ; preds = %31, %1
  %34 = phi i32 [ %32, %31 ], [ -107, %1 ]
  call void @mutex_unlock(ptr noundef %7) #12
  %35 = call i32 @llvm.smin.i32(i32 %34, i32 0)
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bc_close(ptr noundef %0) #0 {
  tail call void @xprt_disconnect_done(ptr noundef %0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bc_destroy(ptr noundef %0) #0 {
  %2 = getelementptr %struct.rpc_xprt, ptr %0, i32 0, i32 51, i32 0
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #12
  %4 = getelementptr %struct.rpc_xprt, ptr %0, i32 0, i32 51, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %5) #12
  %6 = getelementptr %struct.rpc_xprt, ptr %0, i32 0, i32 51, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #12
  %8 = getelementptr %struct.rpc_xprt, ptr %0, i32 0, i32 51, i32 4
  %9 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %9) #12
  tail call void @xprt_free(ptr noundef %0) #12
  tail call void @module_put(ptr noundef null) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @param_set_portnr(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @param_set_uint_minmax(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef 65535) #12
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_uint(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_uint_minmax(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @param_set_slot_table_size(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @param_set_uint_minmax(ptr noundef %0, ptr noundef %1, i32 noundef 2, i32 noundef 65536) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @param_set_max_slot_table_size(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @param_set_uint_minmax(ptr noundef %0, ptr noundef %1, i32 noundef 2, i32 noundef 65536) #12
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }

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
!9 = !{!"auto-init"}
!10 = !{i64 2149005921}
!11 = !{i64 2149001745}
!12 = !{i64 2149001820, i64 2149001847, i64 2149001894, i64 2149001916, i64 2149001944, i64 2149001964}
!13 = !{i64 2149028924}
!14 = !{i64 2158841295}
!15 = !{i64 2158841455}
!16 = !{i64 2158820807}
!17 = !{i64 2158820989}
!18 = !{i64 2159874359}
!19 = !{i64 852666, i64 2148342637, i64 2148342663, i64 2148342710, i64 2148342732, i64 2148342760, i64 2148342780}
!20 = !{i64 861316, i64 861333, i64 861357, i64 861383, i64 861401}
!21 = !{i64 2159874676}
!22 = !{i64 2159734410, i64 2159734896, i64 2159734447, i64 2159734503, i64 2159734537, i64 2159734561, i64 2159734602, i64 2159734623, i64 2159734651, i64 2159734685}
!23 = !{i64 2158382030}
!24 = !{i64 2158382216}
!25 = !{i64 2155702957}
!26 = !{i64 2155703210}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{i64 2158471959}
!29 = !{i64 2158472137}
!30 = !{i64 2149404693}
!31 = !{i64 2149404910}
!32 = !{i64 2159781940}
!33 = !{i64 2159782295}
!34 = !{i64 2158438186}
!35 = !{i64 2158438354}
!36 = !{i64 2158399236}
!37 = !{i64 2158399418}
!38 = !{i64 2159783731}
!39 = !{!"branch_weights", i32 2000, i32 1}
!40 = !{i64 777044}
!41 = !{i64 2158454981}
!42 = !{i64 2158455155}
!43 = !{i64 2158364566}
!44 = !{i64 2158364748}
!45 = !{i64 2159839537}
!46 = !{i64 2159839892}
!47 = !{i64 2159840327}
!48 = !{i64 2159840580}
