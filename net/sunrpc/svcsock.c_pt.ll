; ModuleID = '/llk/IR/net/sunrpc/svcsock.c_pt.bc'
source_filename = "../net/sunrpc/svcsock.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_sock_update_bufs:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_sock_update_bufs\22\09\09\09\09\09"
module asm "__kstrtabns_svc_sock_update_bufs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_alien_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_alien_sock\22\09\09\09\09\09"
module asm "__kstrtabns_svc_alien_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_addsock:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_addsock\22\09\09\09\09\09"
module asm "__kstrtabns_svc_addsock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.svc_xprt_class = type { ptr, ptr, ptr, %struct.list_head, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.svc_xprt_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ctl_table_header = type { %union.anon.35, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.126, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.126 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.svc_serv = type { ptr, ptr, %struct.spinlock, %struct.kref, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, %struct.timer_list, ptr, i32, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [40 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.155 }
%union.anon.155 = type { ptr, [124 x i8] }
%struct.sock_common = type { %union.anon.38, %union.anon.40, %union.anon.41, i16, i8, i8, i32, %union.anon.43, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.71, [0 x i32], %union.anon.72, i16, i16, %union.anon.73, %struct.refcount_struct, [0 x i32], %union.anon.74 }
%union.anon.38 = type { i64 }
%union.anon.40 = type { i32 }
%union.anon.41 = type { i32 }
%union.anon.43 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.70 }
%union.anon.70 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { i32 }
%union.anon.72 = type { %struct.hlist_node }
%union.anon.73 = type { i32 }
%union.anon.74 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.79, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.116, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.117, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.anon.79 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.116 = type { ptr }
%union.anon.117 = type { ptr }
%struct.sk_buff_head = type { %union.anon.77, i32, %struct.spinlock }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.netns_tracker = type {}
%struct.svc_sock = type { %struct.svc_xprt, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t, [259 x ptr] }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
%struct.anon.39 = type { i32, i32 }
%struct.anon.42 = type { i16, i16 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.121 }
%union.anon.121 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, i32, i32, i32, i32, i32, %union.anon.186, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.186 = type { %struct.anon.187 }
%struct.anon.187 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.167, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.185, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.167 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.185 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.svc_stat = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.47, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.44, %union.anon.45 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { i64 }
%union.anon.47 = type { ptr }
%struct.kvec = type { ptr, i32 }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.153, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.153 = type { %struct.atomic_t }
%struct.rpc_xprt = type { %struct.kref, ptr, i32, ptr, %struct.__kernel_sockaddr_storage, i32, i32, i32, i32, i32, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.list_head, i32, i32, i32, i32, i8, %struct.atomic_t, i32, %struct.list_head, i32, i32, i32, %struct.work_struct, %struct.timer_list, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, %struct.atomic_t, ptr, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.rb_root, %struct.anon.159, ptr, ptr, [6 x ptr], %struct.callback_head, ptr, ptr, i8 }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.anon.159 = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.rpc_rqst = type { ptr, %struct.xdr_buf, %struct.xdr_buf, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.160, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.xdr_buf, i32, i32, i32, i64, i32, i32, %struct.atomic_t, i32, i64, i32, %struct.list_head, i32, %struct.list_head }
%union.anon.160 = type { %struct.rb_node }
%union.anon.191 = type { [8 x i32] }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.cmsghdr = type { i32, i32, i32 }
%union.anon.192 = type { [8 x i32] }

@svc_tcp_class = internal global %struct.svc_xprt_class { ptr @.str, ptr null, ptr @svc_tcp_ops, %struct.list_head zeroinitializer, i32 1048576, i32 6 }, align 4
@svc_udp_class = internal global %struct.svc_xprt_class { ptr @.str.14, ptr null, ptr @svc_udp_ops, %struct.list_head zeroinitializer, i32 32768, i32 17 }, align 4
@__kstrtab_svc_sock_update_bufs = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_sock_update_bufs = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_sock_update_bufs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_sock_update_bufs to i32), ptr @__kstrtab_svc_sock_update_bufs, ptr @__kstrtabns_svc_sock_update_bufs }, section "___ksymtab_gpl+svc_sock_update_bufs", align 4
@__kstrtab_svc_alien_sock = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_alien_sock = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_alien_sock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_alien_sock to i32), ptr @__kstrtab_svc_alien_sock, ptr @__kstrtabns_svc_alien_sock }, section "___ksymtab_gpl+svc_alien_sock", align 4
@__kstrtab_svc_addsock = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_addsock = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_addsock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_addsock to i32), ptr @__kstrtab_svc_addsock, ptr @__kstrtabns_svc_addsock }, section "___ksymtab_gpl+svc_addsock", align 4
@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@svc_tcp_ops = internal constant %struct.svc_xprt_ops { ptr @svc_tcp_create, ptr @svc_tcp_accept, ptr @svc_tcp_has_wspace, ptr @svc_tcp_recvfrom, ptr @svc_tcp_sendto, ptr @svc_sock_result_payload, ptr @svc_tcp_release_rqst, ptr @svc_tcp_sock_detach, ptr @svc_sock_free, ptr @svc_sock_secure_port, ptr @svc_tcp_kill_temp_xprt }, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"\014svc: only UDP and TCP sockets supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"\014%s: no more sockets!\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"\014%s: accept failed (err %d)!\0A\00", align 1
@__tracepoint_svcsock_accept_err = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_svcsock_getpeername_err = external dso_local global %struct.tracepoint, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"%pISpc\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"\015svc: %s %s RPC fragment too large: %d\0A\00", align 1
@__func__.svc_tcp_read_marker = private unnamed_addr constant [20 x i8] c"svc_tcp_read_marker\00", align 1
@__tracepoint_svcsock_marker = external dso_local global %struct.tracepoint, align 4
@bvec_iter_advance.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"include/linux/bvec.h\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"Attempted to advance past end of bvec iter\0A\00", align 1
@__tracepoint_svcsock_tcp_recv = external dso_local global %struct.tracepoint, align 4
@.str.9 = private unnamed_addr constant [68 x i8] c"\015%s: Got unrecognized reply: calldir 0x%x xpt_bc_xprt %p xid %08x\0A\00", align 1
@__func__.receive_cb_reply = private unnamed_addr constant [17 x i8] c"receive_cb_reply\00", align 1
@__tracepoint_svcsock_tcp_recv_short = external dso_local global %struct.tracepoint, align 4
@__tracepoint_svcsock_tcp_recv_eagain = external dso_local global %struct.tracepoint, align 4
@__tracepoint_svcsock_tcp_recv_err = external dso_local global %struct.tracepoint, align 4
@.str.10 = private unnamed_addr constant [71 x i8] c"\015rpc-srv/tcp: %s: %s %d when sending %d bytes - shutting down socket\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"got error\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"sent\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_svcsock_tcp_send = external dso_local global %struct.tracepoint, align 4
@svc_tcp_clear_pages.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"net/sunrpc/svcsock.c\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@svc_udp_ops = internal constant %struct.svc_xprt_ops { ptr @svc_udp_create, ptr @svc_udp_accept, ptr @svc_udp_has_wspace, ptr @svc_udp_recvfrom, ptr @svc_udp_sendto, ptr @svc_sock_result_payload, ptr @svc_udp_release_rqst, ptr @svc_sock_detach, ptr @svc_sock_free, ptr @svc_sock_secure_port, ptr @svc_udp_kill_temp_xprt }, align 4
@.str.15 = private unnamed_addr constant [76 x i8] c"\014svc: received unknown control message %d/%d; dropping RPC reply datagram\0A\00", align 1
@__tracepoint_svcsock_udp_recv = external dso_local global %struct.tracepoint, align 4
@__tracepoint_svcsock_udp_recv_err = external dso_local global %struct.tracepoint, align 4
@__tracepoint_svcsock_udp_send = external dso_local global %struct.tracepoint, align 4
@init_net = external dso_local global %struct.net, align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__tracepoint_svcsock_data_ready = external dso_local global %struct.tracepoint, align 4
@__tracepoint_svcsock_write_space = external dso_local global %struct.tracepoint, align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"listener\00", align 1
@__tracepoint_svcsock_tcp_state = external dso_local global %struct.tracepoint, align 4
@__tracepoint_svcsock_new_socket = external dso_local global %struct.tracepoint, align 4
@.str.17 = private unnamed_addr constant [17 x i8] c"ipv4 %s %pI4 %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"ipv6 %s %pI6 %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"*unknown-%d*\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_svc_addsock, ptr @__ksymtab_svc_alien_sock, ptr @__ksymtab_svc_sock_update_bufs], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @svc_init_xprt_sock() local_unnamed_addr #0 {
  %1 = tail call i32 @svc_reg_xprt_class(ptr noundef nonnull @svc_tcp_class) #14
  %2 = tail call i32 @svc_reg_xprt_class(ptr noundef nonnull @svc_udp_class) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_reg_xprt_class(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @svc_cleanup_xprt_sock() local_unnamed_addr #0 {
  tail call void @svc_unreg_xprt_class(ptr noundef nonnull @svc_tcp_class) #14
  tail call void @svc_unreg_xprt_class(ptr noundef nonnull @svc_udp_class) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_unreg_xprt_class(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @svc_sock_update_bufs(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %2) #14
  %3 = getelementptr inbounds %struct.svc_serv, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %11, label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %9, %6 ], [ %4, %1 ]
  %8 = getelementptr i8, ptr %7, i32 16
  tail call void @_set_bit(i32 noundef 7, ptr noundef %8) #14
  %9 = load ptr, ptr %7, align 4
  %10 = icmp eq ptr %9, %3
  br i1 %10, label %11, label %6

11:                                               ; preds = %6, %1
  tail call void @_raw_spin_unlock_bh(ptr noundef %2) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @svc_alien_sock(ptr noundef readnone %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = call ptr @sockfd_lookup(i32 noundef %1, ptr noundef nonnull %3) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = icmp ne ptr %0, @init_net
  %8 = getelementptr inbounds %struct.socket, ptr %4, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  call void @fput(ptr noundef %9) #14
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i1 [ %7, %6 ], [ false, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i1 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sockfd_lookup(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @svc_addsock(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.__kernel_sockaddr_storage, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4
  %8 = call ptr @sockfd_lookup(i32 noundef %1, ptr noundef nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %7, i8 0, i32 128, i1 false), !annotation !8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = load i32, ptr %6, align 4
  br label %78

12:                                               ; preds = %5
  store i32 -97, ptr %6, align 4
  %13 = getelementptr inbounds %struct.socket, ptr %8, i32 0, i32 4
  %14 = load ptr, ptr %13, align 16
  %15 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 3
  %16 = load i16, ptr %15, align 8
  switch i16 %16, label %74 [
    i16 2, label %17
    i16 10, label %17
  ]

17:                                               ; preds = %12, %12
  store i32 -93, ptr %6, align 4
  %18 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 46
  %19 = load i16, ptr %18, align 4
  switch i16 %19, label %74 [
    i16 6, label %20
    i16 17, label %20
  ]

20:                                               ; preds = %17, %17
  store i32 -106, ptr %6, align 4
  %21 = load i32, ptr %8, align 64
  %22 = icmp ugt i32 %21, 1
  br i1 %22, label %74, label %23

23:                                               ; preds = %20
  store i32 -2, ptr %6, align 4
  %24 = call zeroext i1 @try_module_get(ptr noundef null) #14
  br i1 %24, label %25, label %74

25:                                               ; preds = %23
  %26 = call fastcc ptr @svc_setup_socket(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 0)
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  call void @module_put(ptr noundef null) #14
  %29 = ptrtoint ptr %26 to i32
  store i32 %29, ptr %6, align 4
  br label %74

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.svc_sock, ptr %26, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = call i32 @kernel_getsockname(ptr noundef %32, ptr noundef nonnull %7) #14
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.svc_xprt, ptr %26, i32 0, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %36, ptr nonnull align 4 %7, i32 %33, i1 false) #14
  %37 = getelementptr inbounds %struct.svc_xprt, ptr %26, i32 0, i32 14
  store i32 %33, ptr %37, align 4
  br label %38

38:                                               ; preds = %35, %30
  %39 = icmp eq ptr %4, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 24
  store i32 0, ptr %41, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %4) #14, !srcloc !9
  %42 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #14, !srcloc !10
  br label %43

43:                                               ; preds = %40, %38
  %44 = getelementptr inbounds %struct.svc_xprt, ptr %26, i32 0, i32 20
  store ptr %4, ptr %44, align 4
  call void @svc_add_new_perm_xprt(ptr noundef %0, ptr noundef %26) #14
  %45 = getelementptr inbounds %struct.svc_sock, ptr %26, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.sock, ptr %46, i32 0, i32 46
  %48 = load i16, ptr %47, align 4
  %49 = icmp eq i16 %48, 17
  %50 = select i1 %49, ptr @.str.14, ptr @.str
  %51 = getelementptr inbounds %struct.sock_common, ptr %46, i32 0, i32 3
  %52 = load i16, ptr %51, align 8
  switch i16 %52, label %67 [
    i16 2, label %53
    i16 10, label %60
  ]

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.anon.39, ptr %46, i32 0, i32 1
  %55 = getelementptr inbounds %struct.sock_common, ptr %46, i32 0, i32 2
  %56 = getelementptr inbounds %struct.anon.42, ptr %55, i32 0, i32 1
  %57 = load i16, ptr %56, align 2
  %58 = zext i16 %57 to i32
  %59 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef %3, ptr noundef nonnull @.str.17, ptr noundef nonnull %50, ptr noundef %54, i32 noundef %58) #14
  br label %70

60:                                               ; preds = %43
  %61 = getelementptr inbounds %struct.sock_common, ptr %46, i32 0, i32 11
  %62 = getelementptr inbounds %struct.sock_common, ptr %46, i32 0, i32 2
  %63 = getelementptr inbounds %struct.anon.42, ptr %62, i32 0, i32 1
  %64 = load i16, ptr %63, align 2
  %65 = zext i16 %64 to i32
  %66 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef %3, ptr noundef nonnull @.str.18, ptr noundef nonnull %50, ptr noundef %61, i32 noundef %65) #14
  br label %70

67:                                               ; preds = %43
  %68 = zext i16 %52 to i32
  %69 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef %3, ptr noundef nonnull @.str.19, i32 noundef %68) #14
  br label %70

70:                                               ; preds = %67, %60, %53
  %71 = phi i32 [ %69, %67 ], [ %66, %60 ], [ %59, %53 ]
  %72 = icmp slt i32 %71, %3
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  store i8 0, ptr %2, align 1
  br label %78

74:                                               ; preds = %28, %23, %20, %17, %12
  %75 = getelementptr inbounds %struct.socket, ptr %8, i32 0, i32 3
  %76 = load ptr, ptr %75, align 4
  call void @fput(ptr noundef %76) #14
  %77 = load i32, ptr %6, align 4
  br label %78

78:                                               ; preds = %74, %73, %70, %10
  %79 = phi i32 [ %77, %74 ], [ %11, %10 ], [ -36, %73 ], [ %71, %70 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  ret i32 %79
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @svc_setup_socket(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1500) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %127, label %7

7:                                                ; preds = %3
  %8 = and i32 %2, 1
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %11 = load ptr, ptr %10, align 16
  br i1 %9, label %12, label %25

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 3
  %14 = load i16, ptr %13, align 8
  %15 = zext i16 %14 to i32
  %16 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 46
  %17 = load i16, ptr %16, align 4
  %18 = getelementptr inbounds %struct.inet_sock, ptr %11, i32 0, i32 6
  %19 = load i16, ptr %18, align 8
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %21 = tail call i32 @svc_register(ptr noundef %0, ptr noundef nonnull @init_net, i32 noundef %15, i16 noundef zeroext %17, i16 noundef zeroext %20) #14
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  tail call void @kfree(ptr noundef nonnull %5) #14
  %24 = inttoptr i32 %21 to ptr
  br label %127

25:                                               ; preds = %12, %7
  %26 = getelementptr inbounds %struct.svc_sock, ptr %5, i32 0, i32 1
  store ptr %1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.svc_sock, ptr %5, i32 0, i32 2
  store ptr %11, ptr %27, align 8
  %28 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 75
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.svc_sock, ptr %5, i32 0, i32 3
  store ptr %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 76
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.svc_sock, ptr %5, i32 0, i32 4
  store ptr %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 77
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.svc_sock, ptr %5, i32 0, i32 5
  store ptr %35, ptr %36, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !11
  tail call void @arm_heavy_mb() #14
  %37 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 72
  store ptr %5, ptr %37, align 4
  %38 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 1
  %39 = load i16, ptr %38, align 4
  %40 = icmp eq i16 %39, 2
  br i1 %40, label %41, label %92

41:                                               ; preds = %25
  tail call void @svc_xprt_init(ptr noundef nonnull @init_net, ptr noundef nonnull @svc_udp_class, ptr noundef nonnull %5, ptr noundef %0) #14
  %42 = getelementptr inbounds %struct.svc_xprt, ptr %5, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %42) #14
  %43 = load ptr, ptr %27, align 8
  %44 = getelementptr inbounds %struct.sock, ptr %43, i32 0, i32 76
  store ptr @svc_data_ready, ptr %44, align 8
  %45 = load ptr, ptr %27, align 8
  %46 = getelementptr inbounds %struct.sock, ptr %45, i32 0, i32 77
  store ptr @svc_write_space, ptr %46, align 4
  %47 = getelementptr inbounds %struct.svc_xprt, ptr %5, i32 0, i32 6
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.svc_serv, ptr %48, i32 0, i32 7
  %50 = load i32, ptr %49, align 4
  %51 = load ptr, ptr %26, align 4
  %52 = udiv i32 1073741823, %50
  %53 = tail call i32 @llvm.umin.i32(i32 %52, i32 3) #14
  %54 = getelementptr inbounds %struct.socket, ptr %51, i32 0, i32 4
  %55 = load ptr, ptr %54, align 16
  tail call void @lock_sock_nested(ptr noundef %55, i32 noundef 0) #14
  %56 = shl i32 %50, 1
  %57 = mul i32 %53, %56
  %58 = load ptr, ptr %54, align 16
  %59 = getelementptr inbounds %struct.sock, ptr %58, i32 0, i32 21
  store i32 %57, ptr %59, align 8
  %60 = load ptr, ptr %54, align 16
  %61 = getelementptr inbounds %struct.sock, ptr %60, i32 0, i32 15
  store i32 %57, ptr %61, align 4
  %62 = load ptr, ptr %54, align 16
  %63 = getelementptr inbounds %struct.sock, ptr %62, i32 0, i32 77
  %64 = load ptr, ptr %63, align 4
  tail call void %64(ptr noundef %62) #14
  %65 = load ptr, ptr %54, align 16
  tail call void @release_sock(ptr noundef %65) #14
  tail call void @_set_bit(i32 noundef 3, ptr noundef %42) #14
  tail call void @_set_bit(i32 noundef 7, ptr noundef %42) #14
  %66 = load ptr, ptr %27, align 8
  %67 = getelementptr inbounds %struct.sock_common, ptr %66, i32 0, i32 3
  %68 = load i16, ptr %67, align 8
  switch i16 %68, label %91 [
    i16 2, label %69
    i16 10, label %73
  ]

69:                                               ; preds = %41
  %70 = load ptr, ptr %26, align 4
  %71 = getelementptr inbounds %struct.socket, ptr %70, i32 0, i32 4
  %72 = load ptr, ptr %71, align 16
  tail call void @ip_sock_set_pktinfo(ptr noundef %72) #14
  br label %111

73:                                               ; preds = %41
  %74 = load ptr, ptr %26, align 4
  %75 = getelementptr inbounds %struct.socket, ptr %74, i32 0, i32 4
  %76 = load ptr, ptr %75, align 16
  tail call void @lock_sock_nested(ptr noundef %76, i32 noundef 0) #14
  %77 = getelementptr inbounds %struct.sock_common, ptr %76, i32 0, i32 4
  %78 = load volatile i8, ptr %77, align 2
  %79 = zext i8 %78 to i32
  %80 = shl nuw i32 1, %79
  %81 = and i32 %80, -4161
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct.inet_sock, ptr %76, i32 0, i32 1
  %85 = load ptr, ptr %84, align 8
  br label %86

86:                                               ; preds = %83, %73
  %87 = phi ptr [ %85, %83 ], [ null, %73 ]
  %88 = getelementptr inbounds %struct.ipv6_pinfo, ptr %87, i32 0, i32 8
  %89 = load i16, ptr %88, align 4
  %90 = or i16 %89, 4
  store i16 %90, ptr %88, align 4
  tail call void @release_sock(ptr noundef %76) #14
  br label %111

91:                                               ; preds = %41
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/svcsock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 686, 0\0A.popsection", ""() #14, !srcloc !12
  unreachable

92:                                               ; preds = %25
  %93 = load ptr, ptr %27, align 8
  tail call void @svc_xprt_init(ptr noundef nonnull @init_net, ptr noundef nonnull @svc_tcp_class, ptr noundef nonnull %5, ptr noundef %0) #14
  %94 = getelementptr inbounds %struct.svc_xprt, ptr %5, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 11, ptr noundef %94) #14
  tail call void @_set_bit(i32 noundef 14, ptr noundef %94) #14
  %95 = getelementptr inbounds %struct.sock_common, ptr %93, i32 0, i32 4
  %96 = load volatile i8, ptr %95, align 2
  %97 = icmp eq i8 %96, 10
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.svc_xprt, ptr %5, i32 0, i32 17
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(9) %99, ptr noundef nonnull align 1 dereferenceable(9) @.str.16, i32 9, i1 false) #14
  tail call void @_set_bit(i32 noundef 10, ptr noundef %94) #14
  %100 = getelementptr inbounds %struct.sock, ptr %93, i32 0, i32 76
  store ptr @svc_tcp_listen_data_ready, ptr %100, align 8
  tail call void @_set_bit(i32 noundef 1, ptr noundef %94) #14
  br label %111

101:                                              ; preds = %92
  %102 = getelementptr inbounds %struct.sock, ptr %93, i32 0, i32 75
  store ptr @svc_tcp_state_change, ptr %102, align 4
  %103 = getelementptr inbounds %struct.sock, ptr %93, i32 0, i32 76
  store ptr @svc_data_ready, ptr %103, align 8
  %104 = getelementptr inbounds %struct.sock, ptr %93, i32 0, i32 77
  store ptr @svc_write_space, ptr %104, align 4
  %105 = getelementptr inbounds %struct.svc_sock, ptr %5, i32 0, i32 6
  store i32 0, ptr %105, align 8
  %106 = getelementptr inbounds %struct.svc_sock, ptr %5, i32 0, i32 7
  store i32 0, ptr %106, align 4
  %107 = getelementptr inbounds %struct.svc_sock, ptr %5, i32 0, i32 8
  store i32 0, ptr %107, align 8
  %108 = getelementptr inbounds %struct.svc_sock, ptr %5, i32 0, i32 10
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(1036) %108, i8 0, i32 1036, i1 false) #14
  tail call void @tcp_sock_set_nodelay(ptr noundef %93) #14
  tail call void @_set_bit(i32 noundef 3, ptr noundef %94) #14
  %109 = load volatile i8, ptr %95, align 2
  switch i8 %109, label %110 [
    i8 3, label %111
    i8 1, label %111
  ]

110:                                              ; preds = %101
  tail call void @svc_xprt_deferred_close(ptr noundef nonnull %5) #14
  br label %111

111:                                              ; preds = %110, %101, %101, %98, %86, %69
  %112 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_new_socket, i32 0, i32 1), align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %111
  %115 = tail call ptr @llvm.thread.pointer() #14
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
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %126 = tail call i32 @__traceiter_svcsock_new_socket(ptr noundef null, ptr noundef %1) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %127

127:                                              ; preds = %125, %114, %111, %23, %3
  %128 = phi ptr [ %24, %23 ], [ inttoptr (i32 -12 to ptr), %3 ], [ %5, %111 ], [ %5, %114 ], [ %5, %125 ]
  ret ptr %128
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_getsockname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_add_new_perm_xprt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @svc_tcp_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = tail call fastcc ptr @svc_create_socket(ptr noundef %0, i32 noundef 6, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @svc_tcp_accept(ptr noundef %0) #0 {
  %2 = alloca %struct.__kernel_sockaddr_storage, align 4
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %2, i8 0, i32 128, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.svc_sock, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store ptr null, ptr %3, align 4, !annotation !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %127, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %10) #14
  %11 = call i32 @kernel_accept(ptr noundef nonnull %7, ptr noundef nonnull %3, i32 noundef 2048) #14
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %9
  switch i32 %11, label %18 [
    i32 -12, label %14
    i32 -11, label %26
  ]

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.svc_serv, ptr %5, i32 0, i32 13
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %16) #16
  br label %26

18:                                               ; preds = %13
  %19 = call i32 @net_ratelimit() #14
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.svc_serv, ptr %5, i32 0, i32 13
  %23 = load ptr, ptr %22, align 4
  %24 = sub i32 0, %11
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %23, i32 noundef %24) #16
  br label %26

26:                                               ; preds = %21, %18, %14, %13
  %27 = getelementptr inbounds %struct.svc_serv, ptr %5, i32 0, i32 13
  %28 = load ptr, ptr %27, align 4
  %29 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_accept_err, i32 0, i32 1), align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %127

31:                                               ; preds = %26
  %32 = tail call ptr @llvm.thread.pointer() #14
  %33 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %34 = load i32, ptr %33, align 8
  %35 = lshr i32 %34, 5
  %36 = getelementptr i32, ptr @__cpu_online_mask, i32 %35
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %34, 31
  %39 = shl nuw i32 1, %38
  %40 = and i32 %39, %37
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %127, label %42

42:                                               ; preds = %31
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  %43 = call i32 @__traceiter_svcsock_accept_err(ptr noundef null, ptr noundef %0, ptr noundef %28, i32 noundef %11) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !16
  br label %127

44:                                               ; preds = %9
  call void @_set_bit(i32 noundef 1, ptr noundef %10) #14
  %45 = load ptr, ptr %3, align 4
  %46 = call i32 @kernel_getpeername(ptr noundef %45, ptr noundef nonnull %2) #14
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.svc_serv, ptr %5, i32 0, i32 13
  %50 = load ptr, ptr %49, align 4
  %51 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_getpeername_err, i32 0, i32 1), align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %125

53:                                               ; preds = %48
  %54 = tail call ptr @llvm.thread.pointer() #14
  %55 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %56 = load i32, ptr %55, align 8
  %57 = lshr i32 %56, 5
  %58 = getelementptr i32, ptr @__cpu_online_mask, i32 %57
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %56, 31
  %61 = shl nuw i32 1, %60
  %62 = and i32 %61, %59
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %125, label %64

64:                                               ; preds = %53
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  %65 = call i32 @__traceiter_svcsock_getpeername_err(ptr noundef null, ptr noundef %0, ptr noundef %50, i32 noundef %46) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  br label %125

66:                                               ; preds = %44
  %67 = getelementptr inbounds %struct.svc_sock, ptr %0, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = load ptr, ptr %3, align 4
  %70 = getelementptr inbounds %struct.socket, ptr %69, i32 0, i32 4
  %71 = load ptr, ptr %70, align 16
  %72 = getelementptr inbounds %struct.sock, ptr %71, i32 0, i32 75
  store ptr %68, ptr %72, align 4
  %73 = getelementptr inbounds %struct.svc_sock, ptr %0, i32 0, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = load ptr, ptr %70, align 16
  %76 = getelementptr inbounds %struct.sock, ptr %75, i32 0, i32 76
  store ptr %74, ptr %76, align 8
  %77 = getelementptr inbounds %struct.svc_sock, ptr %0, i32 0, i32 5
  %78 = load ptr, ptr %77, align 4
  %79 = load ptr, ptr %70, align 16
  %80 = getelementptr inbounds %struct.sock, ptr %79, i32 0, i32 77
  store ptr %78, ptr %80, align 4
  %81 = load ptr, ptr %70, align 16
  %82 = getelementptr inbounds %struct.sock, ptr %81, i32 0, i32 31
  store i32 3000, ptr %82, align 4
  %83 = call fastcc ptr @svc_setup_socket(ptr noundef %5, ptr noundef %69, i32 noundef 3)
  %84 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %84, label %125, label %85

85:                                               ; preds = %66
  %86 = getelementptr inbounds %struct.svc_xprt, ptr %83, i32 0, i32 15
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %86, ptr nonnull align 4 %2, i32 %46, i1 false) #14
  %87 = getelementptr inbounds %struct.svc_xprt, ptr %83, i32 0, i32 16
  store i32 %46, ptr %87, align 4
  %88 = getelementptr inbounds %struct.svc_xprt, ptr %83, i32 0, i32 17
  %89 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %88, i32 noundef 57, ptr noundef nonnull @.str.5, ptr noundef nonnull %2) #14
  %90 = load ptr, ptr %3, align 4
  %91 = call i32 @kernel_getsockname(ptr noundef %90, ptr noundef nonnull %2) #14
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94, !prof !19

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93, %85
  %95 = phi i32 [ 2, %93 ], [ %91, %85 ]
  %96 = getelementptr inbounds %struct.svc_xprt, ptr %83, i32 0, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %96, ptr nonnull align 4 %2, i32 %95, i1 false) #14
  %97 = getelementptr inbounds %struct.svc_xprt, ptr %83, i32 0, i32 14
  store i32 %95, ptr %97, align 4
  %98 = load ptr, ptr %3, align 4
  %99 = getelementptr inbounds %struct.socket, ptr %98, i32 0, i32 4
  %100 = load ptr, ptr %99, align 16
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !20
  %101 = getelementptr inbounds %struct.sock, ptr %100, i32 0, i32 19
  %102 = load volatile ptr, ptr %101, align 8
  %103 = icmp eq ptr %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %94
  %105 = load ptr, ptr %102, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %104, %94
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !21
  br label %115

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.net_device, ptr %105, i32 0, i32 23
  %110 = load i64, ptr %109, align 16
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !21
  %111 = and i64 %110, 4398046511104
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.svc_xprt, ptr %83, i32 0, i32 5
  call void @_set_bit(i32 noundef 12, ptr noundef %114) #14
  br label %117

115:                                              ; preds = %108, %107
  %116 = getelementptr inbounds %struct.svc_xprt, ptr %83, i32 0, i32 5
  call void @_clear_bit(i32 noundef 12, ptr noundef %116) #14
  br label %117

117:                                              ; preds = %115, %113
  %118 = getelementptr inbounds %struct.svc_serv, ptr %5, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %127, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.svc_stat, ptr %119, i32 0, i32 4
  %123 = load i32, ptr %122, align 4
  %124 = add i32 %123, 1
  store i32 %124, ptr %122, align 4
  br label %127

125:                                              ; preds = %66, %64, %53, %48
  %126 = load ptr, ptr %3, align 4
  call void @sock_release(ptr noundef %126) #14
  br label %127

127:                                              ; preds = %125, %121, %117, %42, %31, %26, %1
  %128 = phi ptr [ null, %125 ], [ null, %1 ], [ %83, %121 ], [ %83, %117 ], [ null, %26 ], [ null, %31 ], [ null, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #14
  ret ptr %128
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @svc_tcp_has_wspace(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 5
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1024
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.svc_sock, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.socket, ptr %8, i32 0, i32 2
  %10 = load volatile i32, ptr %9, align 4
  %11 = lshr i32 %10, 2
  %12 = and i32 %11, 1
  %13 = xor i32 %12, 1
  br label %14

14:                                               ; preds = %6, %1
  %15 = phi i32 [ %13, %6 ], [ 1, %1 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @svc_tcp_recvfrom(ptr noundef %0) #0 {
  %2 = alloca %struct.msghdr, align 8
  %3 = alloca %struct.msghdr, align 8
  %4 = alloca %struct.kvec, align 8
  %5 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.svc_xprt, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.svc_xprt, ptr %6, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %9) #14
  %10 = getelementptr inbounds %struct.svc_sock, ptr %6, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.svc_sock, ptr %6, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, -129
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #14
  %18 = getelementptr inbounds %struct.svc_sock, ptr %6, i32 0, i32 8
  %19 = load i32, ptr %18, align 4
  br label %77

20:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i32 56, i1 false) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %21 = sub nuw nsw i32 4, %11
  %22 = getelementptr inbounds %struct.svc_sock, ptr %6, i32 0, i32 6
  %23 = getelementptr i8, ptr %22, i32 %11
  store ptr %23, ptr %4, align 8
  %24 = getelementptr inbounds %struct.kvec, ptr %4, i32 0, i32 1
  store i32 %21, ptr %24, align 4
  %25 = getelementptr inbounds %struct.msghdr, ptr %3, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %25, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 1, i32 noundef %21) #14
  %26 = getelementptr inbounds %struct.svc_sock, ptr %6, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = call i32 @sock_recvmsg(ptr noundef %27, ptr noundef nonnull %3, i32 noundef 64) #14
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #14
  br label %360

31:                                               ; preds = %20
  %32 = load i32, ptr %10, align 4
  %33 = add i32 %32, %28
  store i32 %33, ptr %10, align 4
  %34 = icmp ult i32 %28, %21
  br i1 %34, label %64, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %22, align 4
  %37 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_marker, i32 0, i32 1), align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = tail call ptr @llvm.thread.pointer() #14
  %41 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 8
  %43 = lshr i32 %42, 5
  %44 = getelementptr i32, ptr @__cpu_online_mask, i32 %43
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %42, 31
  %47 = shl nuw i32 1, %46
  %48 = and i32 %47, %45
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %39
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !22
  %51 = call i32 @__traceiter_svcsock_marker(ptr noundef null, ptr noundef %6, i32 noundef %36) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !23
  %52 = load i32, ptr %22, align 4
  br label %53

53:                                               ; preds = %50, %39, %35
  %54 = phi i32 [ %36, %35 ], [ %36, %39 ], [ %52, %50 ]
  %55 = and i32 %54, -129
  %56 = call i32 @llvm.bswap.i32(i32 %55) #14
  %57 = getelementptr inbounds %struct.svc_sock, ptr %6, i32 0, i32 8
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %56, %58
  %60 = load ptr, ptr %7, align 4
  %61 = getelementptr inbounds %struct.svc_serv, ptr %60, i32 0, i32 7
  %62 = load i32, ptr %61, align 4
  %63 = icmp ugt i32 %59, %62
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #14
  br i1 %63, label %65, label %77

64:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #14
  br label %363

65:                                               ; preds = %53
  %66 = call i32 @net_ratelimit() #14
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %7, align 4
  %70 = getelementptr inbounds %struct.svc_serv, ptr %69, i32 0, i32 13
  %71 = load ptr, ptr %70, align 4
  %72 = load i32, ptr %22, align 4
  %73 = and i32 %72, -129
  %74 = call i32 @llvm.bswap.i32(i32 %73) #14
  %75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.svc_tcp_read_marker, ptr noundef %71, i32 noundef %74) #16
  br label %76

76:                                               ; preds = %68, %65
  call void @svc_xprt_deferred_close(ptr noundef %6) #14
  br label %363

77:                                               ; preds = %53, %13
  %78 = phi i32 [ %19, %13 ], [ %58, %53 ]
  %79 = phi i32 [ %17, %13 ], [ %56, %53 ]
  %80 = getelementptr inbounds %struct.svc_sock, ptr %6, i32 0, i32 8
  %81 = icmp eq i32 %78, 0
  br i1 %81, label %122, label %82

82:                                               ; preds = %77
  %83 = add i32 %78, 4095
  %84 = icmp ult i32 %83, 4096
  br i1 %84, label %117, label %85

85:                                               ; preds = %82
  %86 = lshr i32 %83, 12
  br label %87

87:                                               ; preds = %114, %85
  %88 = phi i32 [ %115, %114 ], [ 0, %85 ]
  %89 = getelementptr %struct.svc_rqst, ptr %0, i32 0, i32 20, i32 %88
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %109, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.page, ptr %90, i32 0, i32 1
  %94 = load volatile i32, ptr %93, align 4
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97, !prof !24

97:                                               ; preds = %92
  %98 = add i32 %94, -1
  br label %101

99:                                               ; preds = %92
  %100 = ptrtoint ptr %90 to i32
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  %103 = inttoptr i32 %102 to ptr
  %104 = getelementptr inbounds %struct.page, ptr %103, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !25
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %104) #14, !srcloc !9
  %105 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %104, ptr %104, i32 1, ptr elementtype(i32) %104) #14, !srcloc !26
  %106 = extractvalue { i32, i32 } %105, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !27
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  call void @__put_page(ptr noundef %103) #14
  br label %109

109:                                              ; preds = %108, %101, %87
  %110 = getelementptr %struct.svc_sock, ptr %6, i32 0, i32 10, i32 %88
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %114, !prof !19

113:                                              ; preds = %109
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/svcsock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 824, 0\0A.popsection", ""() #14, !srcloc !28
  unreachable

114:                                              ; preds = %109
  store ptr %111, ptr %89, align 4
  store ptr null, ptr %110, align 4
  %115 = add nuw nsw i32 %88, 1
  %116 = icmp eq i32 %115, %86
  br i1 %116, label %117, label %87

117:                                              ; preds = %114, %82
  %118 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 20
  %119 = load ptr, ptr %118, align 4
  %120 = call ptr @page_address(ptr noundef %119) #14
  %121 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15
  store ptr %120, ptr %121, align 8
  br label %122

122:                                              ; preds = %117, %77
  %123 = load i32, ptr %10, align 4
  %124 = add i32 %79, 4
  %125 = sub i32 %124, %123
  %126 = add i32 %125, %78
  %127 = load ptr, ptr %5, align 8
  %128 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 26
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i32 56, i1 false) #14
  %129 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 14
  store i32 0, ptr %129, align 4
  %130 = getelementptr inbounds %struct.svc_xprt, ptr %127, i32 0, i32 5
  call void @_clear_bit(i32 noundef 3, ptr noundef %130) #14
  %131 = icmp eq i32 %126, 0
  br i1 %131, label %143, label %132

132:                                              ; preds = %132, %122
  %133 = phi i32 [ %141, %132 ], [ 0, %122 ]
  %134 = phi i32 [ %140, %132 ], [ 0, %122 ]
  %135 = getelementptr %struct.svc_rqst, ptr %0, i32 0, i32 20, i32 %134
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr %struct.bio_vec, ptr %128, i32 %134
  store ptr %136, ptr %137, align 4
  %138 = getelementptr %struct.bio_vec, ptr %128, i32 %134, i32 1
  store i32 4096, ptr %138, align 4
  %139 = getelementptr %struct.bio_vec, ptr %128, i32 %134, i32 2
  store i32 0, ptr %139, align 4
  %140 = add i32 %134, 1
  %141 = add i32 %133, 4096
  %142 = icmp ult i32 %141, %126
  br i1 %142, label %132, label %143

143:                                              ; preds = %132, %122
  %144 = phi i32 [ 0, %122 ], [ %140, %132 ]
  %145 = getelementptr %struct.svc_rqst, ptr %0, i32 0, i32 20, i32 %144
  %146 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 21
  store ptr %145, ptr %146, align 4
  %147 = getelementptr ptr, ptr %145, i32 1
  %148 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 22
  store ptr %147, ptr %148, align 8
  %149 = getelementptr inbounds %struct.msghdr, ptr %2, i32 0, i32 2
  call void @iov_iter_bvec(ptr noundef %149, i32 noundef 0, ptr noundef %128, i32 noundef %144, i32 noundef %126) #14
  br i1 %81, label %151, label %150

150:                                              ; preds = %143
  call void @iov_iter_advance(ptr noundef %149, i32 noundef %78) #14
  br label %151

151:                                              ; preds = %150, %143
  %152 = phi i32 [ %125, %150 ], [ %126, %143 ]
  %153 = getelementptr inbounds %struct.svc_sock, ptr %127, i32 0, i32 1
  %154 = load ptr, ptr %153, align 4
  %155 = call i32 @sock_recvmsg(ptr noundef %154, ptr noundef nonnull %2, i32 noundef 64) #14
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %209

157:                                              ; preds = %151
  %158 = add i32 %155, %78
  %159 = and i32 %78, -4096
  %160 = icmp ult i32 %158, %159
  %161 = load i1, ptr @bvec_iter_advance.__already_done, align 1
  %162 = xor i1 %161, true
  %163 = select i1 %160, i1 %162, i1 false
  br i1 %163, label %164, label %165, !prof !19

164:                                              ; preds = %157
  store i1 true, ptr @bvec_iter_advance.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 107, i32 noundef 9, ptr noundef nonnull @.str.8) #14
  br label %165

165:                                              ; preds = %164, %157
  br i1 %160, label %209, label %166

166:                                              ; preds = %165
  %167 = sub i32 %158, %159
  %168 = icmp eq i32 %159, 0
  br i1 %168, label %179, label %169

169:                                              ; preds = %175, %166
  %170 = phi i32 [ %176, %175 ], [ %159, %166 ]
  %171 = phi i32 [ %177, %175 ], [ 0, %166 ]
  %172 = getelementptr %struct.bio_vec, ptr %128, i32 %171, i32 1
  %173 = load i32, ptr %172, align 4
  %174 = icmp ult i32 %170, %173
  br i1 %174, label %179, label %175

175:                                              ; preds = %169
  %176 = sub i32 %170, %173
  %177 = add i32 %171, 1
  %178 = icmp eq i32 %176, 0
  br i1 %178, label %179, label %169

179:                                              ; preds = %175, %169, %166
  %180 = phi i32 [ 0, %166 ], [ %177, %175 ], [ %171, %169 ]
  %181 = phi i32 [ 0, %166 ], [ 0, %175 ], [ %170, %169 ]
  %182 = icmp eq i32 %167, 0
  br i1 %182, label %209, label %183

183:                                              ; preds = %183, %179
  %184 = phi i32 [ %206, %183 ], [ %181, %179 ]
  %185 = phi i32 [ %205, %183 ], [ %180, %179 ]
  %186 = phi i32 [ %207, %183 ], [ %167, %179 ]
  %187 = getelementptr %struct.bio_vec, ptr %128, i32 %185
  %188 = load ptr, ptr %187, align 4
  %189 = getelementptr %struct.bio_vec, ptr %128, i32 %185, i32 2
  %190 = load i32, ptr %189, align 4
  %191 = add i32 %190, %184
  %192 = lshr i32 %191, 12
  %193 = getelementptr %struct.page, ptr %188, i32 %192
  %194 = getelementptr %struct.bio_vec, ptr %128, i32 %185, i32 1
  %195 = load i32, ptr %194, align 4
  %196 = sub i32 %195, %184
  %197 = call i32 @llvm.umin.i32(i32 %186, i32 %196) #14
  %198 = and i32 %191, 4095
  %199 = sub nuw nsw i32 4096, %198
  %200 = call i32 @llvm.umin.i32(i32 %197, i32 %199) #14
  call void @flush_dcache_page(ptr noundef %193) #14
  %201 = add i32 %200, %184
  %202 = load i32, ptr %194, align 4
  %203 = icmp eq i32 %201, %202
  %204 = zext i1 %203 to i32
  %205 = add i32 %185, %204
  %206 = select i1 %203, i32 0, i32 %201
  %207 = sub i32 %186, %200
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %183

209:                                              ; preds = %183, %179, %165, %151
  %210 = icmp eq i32 %155, %152
  br i1 %210, label %211, label %212

211:                                              ; preds = %209
  call void @_set_bit(i32 noundef 3, ptr noundef %130) #14
  br label %212

212:                                              ; preds = %211, %209
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #14
  %213 = icmp sgt i32 %155, -1
  br i1 %213, label %214, label %235

214:                                              ; preds = %212
  %215 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_tcp_recv, i32 0, i32 1), align 4
  %216 = icmp sgt i32 %215, 0
  br i1 %216, label %217, label %230

217:                                              ; preds = %214
  %218 = tail call ptr @llvm.thread.pointer() #14
  %219 = getelementptr inbounds %struct.thread_info, ptr %218, i32 0, i32 2
  %220 = load i32, ptr %219, align 8
  %221 = lshr i32 %220, 5
  %222 = getelementptr i32, ptr @__cpu_online_mask, i32 %221
  %223 = load volatile i32, ptr %222, align 4
  %224 = and i32 %220, 31
  %225 = shl nuw i32 1, %224
  %226 = and i32 %225, %223
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %217
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !29
  %229 = call i32 @__traceiter_svcsock_tcp_recv(ptr noundef null, ptr noundef %6, i32 noundef %155) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !30
  br label %230

230:                                              ; preds = %228, %217, %214
  %231 = load i32, ptr %10, align 4
  %232 = add i32 %231, %155
  store i32 %232, ptr %10, align 4
  %233 = load i32, ptr %80, align 4
  %234 = add i32 %233, %155
  store i32 %234, ptr %80, align 4
  br label %235

235:                                              ; preds = %230, %212
  %236 = icmp eq i32 %155, %125
  br i1 %236, label %237, label %316

237:                                              ; preds = %235
  %238 = getelementptr inbounds %struct.svc_sock, ptr %6, i32 0, i32 6
  %239 = load i32, ptr %238, align 4
  %240 = and i32 %239, 128
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %316, label %242

242:                                              ; preds = %237
  %243 = load i32, ptr %80, align 4
  %244 = icmp ult i32 %243, 8
  br i1 %244, label %379, label %245

245:                                              ; preds = %242
  %246 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15
  %247 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15, i32 8
  store i32 %243, ptr %247, align 8
  %248 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15, i32 4
  store i32 0, ptr %248, align 8
  %249 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 1
  %250 = load i32, ptr %249, align 4
  %251 = icmp ugt i32 %243, %250
  br i1 %251, label %253, label %252

252:                                              ; preds = %245
  store i32 %243, ptr %249, align 4
  br label %255

253:                                              ; preds = %245
  %254 = sub i32 %243, %250
  br label %255

255:                                              ; preds = %253, %252
  %256 = phi i32 [ %254, %253 ], [ 0, %252 ]
  %257 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15, i32 5
  store i32 %256, ptr %257, align 4
  %258 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 12
  store ptr null, ptr %258, align 4
  %259 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 31
  store i32 6, ptr %259, align 4
  %260 = load volatile i32, ptr %9, align 4
  %261 = and i32 %260, 4096
  %262 = icmp eq i32 %261, 0
  %263 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 33
  br i1 %262, label %265, label %264

264:                                              ; preds = %255
  call void @_set_bit(i32 noundef 1, ptr noundef %263) #14
  br label %266

265:                                              ; preds = %255
  call void @_clear_bit(i32 noundef 1, ptr noundef %263) #14
  br label %266

266:                                              ; preds = %265, %264
  %267 = load ptr, ptr %246, align 8
  %268 = getelementptr i32, ptr %267, i32 1
  %269 = load i32, ptr %268, align 4
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %303, label %271

271:                                              ; preds = %266
  %272 = getelementptr inbounds %struct.svc_xprt, ptr %6, i32 0, i32 21
  %273 = load ptr, ptr %272, align 4
  %274 = load i32, ptr %267, align 4
  %275 = icmp eq ptr %273, null
  br i1 %275, label %302, label %276

276:                                              ; preds = %271
  %277 = getelementptr inbounds %struct.rpc_xprt, ptr %273, i32 0, i32 35
  call void @_raw_spin_lock(ptr noundef %277) #14
  %278 = call ptr @xprt_lookup_rqst(ptr noundef nonnull %273, i32 noundef %274) #14
  %279 = icmp eq ptr %278, null
  br i1 %279, label %295, label %280

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.rpc_rqst, ptr %278, i32 0, i32 20
  %282 = getelementptr inbounds %struct.rpc_rqst, ptr %278, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(44) %281, ptr noundef align 8 dereferenceable(44) %282, i32 44, i1 false) #14
  %283 = getelementptr inbounds %struct.rpc_rqst, ptr %278, i32 0, i32 20, i32 0, i32 0, i32 1
  %284 = load i32, ptr %283, align 4
  %285 = load i32, ptr %249, align 4
  %286 = icmp ult i32 %284, %285
  br i1 %286, label %299, label %287

287:                                              ; preds = %280
  %288 = load ptr, ptr %281, align 4
  %289 = load ptr, ptr %246, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %288, ptr align 1 %289, i32 %285, i1 false) #14
  %290 = getelementptr inbounds %struct.rpc_rqst, ptr %278, i32 0, i32 3
  %291 = load ptr, ptr %290, align 4
  %292 = load i32, ptr %247, align 8
  call void @xprt_complete_rqst(ptr noundef %291, i32 noundef %292) #14
  store i32 0, ptr %247, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !31
  %293 = load i16, ptr %277, align 4
  %294 = add i16 %293, 1
  store i16 %294, ptr %277, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !32
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !33
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !34
  store i32 0, ptr %80, align 4
  store i32 0, ptr %10, align 4
  store i32 0, ptr %238, align 4
  br label %305

295:                                              ; preds = %276
  %296 = call i32 @llvm.bswap.i32(i32 %269) #14
  %297 = call i32 @llvm.bswap.i32(i32 %274) #14
  %298 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.receive_cb_reply, i32 noundef %296, ptr noundef nonnull %273, i32 noundef %297) #16
  br label %299

299:                                              ; preds = %295, %280
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !31
  %300 = load i16, ptr %277, align 4
  %301 = add i16 %300, 1
  store i16 %301, ptr %277, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !32
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !33
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !34
  br label %302

302:                                              ; preds = %299, %271
  store i32 0, ptr %80, align 4
  store i32 0, ptr %10, align 4
  store i32 0, ptr %238, align 4
  br label %363

303:                                              ; preds = %266
  store i32 0, ptr %80, align 4
  store i32 0, ptr %10, align 4
  store i32 0, ptr %238, align 4
  %304 = icmp slt i32 %125, 0
  br i1 %304, label %360, label %305

305:                                              ; preds = %303, %287
  call void @svc_xprt_copy_addrs(ptr noundef %0, ptr noundef %6) #14
  %306 = getelementptr inbounds %struct.svc_serv, ptr %8, i32 0, i32 1
  %307 = load ptr, ptr %306, align 4
  %308 = icmp eq ptr %307, null
  br i1 %308, label %313, label %309

309:                                              ; preds = %305
  %310 = getelementptr inbounds %struct.svc_stat, ptr %307, i32 0, i32 3
  %311 = load i32, ptr %310, align 4
  %312 = add i32 %311, 1
  store i32 %312, ptr %310, align 4
  br label %313

313:                                              ; preds = %309, %305
  %314 = load ptr, ptr %5, align 8
  call void @svc_xprt_received(ptr noundef %314) #14
  %315 = load i32, ptr %247, align 8
  br label %400

316:                                              ; preds = %237, %235
  %317 = load i32, ptr %80, align 4
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %331, label %319

319:                                              ; preds = %316
  %320 = add i32 %317, 4095
  %321 = icmp ult i32 %320, 4096
  br i1 %321, label %331, label %322

322:                                              ; preds = %319
  %323 = lshr i32 %320, 12
  br label %324

324:                                              ; preds = %324, %322
  %325 = phi i32 [ %329, %324 ], [ 0, %322 ]
  %326 = getelementptr %struct.svc_rqst, ptr %0, i32 0, i32 20, i32 %325
  %327 = load ptr, ptr %326, align 4
  %328 = getelementptr %struct.svc_sock, ptr %6, i32 0, i32 10, i32 %325
  store ptr %327, ptr %328, align 4
  store ptr null, ptr %326, align 4
  %329 = add nuw nsw i32 %325, 1
  %330 = icmp eq i32 %329, %323
  br i1 %330, label %331, label %324

331:                                              ; preds = %324, %319, %316
  %332 = icmp slt i32 %155, 0
  %333 = icmp ne i32 %155, -11
  %334 = and i1 %332, %333
  br i1 %334, label %380, label %335

335:                                              ; preds = %331
  br i1 %236, label %336, label %338

336:                                              ; preds = %335
  store i32 0, ptr %10, align 4
  %337 = getelementptr inbounds %struct.svc_sock, ptr %6, i32 0, i32 6
  store i32 0, ptr %337, align 4
  br label %398

338:                                              ; preds = %335
  %339 = getelementptr inbounds %struct.svc_sock, ptr %6, i32 0, i32 6
  %340 = load i32, ptr %339, align 4
  %341 = and i32 %340, -129
  %342 = call i32 @llvm.bswap.i32(i32 %341) #14
  %343 = load i32, ptr %10, align 4
  %344 = add i32 %343, -4
  %345 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_tcp_recv_short, i32 0, i32 1), align 4
  %346 = icmp sgt i32 %345, 0
  br i1 %346, label %347, label %398

347:                                              ; preds = %338
  %348 = tail call ptr @llvm.thread.pointer() #14
  %349 = getelementptr inbounds %struct.thread_info, ptr %348, i32 0, i32 2
  %350 = load i32, ptr %349, align 8
  %351 = lshr i32 %350, 5
  %352 = getelementptr i32, ptr @__cpu_online_mask, i32 %351
  %353 = load volatile i32, ptr %352, align 4
  %354 = and i32 %350, 31
  %355 = shl nuw i32 1, %354
  %356 = and i32 %355, %353
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %398, label %358

358:                                              ; preds = %347
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !35
  %359 = call i32 @__traceiter_svcsock_tcp_recv_short(ptr noundef null, ptr noundef %6, i32 noundef %342, i32 noundef %344) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !36
  br label %398

360:                                              ; preds = %303, %30
  %361 = phi i32 [ %125, %303 ], [ %28, %30 ]
  %362 = icmp eq i32 %361, -11
  br i1 %362, label %363, label %380

363:                                              ; preds = %360, %302, %76, %64
  %364 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_tcp_recv_eagain, i32 0, i32 1), align 4
  %365 = icmp sgt i32 %364, 0
  br i1 %365, label %366, label %398

366:                                              ; preds = %363
  %367 = tail call ptr @llvm.thread.pointer() #14
  %368 = getelementptr inbounds %struct.thread_info, ptr %367, i32 0, i32 2
  %369 = load i32, ptr %368, align 8
  %370 = lshr i32 %369, 5
  %371 = getelementptr i32, ptr @__cpu_online_mask, i32 %370
  %372 = load volatile i32, ptr %371, align 4
  %373 = and i32 %369, 31
  %374 = shl nuw i32 1, %373
  %375 = and i32 %374, %372
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %398, label %377

377:                                              ; preds = %366
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !37
  %378 = call i32 @__traceiter_svcsock_tcp_recv_eagain(ptr noundef null, ptr noundef %6, i32 noundef 0) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !38
  br label %398

379:                                              ; preds = %242
  store i32 0, ptr %80, align 4
  br label %380

380:                                              ; preds = %379, %360, %331
  %381 = phi i32 [ %361, %360 ], [ %155, %331 ], [ %125, %379 ]
  %382 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_tcp_recv_err, i32 0, i32 1), align 4
  %383 = icmp sgt i32 %382, 0
  br i1 %383, label %384, label %397

384:                                              ; preds = %380
  %385 = tail call ptr @llvm.thread.pointer() #14
  %386 = getelementptr inbounds %struct.thread_info, ptr %385, i32 0, i32 2
  %387 = load i32, ptr %386, align 8
  %388 = lshr i32 %387, 5
  %389 = getelementptr i32, ptr @__cpu_online_mask, i32 %388
  %390 = load volatile i32, ptr %389, align 4
  %391 = and i32 %387, 31
  %392 = shl nuw i32 1, %391
  %393 = and i32 %392, %390
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %397, label %395

395:                                              ; preds = %384
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !39
  %396 = call i32 @__traceiter_svcsock_tcp_recv_err(ptr noundef null, ptr noundef %6, i32 noundef %381) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !40
  br label %397

397:                                              ; preds = %395, %384, %380
  call void @svc_xprt_deferred_close(ptr noundef %6) #14
  br label %398

398:                                              ; preds = %397, %377, %366, %363, %358, %347, %338, %336
  %399 = load ptr, ptr %5, align 8
  call void @svc_xprt_received(ptr noundef %399) #14
  br label %400

400:                                              ; preds = %398, %313
  %401 = phi i32 [ 0, %398 ], [ %315, %313 ]
  ret i32 %401
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @svc_tcp_sendto(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvec, align 8
  %4 = alloca %struct.msghdr, align 8
  %5 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  store ptr null, ptr %9, align 4
  %13 = getelementptr inbounds %struct.svc_sock, ptr %6, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  tail call void @__skb_free_datagram_locked(ptr noundef %14, ptr noundef nonnull %10, i32 noundef 0) #14
  br label %15

15:                                               ; preds = %12, %1
  %16 = getelementptr inbounds %struct.svc_sock, ptr %6, i32 0, i32 9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #14, !srcloc !9
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #14, !srcloc !10
  %18 = getelementptr inbounds %struct.svc_xprt, ptr %6, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %18) #14
  %19 = getelementptr inbounds %struct.svc_xprt, ptr %6, i32 0, i32 5
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 64
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %142

23:                                               ; preds = %15
  %24 = load volatile i32, ptr %19, align 4
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %142

27:                                               ; preds = %23
  %28 = or i32 %8, -2147483648
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %30 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19
  %31 = getelementptr inbounds %struct.svc_sock, ptr %6, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  tail call void @tcp_sock_set_cork(ptr noundef %32, i1 noundef zeroext true) #14
  %33 = getelementptr inbounds %struct.svc_sock, ptr %6, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  store i32 %29, ptr %2, align 4
  %35 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  store ptr %2, ptr %3, align 8
  %36 = getelementptr inbounds %struct.kvec, ptr %3, i32 0, i32 1
  store i32 4, ptr %36, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i32 56, i1 false) #14
  %37 = call i32 @xdr_alloc_bvec(ptr noundef %30, i32 noundef 3264) #14
  %38 = call i32 @kernel_sendmsg(ptr noundef %34, ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 4) #14
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %110, label %40

40:                                               ; preds = %27
  %41 = load i32, ptr %36, align 4
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %110

43:                                               ; preds = %40
  %44 = load ptr, ptr @mem_map, align 4
  %45 = load ptr, ptr %30, align 4
  %46 = ptrtoint ptr %45 to i32
  %47 = add i32 %46, 1073741824
  %48 = lshr i32 %47, 12
  %49 = getelementptr %struct.page, ptr %44, i32 %48
  %50 = and i32 %46, 4095
  %51 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 0, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = call i32 @kernel_sendpage(ptr noundef %34, ptr noundef %49, i32 noundef %50, i32 noundef %52, i32 noundef 0) #14
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %110, label %55

55:                                               ; preds = %43
  %56 = add nuw i32 %53, %38
  %57 = load i32, ptr %51, align 4
  %58 = icmp eq i32 %53, %57
  br i1 %58, label %59, label %110

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 5
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %93, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 4
  %67 = load i32, ptr %66, align 4
  %68 = lshr i32 %67, 12
  %69 = getelementptr %struct.bio_vec, ptr %65, i32 %68
  %70 = and i32 %67, 4095
  br label %71

71:                                               ; preds = %89, %63
  %72 = phi i32 [ %56, %63 ], [ %87, %89 ]
  %73 = phi ptr [ %69, %63 ], [ %91, %89 ]
  %74 = phi i32 [ %61, %63 ], [ %90, %89 ]
  %75 = phi i32 [ %70, %63 ], [ 0, %89 ]
  %76 = getelementptr inbounds %struct.bio_vec, ptr %73, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = sub i32 %77, %75
  %79 = call i32 @llvm.umin.i32(i32 %74, i32 %78) #14
  %80 = load ptr, ptr %73, align 4
  %81 = getelementptr inbounds %struct.bio_vec, ptr %73, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, %75
  %84 = call i32 @kernel_sendpage(ptr noundef %34, ptr noundef %80, i32 noundef %83, i32 noundef %79, i32 noundef 0) #14
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %110, label %86

86:                                               ; preds = %71
  %87 = add i32 %84, %72
  %88 = icmp eq i32 %84, %79
  br i1 %88, label %89, label %110

89:                                               ; preds = %86
  %90 = sub i32 %74, %79
  %91 = getelementptr %struct.bio_vec, ptr %73, i32 1
  %92 = icmp eq i32 %90, 0
  br i1 %92, label %93, label %71

93:                                               ; preds = %89, %59
  %94 = phi i32 [ %56, %59 ], [ %87, %89 ]
  %95 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %110, label %98

98:                                               ; preds = %93
  %99 = load ptr, ptr @mem_map, align 4
  %100 = load ptr, ptr %35, align 4
  %101 = ptrtoint ptr %100 to i32
  %102 = add i32 %101, 1073741824
  %103 = lshr i32 %102, 12
  %104 = getelementptr %struct.page, ptr %99, i32 %103
  %105 = and i32 %101, 4095
  %106 = call i32 @kernel_sendpage(ptr noundef %34, ptr noundef %104, i32 noundef %105, i32 noundef %96, i32 noundef 0) #14
  %107 = call i32 @llvm.smax.i32(i32 %106, i32 0)
  %108 = add i32 %107, %94
  %109 = call i32 @llvm.smin.i32(i32 %106, i32 0)
  br label %110

110:                                              ; preds = %98, %93, %86, %71, %55, %43, %40, %27
  %111 = phi i32 [ 0, %27 ], [ %38, %43 ], [ %94, %93 ], [ %56, %55 ], [ %38, %40 ], [ %108, %98 ], [ %87, %86 ], [ %72, %71 ]
  %112 = phi i32 [ %38, %27 ], [ %53, %43 ], [ 0, %93 ], [ 0, %55 ], [ -11, %40 ], [ %109, %98 ], [ 0, %86 ], [ %84, %71 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  call void @xdr_free_bvec(ptr noundef %30) #14
  %113 = icmp slt i32 %112, 0
  %114 = select i1 %113, i32 %112, i32 %111
  %115 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_tcp_send, i32 0, i32 1), align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %110
  %118 = tail call ptr @llvm.thread.pointer() #14
  %119 = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 2
  %120 = load i32, ptr %119, align 8
  %121 = lshr i32 %120, 5
  %122 = getelementptr i32, ptr @__cpu_online_mask, i32 %121
  %123 = load volatile i32, ptr %122, align 4
  %124 = and i32 %120, 31
  %125 = shl nuw i32 1, %124
  %126 = and i32 %125, %123
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %117
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !41
  %129 = call i32 @__traceiter_svcsock_tcp_send(ptr noundef null, ptr noundef %6, i32 noundef %114) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !42
  br label %130

130:                                              ; preds = %128, %117, %110
  %131 = load i32, ptr %7, align 4
  br i1 %113, label %144, label %132

132:                                              ; preds = %130
  %133 = add i32 %131, 4
  %134 = icmp eq i32 %111, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %132
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !25
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #14, !srcloc !9
  %136 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #14, !srcloc !26
  %137 = extractvalue { i32, i32 } %136, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !27
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load ptr, ptr %31, align 4
  call void @tcp_sock_set_cork(ptr noundef %140, i1 noundef zeroext false) #14
  br label %141

141:                                              ; preds = %139, %135
  call void @mutex_unlock(ptr noundef %18) #14
  br label %152

142:                                              ; preds = %23, %15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #14, !srcloc !9
  %143 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #14, !srcloc !43
  tail call void @mutex_unlock(ptr noundef %18) #14
  br label %152

144:                                              ; preds = %132, %130
  %145 = phi ptr [ @.str.12, %132 ], [ @.str.11, %130 ]
  %146 = getelementptr inbounds %struct.svc_xprt, ptr %6, i32 0, i32 6
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.svc_serv, ptr %147, i32 0, i32 13
  %149 = load ptr, ptr %148, align 4
  %150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %149, ptr noundef nonnull %145, i32 noundef %114, i32 noundef %131) #16
  call void @svc_xprt_deferred_close(ptr noundef %6) #14
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #14, !srcloc !9
  %151 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #14, !srcloc !43
  call void @mutex_unlock(ptr noundef %18) #14
  br label %152

152:                                              ; preds = %144, %142, %141
  %153 = phi i32 [ -107, %142 ], [ -11, %144 ], [ %111, %141 ]
  ret i32 %153
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @svc_sock_result_payload(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #5 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @svc_tcp_release_rqst(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  store ptr null, ptr %2, align 4
  %8 = getelementptr inbounds %struct.svc_sock, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void @__skb_free_datagram_locked(ptr noundef %9, ptr noundef nonnull %3, i32 noundef 0) #14
  br label %10

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @svc_tcp_sock_detach(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.svc_sock, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void @lock_sock_nested(ptr noundef %3, i32 noundef 0) #14
  %4 = getelementptr inbounds %struct.svc_sock, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 75
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.svc_sock, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 76
  store ptr %8, ptr %9, align 8
  %10 = getelementptr inbounds %struct.svc_sock, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 77
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 72
  store ptr null, ptr %13, align 4
  tail call void @release_sock(ptr noundef %3) #14
  %14 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 5
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 1024
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %61

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.svc_sock, ptr %0, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %56, label %22

22:                                               ; preds = %18
  %23 = add i32 %20, 4095
  %24 = icmp ult i32 %23, 4096
  br i1 %24, label %56, label %25

25:                                               ; preds = %22
  %26 = lshr i32 %23, 12
  br label %27

27:                                               ; preds = %53, %25
  %28 = phi i32 [ %54, %53 ], [ 0, %25 ]
  %29 = getelementptr %struct.svc_sock, ptr %0, i32 0, i32 10, i32 %28
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i1, ptr @svc_tcp_clear_pages.__already_done, align 1
  br i1 %33, label %53, label %34, !prof !24

34:                                               ; preds = %32
  store i1 true, ptr @svc_tcp_clear_pages.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 856, i32 noundef 9, ptr noundef null) #14
  br label %53

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 1
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40, !prof !24

40:                                               ; preds = %35
  %41 = add i32 %37, -1
  br label %44

42:                                               ; preds = %35
  %43 = ptrtoint ptr %30 to i32
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = inttoptr i32 %45 to ptr
  %47 = getelementptr inbounds %struct.page, ptr %46, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #14, !srcloc !9
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 1, ptr elementtype(i32) %47) #14, !srcloc !26
  %49 = extractvalue { i32, i32 } %48, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !27
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  tail call void @__put_page(ptr noundef %46) #14
  br label %52

52:                                               ; preds = %51, %44
  store ptr null, ptr %29, align 4
  br label %53

53:                                               ; preds = %52, %34, %32
  %54 = add nuw nsw i32 %28, 1
  %55 = icmp eq i32 %54, %26
  br i1 %55, label %56, label %27

56:                                               ; preds = %53, %22, %18
  %57 = getelementptr inbounds %struct.svc_sock, ptr %0, i32 0, i32 7
  store i32 0, ptr %57, align 4
  store i32 0, ptr %19, align 4
  %58 = getelementptr inbounds %struct.svc_sock, ptr %0, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 @kernel_sock_shutdown(ptr noundef %59, i32 noundef 2) #14
  br label %61

61:                                               ; preds = %56, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @svc_sock_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.svc_sock, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @fput(ptr noundef nonnull %5) #14
  br label %9

8:                                                ; preds = %1
  tail call void @sock_release(ptr noundef %3) #14
  br label %9

9:                                                ; preds = %8, %7
  tail call void @kfree(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @svc_sock_secure_port(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 3
  %3 = tail call i32 @svc_port_is_privileged(ptr noundef %2) #14
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 33
  br i1 %4, label %7, label %6

6:                                                ; preds = %1
  tail call void @_set_bit(i32 noundef 0, ptr noundef %5) #14
  br label %8

7:                                                ; preds = %1
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %5) #14
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @svc_tcp_kill_temp_xprt(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.svc_sock, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  tail call void @sock_no_linger(ptr noundef %5) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @svc_create_socket(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca ptr, align 4
  %8 = alloca %struct.__kernel_sockaddr_storage, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store ptr null, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %8, i8 0, i32 128, i1 false), !annotation !8
  switch i32 %1, label %9 [
    i32 17, label %11
    i32 6, label %11
  ]

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #16
  br label %71

11:                                               ; preds = %6, %6
  %12 = icmp eq i32 %1, 17
  %13 = select i1 %12, i32 2, i32 1
  %14 = load i16, ptr %3, align 2
  switch i16 %14, label %71 [
    i16 10, label %15
    i16 2, label %18
  ]

15:                                               ; preds = %11
  %16 = call i32 @__sock_create(ptr noundef %2, i32 noundef 10, i32 noundef %13, i32 noundef %1, ptr noundef nonnull %7, i32 noundef 1) #14
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %21, label %24

18:                                               ; preds = %11
  %19 = call i32 @__sock_create(ptr noundef %2, i32 noundef 2, i32 noundef %13, i32 noundef %1, ptr noundef nonnull %7, i32 noundef 1) #14
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %18, %15
  %22 = phi i32 [ %19, %18 ], [ %16, %15 ]
  %23 = inttoptr i32 %22 to ptr
  br label %71

24:                                               ; preds = %15
  %25 = load ptr, ptr %7, align 4
  %26 = getelementptr inbounds %struct.socket, ptr %25, i32 0, i32 4
  %27 = load ptr, ptr %26, align 16
  %28 = getelementptr inbounds %struct.sock_common, ptr %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.anon.42, ptr %28, i32 0, i32 1
  %30 = load i16, ptr %29, align 2
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  call void @lock_sock_nested(ptr noundef %27, i32 noundef 0) #14
  %33 = getelementptr inbounds %struct.sock_common, ptr %27, i32 0, i32 5
  %34 = load i8, ptr %33, align 1
  %35 = or i8 %34, 32
  store i8 %35, ptr %33, align 1
  call void @release_sock(ptr noundef %27) #14
  br label %36

36:                                               ; preds = %32, %24, %18
  %37 = load ptr, ptr %7, align 4
  br i1 %12, label %45, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.socket, ptr %37, i32 0, i32 4
  %40 = load ptr, ptr %39, align 16
  %41 = getelementptr inbounds %struct.sock_common, ptr %40, i32 0, i32 5
  %42 = load i8, ptr %41, align 1
  %43 = and i8 %42, -16
  %44 = or i8 %43, 1
  store i8 %44, ptr %41, align 1
  br label %45

45:                                               ; preds = %38, %36
  %46 = call i32 @kernel_bind(ptr noundef %37, ptr noundef %3, i32 noundef %4) #14
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %67, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr %7, align 4
  %50 = call i32 @kernel_getsockname(ptr noundef %49, ptr noundef nonnull %8) #14
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %48
  %53 = icmp eq i32 %1, 6
  br i1 %53, label %54, label %58

54:                                               ; preds = %52
  %55 = load ptr, ptr %7, align 4
  %56 = call i32 @kernel_listen(ptr noundef %55, i32 noundef 64) #14
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %54, %52
  %59 = load ptr, ptr %7, align 4
  %60 = call fastcc ptr @svc_setup_socket(ptr noundef %0, ptr noundef %59, i32 noundef %5)
  %61 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = ptrtoint ptr %60 to i32
  br label %67

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.svc_xprt, ptr %60, i32 0, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %65, ptr nonnull align 4 %8, i32 %50, i1 false) #14
  %66 = getelementptr inbounds %struct.svc_xprt, ptr %60, i32 0, i32 14
  store i32 %50, ptr %66, align 4
  br label %71

67:                                               ; preds = %62, %54, %48, %45
  %68 = phi i32 [ %46, %45 ], [ %50, %48 ], [ %56, %54 ], [ %63, %62 ]
  %69 = load ptr, ptr %7, align 4
  call void @sock_release(ptr noundef %69) #14
  %70 = inttoptr i32 %68 to ptr
  br label %71

71:                                               ; preds = %67, %64, %21, %11, %9
  %72 = phi ptr [ inttoptr (i32 -22 to ptr), %9 ], [ %23, %21 ], [ %70, %67 ], [ %60, %64 ], [ inttoptr (i32 -22 to ptr), %11 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  ret ptr %72
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sock_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_bind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_listen(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_accept(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_getpeername(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcsock_accept_err(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcsock_getpeername_err(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_xprt_copy_addrs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_xprt_received(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_xprt_deferred_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_recvmsg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcsock_marker(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_bvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcsock_tcp_recv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_lookup_rqst(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_complete_rqst(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcsock_tcp_recv_short(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcsock_tcp_recv_eagain(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcsock_tcp_recv_err(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_sock_set_cork(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_free_bvec(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_alloc_bvec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcsock_tcp_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_free_datagram_locked(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @svc_sock_detach(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.svc_sock, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void @lock_sock_nested(ptr noundef %3, i32 noundef 0) #14
  %4 = getelementptr inbounds %struct.svc_sock, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 75
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.svc_sock, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 76
  store ptr %8, ptr %9, align 8
  %10 = getelementptr inbounds %struct.svc_sock, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 77
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 72
  store ptr null, ptr %13, align 4
  tail call void @release_sock(ptr noundef %3) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sock_shutdown(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_port_is_privileged(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_no_linger(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @svc_udp_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = tail call fastcc ptr @svc_create_socket(ptr noundef %0, i32 noundef 17, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  ret ptr %6
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @svc_udp_accept(ptr nocapture noundef readnone %0) #11 {
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/svcsock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 621, 0\0A.popsection", ""() #14, !srcloc !44
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @svc_udp_has_wspace(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.svc_sock, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.socket, ptr %5, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 2, ptr noundef %6) #14
  %7 = getelementptr inbounds %struct.svc_xprt, ptr %0, i32 0, i32 7
  %8 = load volatile i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.svc_serv, ptr %3, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %8
  %12 = shl i32 %11, 1
  %13 = getelementptr inbounds %struct.svc_sock, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 66
  %16 = load i8, ptr %15, align 2
  %17 = and i8 %16, 2
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 21
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 23
  %23 = load volatile i32, ptr %22, align 4
  %24 = sub i32 %21, %23
  %25 = tail call i32 @llvm.smax.i32(i32 %24, i32 0) #14
  br label %26

26:                                               ; preds = %19, %1
  %27 = phi i32 [ 0, %1 ], [ %25, %19 ]
  %28 = icmp ugt i32 %12, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr inbounds %struct.socket, ptr %30, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %31) #14
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi i32 [ 1, %29 ], [ 0, %26 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @svc_udp_recvfrom(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.anon.191, align 4
  %4 = alloca %struct.msghdr, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.svc_xprt, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #14
  %10 = getelementptr inbounds i8, ptr %4, i32 32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %10, i8 0, i32 24, i1 false), !annotation !8
  %11 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 3
  store ptr %11, ptr %4, align 8
  %12 = getelementptr inbounds %struct.msghdr, ptr %4, i32 0, i32 1
  %13 = getelementptr inbounds %struct.msghdr, ptr %4, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  store ptr %3, ptr %13, align 8
  %14 = getelementptr inbounds %struct.msghdr, ptr %4, i32 0, i32 5
  store i32 32, ptr %14, align 8
  %15 = getelementptr inbounds %struct.msghdr, ptr %4, i32 0, i32 6
  store i32 64, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !8
  %16 = getelementptr inbounds %struct.svc_xprt, ptr %7, i32 0, i32 5
  %17 = call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %16) #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %42, label %19

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.svc_serv, ptr %9, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 3
  %23 = load ptr, ptr %8, align 4
  %24 = getelementptr inbounds %struct.svc_serv, ptr %23, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.svc_sock, ptr %7, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = udiv i32 1073741823, %25
  %29 = call i32 @llvm.umin.i32(i32 %28, i32 %22) #14
  %30 = getelementptr inbounds %struct.socket, ptr %27, i32 0, i32 4
  %31 = load ptr, ptr %30, align 16
  call void @lock_sock_nested(ptr noundef %31, i32 noundef 0) #14
  %32 = shl i32 %25, 1
  %33 = mul i32 %29, %32
  %34 = load ptr, ptr %30, align 16
  %35 = getelementptr inbounds %struct.sock, ptr %34, i32 0, i32 21
  store i32 %33, ptr %35, align 8
  %36 = load ptr, ptr %30, align 16
  %37 = getelementptr inbounds %struct.sock, ptr %36, i32 0, i32 15
  store i32 %33, ptr %37, align 4
  %38 = load ptr, ptr %30, align 16
  %39 = getelementptr inbounds %struct.sock, ptr %38, i32 0, i32 77
  %40 = load ptr, ptr %39, align 4
  call void %40(ptr noundef %38) #14
  %41 = load ptr, ptr %30, align 16
  call void @release_sock(ptr noundef %41) #14
  br label %42

42:                                               ; preds = %19, %1
  call void @_clear_bit(i32 noundef 3, ptr noundef %16) #14
  %43 = getelementptr inbounds %struct.svc_sock, ptr %7, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = call i32 @kernel_recvmsg(ptr noundef %44, ptr noundef nonnull %4, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 66) #14
  store i32 %45, ptr %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %192, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.svc_sock, ptr %7, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4
  %50 = call ptr @__skb_recv_udp(ptr noundef %49, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %51 = icmp eq ptr %50, null
  br i1 %51, label %190, label %52

52:                                               ; preds = %47
  %53 = load i16, ptr %11, align 2
  switch i16 %53, label %55 [
    i16 2, label %56
    i16 10, label %54
  ]

54:                                               ; preds = %52
  br label %56

55:                                               ; preds = %52
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/sunrpc/svc_xprt.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 193, 0\0A.popsection", ""() #14, !srcloc !45
  unreachable

56:                                               ; preds = %54, %52
  %57 = phi i32 [ 28, %54 ], [ 16, %52 ]
  %58 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 4
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 2
  %60 = load i64, ptr %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = call i64 @ktime_get_with_offset(i32 noundef 0) #14
  store i64 %63, ptr %59, align 8
  br label %64

64:                                               ; preds = %62, %56
  %65 = phi i64 [ %63, %62 ], [ %60, %56 ]
  %66 = load ptr, ptr %48, align 4
  %67 = getelementptr inbounds %struct.sock, ptr %66, i32 0, i32 64
  %68 = getelementptr inbounds %struct.sock, ptr %66, i32 0, i32 64, i32 1
  call void @_raw_spin_lock(ptr noundef %68) #14
  %69 = load i32, ptr %67, align 4
  %70 = add i32 %69, 1
  store i32 %70, ptr %67, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #14, !srcloc !46
  %71 = getelementptr inbounds %struct.sock, ptr %66, i32 0, i32 63
  store i64 %65, ptr %71, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #14, !srcloc !47
  %72 = load i32, ptr %67, align 4
  %73 = add i32 %72, 1
  store i32 %73, ptr %67, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !31
  %74 = load i16, ptr %68, align 4
  %75 = add i16 %74, 1
  store i16 %75, ptr %68, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !32
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !33
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !34
  call void @_set_bit(i32 noundef 3, ptr noundef %16) #14
  %76 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 5
  %77 = load i32, ptr %76, align 8
  %78 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15
  %79 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15, i32 8
  store i32 %77, ptr %79, align 8
  %80 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_udp_recv, i32 0, i32 1), align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %64
  %83 = tail call ptr @llvm.thread.pointer() #14
  %84 = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 2
  %85 = load i32, ptr %84, align 8
  %86 = lshr i32 %85, 5
  %87 = getelementptr i32, ptr @__cpu_online_mask, i32 %86
  %88 = load volatile i32, ptr %87, align 4
  %89 = and i32 %85, 31
  %90 = shl nuw i32 1, %89
  %91 = and i32 %90, %88
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %82
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !48
  %94 = call i32 @__traceiter_svcsock_udp_recv(ptr noundef null, ptr noundef %7, i32 noundef %77) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !49
  br label %95

95:                                               ; preds = %93, %82, %64
  %96 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 31
  store i32 17, ptr %96, align 4
  %97 = getelementptr inbounds %struct.cmsghdr, ptr %3, i32 0, i32 1
  %98 = load i32, ptr %97, align 4
  switch i32 %98, label %214 [
    i32 0, label %99
    i32 41, label %108
  ]

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.cmsghdr, ptr %3, i32 0, i32 2
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, 8
  br i1 %102, label %103, label %214

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 5
  store i16 2, ptr %104, align 4
  %105 = getelementptr inbounds i8, ptr %3, i32 16
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 5, i32 0, i32 1
  store i32 %106, ptr %107, align 4
  br label %119

108:                                              ; preds = %95
  %109 = getelementptr inbounds %struct.cmsghdr, ptr %3, i32 0, i32 2
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, 50
  br i1 %111, label %112, label %214

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 5
  %114 = getelementptr inbounds i8, ptr %3, i32 12
  store i16 10, ptr %113, align 4
  %115 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 5, i32 0, i32 1, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %115, ptr noundef align 4 dereferenceable(16) %114, i32 16, i1 false) #14
  %116 = getelementptr inbounds i8, ptr %3, i32 28
  %117 = load i32, ptr %116, align 4
  %118 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 5, i32 0, i32 1, i32 20
  store i32 %117, ptr %118, align 4
  br label %119

119:                                              ; preds = %112, %103
  %120 = phi i32 [ 28, %112 ], [ 16, %103 ]
  %121 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 6
  store i32 %120, ptr %121, align 8
  %122 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 6
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %119
  %126 = tail call ptr @llvm.thread.pointer() #14
  %127 = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 1
  %128 = load volatile i32, ptr %127, align 4
  %129 = add i32 %128, 512
  store volatile i32 %129, ptr %127, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !50
  %130 = call i32 @csum_partial_copy_to_xdr(ptr noundef %78, ptr noundef nonnull %50) #14
  %131 = icmp eq i32 %130, 0
  call fastcc void @local_bh_enable()
  br i1 %131, label %132, label %222

132:                                              ; preds = %125
  call void @consume_skb(ptr noundef nonnull %50) #14
  br label %163

133:                                              ; preds = %119
  %134 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 17
  %135 = load ptr, ptr %134, align 4
  store ptr %135, ptr %78, align 8
  %136 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 1
  store i32 %77, ptr %136, align 4
  %137 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 13
  %138 = load i16, ptr %137, align 8
  %139 = lshr i16 %138, 5
  %140 = and i16 %139, 3
  %141 = icmp ne i16 %140, 1
  %142 = icmp sgt i16 %138, -1
  %143 = select i1 %141, i1 %142, i1 false
  br i1 %143, label %144, label %161

144:                                              ; preds = %133
  %145 = icmp eq i16 %140, 3
  br i1 %145, label %146, label %158

146:                                              ; preds = %144
  %147 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 13, i32 0, i32 4
  %148 = load i16, ptr %147, align 4
  %149 = zext i16 %148 to i32
  %150 = load ptr, ptr %134, align 4
  %151 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 16
  %152 = load ptr, ptr %151, align 8
  %153 = ptrtoint ptr %150 to i32
  %154 = ptrtoint ptr %152 to i32
  %155 = sub i32 %149, %153
  %156 = add i32 %155, %154
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %146, %144
  %159 = call zeroext i16 @__skb_checksum_complete(ptr noundef nonnull %50) #14
  %160 = icmp eq i16 %159, 0
  br i1 %160, label %161, label %222

161:                                              ; preds = %158, %146, %133
  %162 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 12
  store ptr %50, ptr %162, align 4
  br label %163

163:                                              ; preds = %161, %132
  %164 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15, i32 4
  store i32 0, ptr %164, align 8
  %165 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15, i32 0, i32 0, i32 1
  %166 = load i32, ptr %165, align 4
  %167 = icmp ugt i32 %77, %166
  br i1 %167, label %170, label %168

168:                                              ; preds = %163
  store i32 %77, ptr %165, align 4
  %169 = getelementptr %struct.svc_rqst, ptr %0, i32 0, i32 20, i32 1
  br label %176

170:                                              ; preds = %163
  %171 = sub i32 %77, %166
  %172 = getelementptr %struct.svc_rqst, ptr %0, i32 0, i32 20, i32 1
  %173 = add i32 %171, 4095
  %174 = lshr i32 %173, 12
  %175 = getelementptr ptr, ptr %172, i32 %174
  br label %176

176:                                              ; preds = %170, %168
  %177 = phi i32 [ %171, %170 ], [ 0, %168 ]
  %178 = phi ptr [ %175, %170 ], [ %169, %168 ]
  %179 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15, i32 5
  store i32 %177, ptr %179, align 4
  %180 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 21
  store ptr %178, ptr %180, align 4
  %181 = getelementptr ptr, ptr %178, i32 1
  %182 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 22
  store ptr %181, ptr %182, align 8
  %183 = getelementptr inbounds %struct.svc_serv, ptr %9, i32 0, i32 1
  %184 = load ptr, ptr %183, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %223, label %186

186:                                              ; preds = %176
  %187 = getelementptr inbounds %struct.svc_stat, ptr %184, i32 0, i32 2
  %188 = load i32, ptr %187, align 4
  %189 = add i32 %188, 1
  store i32 %189, ptr %187, align 4
  br label %223

190:                                              ; preds = %47
  %191 = load i32, ptr %5, align 4
  br label %192

192:                                              ; preds = %190, %42
  %193 = phi i32 [ %191, %190 ], [ %45, %42 ]
  %194 = icmp eq i32 %193, -11
  br i1 %194, label %197, label %195

195:                                              ; preds = %192
  call void @_set_bit(i32 noundef 3, ptr noundef %16) #14
  %196 = load i32, ptr %5, align 4
  br label %197

197:                                              ; preds = %195, %192
  %198 = phi i32 [ %196, %195 ], [ -11, %192 ]
  %199 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_udp_recv_err, i32 0, i32 1), align 4
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %223

201:                                              ; preds = %197
  %202 = tail call ptr @llvm.thread.pointer() #14
  %203 = getelementptr inbounds %struct.thread_info, ptr %202, i32 0, i32 2
  %204 = load i32, ptr %203, align 8
  %205 = lshr i32 %204, 5
  %206 = getelementptr i32, ptr @__cpu_online_mask, i32 %205
  %207 = load volatile i32, ptr %206, align 4
  %208 = and i32 %204, 31
  %209 = shl nuw i32 1, %208
  %210 = and i32 %209, %207
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %223, label %212

212:                                              ; preds = %201
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !51
  %213 = call i32 @__traceiter_svcsock_udp_recv_err(ptr noundef null, ptr noundef %7, i32 noundef %198) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !52
  br label %223

214:                                              ; preds = %108, %99, %95
  %215 = call i32 @net_ratelimit() #14
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %222, label %217

217:                                              ; preds = %214
  %218 = load i32, ptr %97, align 4
  %219 = getelementptr inbounds %struct.cmsghdr, ptr %3, i32 0, i32 2
  %220 = load i32, ptr %219, align 4
  %221 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %218, i32 noundef %220) #16
  br label %222

222:                                              ; preds = %217, %214, %158, %125
  call void @kfree_skb_reason(ptr noundef nonnull %50, i32 noundef 0) #14
  br label %223

223:                                              ; preds = %222, %212, %201, %197, %186, %176
  %224 = phi i32 [ %77, %186 ], [ %77, %176 ], [ 0, %212 ], [ 0, %201 ], [ 0, %197 ], [ 0, %222 ]
  %225 = load ptr, ptr %6, align 8
  call void @svc_xprt_received(ptr noundef %225) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  ret i32 %224
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @svc_udp_sendto(ptr noundef %0) #0 {
  %2 = alloca %union.anon.192, align 4
  %3 = alloca %struct.msghdr, align 8
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #14
  %8 = getelementptr inbounds i8, ptr %3, i32 32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %8, i8 0, i32 24, i1 false), !annotation !8
  %9 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 3
  store ptr %9, ptr %3, align 8
  %10 = getelementptr inbounds %struct.msghdr, ptr %3, i32 0, i32 1
  %11 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.msghdr, ptr %3, i32 0, i32 2
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %13, i8 0, i32 24, i1 false)
  %14 = getelementptr inbounds %struct.msghdr, ptr %3, i32 0, i32 3
  store ptr %2, ptr %14, align 8
  %15 = getelementptr inbounds %struct.msghdr, ptr %3, i32 0, i32 5
  store i32 32, ptr %15, align 8
  %16 = getelementptr inbounds %struct.msghdr, ptr %3, i32 0, i32 7
  store ptr null, ptr %16, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %17 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 12
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  store ptr null, ptr %17, align 4
  call void @consume_skb(ptr noundef nonnull %18) #14
  %21 = load ptr, ptr %5, align 8
  br label %22

22:                                               ; preds = %20, %1
  %23 = phi ptr [ %6, %1 ], [ %21, %20 ]
  %24 = getelementptr inbounds %struct.svc_sock, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.sock_common, ptr %25, i32 0, i32 3
  %27 = load i16, ptr %26, align 8
  switch i16 %27, label %45 [
    i16 2, label %28
    i16 10, label %35
  ]

28:                                               ; preds = %22
  %29 = getelementptr inbounds i8, ptr %2, i32 12
  %30 = getelementptr inbounds %struct.cmsghdr, ptr %2, i32 0, i32 1
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.cmsghdr, ptr %2, i32 0, i32 2
  store i32 8, ptr %31, align 4
  store i32 0, ptr %29, align 4
  %32 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 5, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds i8, ptr %2, i32 16
  store i32 %33, ptr %34, align 4
  br label %43

35:                                               ; preds = %22
  %36 = getelementptr inbounds i8, ptr %2, i32 12
  %37 = getelementptr inbounds %struct.cmsghdr, ptr %2, i32 0, i32 1
  store i32 41, ptr %37, align 4
  %38 = getelementptr inbounds %struct.cmsghdr, ptr %2, i32 0, i32 2
  store i32 50, ptr %38, align 4
  %39 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 5, i32 0, i32 1, i32 20
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds i8, ptr %2, i32 28
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 5, i32 0, i32 1, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %36, ptr noundef align 4 dereferenceable(16) %42, i32 16, i1 false) #14
  br label %43

43:                                               ; preds = %35, %28
  %44 = phi i32 [ 32, %35 ], [ 24, %28 ]
  store i32 %44, ptr %2, align 4
  br label %45

45:                                               ; preds = %43, %22
  %46 = getelementptr inbounds %struct.svc_xprt, ptr %6, i32 0, i32 9
  call void @mutex_lock(ptr noundef %46) #14
  %47 = getelementptr inbounds %struct.svc_xprt, ptr %6, i32 0, i32 5
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %48, 64
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %84

51:                                               ; preds = %45
  %52 = load volatile i32, ptr %47, align 4
  %53 = and i32 %52, 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %84

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.svc_sock, ptr %6, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = call i32 @xprt_sock_sendmsg(ptr noundef %57, ptr noundef nonnull %3, ptr noundef %7, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #14
  call void @xdr_free_bvec(ptr noundef %7) #14
  %59 = icmp eq i32 %58, -111
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load ptr, ptr %56, align 4
  %62 = call i32 @xprt_sock_sendmsg(ptr noundef %61, ptr noundef nonnull %3, ptr noundef %7, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #14
  call void @xdr_free_bvec(ptr noundef %7) #14
  br label %63

63:                                               ; preds = %60, %55
  %64 = phi i32 [ %62, %60 ], [ %58, %55 ]
  %65 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_udp_send, i32 0, i32 1), align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = tail call ptr @llvm.thread.pointer() #14
  %69 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %70 = load i32, ptr %69, align 8
  %71 = lshr i32 %70, 5
  %72 = getelementptr i32, ptr @__cpu_online_mask, i32 %71
  %73 = load volatile i32, ptr %72, align 4
  %74 = and i32 %70, 31
  %75 = shl nuw i32 1, %74
  %76 = and i32 %75, %73
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %67
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !53
  %79 = call i32 @__traceiter_svcsock_udp_send(ptr noundef null, ptr noundef %6, i32 noundef %64) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !54
  br label %80

80:                                               ; preds = %78, %67, %63
  call void @mutex_unlock(ptr noundef %46) #14
  %81 = icmp slt i32 %64, 0
  %82 = load i32, ptr %4, align 4
  %83 = select i1 %81, i32 %64, i32 %82
  br label %85

84:                                               ; preds = %51, %45
  call void @mutex_unlock(ptr noundef %46) #14
  br label %85

85:                                               ; preds = %84, %80
  %86 = phi i32 [ -107, %84 ], [ %83, %80 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #14
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @svc_udp_release_rqst(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  store ptr null, ptr %2, align 4
  tail call void @consume_skb(ptr noundef nonnull %3) #14
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @svc_udp_kill_temp_xprt(ptr nocapture noundef %0) #5 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_recvmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial_copy_to_xdr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #12 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__skb_recv_udp(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcsock_udp_recv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_checksum_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcsock_udp_recv_err(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_sock_sendmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcsock_udp_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_register(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_xprt_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @svc_data_ready(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 72
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !55
  %6 = getelementptr inbounds %struct.svc_sock, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %0) #14
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_data_ready, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %5
  %11 = tail call ptr @llvm.thread.pointer() #14
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
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !56
  %22 = tail call i32 @__traceiter_svcsock_data_ready(ptr noundef null, ptr noundef nonnull %3, i32 noundef 0) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !57
  br label %23

23:                                               ; preds = %21, %10, %5
  %24 = getelementptr inbounds %struct.svc_xprt, ptr %3, i32 0, i32 5
  %25 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %24) #14
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  tail call void @svc_xprt_enqueue(ptr noundef nonnull %3) #14
  br label %28

28:                                               ; preds = %27, %23, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @svc_write_space(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 72
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !58
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_write_space, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %5
  %9 = tail call ptr @llvm.thread.pointer() #14
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !59
  %20 = tail call i32 @__traceiter_svcsock_write_space(ptr noundef null, ptr noundef nonnull %3, i32 noundef 0) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !60
  br label %21

21:                                               ; preds = %19, %8, %5
  %22 = getelementptr inbounds %struct.svc_sock, ptr %3, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  tail call void %23(ptr noundef %0) #14
  tail call void @svc_xprt_enqueue(ptr noundef nonnull %3) #14
  br label %24

24:                                               ; preds = %21, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_sock_set_pktinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_xprt_enqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcsock_data_ready(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcsock_write_space(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @svc_tcp_listen_data_ready(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 72
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %7 = load volatile i8, ptr %6, align 2
  br label %16

8:                                                ; preds = %1
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !61
  %9 = getelementptr inbounds %struct.svc_sock, ptr %3, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  tail call void %10(ptr noundef %0) #14
  %11 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %12 = load volatile i8, ptr %11, align 2
  %13 = icmp eq i8 %12, 10
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.svc_xprt, ptr %3, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 1, ptr noundef %15) #14
  tail call void @svc_xprt_enqueue(ptr noundef nonnull %3) #14
  br label %16

16:                                               ; preds = %14, %8, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @svc_tcp_state_change(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 72
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !62
  %6 = getelementptr inbounds %struct.svc_sock, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %0) #14
  %8 = getelementptr inbounds %struct.svc_sock, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_tcp_state, i32 0, i32 1), align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %5
  %13 = tail call ptr @llvm.thread.pointer() #14
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 5
  %17 = getelementptr i32, ptr @__cpu_online_mask, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %15, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !63
  %24 = tail call i32 @__traceiter_svcsock_tcp_state(ptr noundef null, ptr noundef nonnull %3, ptr noundef %9) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !64
  br label %25

25:                                               ; preds = %23, %12, %5
  %26 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %27 = load volatile i8, ptr %26, align 2
  %28 = icmp eq i8 %27, 1
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @svc_xprt_deferred_close(ptr noundef nonnull %3) #14
  br label %30

30:                                               ; preds = %29, %25, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_sock_set_nodelay(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcsock_tcp_state(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcsock_new_socket(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }

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
!9 = !{i64 448369, i64 2147938340, i64 2147938366, i64 2147938413, i64 2147938435, i64 2147938463, i64 2147938483}
!10 = !{i64 2147950552, i64 2147950578, i64 2147950607, i64 2147950641, i64 2147950672, i64 2147950695}
!11 = !{i64 2159690086}
!12 = !{i64 2159668799, i64 2159669284, i64 2159668836, i64 2159668892, i64 2159668926, i64 2159668950, i64 2159668991, i64 2159669012, i64 2159669040, i64 2159669074}
!13 = !{i64 2159199957}
!14 = !{i64 2159200117}
!15 = !{i64 2159431772}
!16 = !{i64 2159431962}
!17 = !{i64 2159453480}
!18 = !{i64 2159453680}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 2148976790}
!21 = !{i64 2148977007}
!22 = !{i64 2159216330}
!23 = !{i64 2159216494}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{i64 2148051207}
!26 = !{i64 2147953593, i64 2147953625, i64 2147953654, i64 2147953688, i64 2147953719, i64 2147953742}
!27 = !{i64 2148051410}
!28 = !{i64 2159673202, i64 2159673687, i64 2159673239, i64 2159673295, i64 2159673329, i64 2159673353, i64 2159673394, i64 2159673415, i64 2159673443, i64 2159673477}
!29 = !{i64 2159308110}
!30 = !{i64 2159308278}
!31 = !{i64 2149202989}
!32 = !{i64 2149198813}
!33 = !{i64 2149198888, i64 2149198915, i64 2149198962, i64 2149198984, i64 2149199012, i64 2149199032}
!34 = !{i64 2149225992}
!35 = !{i64 2159397374}
!36 = !{i64 2159397578}
!37 = !{i64 2159325070}
!38 = !{i64 2159325252}
!39 = !{i64 2159342288}
!40 = !{i64 2159342464}
!41 = !{i64 2159287369}
!42 = !{i64 2159287537}
!43 = !{i64 2147952909, i64 2147952935, i64 2147952964, i64 2147952998, i64 2147953029, i64 2147953052}
!44 = !{i64 2159667447, i64 2159667932, i64 2159667484, i64 2159667540, i64 2159667574, i64 2159667598, i64 2159667639, i64 2159667660, i64 2159667688, i64 2159667722}
!45 = !{i64 2157218986, i64 2157219482, i64 2157219023, i64 2157219079, i64 2157219113, i64 2157219137, i64 2157219178, i64 2157219199, i64 2157219227, i64 2157219261}
!46 = !{i64 2149622351}
!47 = !{i64 2149622652}
!48 = !{i64 2159253633}
!49 = !{i64 2159253801}
!50 = !{i64 2148822060}
!51 = !{i64 2159270473}
!52 = !{i64 2159270649}
!53 = !{i64 2159232892}
!54 = !{i64 2159233060}
!55 = !{i64 2159654487}
!56 = !{i64 2159359264}
!57 = !{i64 2159359436}
!58 = !{i64 2159654690}
!59 = !{i64 2159380233}
!60 = !{i64 2159380407}
!61 = !{i64 2159669571}
!62 = !{i64 2159669769}
!63 = !{i64 2159414481}
!64 = !{i64 2159414651}
