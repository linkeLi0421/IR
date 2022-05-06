; ModuleID = '/llk/IR/net/ipv6/tcp_ipv6.c_pt.bc'
source_filename = "../net/ipv6/tcp_ipv6.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcpv6_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22tcpv6_prot\22\09\09\09\09\09"
module asm "__kstrtabns_tcpv6_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.request_sock_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tcp_request_sock_ops = type { i16, ptr, ptr, ptr, ptr }
%struct.inet_connection_sock_af_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.tcp_seq_afinfo = type { i16 }
%struct.atomic_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.timewait_sock_ops = type { ptr, ptr, i32, ptr, ptr }
%struct.inet_hashinfo = type { ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, [28 x i8], [32 x %struct.inet_listen_hashbucket] }
%struct.inet_listen_hashbucket = type { %struct.spinlock, i32, %union.anon.136 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%union.anon.136 = type { %struct.hlist_head }
%struct.hlist_head = type { ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.175, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.175 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.inet6_protocol = type { ptr, ptr, ptr, ptr, i32 }
%struct.inet_protosw = type { %struct.list_head, i16, i16, ptr, ptr, i8 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.25, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.139, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.139 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.static_key_false = type { %struct.static_key }
%struct.in6_addr = type { %union.anon.115 }
%union.anon.115 = type { [4 x i32] }
%struct.static_key_false_deferred = type { %struct.static_key_false }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.176, [0 x i32], %union.anon.177, i16, i16, %union.anon.178, %struct.refcount_struct, [0 x i32], %union.anon.179 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.atomic64_t = type { i64 }
%union.anon.176 = type { i32 }
%union.anon.177 = type { %struct.hlist_node }
%union.anon.178 = type { i32 }
%union.anon.179 = type { i32 }
%struct.tcp_request_sock = type { %struct.inet_request_sock, ptr, i64, i8, i8, i32, i32, i32, i32, i32, i32, i8 }
%struct.inet_request_sock = type { %struct.request_sock, i16, i32, %union.anon.189 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%union.anon.189 = type { %struct.anon.190 }
%struct.anon.190 = type { ptr, ptr }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.202, %struct.anon.203, %struct.anon.204, i32, ptr, ptr, ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.200, %struct.anon.201, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.180, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.181, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.182, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.180 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.181 = type { ptr }
%union.anon.182 = type { ptr }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.122 }
%union.anon.122 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.200 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.201 = type { i32, i32, i32, i32 }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.202 = type { i32, i32, i64 }
%struct.anon.203 = type { i32, i32, i64 }
%struct.anon.204 = type { i32, i32 }
%struct.sk_buff = type { %union.anon.42, %union.anon.45, %union.anon.46, [48 x i8], %union.anon.47, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.49, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, ptr, %union.anon.44 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { ptr }
%union.anon.46 = type { i64 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { i32, ptr }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.51, i32, i32, i32, i16, i16, %union.anon.53, %union.anon.54, %union.anon.55, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.51 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i16 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.netdevice_tracker = type {}
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inet_timewait_sock = type { %struct.sock_common, i32, i8, i8, i16, i32, i32, i32, %struct.timer_list, ptr }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.anon.52 = type { i16, i16 }
%struct.fib6_info = type { ptr, ptr, ptr, %union.anon.116, i32, %struct.refcount_struct, i32, ptr, %struct.rt6key, i32, %struct.rt6key, %struct.rt6key, i32, i8, i8, i8, i8, i8, i8, %struct.callback_head, ptr, [0 x %struct.fib6_nh] }
%union.anon.116 = type { %struct.list_head }
%struct.fib6_nh = type { %struct.fib_nh_common, i32, ptr, ptr }
%struct.fib_nh_common = type { ptr, %struct.netdevice_tracker, i32, i8, i8, i8, i8, ptr, %union.anon.119, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.119 = type { %struct.in6_addr }
%struct.fib6_node = type { ptr, ptr, ptr, ptr, i16, i16, i32, ptr, %struct.callback_head }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.127, i32, %struct.list_head, ptr }
%union.anon.127 = type { %struct.in6_addr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, i32, i32, i32, i32, i32, %union.anon.196, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.196 = type { %struct.anon.197 }
%struct.anon.197 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.ipv6_txoptions = type { %struct.refcount_struct, i32, i16, i16, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.anon = type { i32, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.ip6_flowlabel = type { ptr, i32, %struct.atomic_t, %struct.in6_addr, ptr, i32, %struct.callback_head, i8, %union.anon.198, i32, i32, ptr }
%union.anon.198 = type { ptr }
%struct.anon.123 = type { i16, i16 }
%struct.tcp_timewait_sock = type { %struct.inet_timewait_sock, i32, i32, i32, i32, i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.tcp_iter_state = type { %struct.seq_net_private, i32, ptr, i32, i32, i32, i32, i64 }
%struct.seq_net_private = type {}
%struct.anon.2 = type { i16, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.41, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.135, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.41 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.135 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.inet6_dev = type { ptr, %struct.netdevice_tracker, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }

@tcp6_request_sock_ops = dso_local global %struct.request_sock_ops { i32 10, i32 232, ptr null, ptr null, ptr @tcp_rtx_synack, ptr @tcp_v6_reqsk_send_ack, ptr @tcp_v6_send_reset, ptr @tcp_v6_reqsk_destructor, ptr @tcp_syn_ack_timeout }, section ".data..read_mostly", align 4
@tcp_request_sock_ipv6_ops = dso_local constant %struct.tcp_request_sock_ops { i16 1220, ptr @tcp_v6_route_req, ptr @tcp_v6_init_seq, ptr @tcp_v6_init_ts_off, ptr @tcp_v6_send_synack }, align 4
@ipv6_specific = dso_local constant %struct.inet_connection_sock_af_ops { ptr @inet6_csk_xmit, ptr @tcp_v6_send_check, ptr @inet6_sk_rebuild_header, ptr @inet6_sk_rx_dst_set, ptr @tcp_v6_conn_request, ptr @tcp_v6_syn_recv_sock, i16 40, i16 8, i16 28, ptr @ipv6_setsockopt, ptr @ipv6_getsockopt, ptr @inet6_csk_addr2sockaddr, ptr @tcp_v6_mtu_reduced }, align 4
@.str = private unnamed_addr constant [5 x i8] c"tcp6\00", align 1
@tcp6_seq_ops = internal constant %struct.seq_operations { ptr @tcp_seq_start, ptr @tcp_seq_stop, ptr @tcp_seq_next, ptr @tcp6_seq_show }, align 4
@tcp6_seq_afinfo = internal global %struct.tcp_seq_afinfo { i16 10 }, align 2
@tcp_memory_allocated = external dso_local global %struct.atomic_t, align 4
@tcp_sockets_allocated = external dso_local global %struct.percpu_counter, align 8
@tcp_memory_pressure = external dso_local global i32, align 4
@sysctl_tcp_mem = external dso_local global [3 x i32], align 4
@tcp_orphan_count = external dso_local global i32, section ".data..percpu", align 4
@tcp6_timewait_sock_ops = internal global %struct.timewait_sock_ops { ptr null, ptr null, i32 184, ptr @tcp_twsk_unique, ptr @tcp_twsk_destructor }, align 4
@tcp_hashinfo = external dso_local global %struct.inet_hashinfo, align 64
@tcpv6_prot = dso_local global %struct.proto { ptr @tcp_close, ptr @tcp_v6_pre_connect, ptr @tcp_v6_connect, ptr @tcp_disconnect, ptr @inet_csk_accept, ptr @tcp_ioctl, ptr @tcp_v6_init_sock, ptr @tcp_v6_destroy_sock, ptr @tcp_shutdown, ptr @tcp_setsockopt, ptr @tcp_getsockopt, ptr @tcp_set_keepalive, ptr @tcp_sendmsg, ptr @tcp_recvmsg, ptr @tcp_sendpage, ptr null, ptr null, ptr @tcp_v6_do_rcv, ptr @tcp_bpf_bypass_getsockopt, ptr @tcp_release_cb, ptr @inet6_hash, ptr @inet_unhash, ptr null, ptr @inet_csk_get_port, ptr @inet_put_port, i32 0, ptr @tcp_stream_memory_free, ptr null, ptr @tcp_enter_memory_pressure, ptr @tcp_leave_memory_pressure, ptr @tcp_memory_allocated, ptr @tcp_sockets_allocated, ptr @tcp_memory_pressure, ptr @sysctl_tcp_mem, ptr null, ptr null, i32 708, i32 720, i32 320, i8 1, ptr null, i32 1848, i32 524288, i32 0, i32 0, ptr @tcp_orphan_count, ptr @tcp6_request_sock_ops, ptr @tcp6_timewait_sock_ops, %union.anon.175 { ptr @tcp_hashinfo }, ptr null, [32 x i8] c"TCPv6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr @tcp_abort }, align 4
@__kstrtab_tcpv6_prot = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcpv6_prot = external dso_local constant [0 x i8], align 1
@__ksymtab_tcpv6_prot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcpv6_prot to i32), ptr @__kstrtab_tcpv6_prot, ptr @__kstrtabns_tcpv6_prot }, section "___ksymtab_gpl+tcpv6_prot", align 4
@tcpv6_protocol = internal global %struct.inet6_protocol { ptr @tcp_v6_early_demux, ptr @tcp_v6_early_demux, ptr @tcp_v6_rcv, ptr @tcp_v6_err, i32 3 }, align 4
@tcpv6_protosw = internal global %struct.inet_protosw { %struct.list_head zeroinitializer, i16 1, i16 6, ptr @tcpv6_prot, ptr @inet6_stream_ops, i8 6 }, align 4
@tcpv6_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @tcpv6_net_init, ptr null, ptr @tcpv6_net_exit, ptr @tcpv6_net_exit_batch, ptr null, i32 0 }, align 4
@init_net = external dso_local global %struct.net, align 64
@__tracepoint_tcp_send_reset = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@tcp_tx_delay_enabled = external dso_local global %struct.static_key_false, align 4
@ipv6_mapped = internal constant %struct.inet_connection_sock_af_ops { ptr @ip_queue_xmit, ptr @tcp_v4_send_check, ptr @inet_sk_rebuild_header, ptr @inet_sk_rx_dst_set, ptr @tcp_v6_conn_request, ptr @tcp_v6_syn_recv_sock, i16 20, i16 0, i16 28, ptr @ipv6_setsockopt, ptr @ipv6_getsockopt, ptr @inet6_csk_addr2sockaddr, ptr @tcp_v4_mtu_reduced }, align 4
@.str.4 = private unnamed_addr constant [146 x i8] c"  sl  local_address                         remote_address                        st tx_queue rx_queue tr tm->when retrnsmt   uid  timeout inode\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.5 = private unnamed_addr constant [99 x i8] c"%4d: %08X%08X%08X%08X:%04X %08X%08X%08X%08X:%04X %02X %08X:%08X %02X:%08lX %08X %5d %8d %d %d %pK\0A\00", align 1
@.str.6 = private unnamed_addr constant [99 x i8] c"%4d: %08X%08X%08X%08X:%04X %08X%08X%08X%08X:%04X %02X %08X:%08X %02X:%08lX %08X %5u %8d %d %d %pK\0A\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [117 x i8] c"%4d: %08X%08X%08X%08X:%04X %08X%08X%08X%08X:%04X %02X %08X:%08X %02X:%08lX %08X %5u %8d %lu %d %pK %lu %lu %u %u %d\0A\00", align 1
@in6addr_loopback = external dso_local local_unnamed_addr constant %struct.in6_addr, align 4
@ipv6_flowlabel_exclusive = external dso_local global %struct.static_key_false_deferred, align 4
@__tracepoint_tcp_bad_csum = external dso_local global %struct.tracepoint, align 4
@ip6_min_hopcount = external dso_local global %struct.static_key_false, align 4
@reqsk_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"include/net/request_sock.h\00", align 1
@inet6_stream_ops = external dso_local constant %struct.proto_ops, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_tcpv6_prot], section "llvm.metadata"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_rtx_synack(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tcp_v6_reqsk_send_ack(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 {
  %4 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %5 = load volatile i8, ptr %4, align 2
  %6 = icmp eq i8 %5, 10
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tcp_request_sock, ptr %2, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 1
  br label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi i32 [ %10, %7 ], [ %13, %11 ]
  %16 = getelementptr inbounds %struct.tcp_request_sock, ptr %2, i32 0, i32 10
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 18
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.inet_request_sock, ptr %2, i32 0, i32 1
  %21 = load i16, ptr %20, align 8
  %22 = lshr i16 %21, 4
  %23 = and i16 %22, 15
  %24 = zext i16 %23 to i32
  %25 = lshr i32 %19, %24
  %26 = tail call i64 @ktime_get() #14
  %27 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %26) #15, !srcloc !9
  %28 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %26, i64 %27, i32 0) #15, !srcloc !10
  %29 = extractvalue { i64, i32 } %28, 0
  %30 = lshr i64 %29, 18
  %31 = trunc i64 %30 to i32
  %32 = getelementptr inbounds %struct.tcp_request_sock, ptr %2, i32 0, i32 8
  %33 = load i32, ptr %32, align 8
  %34 = add i32 %33, %31
  %35 = getelementptr inbounds %struct.request_sock, ptr %2, i32 0, i32 5
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %42 = load i16, ptr %41, align 4
  %43 = zext i16 %42 to i32
  %44 = getelementptr i8, ptr %40, i32 %43
  %45 = load i16, ptr %44, align 2
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #14
  %47 = lshr i16 %46, 4
  %48 = trunc i16 %47 to i8
  %49 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 33
  %50 = load i32, ptr %49, align 4
  tail call fastcc void @tcp_v6_send_response(ptr noundef %0, ptr noundef %1, i32 noundef %15, i32 noundef %17, i32 noundef %25, i32 noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef 0, i8 noundef zeroext %48, i32 noundef 0, i32 noundef %50) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tcp_v6_send_reset(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %6 = load i16, ptr %5, align 2
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %4, i32 %11
  %13 = getelementptr inbounds %struct.tcphdr, ptr %8, i32 0, i32 4
  %14 = load i16, ptr %13, align 4
  %15 = and i16 %14, 1024
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %120

17:                                               ; preds = %2
  %18 = icmp eq ptr %0, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, -2
  %23 = inttoptr i32 %22 to ptr
  %24 = getelementptr inbounds %struct.rt6_info, ptr %23, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %120

27:                                               ; preds = %19, %17
  %28 = and i16 %14, 4096
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.tcphdr, ptr %8, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  br label %52

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.tcphdr, ptr %8, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %38 = lshr i16 %14, 9
  %39 = and i16 %38, 1
  %40 = lshr i16 %14, 8
  %41 = and i16 %40, 1
  %42 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %43 = load i32, ptr %42, align 8
  %44 = lshr i16 %14, 2
  %45 = and i16 %44, 60
  %46 = zext i16 %45 to i32
  %47 = add nuw nsw i16 %41, %39
  %48 = zext i16 %47 to i32
  %49 = sub nsw i32 %48, %46
  %50 = add i32 %49, %37
  %51 = add i32 %50, %43
  br label %52

52:                                               ; preds = %34, %30
  %53 = phi i32 [ %33, %30 ], [ 0, %34 ]
  %54 = phi i32 [ 0, %30 ], [ %51, %34 ]
  br i1 %18, label %105, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %59 = load volatile i8, ptr %58, align 2
  %60 = zext i8 %59 to i32
  %61 = shl nuw i32 1, %60
  %62 = and i32 %61, -4161
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %92, label %64

64:                                               ; preds = %55
  %65 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tcp_send_reset, i32 0, i32 1), align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
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
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  %79 = tail call i32 @__traceiter_tcp_send_reset(ptr noundef null, ptr noundef nonnull %0, ptr noundef %1) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !12
  br label %80

80:                                               ; preds = %78, %67, %64
  %81 = getelementptr i8, ptr %0, i32 1802
  %82 = load i16, ptr %81, align 2
  %83 = and i16 %82, 4
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load i32, ptr %12, align 4
  %87 = and i32 %86, -61696
  br label %88

88:                                               ; preds = %85, %80
  %89 = phi i32 [ %87, %85 ], [ 0, %80 ]
  %90 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 33
  %91 = load i32, ptr %90, align 4
  br label %92

92:                                               ; preds = %88, %55
  %93 = phi i32 [ %89, %88 ], [ 0, %55 ]
  %94 = phi i32 [ %91, %88 ], [ 0, %55 ]
  %95 = load volatile i8, ptr %58, align 2
  %96 = icmp eq i8 %95, 6
  br i1 %96, label %97, label %112

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.inet_timewait_sock, ptr %0, i32 0, i32 5
  %99 = load i32, ptr %98, align 8
  %100 = lshr i32 %99, 2
  %101 = and i32 %100, 1048575
  %102 = tail call i32 @llvm.bswap.i32(i32 %101)
  %103 = getelementptr inbounds %struct.inet_timewait_sock, ptr %0, i32 0, i32 7
  %104 = load i32, ptr %103, align 8
  br label %112

105:                                              ; preds = %52
  %106 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 30), align 4
  %107 = and i32 %106, 2
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %105
  %110 = load i32, ptr %12, align 4
  %111 = and i32 %110, -61696
  br label %112

112:                                              ; preds = %109, %105, %97, %92
  %113 = phi i32 [ %102, %97 ], [ %93, %92 ], [ %111, %109 ], [ 0, %105 ]
  %114 = phi i32 [ %104, %97 ], [ %94, %92 ], [ 0, %109 ], [ 0, %105 ]
  %115 = phi i32 [ %57, %97 ], [ %57, %92 ], [ 0, %109 ], [ 0, %105 ]
  %116 = load i16, ptr %12, align 2
  %117 = tail call i16 @llvm.bswap.i16(i16 %116) #14
  %118 = lshr i16 %117, 4
  %119 = trunc i16 %118 to i8
  tail call fastcc void @tcp_v6_send_response(ptr noundef %0, ptr noundef %1, i32 noundef %53, i32 noundef %54, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %115, i32 noundef 1, i8 noundef zeroext %119, i32 noundef %113, i32 noundef %114)
  br label %120

120:                                              ; preds = %112, %19, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tcp_v6_reqsk_destructor(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.inet_request_sock, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  tail call void @kfree(ptr noundef %3) #14
  %4 = getelementptr inbounds %struct.inet_request_sock, ptr %0, i32 0, i32 3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @consume_skb(ptr noundef %5) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_syn_ack_timeout(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tcp_v6_route_req(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %6 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 10
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = getelementptr inbounds %struct.ipv6hdr, ptr %12, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %6, ptr noundef align 4 dereferenceable(16) %13, i32 16, i1 false) #14
  %14 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 11
  %15 = load ptr, ptr %7, align 8
  %16 = load i16, ptr %9, align 4
  %17 = zext i16 %16 to i32
  %18 = getelementptr i8, ptr %15, i32 %17
  %19 = getelementptr inbounds %struct.ipv6hdr, ptr %18, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %14, ptr noundef align 4 dereferenceable(16) %19, i32 16, i1 false) #14
  %20 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %4
  %24 = tail call i32 @__ipv6_addr_type(ptr noundef %6) #14
  %25 = and i32 %24, 32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr %5, align 8
  %29 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 6
  store i32 %28, ptr %29, align 4
  br label %30

30:                                               ; preds = %27, %23, %4
  %31 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %32 = load i32, ptr %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %30
  %35 = tail call zeroext i1 @ipv6_opt_accepted(ptr noundef %0, ptr noundef %1, ptr noundef %5) #14
  br i1 %35, label %46, label %36

36:                                               ; preds = %34
  %37 = getelementptr i8, ptr %0, i32 1800
  %38 = load i16, ptr %37, align 4
  %39 = and i16 %38, 60
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = getelementptr i8, ptr %0, i32 1802
  %43 = load i16, ptr %42, align 2
  %44 = and i16 %43, 4
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %41, %36, %34
  %47 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #14, !srcloc !13
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 1, ptr elementtype(i32) %47) #14, !srcloc !14
  %49 = extractvalue { i32, i32, i32 } %48, 0
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51, !prof !15

51:                                               ; preds = %46
  %52 = add i32 %49, 1
  %53 = or i32 %52, %49
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %57, label %55, !prof !16

55:                                               ; preds = %51, %46
  %56 = phi i32 [ 2, %46 ], [ 1, %51 ]
  tail call void @refcount_warn_saturate(ptr noundef %47, i32 noundef %56) #14
  br label %57

57:                                               ; preds = %55, %51
  %58 = getelementptr inbounds %struct.inet_request_sock, ptr %3, i32 0, i32 3, i32 0, i32 1
  store ptr %1, ptr %58, align 4
  br label %59

59:                                               ; preds = %57, %41, %30
  %60 = tail call ptr @inet6_csk_route_req(ptr noundef %0, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 6) #14
  ret ptr %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tcp_v6_init_seq(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = getelementptr i8, ptr %3, i32 %6
  %8 = getelementptr inbounds %struct.ipv6hdr, ptr %7, i32 0, i32 6
  %9 = getelementptr inbounds %struct.ipv6hdr, ptr %7, i32 0, i32 5
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = getelementptr i8, ptr %3, i32 %12
  %14 = getelementptr inbounds %struct.tcphdr, ptr %13, i32 0, i32 1
  %15 = load i16, ptr %14, align 2
  %16 = load i16, ptr %13, align 4
  %17 = tail call i32 @secure_tcpv6_seq(ptr noundef %8, ptr noundef %9, i16 noundef zeroext %15, i16 noundef zeroext %16) #14
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tcp_v6_init_ts_off(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = getelementptr inbounds %struct.ipv6hdr, ptr %8, i32 0, i32 6
  %10 = getelementptr inbounds %struct.ipv6hdr, ptr %8, i32 0, i32 5
  %11 = tail call i32 @secure_tcpv6_ts_off(ptr noundef %0, ptr noundef %9, ptr noundef %10) #14
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tcp_v6_send_synack(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) #1 {
  %8 = icmp eq ptr %1, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = tail call ptr @inet6_csk_route_req(ptr noundef %0, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 6) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %101, label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %1, %7 ], [ %10, %9 ]
  %14 = tail call ptr @tcp_make_synack(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %101, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 11
  %18 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 10
  %19 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 16
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 13, i32 0, i32 17
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = getelementptr i8, ptr %20, i32 %23
  %25 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 5
  %26 = load i32, ptr %25, align 8
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #14
  %28 = tail call i32 @__csum_ipv6_magic(ptr noundef %17, ptr noundef %18, i32 noundef %27, i32 noundef 100663296, i32 noundef 0) #14
  %29 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %28) #15, !srcloc !17
  %30 = xor i32 %29, -1
  %31 = lshr i32 %30, 16
  %32 = trunc i32 %31 to i16
  %33 = xor i16 %32, -1
  %34 = getelementptr inbounds %struct.tcphdr, ptr %24, i32 0, i32 6
  store i16 %33, ptr %34, align 4
  %35 = load i16, ptr %21, align 2
  %36 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 13, i32 0, i32 4
  store i16 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.anon.52, ptr %36, i32 0, i32 1
  store i16 16, ptr %37, align 2
  %38 = getelementptr inbounds %struct.flowi6, ptr %2, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %38, ptr noundef align 4 dereferenceable(16) %18, i32 16, i1 false)
  %39 = getelementptr i8, ptr %0, i32 1802
  %40 = load i16, ptr %39, align 2
  %41 = and i16 %40, 4
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %16
  %44 = getelementptr inbounds %struct.inet_request_sock, ptr %3, i32 0, i32 3, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %57, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 16
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 13, i32 0, i32 18
  %51 = load i16, ptr %50, align 4
  %52 = zext i16 %51 to i32
  %53 = getelementptr i8, ptr %49, i32 %52
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, -61696
  %56 = getelementptr inbounds %struct.flowi6, ptr %2, i32 0, i32 3
  store i32 %55, ptr %56, align 8
  br label %57

57:                                               ; preds = %47, %43, %16
  %58 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 91), align 2
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.tcp_request_sock, ptr %3, i32 0, i32 11
  %62 = load i8, ptr %61, align 4
  %63 = and i8 %62, -4
  %64 = getelementptr i8, ptr %0, i32 1805
  %65 = load i8, ptr %64, align 1
  %66 = and i8 %65, 3
  %67 = or i8 %66, %63
  br label %71

68:                                               ; preds = %57
  %69 = getelementptr i8, ptr %0, i32 1805
  %70 = load i8, ptr %69, align 1
  br label %71

71:                                               ; preds = %68, %60
  %72 = phi i8 [ %67, %60 ], [ %70, %68 ]
  %73 = and i8 %72, 2
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 4
  %77 = load volatile i8, ptr %76, align 2
  br label %78

78:                                               ; preds = %75, %71
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  %79 = getelementptr inbounds %struct.inet_request_sock, ptr %3, i32 0, i32 3
  %80 = load ptr, ptr %79, align 8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = getelementptr i8, ptr %0, i32 1828
  %84 = load volatile ptr, ptr %83, align 4
  br label %85

85:                                               ; preds = %82, %78
  %86 = phi ptr [ %80, %78 ], [ %84, %82 ]
  %87 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 13, i32 0, i32 11
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 34
  %92 = load i32, ptr %91, align 8
  br label %93

93:                                               ; preds = %90, %85
  %94 = phi i32 [ %92, %90 ], [ %88, %85 ]
  %95 = zext i8 %72 to i32
  %96 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 33
  %97 = load i32, ptr %96, align 4
  %98 = tail call i32 @ip6_xmit(ptr noundef %0, ptr noundef nonnull %14, ptr noundef %2, i32 noundef %94, ptr noundef %86, i32 noundef %95, i32 noundef %97) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !19
  %99 = icmp eq i32 %98, 2
  %100 = select i1 %99, i32 0, i32 %98
  br label %101

101:                                              ; preds = %93, %12, %9
  %102 = phi i32 [ %100, %93 ], [ -12, %12 ], [ -12, %9 ]
  ret i32 %102
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @tcp_v6_get_syncookie(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) local_unnamed_addr #2 {
  ret i16 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_csk_xmit(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tcp_v6_send_check(ptr noundef %0, ptr nocapture noundef %1) #1 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 11
  %4 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 10
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #14
  %14 = tail call i32 @__csum_ipv6_magic(ptr noundef %3, ptr noundef %4, i32 noundef %13, i32 noundef 100663296, i32 noundef 0) #14
  %15 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %14) #15, !srcloc !17
  %16 = xor i32 %15, -1
  %17 = lshr i32 %16, 16
  %18 = trunc i32 %17 to i16
  %19 = xor i16 %18, -1
  %20 = getelementptr inbounds %struct.tcphdr, ptr %10, i32 0, i32 6
  store i16 %19, ptr %20, align 4
  %21 = load i16, ptr %7, align 2
  %22 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  store i16 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.anon.52, ptr %22, i32 0, i32 1
  store i16 16, ptr %23, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_sk_rebuild_header(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @inet6_sk_rx_dst_set(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, -2
  %6 = inttoptr i32 %5 to ptr
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %37, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dst_entry, ptr %6, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #14, !srcloc !13
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 0, i32 1, ptr elementtype(i32) %9) #14, !srcloc !21
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %37, label %13

13:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !23
  %14 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 1
  store volatile ptr %6, ptr %14, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 2
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.rt6_info, ptr %6, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  %22 = getelementptr inbounds %struct.rt6_info, ptr %6, i32 0, i32 1
  %23 = load volatile ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.fib6_info, ptr %23, i32 0, i32 2
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.fib6_node, ptr %27, i32 0, i32 6
  %31 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !24
  br label %32

32:                                               ; preds = %29, %25, %21
  %33 = phi i32 [ 0, %21 ], [ 0, %25 ], [ %31, %29 ]
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !19
  br label %34

34:                                               ; preds = %32, %13
  %35 = phi i32 [ %33, %32 ], [ %19, %13 ]
  %36 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 3
  store i32 %35, ptr %36, align 8
  br label %37

37:                                               ; preds = %34, %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tcp_v6_conn_request(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  %4 = load i16, ptr %3, align 8
  %5 = icmp eq i16 %4, 8
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 @tcp_v4_conn_request(ptr noundef %0, ptr noundef %1) #14
  br label %68

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, -2
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.rt6_info, ptr %12, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %55

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %20 = load i16, ptr %19, align 4
  %21 = zext i16 %20 to i32
  %22 = getelementptr i8, ptr %18, i32 %21
  %23 = getelementptr inbounds %struct.ipv6hdr, ptr %22, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr [4 x i32], ptr %23, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, %24
  %28 = getelementptr [4 x i32], ptr %23, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = xor i32 %29, -65536
  %31 = or i32 %27, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %16
  %34 = tail call ptr @llvm.thread.pointer() #14
  %35 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %36 = load volatile i32, ptr %35, align 4
  %37 = add i32 %36, 512
  store volatile i32 %37, ptr %35, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !25
  %38 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %39 = ptrtoint ptr %38 to i32
  %40 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %41 = inttoptr i32 %40 to ptr
  %42 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %41) #9, !srcloc !26
  %43 = add i32 %42, %39
  %44 = inttoptr i32 %43 to ptr
  %45 = getelementptr inbounds %struct.ipstats_mib, ptr %44, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #14, !srcloc !27
  %48 = getelementptr [37 x i64], ptr %44, i32 0, i32 7
  %49 = load i64, ptr %48, align 8
  %50 = add i64 %49, 1
  store i64 %50, ptr %48, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #14, !srcloc !28
  %51 = load i32, ptr %45, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %45, align 4
  tail call fastcc void @local_bh_enable()
  br label %68

53:                                               ; preds = %16
  %54 = tail call i32 @tcp_conn_request(ptr noundef nonnull @tcp6_request_sock_ops, ptr noundef nonnull @tcp_request_sock_ipv6_ops, ptr noundef %0, ptr noundef %1) #14
  br label %68

55:                                               ; preds = %8
  %56 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %56) #14, !srcloc !13
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %56, ptr %56, i32 1, ptr elementtype(i32) %56) #14, !srcloc !29
  %58 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %59 = getelementptr [126 x i32], ptr %58, i32 0, i32 20
  %60 = ptrtoint ptr %59 to i32
  %61 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %62 = inttoptr i32 %61 to ptr
  %63 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %62) #9, !srcloc !26
  %64 = add i32 %63, %60
  %65 = inttoptr i32 %64 to ptr
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, 1
  store i32 %67, ptr %65, align 4
  br label %68

68:                                               ; preds = %55, %53, %33, %6
  %69 = phi i32 [ %7, %6 ], [ 0, %33 ], [ %54, %53 ], [ 0, %55 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tcp_v6_syn_recv_sock(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #1 {
  %7 = alloca i8, align 1
  %8 = alloca %struct.flowi6, align 8
  %9 = getelementptr i8, ptr %0, i32 1740
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #14
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %8) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %8, i8 0, i32 88, i1 false), !annotation !30
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  %11 = load i16, ptr %10, align 8
  %12 = icmp eq i16 %11, 8
  br i1 %12, label %13, label %63

13:                                               ; preds = %6
  %14 = tail call ptr @tcp_v4_syn_recv_sock(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %329, label %16

16:                                               ; preds = %13
  %17 = getelementptr i8, ptr %14, i32 1740
  %18 = getelementptr inbounds %struct.inet_sock, ptr %14, i32 0, i32 1
  store ptr %17, ptr %18, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(108) %17, ptr noundef align 4 dereferenceable(108) %9, i32 108, i1 false)
  %19 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %17, ptr noundef align 4 dereferenceable(16) %19, i32 16, i1 false)
  %20 = getelementptr inbounds %struct.inet_connection_sock, ptr %14, i32 0, i32 11
  store ptr @ipv6_mapped, ptr %20, align 8
  %21 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 79
  store ptr @tcp_v4_do_rcv, ptr %21, align 4
  %22 = getelementptr i8, ptr %14, i32 1816
  %23 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %22, i8 0, i64 20, i1 false)
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, -2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %16
  %28 = inttoptr i32 %25 to ptr
  %29 = getelementptr inbounds %struct.rtable, ptr %28, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27, %16
  %33 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 6
  %34 = load i32, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %27
  %36 = phi i32 [ %34, %32 ], [ %30, %27 ]
  %37 = getelementptr i8, ptr %14, i32 1796
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %41 = load i16, ptr %40, align 4
  %42 = zext i16 %41 to i32
  %43 = getelementptr i8, ptr %39, i32 %42
  %44 = getelementptr inbounds %struct.iphdr, ptr %43, i32 0, i32 5
  %45 = load i8, ptr %44, align 4
  %46 = getelementptr i8, ptr %14, i32 1788
  %47 = zext i8 %45 to i32
  %48 = load i32, ptr %46, align 4
  %49 = shl nuw nsw i32 %47, 23
  %50 = and i32 %48, 8388607
  %51 = or i32 %50, %49
  store i32 %51, ptr %46, align 4
  %52 = getelementptr i8, ptr %14, i32 1808
  store i32 0, ptr %52, align 4
  %53 = getelementptr i8, ptr %0, i32 1802
  %54 = load i16, ptr %53, align 2
  %55 = and i16 %54, 4
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %35
  %58 = getelementptr i8, ptr %14, i32 1780
  store i32 0, ptr %58, align 4
  br label %59

59:                                               ; preds = %57, %35
  %60 = getelementptr inbounds %struct.inet_connection_sock, ptr %14, i32 0, i32 9
  %61 = load i32, ptr %60, align 8
  %62 = tail call i32 @tcp_sync_mss(ptr noundef nonnull %14, i32 noundef %61) #14
  br label %329

63:                                               ; preds = %6
  %64 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 53
  %65 = load volatile i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 54
  %67 = load volatile i32, ptr %66, align 8
  %68 = icmp ugt i32 %65, %67
  br i1 %68, label %303, label %69

69:                                               ; preds = %63
  %70 = icmp eq ptr %3, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %69
  %72 = call ptr @inet6_csk_route_req(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %2, i8 noundef zeroext 6) #14
  %73 = icmp eq ptr %72, null
  br i1 %73, label %316, label %74

74:                                               ; preds = %71, %69
  %75 = phi ptr [ %3, %69 ], [ %72, %71 ]
  %76 = call ptr @tcp_create_openreq_child(ptr noundef %0, ptr noundef %2, ptr noundef %1) #14
  %77 = icmp eq ptr %76, null
  br i1 %77, label %314, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.sock, ptr %76, i32 0, i32 39
  store i32 16, ptr %79, align 8
  %80 = getelementptr inbounds %struct.sock_common, ptr %76, i32 0, i32 4
  %81 = load volatile i8, ptr %80, align 2
  %82 = zext i8 %81 to i32
  %83 = shl nuw i32 1, %82
  %84 = and i32 %83, -4161
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.inet_sock, ptr %76, i32 0, i32 1
  %88 = load ptr, ptr %87, align 8
  br label %89

89:                                               ; preds = %86, %78
  %90 = phi ptr [ %88, %86 ], [ null, %78 ]
  %91 = getelementptr inbounds %struct.rt6_info, ptr %75, i32 0, i32 2
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %89
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  %95 = getelementptr inbounds %struct.rt6_info, ptr %75, i32 0, i32 1
  %96 = load volatile ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %105, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.fib6_info, ptr %96, i32 0, i32 2
  %100 = load volatile ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.fib6_node, ptr %100, i32 0, i32 6
  %104 = load volatile i32, ptr %103, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !24
  br label %105

105:                                              ; preds = %102, %98, %94
  %106 = phi i32 [ 0, %94 ], [ 0, %98 ], [ %104, %102 ]
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !19
  br label %107

107:                                              ; preds = %105, %89
  %108 = phi i32 [ %106, %105 ], [ %92, %89 ]
  %109 = getelementptr inbounds %struct.ipv6_pinfo, ptr %90, i32 0, i32 13
  store i32 %108, ptr %109, align 4
  call void @sk_setup_caps(ptr noundef nonnull %76, ptr noundef nonnull %75) #14
  %110 = getelementptr inbounds %struct.ipv6_pinfo, ptr %90, i32 0, i32 2
  store ptr null, ptr %110, align 4
  %111 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %112 = load i32, ptr %111, align 8
  %113 = and i32 %112, -2
  %114 = inttoptr i32 %113 to ptr
  %115 = icmp eq i32 %113, 0
  br i1 %115, label %145, label %116

116:                                              ; preds = %107
  %117 = getelementptr inbounds %struct.dst_entry, ptr %114, i32 0, i32 18
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !20
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %117) #14, !srcloc !13
  %118 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %117, ptr %117, i32 0, i32 1, ptr elementtype(i32) %117) #14, !srcloc !21
  %119 = extractvalue { i32, i32, i32 } %118, 0
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %145, label %121

121:                                              ; preds = %116
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !22
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !23
  %122 = getelementptr inbounds %struct.sock, ptr %76, i32 0, i32 1
  store volatile ptr %114, ptr %122, align 8
  %123 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 6
  %124 = load i32, ptr %123, align 4
  %125 = getelementptr inbounds %struct.sock, ptr %76, i32 0, i32 2
  store i32 %124, ptr %125, align 4
  %126 = getelementptr inbounds %struct.rt6_info, ptr %114, i32 0, i32 2
  %127 = load i32, ptr %126, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %121
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  %130 = getelementptr inbounds %struct.rt6_info, ptr %114, i32 0, i32 1
  %131 = load volatile ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %140, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.fib6_info, ptr %131, i32 0, i32 2
  %135 = load volatile ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.fib6_node, ptr %135, i32 0, i32 6
  %139 = load volatile i32, ptr %138, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !24
  br label %140

140:                                              ; preds = %137, %133, %129
  %141 = phi i32 [ 0, %129 ], [ 0, %133 ], [ %139, %137 ]
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !19
  br label %142

142:                                              ; preds = %140, %121
  %143 = phi i32 [ %141, %140 ], [ %127, %121 ]
  %144 = getelementptr inbounds %struct.sock, ptr %76, i32 0, i32 3
  store i32 %143, ptr %144, align 8
  br label %145

145:                                              ; preds = %142, %116, %107
  %146 = getelementptr i8, ptr %76, i32 1740
  %147 = getelementptr inbounds %struct.inet_sock, ptr %76, i32 0, i32 1
  store ptr %146, ptr %147, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(108) %146, ptr noundef align 4 dereferenceable(108) %9, i32 108, i1 false)
  %148 = getelementptr inbounds %struct.sock_common, ptr %76, i32 0, i32 10
  %149 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %148, ptr noundef align 4 dereferenceable(16) %149, i32 16, i1 false)
  %150 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %146, ptr noundef align 4 dereferenceable(16) %150, i32 16, i1 false)
  %151 = getelementptr inbounds %struct.sock_common, ptr %76, i32 0, i32 11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %151, ptr noundef align 4 dereferenceable(16) %150, i32 16, i1 false)
  %152 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 6
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr inbounds %struct.sock_common, ptr %76, i32 0, i32 6
  store i32 %153, ptr %154, align 4
  %155 = getelementptr inbounds %struct.inet_sock, ptr %76, i32 0, i32 5
  store ptr null, ptr %155, align 4
  %156 = getelementptr i8, ptr %76, i32 1816
  store ptr null, ptr %156, align 4
  %157 = getelementptr i8, ptr %76, i32 1820
  store ptr null, ptr %157, align 4
  %158 = getelementptr i8, ptr %76, i32 1824
  store ptr null, ptr %158, align 4
  %159 = getelementptr i8, ptr %0, i32 1800
  %160 = load i16, ptr %159, align 4
  %161 = getelementptr i8, ptr %76, i32 1800
  store i16 %160, ptr %161, align 4
  %162 = getelementptr i8, ptr %76, i32 1832
  store ptr null, ptr %162, align 4
  %163 = getelementptr i8, ptr %76, i32 1828
  store ptr null, ptr %163, align 4
  %164 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %165 = load i32, ptr %164, align 8
  %166 = getelementptr i8, ptr %76, i32 1796
  store i32 %165, ptr %166, align 4
  %167 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %168 = load ptr, ptr %167, align 8
  %169 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %170 = load i16, ptr %169, align 4
  %171 = zext i16 %170 to i32
  %172 = getelementptr i8, ptr %168, i32 %171
  %173 = getelementptr inbounds %struct.ipv6hdr, ptr %172, i32 0, i32 4
  %174 = load i8, ptr %173, align 1
  %175 = getelementptr i8, ptr %76, i32 1788
  %176 = zext i8 %174 to i32
  %177 = load i32, ptr %175, align 4
  %178 = shl nuw nsw i32 %176, 23
  %179 = and i32 %177, 8388607
  %180 = or i32 %179, %178
  store i32 %180, ptr %175, align 4
  %181 = load ptr, ptr %167, align 8
  %182 = load i16, ptr %169, align 4
  %183 = zext i16 %182 to i32
  %184 = getelementptr i8, ptr %181, i32 %183
  %185 = load i32, ptr %184, align 4
  %186 = and i32 %185, -241
  %187 = getelementptr i8, ptr %76, i32 1808
  store i32 %186, ptr %187, align 4
  %188 = getelementptr i8, ptr %0, i32 1802
  %189 = load i16, ptr %188, align 2
  %190 = and i16 %189, 4
  %191 = icmp eq i16 %190, 0
  br i1 %191, label %200, label %192

192:                                              ; preds = %145
  %193 = load ptr, ptr %167, align 8
  %194 = load i16, ptr %169, align 4
  %195 = zext i16 %194 to i32
  %196 = getelementptr i8, ptr %193, i32 %195
  %197 = load i32, ptr %196, align 4
  %198 = and i32 %197, -61696
  %199 = getelementptr i8, ptr %76, i32 1780
  store i32 %198, ptr %199, align 4
  br label %200

200:                                              ; preds = %192, %145
  %201 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 91), align 2
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %208, label %203

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct.tcp_request_sock, ptr %2, i32 0, i32 11
  %205 = load i8, ptr %204, align 4
  %206 = and i8 %205, -4
  %207 = getelementptr i8, ptr %76, i32 1805
  store i8 %206, ptr %207, align 1
  br label %208

208:                                              ; preds = %203, %200
  %209 = getelementptr inbounds %struct.inet_request_sock, ptr %2, i32 0, i32 3
  %210 = load ptr, ptr %209, align 8
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %218

212:                                              ; preds = %208
  %213 = getelementptr i8, ptr %0, i32 1828
  %214 = load volatile ptr, ptr %213, align 4
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %218

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.inet_connection_sock, ptr %76, i32 0, i32 23
  store i16 0, ptr %217, align 2
  br label %229

218:                                              ; preds = %212, %208
  %219 = phi ptr [ %214, %212 ], [ %210, %208 ]
  %220 = call ptr @ipv6_dup_options(ptr noundef nonnull %76, ptr noundef nonnull %219) #14
  store volatile ptr %220, ptr %163, align 4
  %221 = getelementptr inbounds %struct.inet_connection_sock, ptr %76, i32 0, i32 23
  store i16 0, ptr %221, align 2
  %222 = icmp eq ptr %220, null
  br i1 %222, label %229, label %223

223:                                              ; preds = %218
  %224 = getelementptr inbounds %struct.ipv6_txoptions, ptr %220, i32 0, i32 3
  %225 = load i16, ptr %224, align 2
  %226 = getelementptr inbounds %struct.ipv6_txoptions, ptr %220, i32 0, i32 2
  %227 = load i16, ptr %226, align 4
  %228 = add i16 %227, %225
  store i16 %228, ptr %221, align 2
  br label %229

229:                                              ; preds = %223, %218, %216
  call void @tcp_ca_openreq_child(ptr noundef nonnull %76, ptr noundef nonnull %75) #14
  %230 = getelementptr inbounds %struct.dst_entry, ptr %75, i32 0, i32 1
  %231 = load ptr, ptr %230, align 4
  %232 = getelementptr inbounds %struct.dst_ops, ptr %231, i32 0, i32 5
  %233 = load ptr, ptr %232, align 4
  %234 = call i32 %233(ptr noundef nonnull %75) #14
  %235 = call i32 @tcp_sync_mss(ptr noundef nonnull %76, i32 noundef %234) #14
  %236 = getelementptr inbounds %struct.dst_entry, ptr %75, i32 0, i32 2
  %237 = load i32, ptr %236, align 4
  %238 = and i32 %237, -4
  %239 = inttoptr i32 %238 to ptr
  %240 = getelementptr i32, ptr %239, i32 7
  %241 = load i32, ptr %240, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %229
  %244 = load ptr, ptr %230, align 4
  %245 = getelementptr inbounds %struct.dst_ops, ptr %244, i32 0, i32 4
  %246 = load ptr, ptr %245, align 16
  %247 = call i32 %246(ptr noundef nonnull %75) #14
  br label %248

248:                                              ; preds = %243, %229
  %249 = phi i32 [ %241, %229 ], [ %247, %243 ]
  %250 = trunc i32 %249 to i16
  %251 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 6
  %252 = load volatile i16, ptr %251, align 4
  %253 = icmp ne i16 %252, 0
  %254 = icmp ult i16 %252, %250
  %255 = and i1 %253, %254
  %256 = select i1 %255, i16 %252, i16 %250
  %257 = getelementptr inbounds %struct.tcp_sock, ptr %76, i32 0, i32 32
  store i16 %256, ptr %257, align 8
  call void @tcp_initialize_rcv_mss(ptr noundef nonnull %76) #14
  %258 = getelementptr inbounds %struct.inet_sock, ptr %76, i32 0, i32 2
  store i32 100663423, ptr %258, align 4
  store i32 100663423, ptr %76, align 8
  %259 = getelementptr inbounds %struct.anon, ptr %76, i32 0, i32 1
  store i32 100663423, ptr %259, align 4
  %260 = call i32 @__inet_inherit_port(ptr noundef %0, ptr noundef nonnull %76) #14
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %248
  call void @inet_csk_prepare_forced_close(ptr noundef nonnull %76) #14
  call void @tcp_done(ptr noundef nonnull %76) #14
  br label %316

263:                                              ; preds = %248
  %264 = call zeroext i1 @inet_ehash_nolisten(ptr noundef nonnull %76, ptr noundef %4, ptr noundef nonnull %7) #14
  %265 = zext i1 %264 to i8
  store i8 %265, ptr %5, align 1
  br i1 %264, label %266, label %286

266:                                              ; preds = %263
  %267 = getelementptr inbounds %struct.request_sock, ptr %2, i32 0, i32 9
  %268 = load ptr, ptr %267, align 8
  %269 = getelementptr inbounds %struct.tcp_sock, ptr %76, i32 0, i32 117
  store ptr %268, ptr %269, align 4
  store ptr null, ptr %267, align 8
  %270 = getelementptr inbounds %struct.inet_request_sock, ptr %2, i32 0, i32 3, i32 0, i32 1
  %271 = load ptr, ptr %270, align 4
  %272 = icmp eq ptr %271, null
  br i1 %272, label %329, label %273

273:                                              ; preds = %266
  %274 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 41
  %275 = load i32, ptr %274, align 8
  %276 = and i32 %275, 131072
  %277 = or i32 %276, 2592
  %278 = call ptr @skb_clone(ptr noundef nonnull %271, i32 noundef %277) #14
  store ptr %278, ptr %162, align 4
  %279 = load ptr, ptr %270, align 4
  call void @consume_skb(ptr noundef %279) #14
  store ptr null, ptr %270, align 4
  %280 = load ptr, ptr %162, align 4
  %281 = icmp eq ptr %280, null
  br i1 %281, label %329, label %282

282:                                              ; preds = %273
  %283 = getelementptr inbounds %struct.sk_buff, ptr %280, i32 0, i32 3
  %284 = getelementptr inbounds %struct.sk_buff, ptr %280, i32 0, i32 3, i32 24
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %283, ptr noundef align 8 dereferenceable(24) %284, i32 24, i1 false) #14
  %285 = load ptr, ptr %162, align 4
  call fastcc void @skb_set_owner_r(ptr noundef %285, ptr noundef nonnull %76)
  br label %329

286:                                              ; preds = %263
  %287 = icmp ne ptr %4, null
  %288 = load i8, ptr %7, align 1
  %289 = icmp eq i8 %288, 0
  %290 = select i1 %287, i1 true, i1 %289
  br i1 %290, label %329, label %291

291:                                              ; preds = %286
  %292 = getelementptr inbounds %struct.sock, ptr %76, i32 0, i32 4
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !31
  %293 = load i16, ptr %292, align 4
  %294 = add i16 %293, 1
  store i16 %294, ptr %292, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !32
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !33
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !34
  %295 = getelementptr inbounds %struct.sock_common, ptr %76, i32 0, i32 19
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !35
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %295) #14, !srcloc !13
  %296 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %295, ptr %295, i32 1, ptr elementtype(i32) %295) #14, !srcloc !36
  %297 = extractvalue { i32, i32, i32 } %296, 0
  %298 = icmp eq i32 %297, 1
  br i1 %298, label %302, label %299

299:                                              ; preds = %291
  %300 = icmp sgt i32 %297, 0
  br i1 %300, label %329, label %301, !prof !16

301:                                              ; preds = %299
  call void @refcount_warn_saturate(ptr noundef %295, i32 noundef 3) #14
  br label %329

302:                                              ; preds = %291
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !37
  call void @sk_free(ptr noundef nonnull %76) #14
  br label %329

303:                                              ; preds = %63
  %304 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %305 = getelementptr [126 x i32], ptr %304, i32 0, i32 19
  %306 = ptrtoint ptr %305 to i32
  %307 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %308 = inttoptr i32 %307 to ptr
  %309 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %308) #9, !srcloc !26
  %310 = add i32 %309, %306
  %311 = inttoptr i32 %310 to ptr
  %312 = load i32, ptr %311, align 4
  %313 = add i32 %312, 1
  store i32 %313, ptr %311, align 4
  br label %314

314:                                              ; preds = %303, %74
  %315 = phi ptr [ %3, %303 ], [ %75, %74 ]
  call void @dst_release(ptr noundef %315) #14
  br label %316

316:                                              ; preds = %314, %262, %71
  %317 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %317) #14, !srcloc !13
  %318 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %317, ptr %317, i32 1, ptr elementtype(i32) %317) #14, !srcloc !29
  %319 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %320 = getelementptr [126 x i32], ptr %319, i32 0, i32 20
  %321 = ptrtoint ptr %320 to i32
  %322 = call i32 @llvm.read_register.i32(metadata !0) #14
  %323 = inttoptr i32 %322 to ptr
  %324 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %323) #9, !srcloc !26
  %325 = add i32 %324, %321
  %326 = inttoptr i32 %325 to ptr
  %327 = load i32, ptr %326, align 4
  %328 = add i32 %327, 1
  store i32 %328, ptr %326, align 4
  br label %329

329:                                              ; preds = %316, %302, %301, %299, %286, %282, %273, %266, %59, %13
  %330 = phi ptr [ %14, %59 ], [ null, %316 ], [ null, %13 ], [ %76, %282 ], [ %76, %273 ], [ %76, %266 ], [ %76, %286 ], [ null, %299 ], [ null, %301 ], [ null, %302 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #14
  ret ptr %330
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet6_csk_addr2sockaddr(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tcp_v6_mtu_reduced(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %3 = load volatile i8, ptr %2, align 2
  %4 = zext i8 %3 to i32
  %5 = shl nuw i32 1, %4
  %6 = and i32 %5, 1152
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 114
  %10 = load volatile i32, ptr %9, align 8
  %11 = tail call i32 @tcp_mtu_to_mss(ptr noundef %0, i32 noundef %10) #14
  %12 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %8
  %16 = tail call ptr @inet6_csk_update_pmtu(ptr noundef %0, i32 noundef %10) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 9
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.dst_entry, ptr %16, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.dst_ops, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef nonnull %16) #14
  %26 = icmp ugt i32 %20, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load ptr, ptr %21, align 4
  %29 = getelementptr inbounds %struct.dst_ops, ptr %28, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 %30(ptr noundef nonnull %16) #14
  %32 = tail call i32 @tcp_sync_mss(ptr noundef %0, i32 noundef %31) #14
  tail call void @tcp_simple_retransmit(ptr noundef %0) #14
  br label %33

33:                                               ; preds = %27, %18, %15, %8, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @tcp6_proc_init(ptr nocapture noundef readonly %0) local_unnamed_addr #4 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef %3, ptr noundef nonnull @tcp6_seq_ops, i32 noundef 32, ptr noundef nonnull @tcp6_seq_afinfo) #14
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, i32 -12, i32 0
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp6_proc_exit(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef %3) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_close(ptr noundef, i32 noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @tcp_v6_pre_connect(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = icmp slt i32 %2, 24
  %5 = select i1 %4, i32 -22, i32 0
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tcp_v6_connect(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.in6_addr, align 4
  %5 = alloca %struct.flowi6, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = getelementptr i8, ptr %0, i32 1740
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !30
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  %9 = icmp slt i32 %2, 24
  br i1 %9, label %273, label %10

10:                                               ; preds = %3
  %11 = load i16, ptr %1, align 4
  %12 = icmp eq i16 %11, 10
  br i1 %12, label %13, label %273

13:                                               ; preds = %10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %5, i8 0, i32 88, i1 false)
  %14 = getelementptr i8, ptr %0, i32 1802
  %15 = load i16, ptr %14, align 2
  %16 = and i16 %15, 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %39, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.flowi6, ptr %5, i32 0, i32 3
  %22 = and i32 %20, -12529
  store i32 %22, ptr %21, align 8
  %23 = and i32 %20, -61696
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %18
  %26 = load volatile i32, ptr @ipv6_flowlabel_exclusive, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %39, !prof !15

28:                                               ; preds = %25
  %29 = load volatile i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 17), align 16
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = tail call ptr @__fl6_sock_lookup(ptr noundef %0, i32 noundef %22) #14
  %33 = icmp eq ptr %32, null
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  %35 = or i1 %33, %34
  br i1 %35, label %273, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ip6_flowlabel, ptr %32, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #14, !srcloc !13
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #14, !srcloc !38
  br label %39

39:                                               ; preds = %36, %28, %25, %18, %13
  %40 = phi i32 [ %22, %28 ], [ %22, %25 ], [ %22, %36 ], [ %22, %18 ], [ 0, %13 ]
  %41 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr %struct.sockaddr_in6, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = or i32 %44, %42
  %46 = getelementptr %struct.sockaddr_in6, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = or i32 %45, %47
  %49 = getelementptr %struct.sockaddr_in6, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = or i32 %48, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %39
  %54 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 11
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = or i32 %57, %55
  %59 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = xor i32 %60, -65536
  %62 = or i32 %58, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  store i32 0, ptr %41, align 4
  store i32 0, ptr %43, align 4
  store i32 -65536, ptr %46, align 4
  store i32 16777343, ptr %49, align 4
  br label %66

65:                                               ; preds = %53
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %41, ptr noundef nonnull align 4 dereferenceable(16) @in6addr_loopback, i32 16, i1 false)
  br label %66

66:                                               ; preds = %65, %64, %39
  %67 = tail call i32 @__ipv6_addr_type(ptr noundef %41) #14
  %68 = and i32 %67, 2
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %273

70:                                               ; preds = %66
  %71 = and i32 %67, 32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %90, label %73

73:                                               ; preds = %70
  %74 = icmp ugt i32 %2, 27
  br i1 %74, label %75, label %86

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 4
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  %83 = icmp eq i32 %81, %77
  %84 = or i1 %82, %83
  br i1 %84, label %85, label %273

85:                                               ; preds = %79
  store i32 %77, ptr %80, align 4
  br label %86

86:                                               ; preds = %85, %75, %73
  %87 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %273, label %90

90:                                               ; preds = %86, %70
  %91 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %118, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 10
  %96 = load i32, ptr %95, align 4
  %97 = load i32, ptr %41, align 4
  %98 = xor i32 %97, %96
  %99 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = load i32, ptr %43, align 4
  %102 = xor i32 %101, %100
  %103 = or i32 %102, %98
  %104 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 2
  %105 = load i32, ptr %104, align 4
  %106 = load i32, ptr %46, align 4
  %107 = xor i32 %106, %105
  %108 = or i32 %103, %107
  %109 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 3
  %110 = load i32, ptr %109, align 4
  %111 = load i32, ptr %49, align 4
  %112 = xor i32 %111, %110
  %113 = or i32 %108, %112
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %94
  %116 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 1
  store i32 0, ptr %116, align 4
  store i32 0, ptr %91, align 4
  %117 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  store volatile i32 0, ptr %117, align 4
  br label %118

118:                                              ; preds = %115, %94, %90
  %119 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %119, ptr noundef align 4 dereferenceable(16) %41, i32 16, i1 false)
  %120 = getelementptr i8, ptr %0, i32 1780
  store i32 %40, ptr %120, align 4
  %121 = and i32 %67, 4096
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %146, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 23
  %125 = load i16, ptr %124, align 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #14
  %126 = getelementptr inbounds i8, ptr %7, i32 8
  store i64 0, ptr %126, align 4, !annotation !30
  %127 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 5
  %128 = load i8, ptr %127, align 1
  %129 = and i8 %128, 32
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %123
  store i16 2, ptr %7, align 4
  %132 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 1
  %133 = load i16, ptr %132, align 2
  %134 = getelementptr inbounds %struct.sockaddr_in, ptr %7, i32 0, i32 1
  store i16 %133, ptr %134, align 2
  %135 = load i32, ptr %49, align 4
  %136 = getelementptr inbounds %struct.sockaddr_in, ptr %7, i32 0, i32 2
  store i32 %135, ptr %136, align 4
  %137 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 11
  store ptr @ipv6_mapped, ptr %137, align 8
  %138 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 79
  store ptr @tcp_v4_do_rcv, ptr %138, align 4
  %139 = call i32 @tcp_v4_connect(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 16) #14
  store i32 %139, ptr %6, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %131
  %142 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %8, ptr noundef align 4 dereferenceable(16) %142, i32 16, i1 false)
  br label %143

143:                                              ; preds = %141, %123
  %144 = phi i32 [ -101, %123 ], [ 0, %141 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  br label %273

145:                                              ; preds = %131
  store i16 %125, ptr %124, align 2
  store ptr @ipv6_specific, ptr %137, align 8
  store ptr @tcp_v6_do_rcv, ptr %138, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  br label %269

146:                                              ; preds = %118
  %147 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 11
  %148 = load i32, ptr %147, align 4
  %149 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 1
  %150 = load i32, ptr %149, align 4
  %151 = or i32 %150, %148
  %152 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 2
  %153 = load i32, ptr %152, align 4
  %154 = or i32 %151, %153
  %155 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 3
  %156 = load i32, ptr %155, align 4
  %157 = or i32 %154, %156
  %158 = icmp eq i32 %157, 0
  %159 = getelementptr inbounds %struct.flowi_common, ptr %5, i32 0, i32 5
  store i8 6, ptr %159, align 2
  %160 = getelementptr inbounds %struct.flowi6, ptr %5, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %160, ptr noundef align 4 dereferenceable(16) %119, i32 16, i1 false)
  %161 = getelementptr inbounds %struct.flowi6, ptr %5, i32 0, i32 2
  %162 = icmp eq ptr %147, null
  %163 = or i1 %162, %158
  br i1 %163, label %165, label %164

164:                                              ; preds = %146
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %161, ptr noundef nonnull align 4 dereferenceable(16) %147, i32 16, i1 false)
  br label %166

165:                                              ; preds = %146
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %161, ptr noundef align 4 dereferenceable(16) %8, i32 16, i1 false)
  br label %166

166:                                              ; preds = %165, %164
  %167 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %168 = load i32, ptr %167, align 4
  store i32 %168, ptr %5, align 8
  %169 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 34
  %170 = load i32, ptr %169, align 8
  %171 = getelementptr inbounds %struct.flowi_common, ptr %5, i32 0, i32 2
  store i32 %170, ptr %171, align 8
  %172 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 1
  %173 = load i16, ptr %172, align 2
  %174 = getelementptr inbounds %struct.flowi6, ptr %5, i32 0, i32 4
  store i16 %173, ptr %174, align 4
  %175 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 6
  %176 = load i16, ptr %175, align 8
  %177 = getelementptr inbounds %struct.anon.123, ptr %174, i32 0, i32 1
  store i16 %176, ptr %177, align 2
  %178 = getelementptr inbounds %struct.flowi_common, ptr %5, i32 0, i32 8
  %179 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 55
  %180 = load i32, ptr %179, align 4
  store i32 %180, ptr %178, align 4
  %181 = getelementptr i8, ptr %0, i32 1828
  %182 = load ptr, ptr %181, align 4
  %183 = call ptr @fl6_update_dst(ptr noundef nonnull %5, ptr noundef %182, ptr noundef nonnull %4) #14
  %184 = call ptr @ip6_dst_lookup_flow(ptr noundef nonnull @init_net, ptr noundef %0, ptr noundef nonnull %5, ptr noundef %183) #14
  %185 = icmp ugt ptr %184, inttoptr (i32 -4096 to ptr)
  br i1 %185, label %186, label %188

186:                                              ; preds = %166
  %187 = ptrtoint ptr %184 to i32
  store i32 %187, ptr %6, align 4
  br label %269

188:                                              ; preds = %166
  br i1 %163, label %189, label %190

189:                                              ; preds = %188
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %147, ptr noundef align 8 dereferenceable(16) %161, i32 16, i1 false)
  br label %190

190:                                              ; preds = %189, %188
  %191 = phi ptr [ %147, %188 ], [ %161, %189 ]
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %8, ptr noundef align 4 dereferenceable(16) %191, i32 16, i1 false)
  %192 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  store i32 100663423, ptr %192, align 4
  %193 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 39
  store i32 16, ptr %193, align 8
  %194 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %195 = load volatile i8, ptr %194, align 2
  %196 = zext i8 %195 to i32
  %197 = shl nuw i32 1, %196
  %198 = and i32 %197, -4161
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %190
  %201 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %202 = load ptr, ptr %201, align 8
  br label %203

203:                                              ; preds = %200, %190
  %204 = phi ptr [ %202, %200 ], [ null, %190 ]
  %205 = getelementptr inbounds %struct.rt6_info, ptr %184, i32 0, i32 2
  %206 = load i32, ptr %205, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %221

208:                                              ; preds = %203
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  %209 = getelementptr inbounds %struct.rt6_info, ptr %184, i32 0, i32 1
  %210 = load volatile ptr, ptr %209, align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %219, label %212

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.fib6_info, ptr %210, i32 0, i32 2
  %214 = load volatile ptr, ptr %213, align 4
  %215 = icmp eq ptr %214, null
  br i1 %215, label %219, label %216

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.fib6_node, ptr %214, i32 0, i32 6
  %218 = load volatile i32, ptr %217, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !24
  br label %219

219:                                              ; preds = %216, %212, %208
  %220 = phi i32 [ 0, %208 ], [ 0, %212 ], [ %218, %216 ]
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !19
  br label %221

221:                                              ; preds = %219, %203
  %222 = phi i32 [ %220, %219 ], [ %206, %203 ]
  %223 = getelementptr inbounds %struct.ipv6_pinfo, ptr %204, i32 0, i32 13
  store i32 %222, ptr %223, align 4
  call void @sk_setup_caps(ptr noundef %0, ptr noundef %184) #14
  %224 = getelementptr inbounds %struct.ipv6_pinfo, ptr %204, i32 0, i32 2
  store ptr null, ptr %224, align 4
  %225 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 23
  store i16 0, ptr %225, align 2
  %226 = icmp eq ptr %182, null
  br i1 %226, label %233, label %227

227:                                              ; preds = %221
  %228 = getelementptr inbounds %struct.ipv6_txoptions, ptr %182, i32 0, i32 2
  %229 = load i16, ptr %228, align 4
  %230 = getelementptr inbounds %struct.ipv6_txoptions, ptr %182, i32 0, i32 3
  %231 = load i16, ptr %230, align 2
  %232 = add i16 %231, %229
  store i16 %232, ptr %225, align 2
  br label %233

233:                                              ; preds = %227, %221
  %234 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 7
  store i16 1220, ptr %234, align 2
  %235 = load i16, ptr %172, align 2
  %236 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  store i16 %235, ptr %236, align 4
  call void @tcp_set_state(ptr noundef %0, i32 noundef 2) #14
  %237 = call i32 @inet6_hash_connect(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35), ptr noundef %0) #14
  store i32 %237, ptr %6, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %267

239:                                              ; preds = %233
  %240 = call i32 @prandom_u32() #14
  %241 = icmp eq i32 %240, 0
  %242 = select i1 %241, i32 1, i32 %240
  %243 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 42
  store volatile i32 %242, ptr %243, align 4
  %244 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %245 = load i16, ptr %244, align 4
  %246 = and i16 %245, 16384
  %247 = icmp eq i16 %246, 0
  br i1 %247, label %248, label %259, !prof !16

248:                                              ; preds = %239
  %249 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %250 = load i32, ptr %249, align 4
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %248
  %253 = load i16, ptr %175, align 8
  %254 = load i16, ptr %236, align 4
  %255 = call i32 @secure_tcpv6_seq(ptr noundef %8, ptr noundef %119, i16 noundef zeroext %253, i16 noundef zeroext %254) #14
  store volatile i32 %255, ptr %249, align 4
  br label %256

256:                                              ; preds = %252, %248
  %257 = call i32 @secure_tcpv6_ts_off(ptr noundef nonnull @init_net, ptr noundef %8, ptr noundef %119) #14
  %258 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 22
  store i32 %257, ptr %258, align 4
  br label %259

259:                                              ; preds = %256, %239
  %260 = call zeroext i1 @tcp_fastopen_defer_connect(ptr noundef %0, ptr noundef nonnull %6) #14
  %261 = load i32, ptr %6, align 4
  br i1 %260, label %273, label %262

262:                                              ; preds = %259
  %263 = icmp eq i32 %261, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %262
  %265 = call i32 @tcp_connect(ptr noundef %0) #14
  store i32 %265, ptr %6, align 4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %273, label %267

267:                                              ; preds = %264, %262, %233
  call void @tcp_set_state(ptr noundef %0, i32 noundef 7) #14
  %268 = load i32, ptr %6, align 4
  br label %269

269:                                              ; preds = %267, %186, %145
  %270 = phi i32 [ %139, %145 ], [ %268, %267 ], [ %187, %186 ]
  %271 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  store i16 0, ptr %271, align 4
  %272 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 38
  store i64 0, ptr %272, align 8
  br label %273

273:                                              ; preds = %269, %264, %259, %143, %86, %79, %66, %31, %10, %3
  %274 = phi i32 [ %270, %269 ], [ -22, %3 ], [ -97, %10 ], [ -101, %66 ], [ -22, %79 ], [ -22, %86 ], [ 0, %264 ], [ %144, %143 ], [ -22, %31 ], [ %261, %259 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  ret i32 %274
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_disconnect(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_csk_accept(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_ioctl(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tcp_v6_init_sock(ptr noundef %0) #1 {
  tail call void @tcp_init_sock(ptr noundef %0) #14
  %2 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 11
  store ptr @ipv6_specific, ptr %2, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tcp_v6_destroy_sock(ptr noundef %0) #1 {
  tail call void @tcp_v4_destroy_sock(ptr noundef %0) #14
  tail call void @inet6_destroy_sock(ptr noundef %0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_shutdown(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_set_keepalive(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_sendmsg(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tcp_v6_do_rcv(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  %4 = load i16, ptr %3, align 8
  %5 = icmp eq i16 %4, 8
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 @tcp_v4_do_rcv(ptr noundef %0, ptr noundef %1) #14
  br label %239

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 1800
  %10 = load i16, ptr %9, align 4
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 41
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 131072
  %16 = or i32 %15, 2592
  %17 = tail call ptr @skb_clone(ptr noundef %1, i32 noundef %16) #14
  br label %18

18:                                               ; preds = %12, %8
  %19 = phi ptr [ %17, %12 ], [ null, %8 ]
  %20 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %21 = load volatile i8, ptr %20, align 2
  %22 = icmp eq i8 %21, 1
  br i1 %22, label %23, label %69

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 21
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 7
  %29 = load i32, ptr %28, align 8
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %32, label %31, !prof !16

31:                                               ; preds = %23
  store i32 %29, ptr %26, align 8
  br label %32

32:                                               ; preds = %31, %23
  %33 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 14
  %34 = load volatile i32, ptr %33, align 8
  %35 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 10
  %36 = load i32, ptr %35, align 8
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %39, label %38, !prof !16

38:                                               ; preds = %32
  store volatile i32 %36, ptr %33, align 8
  br label %39

39:                                               ; preds = %38, %32
  %40 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 9
  %41 = load i16, ptr %40, align 4
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = add i16 %41, -1
  %45 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 17
  %46 = load volatile i16, ptr %45, align 2
  %47 = icmp eq i16 %46, %44
  br i1 %47, label %49, label %48, !prof !16

48:                                               ; preds = %43
  store volatile i16 %44, ptr %45, align 2
  br label %49

49:                                               ; preds = %48, %43, %39
  %50 = icmp eq ptr %25, null
  br i1 %50, label %67, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.dst_entry, ptr %25, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.dst_ops, ptr %59, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 3
  %63 = load i32, ptr %62, align 8
  %64 = tail call ptr %61(ptr noundef nonnull %25, i32 noundef %63) #14
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %57, %51
  store volatile ptr null, ptr %24, align 8
  tail call void @dst_release(ptr noundef nonnull %25) #14
  br label %67

67:                                               ; preds = %66, %57, %49
  tail call void @tcp_rcv_established(ptr noundef %0, ptr noundef %1) #14
  %68 = icmp eq ptr %19, null
  br i1 %68, label %239, label %156

69:                                               ; preds = %18
  %70 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %71 = load i16, ptr %70, align 8
  %72 = lshr i16 %71, 5
  %73 = and i16 %72, 3
  %74 = icmp ne i16 %73, 1
  %75 = icmp sgt i16 %71, -1
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %77, label %95

77:                                               ; preds = %69
  %78 = icmp eq i16 %73, 3
  br i1 %78, label %79, label %92

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %81 = load i16, ptr %80, align 4
  %82 = zext i16 %81 to i32
  %83 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %86 = load ptr, ptr %85, align 8
  %87 = ptrtoint ptr %84 to i32
  %88 = ptrtoint ptr %86 to i32
  %89 = sub i32 %82, %87
  %90 = add i32 %89, %88
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %79, %77
  %93 = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %1) #14
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %95, label %117

95:                                               ; preds = %92, %79, %69
  %96 = load volatile i8, ptr %20, align 2
  %97 = icmp eq i8 %96, 10
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = icmp eq ptr %0, null
  br i1 %99, label %113, label %107

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 21
  %102 = load i32, ptr %101, align 8
  %103 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 7
  %104 = load i32, ptr %103, align 8
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %107, label %106, !prof !16

106:                                              ; preds = %100
  store i32 %104, ptr %101, align 8
  br label %107

107:                                              ; preds = %106, %100, %98
  %108 = tail call i32 @tcp_rcv_state_process(ptr noundef %0, ptr noundef %1) #14
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = icmp eq ptr %19, null
  br i1 %111, label %239, label %156

112:                                              ; preds = %107
  tail call void @tcp_v6_send_reset(ptr noundef %0, ptr noundef %1)
  br label %113

113:                                              ; preds = %133, %112, %98
  %114 = icmp eq ptr %19, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %113
  tail call void @__kfree_skb(ptr noundef nonnull %19) #14
  br label %116

116:                                              ; preds = %115, %113
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #14
  br label %239

117:                                              ; preds = %92
  %118 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tcp_bad_csum, i32 0, i32 1), align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %117
  %121 = tail call ptr @llvm.thread.pointer() #14
  %122 = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 2
  %123 = load i32, ptr %122, align 8
  %124 = lshr i32 %123, 5
  %125 = getelementptr i32, ptr @__cpu_online_mask, i32 %124
  %126 = load volatile i32, ptr %125, align 4
  %127 = and i32 %123, 31
  %128 = shl nuw i32 1, %127
  %129 = and i32 %128, %126
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %120
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !39
  %132 = tail call i32 @__traceiter_tcp_bad_csum(ptr noundef null, ptr noundef %1) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !40
  br label %133

133:                                              ; preds = %131, %120, %117
  %134 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !41
  %135 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %136 = getelementptr [16 x i32], ptr %135, i32 0, i32 15
  %137 = ptrtoint ptr %136 to i32
  %138 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %139 = inttoptr i32 %138 to ptr
  %140 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %139) #9, !srcloc !26
  %141 = add i32 %140, %137
  %142 = inttoptr i32 %141 to ptr
  %143 = load i32, ptr %142, align 4
  %144 = add i32 %143, 1
  store i32 %144, ptr %142, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %134) #14, !srcloc !42
  %145 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !41
  %146 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %147 = getelementptr [16 x i32], ptr %146, i32 0, i32 13
  %148 = ptrtoint ptr %147 to i32
  %149 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %150 = inttoptr i32 %149 to ptr
  %151 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %150) #9, !srcloc !26
  %152 = add i32 %151, %148
  %153 = inttoptr i32 %152 to ptr
  %154 = load i32, ptr %153, align 4
  %155 = add i32 %154, 1
  store i32 %155, ptr %153, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %145) #14, !srcloc !42
  br label %113

156:                                              ; preds = %110, %67
  %157 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3, i32 4
  %158 = load i32, ptr %157, align 4
  %159 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %160 = load i32, ptr %159, align 8
  %161 = icmp eq i32 %158, %160
  br i1 %161, label %162, label %237

162:                                              ; preds = %156
  %163 = load volatile i8, ptr %20, align 2
  %164 = zext i8 %163 to i32
  %165 = shl nuw i32 1, %164
  %166 = and i32 %165, 1152
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %237

168:                                              ; preds = %162
  %169 = load i16, ptr %9, align 4
  %170 = and i16 %169, 12
  %171 = icmp eq i16 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3, i32 24
  %174 = load i32, ptr %173, align 8
  %175 = getelementptr i8, ptr %0, i32 1796
  store i32 %174, ptr %175, align 4
  br label %176

176:                                              ; preds = %172, %168
  %177 = and i16 %169, 48
  %178 = icmp eq i16 %177, 0
  br i1 %178, label %194, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 16
  %181 = load ptr, ptr %180, align 8
  %182 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 13, i32 0, i32 18
  %183 = load i16, ptr %182, align 4
  %184 = zext i16 %183 to i32
  %185 = getelementptr i8, ptr %181, i32 %184
  %186 = getelementptr inbounds %struct.ipv6hdr, ptr %185, i32 0, i32 4
  %187 = load i8, ptr %186, align 1
  %188 = getelementptr i8, ptr %0, i32 1788
  %189 = zext i8 %187 to i32
  %190 = load i32, ptr %188, align 4
  %191 = shl nuw nsw i32 %189, 23
  %192 = and i32 %190, 8388607
  %193 = or i32 %192, %191
  store i32 %193, ptr %188, align 4
  br label %194

194:                                              ; preds = %179, %176
  %195 = and i16 %169, 3072
  %196 = icmp eq i16 %195, 0
  br i1 %196, label %207, label %197

197:                                              ; preds = %194
  %198 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 16
  %199 = load ptr, ptr %198, align 8
  %200 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 13, i32 0, i32 18
  %201 = load i16, ptr %200, align 4
  %202 = zext i16 %201 to i32
  %203 = getelementptr i8, ptr %199, i32 %202
  %204 = load i32, ptr %203, align 4
  %205 = and i32 %204, -241
  %206 = getelementptr i8, ptr %0, i32 1808
  store i32 %205, ptr %206, align 4
  br label %207

207:                                              ; preds = %197, %194
  %208 = getelementptr i8, ptr %0, i32 1802
  %209 = load i16, ptr %208, align 2
  %210 = and i16 %209, 4
  %211 = icmp eq i16 %210, 0
  br i1 %211, label %222, label %212

212:                                              ; preds = %207
  %213 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 16
  %214 = load ptr, ptr %213, align 8
  %215 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 13, i32 0, i32 18
  %216 = load i16, ptr %215, align 4
  %217 = zext i16 %216 to i32
  %218 = getelementptr i8, ptr %214, i32 %217
  %219 = load i32, ptr %218, align 4
  %220 = and i32 %219, -61696
  %221 = getelementptr i8, ptr %0, i32 1780
  store i32 %220, ptr %221, align 4
  br label %222

222:                                              ; preds = %212, %207
  %223 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3, i32 24
  %224 = tail call zeroext i1 @ipv6_opt_accepted(ptr noundef %0, ptr noundef nonnull %19, ptr noundef %223) #14
  br i1 %224, label %225, label %232

225:                                              ; preds = %222
  tail call fastcc void @skb_set_owner_r(ptr noundef nonnull %19, ptr noundef %0)
  %226 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %226, ptr noundef align 8 dereferenceable(24) %223, i32 24, i1 false) #14
  %227 = getelementptr i8, ptr %0, i32 1832
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !43
  %228 = ptrtoint ptr %19 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %227) #14, !srcloc !13
  %229 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %228, ptr %227) #14, !srcloc !44
  %230 = extractvalue { i32, i32 } %229, 0
  %231 = inttoptr i32 %230 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !45
  br label %237

232:                                              ; preds = %222
  tail call void @__kfree_skb(ptr noundef nonnull %19) #14
  %233 = getelementptr i8, ptr %0, i32 1832
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !46
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %233) #14, !srcloc !13
  %234 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %233) #14, !srcloc !44
  %235 = extractvalue { i32, i32 } %234, 0
  %236 = inttoptr i32 %235 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !47
  br label %237

237:                                              ; preds = %232, %225, %162, %156
  %238 = phi ptr [ %19, %162 ], [ %231, %225 ], [ %236, %232 ], [ %19, %156 ]
  tail call void @consume_skb(ptr noundef %238) #14
  br label %239

239:                                              ; preds = %237, %116, %110, %67, %6
  %240 = phi i32 [ %7, %6 ], [ 0, %237 ], [ 0, %67 ], [ 0, %116 ], [ 0, %110 ]
  ret i32 %240
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tcp_bpf_bypass_getsockopt(i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_release_cb(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_hash(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_unhash(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_csk_get_port(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_put_port(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tcp_stream_memory_free(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_enter_memory_pressure(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_leave_memory_pressure(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_abort(ptr noundef, i32 noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @tcpv6_init() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @inet6_add_protocol(ptr noundef nonnull @tcpv6_protocol, i8 noundef zeroext 6) #14
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = tail call i32 @inet6_register_protosw(ptr noundef nonnull @tcpv6_protosw) #14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @tcpv6_net_ops) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %12, %6, %0
  %10 = phi i32 [ %1, %0 ], [ %13, %12 ], [ 0, %6 ]
  ret i32 %10

11:                                               ; preds = %6
  tail call void @inet6_unregister_protosw(ptr noundef nonnull @tcpv6_protosw) #14
  br label %12

12:                                               ; preds = %11, %3
  %13 = phi i32 [ %4, %3 ], [ %7, %11 ]
  %14 = tail call i32 @inet6_del_protocol(ptr noundef nonnull @tcpv6_protocol, i8 noundef zeroext 6) #14
  br label %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_add_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_register_protosw(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet6_unregister_protosw(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_del_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcpv6_exit() local_unnamed_addr #1 {
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @tcpv6_net_ops) #14
  tail call void @inet6_unregister_protosw(ptr noundef nonnull @tcpv6_protosw) #14
  %1 = tail call i32 @inet6_del_protocol(ptr noundef nonnull @tcpv6_protocol, i8 noundef zeroext 6) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet6_csk_route_req(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_opt_accepted(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @secure_tcpv6_seq(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @secure_tcpv6_ts_off(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcp_make_synack(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_xmit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_v6_send_response(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i8 noundef zeroext %9, i32 noundef %10, i32 noundef %11) unnamed_addr #1 {
  %13 = alloca %struct.flowi6, align 8
  %14 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = getelementptr i8, ptr %15, i32 %18
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %13) #14
  %20 = icmp eq ptr %0, null
  %21 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 26), align 16
  %22 = icmp eq i32 %6, 0
  %23 = select i1 %22, i32 20, i32 32
  %24 = add nuw nsw i32 %23, 184
  %25 = tail call ptr @__alloc_skb(i32 noundef %24, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #14
  %26 = icmp eq ptr %25, null
  br i1 %26, label %226, label %27

27:                                               ; preds = %12
  %28 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 17
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 %24
  store ptr %30, ptr %28, align 4
  %31 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 14
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr i8, ptr %32, i32 %24
  store ptr %33, ptr %31, align 8
  %34 = tail call ptr @skb_push(ptr noundef nonnull %25, i32 noundef %23) #14
  %35 = load ptr, ptr %28, align 4
  %36 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 16
  %37 = load ptr, ptr %36, align 8
  %38 = ptrtoint ptr %35 to i32
  %39 = ptrtoint ptr %37 to i32
  %40 = sub i32 %38, %39
  %41 = trunc i32 %40 to i16
  %42 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 13, i32 0, i32 17
  store i16 %41, ptr %42, align 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %34, i8 0, i32 20, i1 false)
  %43 = load i16, ptr %19, align 4
  %44 = getelementptr inbounds %struct.tcphdr, ptr %34, i32 0, i32 1
  store i16 %43, ptr %44, align 2
  %45 = getelementptr inbounds %struct.tcphdr, ptr %19, i32 0, i32 1
  %46 = load i16, ptr %45, align 2
  store i16 %46, ptr %34, align 4
  %47 = trunc i32 %23 to i16
  %48 = getelementptr inbounds %struct.tcphdr, ptr %34, i32 0, i32 4
  %49 = shl nuw nsw i16 %47, 2
  store i16 %49, ptr %48, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %2)
  %51 = getelementptr inbounds %struct.tcphdr, ptr %34, i32 0, i32 2
  store i32 %50, ptr %51, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %3)
  %53 = getelementptr inbounds %struct.tcphdr, ptr %34, i32 0, i32 3
  store i32 %52, ptr %53, align 4
  %54 = icmp eq i32 %8, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %27
  %56 = getelementptr inbounds %struct.tcphdr, ptr %19, i32 0, i32 4
  %57 = load i16, ptr %56, align 4
  %58 = and i16 %57, 4096
  %59 = xor i16 %58, 4096
  br label %60

60:                                               ; preds = %55, %27
  %61 = phi i16 [ 4096, %27 ], [ %59, %55 ]
  %62 = trunc i32 %8 to i16
  %63 = shl i16 %62, 10
  %64 = and i16 %63, 1024
  %65 = or i16 %49, %64
  %66 = or i16 %65, %61
  store i16 %66, ptr %48, align 4
  %67 = trunc i32 %4 to i16
  %68 = tail call i16 @llvm.bswap.i16(i16 %67)
  %69 = getelementptr inbounds %struct.tcphdr, ptr %34, i32 0, i32 5
  store i16 %68, ptr %69, align 2
  br i1 %22, label %76, label %70

70:                                               ; preds = %60
  %71 = getelementptr %struct.tcphdr, ptr %34, i32 1
  %72 = getelementptr %struct.tcphdr, ptr %34, i32 1, i32 2
  store i32 168296705, ptr %71, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %5)
  %74 = getelementptr %struct.tcphdr, ptr %34, i32 1, i32 3
  store i32 %73, ptr %72, align 4
  %75 = tail call i32 @llvm.bswap.i32(i32 %6)
  store i32 %75, ptr %74, align 4
  br label %76

76:                                               ; preds = %70, %60
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %13, i8 0, i32 88, i1 false)
  %77 = getelementptr inbounds %struct.flowi6, ptr %13, i32 0, i32 1
  %78 = load ptr, ptr %14, align 8
  %79 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %80 = load i16, ptr %79, align 4
  %81 = zext i16 %80 to i32
  %82 = getelementptr i8, ptr %78, i32 %81
  %83 = getelementptr inbounds %struct.ipv6hdr, ptr %82, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %77, ptr noundef align 4 dereferenceable(16) %83, i32 16, i1 false)
  %84 = getelementptr inbounds %struct.flowi6, ptr %13, i32 0, i32 2
  %85 = getelementptr inbounds %struct.ipv6hdr, ptr %82, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %84, ptr noundef align 4 dereferenceable(16) %85, i32 16, i1 false)
  %86 = getelementptr inbounds %struct.flowi6, ptr %13, i32 0, i32 3
  store i32 %10, ptr %86, align 8
  %87 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 13
  %88 = load i16, ptr %87, align 8
  %89 = or i16 %88, 96
  store i16 %89, ptr %87, align 8
  %90 = load ptr, ptr %36, align 8
  %91 = load i16, ptr %42, align 2
  %92 = zext i16 %91 to i32
  %93 = getelementptr i8, ptr %90, i32 %92
  %94 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 5
  %95 = load i32, ptr %94, align 8
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #14
  %97 = call i32 @__csum_ipv6_magic(ptr noundef %84, ptr noundef %77, i32 noundef %96, i32 noundef 100663296, i32 noundef 0) #14
  %98 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %97) #15, !srcloc !17
  %99 = xor i32 %98, -1
  %100 = lshr i32 %99, 16
  %101 = trunc i32 %100 to i16
  %102 = xor i16 %101, -1
  %103 = getelementptr inbounds %struct.tcphdr, ptr %93, i32 0, i32 6
  store i16 %102, ptr %103, align 4
  %104 = load i16, ptr %42, align 2
  %105 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 13, i32 0, i32 4
  store i16 %104, ptr %105, align 4
  %106 = getelementptr inbounds %struct.anon.52, ptr %105, i32 0, i32 1
  store i16 16, ptr %106, align 2
  %107 = getelementptr inbounds %struct.flowi_common, ptr %13, i32 0, i32 5
  store i8 6, ptr %107, align 2
  %108 = call i32 @__ipv6_addr_type(ptr noundef %77) #14
  %109 = and i32 %108, 50
  %110 = icmp eq i32 %109, 0
  %111 = icmp ne i32 %7, 0
  %112 = or i1 %111, %110
  br i1 %112, label %116, label %113

113:                                              ; preds = %76
  %114 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %115 = load i32, ptr %114, align 8
  br label %116

116:                                              ; preds = %113, %76
  %117 = phi i32 [ %115, %113 ], [ %7, %76 ]
  store i32 %117, ptr %13, align 8
  br i1 %20, label %152, label %118

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %120 = load volatile i8, ptr %119, align 2
  %121 = icmp eq i8 %120, 6
  br i1 %121, label %122, label %131

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.inet_timewait_sock, ptr %0, i32 0, i32 1
  %124 = load i32, ptr %123, align 8
  %125 = getelementptr inbounds %struct.inet_timewait_sock, ptr %0, i32 0, i32 6
  %126 = load i32, ptr %125, align 4
  %127 = load i16, ptr %87, align 8
  %128 = and i16 %127, -769
  %129 = or i16 %128, 256
  store i16 %129, ptr %87, align 8
  %130 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 13, i32 0, i32 7
  store i32 %126, ptr %130, align 8
  br label %134

131:                                              ; preds = %118
  %132 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 34
  %133 = load i32, ptr %132, align 8
  br label %134

134:                                              ; preds = %131, %122
  %135 = phi i32 [ %124, %122 ], [ %133, %131 ]
  %136 = load volatile i32, ptr @tcp_tx_delay_enabled, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %149, !prof !15

138:                                              ; preds = %134
  %139 = load volatile i8, ptr %119, align 2
  %140 = icmp eq i8 %139, 6
  %141 = getelementptr inbounds %struct.tcp_timewait_sock, ptr %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 41
  %143 = select i1 %140, ptr %141, ptr %142
  %144 = load i32, ptr %143, align 4
  %145 = call i64 @ktime_get() #14
  %146 = zext i32 %144 to i64
  %147 = mul nuw nsw i64 %146, 1000
  %148 = add i64 %147, %145
  br label %149

149:                                              ; preds = %138, %134
  %150 = phi i64 [ %148, %138 ], [ 0, %134 ]
  %151 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 2
  store i64 %150, ptr %151, align 8
  br label %152

152:                                              ; preds = %149, %116
  %153 = phi i32 [ %135, %149 ], [ 0, %116 ]
  %154 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 26), align 2
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 11
  %158 = load i32, ptr %157, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %156, %152
  br label %161

161:                                              ; preds = %160, %156
  %162 = phi i32 [ %153, %160 ], [ %158, %156 ]
  %163 = getelementptr inbounds %struct.flowi_common, ptr %13, i32 0, i32 2
  store i32 %162, ptr %163, align 8
  %164 = load i16, ptr %44, align 2
  %165 = getelementptr inbounds %struct.flowi6, ptr %13, i32 0, i32 4
  store i16 %164, ptr %165, align 4
  %166 = load i16, ptr %34, align 4
  %167 = getelementptr inbounds %struct.anon.123, ptr %165, i32 0, i32 1
  store i16 %166, ptr %167, align 2
  %168 = getelementptr inbounds %struct.flowi_common, ptr %13, i32 0, i32 8
  br i1 %20, label %179, label %169

169:                                              ; preds = %161
  %170 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %171 = load volatile i8, ptr %170, align 2
  %172 = zext i8 %171 to i32
  %173 = shl nuw i32 1, %172
  %174 = and i32 %173, -4161
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %169
  %177 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 55
  %178 = load i32, ptr %177, align 4
  br label %179

179:                                              ; preds = %176, %169, %161
  %180 = phi i32 [ %178, %176 ], [ 0, %161 ], [ 0, %169 ]
  store i32 %180, ptr %168, align 4
  %181 = call ptr @ip6_dst_lookup_flow(ptr noundef nonnull @init_net, ptr noundef %21, ptr noundef nonnull %13, ptr noundef null) #14
  %182 = icmp ugt ptr %181, inttoptr (i32 -4096 to ptr)
  br i1 %182, label %225, label %183

183:                                              ; preds = %179
  %184 = icmp ne ptr %181, null
  %185 = zext i1 %184 to i8
  %186 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 13, i32 0, i32 3
  %187 = load i16, ptr %186, align 2
  %188 = lshr i16 %187, 14
  %189 = trunc i16 %188 to i8
  %190 = and i8 %189, 1
  %191 = or i8 %190, %185
  %192 = zext i8 %191 to i16
  %193 = shl nuw nsw i16 %192, 14
  %194 = and i16 %187, -16385
  %195 = or i16 %193, %194
  store i16 %195, ptr %186, align 2
  %196 = ptrtoint ptr %181 to i32
  %197 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 4
  store i32 %196, ptr %197, align 8
  %198 = load i32, ptr %163, align 8
  %199 = and i8 %9, -4
  %200 = zext i8 %199 to i32
  %201 = call i32 @ip6_xmit(ptr noundef %21, ptr noundef nonnull %25, ptr noundef nonnull %13, i32 noundef %198, ptr noundef null, i32 noundef %200, i32 noundef %11) #14
  %202 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !41
  %203 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %204 = getelementptr [16 x i32], ptr %203, i32 0, i32 11
  %205 = ptrtoint ptr %204 to i32
  %206 = call i32 @llvm.read_register.i32(metadata !0) #14
  %207 = inttoptr i32 %206 to ptr
  %208 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %207) #9, !srcloc !26
  %209 = add i32 %208, %205
  %210 = inttoptr i32 %209 to ptr
  %211 = load i32, ptr %210, align 4
  %212 = add i32 %211, 1
  store i32 %212, ptr %210, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %202) #14, !srcloc !42
  br i1 %54, label %226, label %213

213:                                              ; preds = %183
  %214 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !41
  %215 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %216 = getelementptr [16 x i32], ptr %215, i32 0, i32 14
  %217 = ptrtoint ptr %216 to i32
  %218 = call i32 @llvm.read_register.i32(metadata !0) #14
  %219 = inttoptr i32 %218 to ptr
  %220 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %219) #9, !srcloc !26
  %221 = add i32 %220, %217
  %222 = inttoptr i32 %221 to ptr
  %223 = load i32, ptr %222, align 4
  %224 = add i32 %223, 1
  store i32 %224, ptr %222, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %214) #14, !srcloc !42
  br label %226

225:                                              ; preds = %179
  call void @kfree_skb_reason(ptr noundef nonnull %25, i32 noundef 0) #14
  br label %226

226:                                              ; preds = %225, %213, %183, %12
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %13) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tcp_send_reset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_dst_lookup_flow(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_v4_conn_request(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #10 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_conn_request(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcp_v4_syn_recv_sock(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_v4_do_rcv(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_sync_mss(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcp_create_openreq_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipv6_dup_options(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_ca_openreq_child(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_initialize_rcv_mss(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__inet_inherit_port(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_csk_prepare_forced_close(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_done(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inet_ehash_nolisten(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @skb_set_owner_r(ptr noundef %0, ptr noundef %1) unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void %4(ptr noundef %0) #14
  br label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !16

11:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #14, !srcloc !48
  unreachable

12:                                               ; preds = %7, %6
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  store ptr %1, ptr %13, align 4
  store ptr @sock_rfree, ptr %3, align 4
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 18
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #14, !srcloc !13
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 %15, ptr elementtype(i32) %16) #14, !srcloc !29
  %18 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.proto, ptr %19, i32 0, i32 30
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %12
  %24 = load i32, ptr %14, align 8
  %25 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 11
  %26 = load i32, ptr %25, align 4
  %27 = sub i32 %26, %24
  store i32 %27, ptr %25, align 4
  br label %28

28:                                               ; preds = %23, %12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sock_put(ptr noundef %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !35
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #14, !srcloc !13
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #14, !srcloc !36
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %10, label %8, !prof !16

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #14
  br label %10

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !37
  tail call void @sk_free(ptr noundef %0) #14
  br label %10

10:                                               ; preds = %9, %8, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_queue_xmit(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_v4_send_check(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_sk_rebuild_header(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_sk_rx_dst_set(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_v4_mtu_reduced(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_setup_caps(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_rfree(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_mtu_to_mss(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet6_csk_update_pmtu(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_simple_retransmit(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcp_seq_start(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_seq_stop(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcp_seq_next(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tcp6_seq_show(ptr noundef %0, ptr noundef %1) #1 {
  %3 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.4) #14
  br label %203

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %9 = load volatile i8, ptr %8, align 2
  %10 = icmp eq i8 %9, 6
  br i1 %10, label %11, label %49

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tcp_iter_state, ptr %7, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.inet_timewait_sock, ptr %1, i32 0, i32 8, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = load volatile i32, ptr @jiffies, align 64
  %17 = sub i32 %15, %16
  %18 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 10
  %19 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 11
  %20 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 2
  %21 = load i16, ptr %20, align 4
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #14
  %23 = getelementptr inbounds %struct.inet_timewait_sock, ptr %1, i32 0, i32 4
  %24 = load i16, ptr %23, align 2
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #14
  %26 = load i32, ptr %19, align 4
  %27 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = zext i16 %25 to i32
  %34 = load i32, ptr %18, align 4
  %35 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = zext i16 %22 to i32
  %42 = getelementptr inbounds %struct.inet_timewait_sock, ptr %1, i32 0, i32 2
  %43 = load volatile i8, ptr %42, align 4
  %44 = zext i8 %43 to i32
  %45 = tail call i32 @llvm.smax.i32(i32 %17, i32 0) #14
  %46 = tail call i32 @jiffies_to_clock_t(i32 noundef %45) #14
  %47 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %48 = load volatile i32, ptr %47, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %13, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %33, i32 noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %41, i32 noundef %44, i32 noundef 0, i32 noundef 0, i32 noundef 3, i32 noundef %46, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %48, ptr noundef %1) #14
  br label %203

49:                                               ; preds = %5
  %50 = load volatile i8, ptr %8, align 2
  %51 = icmp eq i8 %50, 12
  %52 = getelementptr inbounds %struct.tcp_iter_state, ptr %7, i32 0, i32 6
  %53 = load i32, ptr %52, align 4
  br i1 %51, label %54, label %94

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.request_sock, ptr %1, i32 0, i32 6, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = load volatile i32, ptr @jiffies, align 64
  %58 = sub i32 %56, %57
  %59 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 11
  %60 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 10
  %61 = tail call i32 @llvm.smax.i32(i32 %58, i32 0) #14
  %62 = load i32, ptr %59, align 4
  %63 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 2
  %70 = getelementptr inbounds %struct.anon.2, ptr %69, i32 0, i32 1
  %71 = load i16, ptr %70, align 2
  %72 = zext i16 %71 to i32
  %73 = load i32, ptr %60, align 4
  %74 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 3
  %79 = load i32, ptr %78, align 4
  %80 = load i16, ptr %69, align 4
  %81 = tail call i16 @llvm.bswap.i16(i16 %80) #14
  %82 = zext i16 %81 to i32
  %83 = tail call i32 @jiffies_to_clock_t(i32 noundef %61) #14
  %84 = getelementptr inbounds %struct.request_sock, ptr %1, i32 0, i32 4
  %85 = load i8, ptr %84, align 1
  %86 = lshr i8 %85, 1
  %87 = zext i8 %86 to i32
  %88 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %89 = load ptr, ptr %88, align 8
  %90 = tail call i32 @sock_i_uid(ptr noundef %89) #14
  %91 = icmp eq i32 %90, -1
  %92 = load i32, ptr @overflowuid, align 4
  %93 = select i1 %91, i32 %92, i32 %90
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %53, i32 noundef %62, i32 noundef %64, i32 noundef %66, i32 noundef %68, i32 noundef %72, i32 noundef %73, i32 noundef %75, i32 noundef %77, i32 noundef %79, i32 noundef %82, i32 noundef 3, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef %83, i32 noundef %87, i32 noundef %93, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1) #14
  br label %203

94:                                               ; preds = %49
  %95 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 10
  %96 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 11
  %97 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 2
  %98 = load i16, ptr %97, align 4
  %99 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 6
  %100 = load i16, ptr %99, align 8
  %101 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 19
  %102 = load i8, ptr %101, align 2
  switch i8 %102, label %109 [
    i8 1, label %103
    i8 6, label %103
    i8 5, label %103
    i8 3, label %106
  ]

103:                                              ; preds = %94, %94, %94
  %104 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 3
  %105 = load i32, ptr %104, align 8
  br label %118

106:                                              ; preds = %94
  %107 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 3
  %108 = load i32, ptr %107, align 8
  br label %118

109:                                              ; preds = %94
  %110 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 32, i32 0, i32 1
  %111 = load volatile ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 32, i32 1
  %115 = load i32, ptr %114, align 8
  br label %118

116:                                              ; preds = %109
  %117 = load volatile i32, ptr @jiffies, align 64
  br label %118

118:                                              ; preds = %116, %113, %106, %103
  %119 = phi i32 [ %105, %103 ], [ %108, %106 ], [ %115, %113 ], [ %117, %116 ]
  %120 = phi i32 [ 1, %103 ], [ 4, %106 ], [ 2, %113 ], [ 0, %116 ]
  %121 = load volatile i8, ptr %8, align 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !49
  %122 = icmp eq i8 %121, 10
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 53
  %125 = load volatile i32, ptr %124, align 4
  br label %133

126:                                              ; preds = %118
  %127 = getelementptr inbounds %struct.tcp_sock, ptr %1, i32 0, i32 7
  %128 = load volatile i32, ptr %127, align 8
  %129 = getelementptr inbounds %struct.tcp_sock, ptr %1, i32 0, i32 8
  %130 = load volatile i32, ptr %129, align 4
  %131 = sub i32 %128, %130
  %132 = tail call i32 @llvm.smax.i32(i32 %131, i32 0) #14
  br label %133

133:                                              ; preds = %126, %123
  %134 = phi i32 [ %125, %123 ], [ %132, %126 ]
  %135 = load i32, ptr %96, align 4
  %136 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 1
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 2
  %139 = load i32, ptr %138, align 4
  %140 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 3
  %141 = load i32, ptr %140, align 4
  %142 = load i32, ptr %95, align 4
  %143 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 1
  %144 = load i32, ptr %143, align 4
  %145 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 2
  %146 = load i32, ptr %145, align 4
  %147 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 3
  %148 = load i32, ptr %147, align 4
  %149 = getelementptr inbounds %struct.tcp_sock, ptr %1, i32 0, i32 80
  %150 = load volatile i32, ptr %149, align 4
  %151 = getelementptr inbounds %struct.tcp_sock, ptr %1, i32 0, i32 16
  %152 = load i32, ptr %151, align 4
  %153 = load volatile i32, ptr @jiffies, align 64
  %154 = sub i32 %119, %153
  %155 = tail call i32 @llvm.smax.i32(i32 %154, i32 0) #14
  %156 = tail call i32 @jiffies_to_clock_t(i32 noundef %155) #14
  %157 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 18
  %158 = load i8, ptr %157, align 1
  %159 = tail call i32 @sock_i_uid(ptr noundef %1) #14
  %160 = load i32, ptr @overflowuid, align 4
  %161 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 22
  %162 = load i8, ptr %161, align 1
  %163 = tail call i32 @sock_i_ino(ptr noundef %1) #14
  %164 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %165 = load volatile i32, ptr %164, align 4
  %166 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 6
  %167 = load i32, ptr %166, align 4
  %168 = tail call i32 @jiffies_to_clock_t(i32 noundef %167) #14
  %169 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 24, i32 4
  %170 = load i32, ptr %169, align 4
  %171 = tail call i32 @jiffies_to_clock_t(i32 noundef %170) #14
  %172 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 24, i32 1
  %173 = load i8, ptr %172, align 1
  %174 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 24, i32 2
  %175 = load i8, ptr %174, align 2
  %176 = getelementptr inbounds %struct.tcp_sock, ptr %1, i32 0, i32 63
  %177 = load i32, ptr %176, align 8
  br i1 %122, label %178, label %181

178:                                              ; preds = %133
  %179 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 1, i32 7, i32 4
  %180 = load i32, ptr %179, align 4
  br label %186

181:                                              ; preds = %133
  %182 = getelementptr inbounds %struct.tcp_sock, ptr %1, i32 0, i32 62
  %183 = load i32, ptr %182, align 4
  %184 = icmp ugt i32 %183, 2147483646
  %185 = select i1 %184, i32 -1, i32 %183
  br label %186

186:                                              ; preds = %181, %178
  %187 = phi i32 [ %180, %178 ], [ %185, %181 ]
  %188 = icmp ugt i8 %175, 2
  %189 = icmp eq i32 %159, -1
  %190 = select i1 %189, i32 %160, i32 %159
  %191 = zext i8 %121 to i32
  %192 = zext i8 %173 to i32
  %193 = shl nuw nsw i32 %192, 1
  %194 = zext i1 %188 to i32
  %195 = or i32 %193, %194
  %196 = zext i8 %162 to i32
  %197 = zext i8 %158 to i32
  %198 = sub i32 %150, %152
  %199 = tail call i16 @llvm.bswap.i16(i16 %98) #14
  %200 = zext i16 %199 to i32
  %201 = tail call i16 @llvm.bswap.i16(i16 %100) #14
  %202 = zext i16 %201 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %53, i32 noundef %135, i32 noundef %137, i32 noundef %139, i32 noundef %141, i32 noundef %202, i32 noundef %142, i32 noundef %144, i32 noundef %146, i32 noundef %148, i32 noundef %200, i32 noundef %191, i32 noundef %198, i32 noundef %134, i32 noundef %120, i32 noundef %156, i32 noundef %197, i32 noundef %190, i32 noundef %196, i32 noundef %163, i32 noundef %165, ptr noundef %1, i32 noundef %168, i32 noundef %171, i32 noundef %195, i32 noundef %177, i32 noundef %187) #14
  br label %203

203:                                              ; preds = %186, %54, %11, %4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_clock_t(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_uid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_ino(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_v4_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fl6_update_dst(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_set_state(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_hash_connect(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tcp_fastopen_defer_connect(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_connect(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__fl6_sock_lookup(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_init_sock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_v4_destroy_sock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet6_destroy_sock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_rcv_established(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tcp_checksum_complete(ptr noundef %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %3 = load i16, ptr %2, align 8
  %4 = lshr i16 %3, 5
  %5 = and i16 %4, 3
  %6 = icmp ne i16 %5, 1
  %7 = icmp sgt i16 %3, -1
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  %10 = icmp eq i16 %5, 3
  br i1 %10, label %11, label %24

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %18 = load ptr, ptr %17, align 8
  %19 = ptrtoint ptr %16 to i32
  %20 = ptrtoint ptr %18 to i32
  %21 = sub i32 %14, %19
  %22 = add i32 %21, %20
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %11, %9
  %25 = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %0) #14
  %26 = icmp ne i16 %25, 0
  br label %27

27:                                               ; preds = %24, %11, %1
  %28 = phi i1 [ false, %11 ], [ %26, %24 ], [ false, %1 ]
  ret i1 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_child_process(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfree_skb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_rcv_state_process(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_checksum_complete(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tcp_bad_csum(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_twsk_unique(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_twsk_destructor(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tcp_v6_early_demux(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 7
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %98

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  %15 = ptrtoint ptr %12 to i32
  %16 = ptrtoint ptr %14 to i32
  %17 = sub i32 %15, %16
  %18 = add i32 %17, 20
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 %20, %22
  %24 = icmp ugt i32 %18, %23
  br i1 %24, label %25, label %35, !prof !15

25:                                               ; preds = %6
  %26 = icmp ult i32 %20, %18
  br i1 %26, label %98, label %27, !prof !15

27:                                               ; preds = %25
  %28 = sub i32 %18, %23
  %29 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %28) #14
  %30 = icmp eq ptr %29, null
  br i1 %30, label %98, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %7, align 8
  %33 = load i16, ptr %9, align 2
  %34 = zext i16 %33 to i32
  br label %35

35:                                               ; preds = %31, %6
  %36 = phi i32 [ %34, %31 ], [ %11, %6 ]
  %37 = phi ptr [ %32, %31 ], [ %8, %6 ]
  %38 = getelementptr i8, ptr %37, i32 %36
  %39 = getelementptr inbounds %struct.tcphdr, ptr %38, i32 0, i32 4
  %40 = load i16, ptr %39, align 4
  %41 = and i16 %40, 240
  %42 = icmp ult i16 %41, 80
  br i1 %42, label %98, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %45 = load i16, ptr %44, align 4
  %46 = zext i16 %45 to i32
  %47 = getelementptr i8, ptr %37, i32 %46
  %48 = getelementptr inbounds %struct.ipv6hdr, ptr %47, i32 0, i32 5
  %49 = load i16, ptr %38, align 4
  %50 = getelementptr inbounds %struct.ipv6hdr, ptr %47, i32 0, i32 6
  %51 = getelementptr inbounds %struct.tcphdr, ptr %38, i32 0, i32 1
  %52 = load i16, ptr %51, align 2
  %53 = tail call i16 @llvm.bswap.i16(i16 %52)
  %54 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  %55 = load i32, ptr %54, align 8
  %56 = tail call ptr @__inet6_lookup_established(ptr noundef nonnull @init_net, ptr noundef nonnull @tcp_hashinfo, ptr noundef %48, i16 noundef zeroext %49, ptr noundef %50, i16 noundef zeroext %53, i32 noundef %55, i32 noundef 0) #14
  %57 = icmp eq ptr %56, null
  br i1 %57, label %98, label %58

58:                                               ; preds = %43
  %59 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  store ptr %56, ptr %59, align 4
  %60 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4, i32 0, i32 1
  store ptr @sock_edemux, ptr %60, align 4
  %61 = getelementptr inbounds %struct.sock_common, ptr %56, i32 0, i32 4
  %62 = load volatile i8, ptr %61, align 2
  %63 = zext i8 %62 to i32
  %64 = shl nuw i32 1, %63
  %65 = and i32 %64, -4161
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %98, label %67

67:                                               ; preds = %58
  %68 = getelementptr inbounds %struct.sock, ptr %56, i32 0, i32 1
  %69 = load volatile ptr, ptr %68, align 8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %98, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.dst_entry, ptr %69, i32 0, i32 8
  %73 = load i16, ptr %72, align 2
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.sock, ptr %56, i32 0, i32 3
  %77 = load i32, ptr %76, align 8
  %78 = getelementptr inbounds %struct.dst_entry, ptr %69, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.dst_ops, ptr %79, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = tail call ptr %81(ptr noundef nonnull %69, i32 noundef %77) #14
  %83 = icmp eq ptr %82, null
  br i1 %83, label %98, label %84

84:                                               ; preds = %75, %71
  %85 = phi ptr [ %82, %75 ], [ %69, %71 ]
  %86 = getelementptr inbounds %struct.sock, ptr %56, i32 0, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 6
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %93 = load i16, ptr %92, align 2
  %94 = or i16 %93, 16384
  store i16 %94, ptr %92, align 2
  %95 = ptrtoint ptr %85 to i32
  %96 = or i32 %95, 1
  %97 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  store i32 %96, ptr %97, align 8
  br label %98

98:                                               ; preds = %91, %84, %75, %67, %58, %43, %35, %27, %25, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tcp_v6_rcv(ptr noundef %0) #1 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.anon.43, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %6 = load i16, ptr %5, align 8
  %7 = and i16 %6, 7
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %387

9:                                                ; preds = %1
  %10 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %11 = getelementptr [16 x i32], ptr %10, i32 0, i32 10
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #9, !srcloc !26
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 %21, %23
  %25 = icmp ult i32 %24, 20
  br i1 %25, label %26, label %32, !prof !15

26:                                               ; preds = %9
  %27 = icmp ult i32 %21, 20
  br i1 %27, label %387, label %28, !prof !15

28:                                               ; preds = %26
  %29 = sub nuw nsw i32 20, %24
  %30 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %29) #14
  %31 = icmp eq ptr %30, null
  br i1 %31, label %387, label %32

32:                                               ; preds = %28, %9
  %33 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.tcphdr, ptr %34, i32 0, i32 4
  %36 = load i16, ptr %35, align 4
  %37 = lshr i16 %36, 4
  %38 = and i16 %37, 15
  %39 = icmp ult i16 %38, 5
  br i1 %39, label %375, label %40, !prof !15

40:                                               ; preds = %32
  %41 = shl nuw nsw i16 %38, 2
  %42 = zext i16 %41 to i32
  %43 = load i32, ptr %20, align 8
  %44 = load i32, ptr %22, align 4
  %45 = sub i32 %43, %44
  %46 = icmp ult i32 %45, %42
  br i1 %46, label %47, label %53, !prof !15

47:                                               ; preds = %40
  %48 = icmp ult i32 %43, %42
  br i1 %48, label %387, label %49, !prof !15

49:                                               ; preds = %47
  %50 = sub i32 %42, %45
  %51 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %50) #14
  %52 = icmp eq ptr %51, null
  br i1 %52, label %387, label %53

53:                                               ; preds = %49, %40
  %54 = load i16, ptr %5, align 8
  %55 = and i16 %54, 32767
  store i16 %55, ptr %5, align 8
  %56 = lshr i16 %54, 5
  %57 = trunc i16 %56 to i2
  switch i2 %57, label %58 [
    i2 1, label %73
    i2 -1, label %61
  ]

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %60 = load ptr, ptr %59, align 8
  br label %91

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %63 = load i16, ptr %62, align 4
  %64 = zext i16 %63 to i32
  %65 = load ptr, ptr %33, align 4
  %66 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %67 = load ptr, ptr %66, align 8
  %68 = ptrtoint ptr %65 to i32
  %69 = ptrtoint ptr %67 to i32
  %70 = sub i32 %64, %68
  %71 = add i32 %70, %69
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %91, label %73

73:                                               ; preds = %61, %53
  %74 = or i16 %54, -32768
  store i16 %74, ptr %5, align 8
  %75 = and i16 %54, 96
  %76 = icmp eq i16 %75, 32
  br i1 %76, label %77, label %130

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %79 = load i16, ptr %78, align 2
  %80 = trunc i16 %79 to i8
  %81 = and i8 %80, 12
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = and i16 %74, -97
  store i16 %84, ptr %5, align 8
  br label %130

85:                                               ; preds = %77
  %86 = add i8 %80, 12
  %87 = and i8 %86, 12
  %88 = zext i8 %87 to i16
  %89 = and i16 %79, -13
  %90 = or i16 %89, %88
  store i16 %90, ptr %78, align 2
  br label %130

91:                                               ; preds = %61, %58
  %92 = phi ptr [ %60, %58 ], [ %67, %61 ]
  %93 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %94 = load i16, ptr %93, align 4
  %95 = zext i16 %94 to i32
  %96 = getelementptr i8, ptr %92, i32 %95
  %97 = getelementptr inbounds %struct.ipv6hdr, ptr %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.ipv6hdr, ptr %96, i32 0, i32 6
  %99 = load i32, ptr %20, align 8
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #14
  %101 = tail call i32 @__csum_ipv6_magic(ptr noundef %97, ptr noundef %98, i32 noundef %100, i32 noundef 100663296, i32 noundef 0) #14
  %102 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %101) #15, !srcloc !17
  %103 = lshr i32 %102, 16
  %104 = or i32 %103, -65536
  %105 = load i16, ptr %5, align 8
  %106 = and i16 %105, 96
  %107 = icmp eq i16 %106, 64
  br i1 %107, label %108, label %119

108:                                              ; preds = %91
  %109 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %110 = load i32, ptr %109, align 4
  %111 = add i32 %110, %104
  %112 = icmp ult i32 %111, %110
  %113 = zext i1 %112 to i32
  %114 = add i32 %111, %113
  %115 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %114) #15, !srcloc !17
  %116 = icmp ugt i32 %115, -65537
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = or i16 %105, -32768
  store i16 %118, ptr %5, align 8
  br label %130

119:                                              ; preds = %108, %91
  %120 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  store i32 %104, ptr %120, align 4
  %121 = load i32, ptr %20, align 8
  %122 = icmp ult i32 %121, 77
  br i1 %122, label %123, label %130

123:                                              ; preds = %119
  %124 = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %0) #14
  %125 = icmp eq i16 %124, 0
  %126 = load i16, ptr %5, align 8
  %127 = select i1 %125, i16 -32768, i16 0
  %128 = and i16 %126, 32767
  %129 = or i16 %128, %127
  store i16 %129, ptr %5, align 8
  br i1 %125, label %130, label %348

130:                                              ; preds = %123, %119, %117, %85, %83, %73
  %131 = load ptr, ptr %33, align 4
  %132 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %133 = load ptr, ptr %132, align 8
  %134 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %135 = load i16, ptr %134, align 4
  %136 = zext i16 %135 to i32
  %137 = getelementptr i8, ptr %133, i32 %136
  %138 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %139 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4, i32 0, i32 1
  %140 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %141 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 12
  %142 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  %143 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 4
  %144 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 16
  %145 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %146 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 8
  %147 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 14
  %148 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 13
  %149 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 2
  %150 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %151 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 15
  %152 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  br label %153

153:                                              ; preds = %267, %130
  %154 = phi ptr [ %137, %130 ], [ %268, %267 ]
  %155 = phi ptr [ %131, %130 ], [ %269, %267 ]
  %156 = getelementptr inbounds %struct.tcphdr, ptr %155, i32 0, i32 4
  %157 = load i16, ptr %156, align 4
  %158 = lshr i16 %157, 2
  %159 = and i16 %158, 60
  %160 = zext i16 %159 to i32
  %161 = load i16, ptr %155, align 4
  %162 = getelementptr inbounds %struct.tcphdr, ptr %155, i32 0, i32 1
  %163 = load i32, ptr %3, align 8
  %164 = load ptr, ptr %138, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %186, label %166

166:                                              ; preds = %153
  %167 = load ptr, ptr %139, align 4
  %168 = icmp eq ptr %167, @sock_pfree
  br i1 %168, label %169, label %184

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.sock_common, ptr %164, i32 0, i32 4
  %171 = load volatile i8, ptr %170, align 2
  %172 = zext i8 %171 to i32
  %173 = shl nuw i32 1, %172
  %174 = and i32 %173, -4161
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %181, label %176

176:                                              ; preds = %169
  %177 = getelementptr inbounds %struct.sock_common, ptr %164, i32 0, i32 13
  %178 = load volatile i32, ptr %177, align 4
  %179 = and i32 %178, 8388608
  %180 = icmp eq i32 %179, 0
  br label %181

181:                                              ; preds = %176, %169
  %182 = phi i1 [ true, %169 ], [ %180, %176 ]
  %183 = zext i1 %182 to i8
  br label %184

184:                                              ; preds = %181, %166
  %185 = phi i8 [ %183, %181 ], [ 1, %166 ]
  store ptr null, ptr %139, align 4
  store ptr null, ptr %138, align 4
  br label %200

186:                                              ; preds = %153
  %187 = load i16, ptr %162, align 2
  %188 = load ptr, ptr %132, align 8
  %189 = load i16, ptr %134, align 4
  %190 = zext i16 %189 to i32
  %191 = getelementptr i8, ptr %188, i32 %190
  %192 = getelementptr inbounds %struct.ipv6hdr, ptr %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.ipv6hdr, ptr %191, i32 0, i32 6
  %194 = call i16 @llvm.bswap.i16(i16 %187) #14
  %195 = call ptr @__inet6_lookup_established(ptr noundef nonnull @init_net, ptr noundef nonnull @tcp_hashinfo, ptr noundef %192, i16 noundef zeroext %161, ptr noundef %193, i16 noundef zeroext %194, i32 noundef %163, i32 noundef 0) #14
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %200

197:                                              ; preds = %186
  %198 = call ptr @inet6_lookup_listener(ptr noundef nonnull @init_net, ptr noundef nonnull @tcp_hashinfo, ptr noundef %0, i32 noundef %160, ptr noundef %192, i16 noundef zeroext %161, ptr noundef %193, i16 noundef zeroext %194, i32 noundef %163, i32 noundef 0) #14
  %199 = icmp eq ptr %198, null
  br i1 %199, label %343, label %200

200:                                              ; preds = %197, %186, %184
  %201 = phi ptr [ %198, %197 ], [ %164, %184 ], [ %195, %186 ]
  %202 = phi i8 [ 0, %197 ], [ %185, %184 ], [ 1, %186 ]
  %203 = getelementptr inbounds %struct.sock_common, ptr %201, i32 0, i32 4
  %204 = load volatile i8, ptr %203, align 2
  %205 = icmp eq i8 %204, 6
  br i1 %205, label %206, label %210

206:                                              ; preds = %200
  %207 = getelementptr inbounds %struct.tcphdr, ptr %155, i32 0, i32 2
  %208 = getelementptr inbounds %struct.tcphdr, ptr %155, i32 0, i32 3
  %209 = getelementptr i8, ptr %155, i32 13
  br label %401

210:                                              ; preds = %516, %200
  %211 = phi ptr [ %201, %200 ], [ %514, %516 ]
  %212 = phi i8 [ %202, %200 ], [ 0, %516 ]
  %213 = getelementptr inbounds %struct.sock_common, ptr %211, i32 0, i32 4
  %214 = load volatile i8, ptr %213, align 2
  %215 = icmp eq i8 %214, 12
  br i1 %215, label %216, label %270

216:                                              ; preds = %210
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #14
  store i8 0, ptr %2, align 1
  %217 = getelementptr inbounds %struct.sock_common, ptr %211, i32 0, i32 13
  %218 = load ptr, ptr %217, align 8
  %219 = call fastcc zeroext i1 @tcp_checksum_complete(ptr noundef %0)
  br i1 %219, label %220, label %221

220:                                              ; preds = %216
  call fastcc void @reqsk_put(ptr noundef nonnull %211)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #14
  br label %348

221:                                              ; preds = %216
  %222 = getelementptr inbounds %struct.sock_common, ptr %218, i32 0, i32 4
  %223 = load volatile i8, ptr %222, align 2
  %224 = icmp eq i8 %223, 10
  br i1 %224, label %229, label %225, !prof !16

225:                                              ; preds = %221
  %226 = call ptr @reuseport_migrate_sock(ptr noundef %218, ptr noundef nonnull %211, ptr noundef %0) #14
  %227 = icmp eq ptr %226, null
  br i1 %227, label %228, label %240

228:                                              ; preds = %225
  call void @inet_csk_reqsk_queue_drop_and_put(ptr noundef %218, ptr noundef nonnull %211) #14
  br label %267

229:                                              ; preds = %221
  %230 = getelementptr inbounds %struct.sock_common, ptr %218, i32 0, i32 19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %230) #14, !srcloc !13
  %231 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %230, ptr %230, i32 1, ptr elementtype(i32) %230) #14, !srcloc !14
  %232 = extractvalue { i32, i32, i32 } %231, 0
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %238, label %234, !prof !15

234:                                              ; preds = %229
  %235 = add i32 %232, 1
  %236 = or i32 %235, %232
  %237 = icmp sgt i32 %236, -1
  br i1 %237, label %240, label %238, !prof !16

238:                                              ; preds = %234, %229
  %239 = phi i32 [ 2, %229 ], [ 1, %234 ]
  call void @refcount_warn_saturate(ptr noundef %230, i32 noundef %239) #14
  br label %240

240:                                              ; preds = %238, %234, %225
  %241 = phi ptr [ %226, %225 ], [ %218, %234 ], [ %218, %238 ]
  %242 = call i32 @tcp_filter(ptr noundef %241, ptr noundef %0) #14
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %252

244:                                              ; preds = %240
  %245 = load ptr, ptr %33, align 4
  %246 = load ptr, ptr %132, align 8
  %247 = load i16, ptr %134, align 4
  %248 = zext i16 %247 to i32
  %249 = getelementptr i8, ptr %246, i32 %248
  call fastcc void @tcp_v6_fill_cb(ptr noundef %0, ptr noundef %249, ptr noundef %245)
  %250 = call ptr @tcp_check_req(ptr noundef %241, ptr noundef %0, ptr noundef nonnull %211, i1 noundef zeroext false, ptr noundef nonnull %2) #14
  %251 = icmp eq ptr %250, null
  br i1 %251, label %252, label %258

252:                                              ; preds = %244, %240
  %253 = phi ptr [ %245, %244 ], [ %155, %240 ]
  %254 = phi ptr [ %249, %244 ], [ %154, %240 ]
  call fastcc void @reqsk_put(ptr noundef nonnull %211)
  %255 = load i8, ptr %2, align 1, !range !50
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %266, label %257

257:                                              ; preds = %252
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %3, ptr noundef align 8 dereferenceable(24) %142, i32 24, i1 false) #14
  call fastcc void @sock_put(ptr noundef %241)
  br label %267

258:                                              ; preds = %244
  %259 = icmp eq ptr %250, %241
  br i1 %259, label %260, label %261

260:                                              ; preds = %258
  call fastcc void @reqsk_put(ptr noundef nonnull %211)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %3, ptr noundef align 8 dereferenceable(24) %142, i32 24, i1 false) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #14
  br label %270

261:                                              ; preds = %258
  %262 = call i32 @tcp_child_process(ptr noundef %241, ptr noundef nonnull %250, ptr noundef %0) #14
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %261
  call void @tcp_v6_send_reset(ptr noundef nonnull %250, ptr noundef %0)
  br label %266

265:                                              ; preds = %261
  call fastcc void @sock_put(ptr noundef %241)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #14
  br label %522

266:                                              ; preds = %264, %252
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #14
  br label %388

267:                                              ; preds = %257, %228
  %268 = phi ptr [ %254, %257 ], [ %154, %228 ]
  %269 = phi ptr [ %253, %257 ], [ %155, %228 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #14
  br label %153

270:                                              ; preds = %260, %210
  %271 = phi i8 [ 1, %260 ], [ %212, %210 ]
  %272 = phi ptr [ %241, %260 ], [ %211, %210 ]
  %273 = phi ptr [ %249, %260 ], [ %154, %210 ]
  %274 = load volatile i32, ptr @ip6_min_hopcount, align 4
  %275 = icmp sgt i32 %274, 0
  br i1 %275, label %276, label %293, !prof !15

276:                                              ; preds = %270
  %277 = getelementptr inbounds %struct.ipv6hdr, ptr %273, i32 0, i32 4
  %278 = load i8, ptr %277, align 1
  %279 = getelementptr i8, ptr %272, i32 1804
  %280 = load volatile i8, ptr %279, align 4
  %281 = icmp ult i8 %278, %280
  br i1 %281, label %282, label %293

282:                                              ; preds = %276
  %283 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %284 = getelementptr [126 x i32], ptr %283, i32 0, i32 70
  %285 = ptrtoint ptr %284 to i32
  %286 = call i32 @llvm.read_register.i32(metadata !0) #14
  %287 = inttoptr i32 %286 to ptr
  %288 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %287) #9, !srcloc !26
  %289 = add i32 %288, %285
  %290 = inttoptr i32 %289 to ptr
  %291 = load i32, ptr %290, align 4
  %292 = add i32 %291, 1
  store i32 %292, ptr %290, align 4
  br label %388

293:                                              ; preds = %276, %270
  %294 = call fastcc i32 @xfrm6_policy_check(ptr noundef %272, ptr noundef %0)
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %388, label %296

296:                                              ; preds = %293
  %297 = call i32 @tcp_filter(ptr noundef %272, ptr noundef %0) #14
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %388

299:                                              ; preds = %296
  %300 = load ptr, ptr %33, align 4
  %301 = load ptr, ptr %132, align 8
  %302 = load i16, ptr %134, align 4
  %303 = zext i16 %302 to i32
  %304 = getelementptr i8, ptr %301, i32 %303
  call fastcc void @tcp_v6_fill_cb(ptr noundef %0, ptr noundef %304, ptr noundef %300)
  store ptr null, ptr %4, align 8
  %305 = getelementptr inbounds %struct.sock_common, ptr %272, i32 0, i32 4
  %306 = load volatile i8, ptr %305, align 2
  %307 = icmp eq i8 %306, 10
  br i1 %307, label %308, label %310

308:                                              ; preds = %299
  %309 = call i32 @tcp_v6_do_rcv(ptr noundef %272, ptr noundef %0)
  br label %336

310:                                              ; preds = %299
  %311 = tail call ptr @llvm.thread.pointer() #14
  %312 = getelementptr inbounds %struct.thread_info, ptr %311, i32 0, i32 2
  %313 = load i32, ptr %312, align 8
  %314 = getelementptr inbounds %struct.sock_common, ptr %272, i32 0, i32 18
  %315 = load volatile i32, ptr %314, align 8
  %316 = icmp eq i32 %315, %313
  br i1 %316, label %318, label %317, !prof !16

317:                                              ; preds = %310
  store volatile i32 %313, ptr %314, align 8
  br label %318

318:                                              ; preds = %317, %310
  %319 = getelementptr inbounds %struct.sock, ptr %272, i32 0, i32 10
  %320 = load volatile ptr, ptr %319, align 4
  %321 = icmp eq ptr %320, null
  br i1 %321, label %323, label %322

322:                                              ; preds = %318
  call void @__sk_defer_free_flush(ptr noundef %272) #14
  br label %323

323:                                              ; preds = %322, %318
  %324 = getelementptr inbounds %struct.sock, ptr %272, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %324) #14
  call fastcc void @tcp_segs_in(ptr noundef %272, ptr noundef %0)
  %325 = getelementptr inbounds %struct.sock, ptr %272, i32 0, i32 4, i32 1
  %326 = load i32, ptr %325, align 4
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %330

328:                                              ; preds = %323
  %329 = call i32 @tcp_v6_do_rcv(ptr noundef %272, ptr noundef %0)
  br label %332

330:                                              ; preds = %323
  %331 = call zeroext i1 @tcp_add_backlog(ptr noundef %272, ptr noundef %0) #14
  br i1 %331, label %388, label %332

332:                                              ; preds = %330, %328
  %333 = phi i32 [ 0, %330 ], [ %329, %328 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !31
  %334 = load i16, ptr %324, align 4
  %335 = add i16 %334, 1
  store i16 %335, ptr %324, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !32
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !33
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !34
  br label %336

336:                                              ; preds = %332, %308
  %337 = phi i32 [ %309, %308 ], [ %333, %332 ]
  %338 = icmp eq i8 %271, 0
  br i1 %338, label %340, label %339

339:                                              ; preds = %336
  call fastcc void @sock_put(ptr noundef %272)
  br label %340

340:                                              ; preds = %339, %336
  %341 = icmp ne i32 %337, 0
  %342 = sext i1 %341 to i32
  br label %522

343:                                              ; preds = %197
  %344 = call fastcc i32 @xfrm6_policy_check(ptr noundef null, ptr noundef %0)
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %387, label %346

346:                                              ; preds = %343
  call fastcc void @tcp_v6_fill_cb(ptr noundef %0, ptr noundef %154, ptr noundef %155)
  %347 = call fastcc zeroext i1 @tcp_checksum_complete(ptr noundef %0)
  br i1 %347, label %348, label %386

348:                                              ; preds = %496, %346, %220, %123
  %349 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tcp_bad_csum, i32 0, i32 1), align 4
  %350 = icmp sgt i32 %349, 0
  br i1 %350, label %351, label %364

351:                                              ; preds = %348
  %352 = tail call ptr @llvm.thread.pointer() #14
  %353 = getelementptr inbounds %struct.thread_info, ptr %352, i32 0, i32 2
  %354 = load i32, ptr %353, align 8
  %355 = lshr i32 %354, 5
  %356 = getelementptr i32, ptr @__cpu_online_mask, i32 %355
  %357 = load volatile i32, ptr %356, align 4
  %358 = and i32 %354, 31
  %359 = shl nuw i32 1, %358
  %360 = and i32 %359, %357
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %364, label %362

362:                                              ; preds = %351
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !39
  %363 = call i32 @__traceiter_tcp_bad_csum(ptr noundef null, ptr noundef %0) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !40
  br label %364

364:                                              ; preds = %362, %351, %348
  %365 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %366 = getelementptr [16 x i32], ptr %365, i32 0, i32 15
  %367 = ptrtoint ptr %366 to i32
  %368 = call i32 @llvm.read_register.i32(metadata !0) #14
  %369 = inttoptr i32 %368 to ptr
  %370 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %369) #9, !srcloc !26
  %371 = add i32 %370, %367
  %372 = inttoptr i32 %371 to ptr
  %373 = load i32, ptr %372, align 4
  %374 = add i32 %373, 1
  store i32 %374, ptr %372, align 4
  br label %375

375:                                              ; preds = %364, %32
  %376 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %377 = getelementptr [16 x i32], ptr %376, i32 0, i32 13
  %378 = ptrtoint ptr %377 to i32
  %379 = call i32 @llvm.read_register.i32(metadata !0) #14
  %380 = inttoptr i32 %379 to ptr
  %381 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %380) #9, !srcloc !26
  %382 = add i32 %381, %378
  %383 = inttoptr i32 %382 to ptr
  %384 = load i32, ptr %383, align 4
  %385 = add i32 %384, 1
  store i32 %385, ptr %383, align 4
  br label %387

386:                                              ; preds = %346
  call void @tcp_v6_send_reset(ptr noundef null, ptr noundef %0)
  br label %387

387:                                              ; preds = %521, %520, %497, %436, %400, %388, %386, %375, %343, %49, %47, %28, %26, %1
  call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #14
  br label %522

388:                                              ; preds = %330, %296, %293, %282, %266
  %389 = phi i8 [ %271, %282 ], [ %271, %293 ], [ %271, %330 ], [ %271, %296 ], [ 1, %266 ]
  %390 = phi ptr [ %272, %282 ], [ %272, %293 ], [ %272, %330 ], [ %272, %296 ], [ %241, %266 ]
  %391 = load ptr, ptr %150, align 4
  %392 = getelementptr inbounds %struct.skb_shared_info, ptr %391, i32 0, i32 5
  %393 = load i16, ptr %392, align 2
  %394 = icmp eq i16 %393, 0
  %395 = select i1 %394, i16 1, i16 %393
  %396 = zext i16 %395 to i32
  %397 = getelementptr inbounds %struct.sock, ptr %390, i32 0, i32 5
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %397) #14, !srcloc !13
  %398 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %397, ptr %397, i32 %396, ptr elementtype(i32) %397) #14, !srcloc !29
  %399 = icmp eq i8 %389, 0
  br i1 %399, label %387, label %400

400:                                              ; preds = %388
  call fastcc void @sock_put(ptr noundef %390)
  br label %387

401:                                              ; preds = %516, %206
  %402 = phi ptr [ %201, %206 ], [ %514, %516 ]
  %403 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 23), align 4
  %404 = and i8 %403, 1
  %405 = icmp eq i8 %404, 0
  br i1 %405, label %406, label %423

406:                                              ; preds = %401
  %407 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 13), align 16
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %409, label %413

409:                                              ; preds = %406
  %410 = load i8, ptr %141, align 1
  %411 = and i8 %410, 1
  %412 = icmp eq i8 %411, 0
  br i1 %412, label %437, label %413

413:                                              ; preds = %409, %406
  %414 = load i32, ptr %140, align 8
  %415 = and i32 %414, -2
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %433, label %417

417:                                              ; preds = %413
  %418 = inttoptr i32 %415 to ptr
  %419 = getelementptr inbounds %struct.dst_entry, ptr %418, i32 0, i32 7
  %420 = load i16, ptr %419, align 4
  %421 = and i16 %420, 4
  %422 = icmp eq i16 %421, 0
  br i1 %422, label %433, label %437

423:                                              ; preds = %401
  %424 = load i32, ptr %140, align 8
  %425 = and i32 %424, -2
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %433, label %427

427:                                              ; preds = %423
  %428 = inttoptr i32 %425 to ptr
  %429 = getelementptr inbounds %struct.dst_entry, ptr %428, i32 0, i32 7
  %430 = load i16, ptr %429, align 4
  %431 = and i16 %430, 4
  %432 = icmp eq i16 %431, 0
  br i1 %432, label %433, label %437

433:                                              ; preds = %427, %423, %417, %413
  %434 = call i32 @__xfrm_policy_check(ptr noundef null, i32 noundef 0, ptr noundef %0, i16 noundef zeroext 10) #14
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %436, label %437

436:                                              ; preds = %433
  call void @inet_twsk_put(ptr noundef nonnull %402) #14
  br label %387

437:                                              ; preds = %433, %427, %417, %409
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %142, ptr noundef align 8 dereferenceable(24) %3, i32 24, i1 false) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !51
  %438 = load i32, ptr %207, align 4
  %439 = call i32 @llvm.bswap.i32(i32 %438) #14
  store i32 %439, ptr %3, align 8
  %440 = load i16, ptr %156, align 4
  %441 = lshr i16 %440, 9
  %442 = and i16 %441, 1
  %443 = zext i16 %442 to i32
  %444 = lshr i16 %440, 8
  %445 = and i16 %444, 1
  %446 = zext i16 %445 to i32
  %447 = load i32, ptr %20, align 8
  %448 = lshr i16 %440, 2
  %449 = and i16 %448, 60
  %450 = zext i16 %449 to i32
  %451 = add i32 %447, %439
  %452 = add i32 %451, %443
  %453 = add i32 %452, %446
  %454 = sub i32 %453, %450
  store i32 %454, ptr %143, align 4
  %455 = load i32, ptr %208, align 4
  %456 = call i32 @llvm.bswap.i32(i32 %455) #14
  store i32 %456, ptr %144, align 8
  %457 = load i8, ptr %209, align 1
  store i8 %457, ptr %145, align 4
  store i32 0, ptr %146, align 8
  %458 = load i16, ptr %154, align 2
  %459 = call i16 @llvm.bswap.i16(i16 %458) #14
  %460 = lshr i16 %459, 4
  %461 = trunc i16 %460 to i8
  store i8 %461, ptr %147, align 2
  store i8 0, ptr %148, align 1
  %462 = load i64, ptr %149, align 8
  %463 = icmp eq i64 %462, 0
  br i1 %463, label %464, label %470

464:                                              ; preds = %437
  %465 = load ptr, ptr %150, align 4
  %466 = getelementptr inbounds %struct.skb_shared_info, ptr %465, i32 0, i32 7
  %467 = load i64, ptr %466, align 8
  %468 = icmp eq i64 %467, 0
  %469 = select i1 %468, i8 0, i8 4
  br label %470

470:                                              ; preds = %464, %437
  %471 = phi i8 [ 4, %437 ], [ %469, %464 ]
  %472 = load i8, ptr %151, align 1
  %473 = and i8 %472, -5
  %474 = or i8 %473, %471
  store i8 %474, ptr %151, align 1
  %475 = load i16, ptr %5, align 8
  %476 = lshr i16 %475, 5
  %477 = and i16 %476, 3
  %478 = icmp ne i16 %477, 1
  %479 = icmp sgt i16 %475, -1
  %480 = select i1 %478, i1 %479, i1 false
  br i1 %480, label %481, label %497

481:                                              ; preds = %470
  %482 = icmp eq i16 %477, 3
  br i1 %482, label %483, label %493

483:                                              ; preds = %481
  %484 = load i16, ptr %152, align 4
  %485 = zext i16 %484 to i32
  %486 = load ptr, ptr %33, align 4
  %487 = load ptr, ptr %132, align 8
  %488 = ptrtoint ptr %486 to i32
  %489 = ptrtoint ptr %487 to i32
  %490 = sub i32 %485, %488
  %491 = add i32 %490, %489
  %492 = icmp slt i32 %491, 0
  br i1 %492, label %493, label %497

493:                                              ; preds = %483, %481
  %494 = call zeroext i16 @__skb_checksum_complete(ptr noundef %0) #14
  %495 = icmp eq i16 %494, 0
  br i1 %495, label %497, label %496

496:                                              ; preds = %493
  call void @inet_twsk_put(ptr noundef nonnull %402) #14
  br label %348

497:                                              ; preds = %493, %483, %470
  %498 = call i32 @tcp_timewait_state_process(ptr noundef nonnull %402, ptr noundef %0, ptr noundef %155) #14
  switch i32 %498, label %387 [
    i32 3, label %499
    i32 2, label %520
    i32 1, label %521
  ]

499:                                              ; preds = %497
  %500 = load i16, ptr %156, align 4
  %501 = lshr i16 %500, 2
  %502 = and i16 %501, 60
  %503 = zext i16 %502 to i32
  %504 = load ptr, ptr %132, align 8
  %505 = load i16, ptr %134, align 4
  %506 = zext i16 %505 to i32
  %507 = getelementptr i8, ptr %504, i32 %506
  %508 = getelementptr inbounds %struct.ipv6hdr, ptr %507, i32 0, i32 5
  %509 = load i16, ptr %155, align 4
  %510 = getelementptr inbounds %struct.ipv6hdr, ptr %507, i32 0, i32 6
  %511 = load i16, ptr %162, align 2
  %512 = call i16 @llvm.bswap.i16(i16 %511)
  %513 = load i32, ptr %142, align 8
  %514 = call ptr @inet6_lookup_listener(ptr noundef nonnull @init_net, ptr noundef nonnull @tcp_hashinfo, ptr noundef %0, i32 noundef %503, ptr noundef %508, i16 noundef zeroext %509, ptr noundef %510, i16 noundef zeroext %512, i32 noundef %513, i32 noundef 0) #14
  %515 = icmp eq ptr %514, null
  br i1 %515, label %520, label %516

516:                                              ; preds = %499
  call void @inet_twsk_deschedule_put(ptr noundef nonnull %402) #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %3, ptr noundef align 8 dereferenceable(24) %142, i32 24, i1 false) #14
  %517 = getelementptr inbounds %struct.sock_common, ptr %514, i32 0, i32 4
  %518 = load volatile i8, ptr %517, align 2
  %519 = icmp eq i8 %518, 6
  br i1 %519, label %401, label %210

520:                                              ; preds = %499, %497
  call fastcc void @tcp_v6_timewait_ack(ptr noundef nonnull %402, ptr noundef %0)
  br label %387

521:                                              ; preds = %497
  call void @tcp_v6_send_reset(ptr noundef nonnull %402, ptr noundef %0)
  call void @inet_twsk_deschedule_put(ptr noundef nonnull %402) #14
  br label %387

522:                                              ; preds = %387, %340, %265
  %523 = phi i32 [ 0, %387 ], [ %342, %340 ], [ 0, %265 ]
  ret i32 %523
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tcp_v6_err(ptr noundef %0, ptr nocapture noundef readnone %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5) #1 {
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 %4
  %11 = getelementptr inbounds %struct.anon.43, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 0, ptr %7, align 4, !annotation !30
  %12 = getelementptr inbounds %struct.ipv6hdr, ptr %9, i32 0, i32 6
  %13 = getelementptr inbounds %struct.tcphdr, ptr %10, i32 0, i32 1
  %14 = load i16, ptr %13, align 2
  %15 = getelementptr inbounds %struct.ipv6hdr, ptr %9, i32 0, i32 5
  %16 = load i16, ptr %10, align 4
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %18 = load ptr, ptr %11, align 8
  %19 = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 17
  %20 = load i32, ptr %19, align 4
  %21 = tail call ptr @__inet6_lookup_established(ptr noundef nonnull @init_net, ptr noundef nonnull @tcp_hashinfo, ptr noundef %12, i16 noundef zeroext %14, ptr noundef %15, i16 noundef zeroext %17, i32 noundef %20, i32 noundef 0) #14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %44

23:                                               ; preds = %6
  %24 = load ptr, ptr %11, align 8
  %25 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 69
  %26 = load volatile ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28, !prof !15

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.inet6_dev, ptr %26, i32 0, i32 33, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr [6 x %struct.atomic_t], ptr %30, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #14, !srcloc !13
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #14, !srcloc !29
  br label %33

33:                                               ; preds = %28, %23
  %34 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 10), align 64
  %35 = getelementptr [6 x i32], ptr %34, i32 0, i32 2
  %36 = ptrtoint ptr %35 to i32
  %37 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %38 = inttoptr i32 %37 to ptr
  %39 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %38) #9, !srcloc !26
  %40 = add i32 %39, %36
  %41 = inttoptr i32 %40 to ptr
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 4
  br label %224

44:                                               ; preds = %6
  %45 = getelementptr inbounds %struct.sock_common, ptr %21, i32 0, i32 4
  %46 = load volatile i8, ptr %45, align 2
  %47 = icmp eq i8 %46, 6
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  tail call void @inet_twsk_put(ptr noundef nonnull %21) #14
  br label %224

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.tcphdr, ptr %10, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %53 = call i32 @icmpv6_err_convert(i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef nonnull %7) #14
  %54 = load volatile i8, ptr %45, align 2
  %55 = icmp eq i8 %54, 12
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = icmp ne i32 %53, 0
  call void @tcp_req_err(ptr noundef nonnull %21, i32 noundef %52, i1 noundef zeroext %57) #14
  br label %224

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.sock, ptr %21, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %59) #14
  %60 = getelementptr inbounds %struct.sock, ptr %21, i32 0, i32 4, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = icmp ne i32 %61, 0
  %63 = icmp ne i8 %2, 2
  %64 = and i1 %63, %62
  br i1 %64, label %65, label %76

65:                                               ; preds = %58
  %66 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %67 = getelementptr [126 x i32], ptr %66, i32 0, i32 9
  %68 = ptrtoint ptr %67 to i32
  %69 = call i32 @llvm.read_register.i32(metadata !0) #14
  %70 = inttoptr i32 %69 to ptr
  %71 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %70) #9, !srcloc !26
  %72 = add i32 %71, %68
  %73 = inttoptr i32 %72 to ptr
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, 1
  store i32 %75, ptr %73, align 4
  br label %76

76:                                               ; preds = %65, %58
  %77 = load volatile i8, ptr %45, align 2
  %78 = icmp eq i8 %77, 7
  br i1 %78, label %213, label %79

79:                                               ; preds = %76
  %80 = load volatile i32, ptr @ip6_min_hopcount, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %105, !prof !15

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %86 = load i16, ptr %85, align 4
  %87 = zext i16 %86 to i32
  %88 = getelementptr i8, ptr %84, i32 %87
  %89 = getelementptr inbounds %struct.ipv6hdr, ptr %88, i32 0, i32 4
  %90 = load i8, ptr %89, align 1
  %91 = getelementptr i8, ptr %21, i32 1804
  %92 = load volatile i8, ptr %91, align 4
  %93 = icmp ult i8 %90, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %82
  %95 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %96 = getelementptr [126 x i32], ptr %95, i32 0, i32 70
  %97 = ptrtoint ptr %96 to i32
  %98 = call i32 @llvm.read_register.i32(metadata !0) #14
  %99 = inttoptr i32 %98 to ptr
  %100 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %99) #9, !srcloc !26
  %101 = add i32 %100, %97
  %102 = inttoptr i32 %101 to ptr
  %103 = load i32, ptr %102, align 4
  %104 = add i32 %103, 1
  store i32 %104, ptr %102, align 4
  br label %213

105:                                              ; preds = %82, %79
  %106 = getelementptr inbounds %struct.tcp_sock, ptr %21, i32 0, i32 116
  %107 = load volatile ptr, ptr %106, align 8
  %108 = icmp eq ptr %107, null
  %109 = getelementptr inbounds %struct.tcp_request_sock, ptr %107, i32 0, i32 7
  %110 = getelementptr inbounds %struct.tcp_sock, ptr %21, i32 0, i32 16
  %111 = select i1 %108, ptr %110, ptr %109
  %112 = load i32, ptr %111, align 4
  %113 = load volatile i8, ptr %45, align 2
  %114 = icmp eq i8 %113, 10
  br i1 %114, label %132, label %115

115:                                              ; preds = %105
  %116 = getelementptr inbounds %struct.tcp_sock, ptr %21, i32 0, i32 10
  %117 = load i32, ptr %116, align 4
  %118 = sub i32 %117, %112
  %119 = sub i32 %52, %112
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %115
  %122 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %123 = getelementptr [126 x i32], ptr %122, i32 0, i32 8
  %124 = ptrtoint ptr %123 to i32
  %125 = call i32 @llvm.read_register.i32(metadata !0) #14
  %126 = inttoptr i32 %125 to ptr
  %127 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %126) #9, !srcloc !26
  %128 = add i32 %127, %124
  %129 = inttoptr i32 %128 to ptr
  %130 = load i32, ptr %129, align 4
  %131 = add i32 %130, 1
  store i32 %131, ptr %129, align 4
  br label %213

132:                                              ; preds = %115, %105
  switch i8 %2, label %175 [
    i8 -119, label %133
    i8 2, label %146
  ]

133:                                              ; preds = %132
  %134 = load i32, ptr %60, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %213

136:                                              ; preds = %133
  %137 = getelementptr i8, ptr %21, i32 1812
  %138 = load i32, ptr %137, align 4
  %139 = call ptr @__sk_dst_check(ptr noundef nonnull %21, i32 noundef %138) #14
  %140 = icmp eq ptr %139, null
  br i1 %140, label %213, label %141

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.dst_entry, ptr %139, i32 0, i32 1
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.dst_ops, ptr %143, i32 0, i32 12
  %145 = load ptr, ptr %144, align 16
  call void %145(ptr noundef nonnull %139, ptr noundef nonnull %21, ptr noundef %0) #14
  br label %213

146:                                              ; preds = %132
  %147 = call i32 @llvm.bswap.i32(i32 %5)
  %148 = load volatile i8, ptr %45, align 2
  %149 = icmp eq i8 %148, 10
  br i1 %149, label %213, label %150

150:                                              ; preds = %146
  %151 = call fastcc zeroext i1 @ip6_sk_accept_pmtu(ptr noundef nonnull %21)
  %152 = xor i1 %151, true
  %153 = icmp ult i32 %147, 1280
  %154 = select i1 %152, i1 true, i1 %153
  br i1 %154, label %213, label %155

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.tcp_sock, ptr %21, i32 0, i32 114
  store volatile i32 %147, ptr %156, align 8
  %157 = load i32, ptr %60, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  call void @tcp_v6_mtu_reduced(ptr noundef nonnull %21)
  br label %213

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.sock, ptr %21, i32 0, i32 24
  %162 = call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %161) #14
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %213

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.sock_common, ptr %21, i32 0, i32 19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %165) #14, !srcloc !13
  %166 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %165, ptr %165, i32 1, ptr elementtype(i32) %165) #14, !srcloc !14
  %167 = extractvalue { i32, i32, i32 } %166, 0
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %173, label %169, !prof !15

169:                                              ; preds = %164
  %170 = add i32 %167, 1
  %171 = or i32 %170, %167
  %172 = icmp sgt i32 %171, -1
  br i1 %172, label %213, label %173, !prof !16

173:                                              ; preds = %169, %164
  %174 = phi i32 [ 2, %164 ], [ 1, %169 ]
  call void @refcount_warn_saturate(ptr noundef %165, i32 noundef %174) #14
  br label %213

175:                                              ; preds = %132
  %176 = load volatile i8, ptr %45, align 2
  switch i8 %176, label %193 [
    i8 2, label %177
    i8 3, label %177
    i8 10, label %199
  ]

177:                                              ; preds = %175, %175
  br i1 %108, label %182, label %178

178:                                              ; preds = %177
  %179 = getelementptr inbounds %struct.request_sock, ptr %107, i32 0, i32 8
  %180 = load ptr, ptr %179, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %199, label %182

182:                                              ; preds = %178, %177
  %183 = load i32, ptr %7, align 4
  %184 = load i16, ptr %13, align 2
  %185 = call i32 @llvm.bswap.i32(i32 %5)
  call void @ipv6_icmp_error(ptr noundef nonnull %21, ptr noundef %0, i32 noundef %183, i16 noundef zeroext %184, i32 noundef %185, ptr noundef %10) #14
  %186 = load i32, ptr %60, align 4
  %187 = icmp eq i32 %186, 0
  %188 = load i32, ptr %7, align 4
  br i1 %187, label %189, label %191

189:                                              ; preds = %182
  %190 = getelementptr inbounds %struct.sock, ptr %21, i32 0, i32 51
  store i32 %188, ptr %190, align 4
  call void @sk_error_report(ptr noundef nonnull %21) #14
  call void @tcp_done(ptr noundef nonnull %21) #14
  br label %213

191:                                              ; preds = %182
  %192 = getelementptr inbounds %struct.sock, ptr %21, i32 0, i32 52
  store i32 %188, ptr %192, align 8
  br label %213

193:                                              ; preds = %175
  %194 = icmp eq i8 %2, 1
  %195 = and i1 %194, %108
  %196 = icmp eq i8 %3, 0
  %197 = and i1 %196, %195
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  call void @tcp_ld_RTO_revert(ptr noundef nonnull %21, i32 noundef %52) #14
  br label %199

199:                                              ; preds = %198, %193, %178, %175
  %200 = load i32, ptr %60, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %199
  %203 = getelementptr i8, ptr %21, i32 1802
  %204 = load i16, ptr %203, align 2
  %205 = and i16 %204, 1
  %206 = icmp eq i16 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %202
  %208 = load i32, ptr %7, align 4
  %209 = getelementptr inbounds %struct.sock, ptr %21, i32 0, i32 51
  store i32 %208, ptr %209, align 4
  call void @sk_error_report(ptr noundef nonnull %21) #14
  br label %213

210:                                              ; preds = %202, %199
  %211 = load i32, ptr %7, align 4
  %212 = getelementptr inbounds %struct.sock, ptr %21, i32 0, i32 52
  store i32 %211, ptr %212, align 8
  br label %213

213:                                              ; preds = %210, %207, %191, %189, %173, %169, %160, %159, %150, %146, %141, %136, %133, %121, %94, %76
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !31
  %214 = load i16, ptr %59, align 4
  %215 = add i16 %214, 1
  store i16 %215, ptr %59, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !32
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !33
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !34
  %216 = getelementptr inbounds %struct.sock_common, ptr %21, i32 0, i32 19
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !35
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %216) #14, !srcloc !13
  %217 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %216, ptr %216, i32 1, ptr elementtype(i32) %216) #14, !srcloc !36
  %218 = extractvalue { i32, i32, i32 } %217, 0
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %223, label %220

220:                                              ; preds = %213
  %221 = icmp sgt i32 %218, 0
  br i1 %221, label %224, label %222, !prof !16

222:                                              ; preds = %220
  call void @refcount_warn_saturate(ptr noundef %216, i32 noundef 3) #14
  br label %224

223:                                              ; preds = %213
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !37
  call void @sk_free(ptr noundef nonnull %21) #14
  br label %224

224:                                              ; preds = %223, %222, %220, %56, %48, %33
  %225 = phi i32 [ 0, %48 ], [ 0, %56 ], [ -2, %33 ], [ 0, %220 ], [ 0, %222 ], [ 0, %223 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  ret i32 %225
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__inet6_lookup_established(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_edemux(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @reqsk_put(ptr noundef %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !35
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #14, !srcloc !13
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #14, !srcloc !36
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %39, label %8, !prof !16

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #14
  br label %39

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !37
  %10 = load volatile i32, ptr %2, align 4
  %11 = icmp ne i32 %10, 0
  %12 = load i1, ptr @reqsk_free.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !15

15:                                               ; preds = %9
  store i1 true, ptr @reqsk_free.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 126, i32 noundef 9, ptr noundef null) #14
  br label %16

16:                                               ; preds = %15, %9
  %17 = getelementptr inbounds %struct.request_sock, ptr %0, i32 0, i32 7
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.request_sock_ops, ptr %18, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  tail call void %20(ptr noundef %0) #14
  %21 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.sock_common, ptr %22, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !35
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #14, !srcloc !13
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #14, !srcloc !36
  %27 = extractvalue { i32, i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = icmp sgt i32 %27, 0
  br i1 %30, label %33, label %31, !prof !16

31:                                               ; preds = %29
  tail call void @refcount_warn_saturate(ptr noundef %25, i32 noundef 3) #14
  br label %33

32:                                               ; preds = %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !37
  tail call void @sk_free(ptr noundef nonnull %22) #14
  br label %33

33:                                               ; preds = %32, %31, %29, %16
  %34 = getelementptr inbounds %struct.request_sock, ptr %0, i32 0, i32 9
  %35 = load ptr, ptr %34, align 8
  tail call void @kfree(ptr noundef %35) #14
  %36 = load ptr, ptr %17, align 8
  %37 = getelementptr inbounds %struct.request_sock_ops, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  tail call void @kmem_cache_free(ptr noundef %38, ptr noundef %0) #14
  br label %39

39:                                               ; preds = %33, %8, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @reuseport_migrate_sock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_csk_reqsk_queue_drop_and_put(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_filter(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_v6_fill_cb(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %5, ptr noundef align 8 dereferenceable(24) %4, i32 24, i1 false)
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !51
  %6 = getelementptr inbounds %struct.tcphdr, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  store i32 %8, ptr %4, align 8
  %9 = getelementptr inbounds %struct.tcphdr, ptr %2, i32 0, i32 4
  %10 = load i16, ptr %9, align 4
  %11 = lshr i16 %10, 9
  %12 = and i16 %11, 1
  %13 = zext i16 %12 to i32
  %14 = lshr i16 %10, 8
  %15 = and i16 %14, 1
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %18 = load i32, ptr %17, align 8
  %19 = lshr i16 %10, 2
  %20 = and i16 %19, 60
  %21 = zext i16 %20 to i32
  %22 = add i32 %18, %8
  %23 = add i32 %22, %13
  %24 = add i32 %23, %16
  %25 = sub i32 %24, %21
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 4
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.tcphdr, ptr %2, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 16
  store i32 %29, ptr %30, align 8
  %31 = getelementptr i8, ptr %2, i32 13
  %32 = load i8, ptr %31, align 1
  %33 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  store i8 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 8
  store i32 0, ptr %34, align 8
  %35 = load i16, ptr %1, align 2
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #14
  %37 = lshr i16 %36, 4
  %38 = trunc i16 %37 to i8
  %39 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 14
  store i8 %38, ptr %39, align 2
  %40 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 13
  store i8 0, ptr %40, align 1
  %41 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 2
  %42 = load i64, ptr %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.skb_shared_info, ptr %46, i32 0, i32 7
  %48 = load i64, ptr %47, align 8
  %49 = icmp eq i64 %48, 0
  %50 = select i1 %49, i8 0, i8 4
  br label %51

51:                                               ; preds = %44, %3
  %52 = phi i8 [ 4, %3 ], [ %50, %44 ]
  %53 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 15
  %54 = load i8, ptr %53, align 1
  %55 = and i8 %54, -5
  %56 = or i8 %55, %52
  store i8 %56, ptr %53, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcp_check_req(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xfrm6_policy_check(ptr noundef %0, ptr noundef %1) unnamed_addr #10 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 18
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @__xfrm_policy_check(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %1, i16 noundef zeroext 10) #14
  br label %52

10:                                               ; preds = %4, %2
  %11 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 23), align 4
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  %15 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 13), align 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 12
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %52, label %22

22:                                               ; preds = %17, %14
  %23 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, -2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = inttoptr i32 %25 to ptr
  %29 = getelementptr inbounds %struct.dst_entry, ptr %28, i32 0, i32 7
  %30 = load i16, ptr %29, align 4
  %31 = and i16 %30, 4
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %27, %22
  %34 = tail call i32 @__xfrm_policy_check(ptr noundef %0, i32 noundef 0, ptr noundef %1, i16 noundef zeroext 10) #14
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  br label %52

37:                                               ; preds = %10
  %38 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, -2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = inttoptr i32 %40 to ptr
  %44 = getelementptr inbounds %struct.dst_entry, ptr %43, i32 0, i32 7
  %45 = load i16, ptr %44, align 4
  %46 = and i16 %45, 4
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42, %37
  %49 = tail call i32 @__xfrm_policy_check(ptr noundef %0, i32 noundef 0, ptr noundef %1, i16 noundef zeroext 10) #14
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  br label %52

52:                                               ; preds = %48, %42, %33, %27, %17, %8
  %53 = phi i32 [ %9, %8 ], [ 1, %27 ], [ 1, %17 ], [ %36, %33 ], [ 1, %42 ], [ %51, %48 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: inlinehint nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_segs_in(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 5
  %6 = load i16, ptr %5, align 2
  %7 = icmp eq i16 %6, 0
  %8 = select i1 %7, i16 1, i16 %6
  %9 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 8
  %11 = zext i16 %8 to i32
  %12 = add i32 %10, %11
  store volatile i32 %12, ptr %9, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = getelementptr i8, ptr %16, i32 %19
  %21 = getelementptr inbounds %struct.tcphdr, ptr %20, i32 0, i32 4
  %22 = load i16, ptr %21, align 4
  %23 = lshr i16 %22, 2
  %24 = and i16 %23, 60
  %25 = zext i16 %24 to i32
  %26 = icmp ugt i32 %14, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, %11
  store volatile i32 %30, ptr %28, align 4
  br label %31

31:                                               ; preds = %27, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tcp_add_backlog(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_twsk_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_timewait_state_process(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet6_lookup_listener(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_twsk_deschedule_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_v6_timewait_ack(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 21
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 18
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.tcp_timewait_sock, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.inet_timewait_sock, ptr %0, i32 0, i32 3
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = lshr i32 %8, %11
  %13 = tail call i64 @ktime_get() #14
  %14 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %13) #15, !srcloc !9
  %15 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %13, i64 %14, i32 0) #15, !srcloc !10
  %16 = extractvalue { i64, i32 } %15, 0
  %17 = lshr i64 %16, 18
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds %struct.tcp_timewait_sock, ptr %0, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %18
  %22 = getelementptr inbounds %struct.tcp_timewait_sock, ptr %0, i32 0, i32 3
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.inet_timewait_sock, ptr %0, i32 0, i32 5
  %27 = load i32, ptr %26, align 8
  %28 = lshr i32 %27, 24
  %29 = trunc i32 %28 to i8
  %30 = lshr i32 %27, 2
  %31 = and i32 %30, 1048575
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %33 = getelementptr inbounds %struct.inet_timewait_sock, ptr %0, i32 0, i32 7
  %34 = load i32, ptr %33, align 8
  tail call fastcc void @tcp_v6_send_response(ptr noundef %0, ptr noundef %1, i32 noundef %4, i32 noundef %6, i32 noundef %12, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef 0, i8 noundef zeroext %29, i32 noundef %32, i32 noundef %34) #14
  tail call void @inet_twsk_put(ptr noundef %0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_pfree(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_policy_check(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sk_defer_free_flush(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icmpv6_err_convert(i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_req_err(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__sk_dst_check(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @ip6_sk_accept_pmtu(ptr noundef %0) unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %3 = load volatile i8, ptr %2, align 2
  %4 = zext i8 %3 to i32
  %5 = shl nuw i32 1, %4
  %6 = and i32 %5, -4161
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi ptr [ %10, %8 ], [ null, %1 ]
  %13 = getelementptr inbounds %struct.ipv6_pinfo, ptr %12, i32 0, i32 9
  %14 = load i16, ptr %13, align 2
  %15 = and i16 %14, 56
  %16 = icmp eq i16 %15, 32
  br i1 %16, label %32, label %17

17:                                               ; preds = %11
  %18 = load volatile i8, ptr %2, align 2
  %19 = zext i8 %18 to i32
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, -4161
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8
  br label %26

26:                                               ; preds = %23, %17
  %27 = phi ptr [ %25, %23 ], [ null, %17 ]
  %28 = getelementptr inbounds %struct.ipv6_pinfo, ptr %27, i32 0, i32 9
  %29 = load i16, ptr %28, align 2
  %30 = and i16 %29, 56
  %31 = icmp ne i16 %30, 40
  br label %32

32:                                               ; preds = %26, %11
  %33 = phi i1 [ false, %11 ], [ %31, %26 ]
  ret i1 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_icmp_error(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_ld_RTO_revert(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tcpv6_net_init(ptr noundef %0) #4 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 26
  %3 = tail call i32 @inet_ctl_sock_create(ptr noundef %2, i16 noundef zeroext 10, i16 noundef zeroext 3, i8 noundef zeroext 6, ptr noundef %0) #14
  ret i32 %3
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tcpv6_net_exit(ptr nocapture noundef readonly %0) #13 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 26
  %3 = load ptr, ptr %2, align 16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 71
  %7 = load ptr, ptr %6, align 8
  tail call void @sock_release(ptr noundef %7) #14
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tcpv6_net_exit_batch(ptr nocapture noundef readnone %0) #13 section ".ref.text" {
  tail call void @inet_twsk_purge(ptr noundef nonnull @tcp_hashinfo, i32 noundef 10) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_ctl_sock_create(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_twsk_purge(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inlinehint nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind }
attributes #15 = { nounwind readnone }

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
!9 = !{i64 562066, i64 562093}
!10 = !{i64 562761, i64 562788, i64 562821, i64 562842, i64 562869, i64 562895}
!11 = !{i64 2157688680}
!12 = !{i64 2157688834}
!13 = !{i64 697897, i64 2148187868, i64 2148187894, i64 2148187941, i64 2148187963, i64 2148187991, i64 2148188011}
!14 = !{i64 2148200741, i64 2148200773, i64 2148200802, i64 2148200836, i64 2148200867, i64 2148200890}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 5754519}
!18 = !{i64 2149102686}
!19 = !{i64 2149102903}
!20 = !{i64 2148198790}
!21 = !{i64 684466, i64 684491, i64 684513, i64 684529, i64 684541, i64 684561, i64 684585, i64 684601, i64 684613}
!22 = !{i64 2148198916}
!23 = !{i64 2157813856}
!24 = !{i64 2157063938}
!25 = !{i64 2148659418}
!26 = !{i64 622275}
!27 = !{i64 2149440206}
!28 = !{i64 2149440507}
!29 = !{i64 2148199283, i64 2148199309, i64 2148199338, i64 2148199372, i64 2148199403, i64 2148199426}
!30 = !{!"auto-init"}
!31 = !{i64 2148984331}
!32 = !{i64 2148980155}
!33 = !{i64 2148980230, i64 2148980257, i64 2148980304, i64 2148980326, i64 2148980354, i64 2148980374}
!34 = !{i64 2149007334}
!35 = !{i64 2148300963}
!36 = !{i64 2148203098, i64 2148203130, i64 2148203159, i64 2148203193, i64 2148203224, i64 2148203247}
!37 = !{i64 2149052319}
!38 = !{i64 2148201640, i64 2148201666, i64 2148201695, i64 2148201729, i64 2148201760, i64 2148201783}
!39 = !{i64 2157791128}
!40 = !{i64 2157791270}
!41 = !{i64 603575, i64 603636}
!42 = !{i64 606592}
!43 = !{i64 2157938727}
!44 = !{i64 706547, i64 706564, i64 706588, i64 706614, i64 706632}
!45 = !{i64 2157939050}
!46 = !{i64 2157939911}
!47 = !{i64 2157940238}
!48 = !{i64 2153686823, i64 2153687311, i64 2153686860, i64 2153686916, i64 2153686950, i64 2153686974, i64 2153687015, i64 2153687036, i64 2153687064, i64 2153687098}
!49 = !{i64 2155479517}
!50 = !{i8 0, i8 2}
!51 = !{i64 2157940383}
