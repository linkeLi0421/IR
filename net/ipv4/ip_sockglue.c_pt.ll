; ModuleID = '/llk/IR/net/ipv4/ip_sockglue.c_pt.bc'
source_filename = "../net/ipv4/ip_sockglue.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_cmsg_recv_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_cmsg_recv_offset\22\09\09\09\09\09"
module asm "__kstrtabns_ip_cmsg_recv_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_sock_set_tos:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_sock_set_tos\22\09\09\09\09\09"
module asm "__kstrtabns_ip_sock_set_tos:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_sock_set_freebind:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_sock_set_freebind\22\09\09\09\09\09"
module asm "__kstrtabns_ip_sock_set_freebind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_sock_set_recverr:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_sock_set_recverr\22\09\09\09\09\09"
module asm "__kstrtabns_ip_sock_set_recverr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_sock_set_mtu_discover:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_sock_set_mtu_discover\22\09\09\09\09\09"
module asm "__kstrtabns_ip_sock_set_mtu_discover:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_sock_set_pktinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_sock_set_pktinfo\22\09\09\09\09\09"
module asm "__kstrtabns_ip_sock_set_pktinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_setsockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_setsockopt\22\09\09\09\09\09"
module asm "__kstrtabns_ip_setsockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_getsockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_getsockopt\22\09\09\09\09\09"
module asm "__kstrtabns_ip_getsockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
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
%struct.list_head = type { ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.83, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.83 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.in_pktinfo = type { i32, %struct.in_addr, %struct.in_addr }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.68, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.69, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.70, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon.25, %union.anon.27, %union.anon.28, i16, i8, i8, i32, %union.anon.30, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.53, [0 x i32], %union.anon.54, i16, i16, %union.anon.55, %struct.refcount_struct, [0 x i32], %union.anon.56 }
%union.anon.25 = type { i64 }
%union.anon.27 = type { i32 }
%union.anon.28 = type { i32 }
%union.anon.30 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.52 }
%union.anon.52 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { %struct.hlist_node }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.68 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.69 = type { ptr }
%union.anon.70 = type { ptr }
%struct.sk_buff_head = type { %union.anon.59, i32, %struct.spinlock }
%union.anon.59 = type { %struct.anon.60 }
%struct.anon.60 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.63 }
%union.anon.63 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sk_buff = type { %union.anon.31, %union.anon.34, %union.anon.35, [48 x i8], %union.anon.36, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.38, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, ptr, %union.anon.33 }
%union.anon.33 = type { ptr }
%union.anon.34 = type { ptr }
%union.anon.35 = type { i64 }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { i32, ptr }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.40, i32, i32, i32, i16, i16, %union.anon.42, %union.anon.43, %union.anon.44, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.40 = type { i32 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.44 = type { i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.121, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon, %union.anon.119 }
%union.anon = type { ptr }
%union.anon.119 = type { i64 }
%union.anon.121 = type { ptr }
%struct.ip_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [0 x i8] }
%struct.ipcm_cookie = type { %struct.sockcm_cookie, i32, i32, ptr, i8, i16, i8, i16 }
%struct.sockcm_cookie = type { i64, i32, i16 }
%struct.cmsghdr = type { i32, i32, i32 }
%struct.anon.29 = type { i16, i16 }
%struct.ip_ra_chain = type { ptr, ptr, %union.anon.78, %struct.callback_head }
%union.anon.78 = type { ptr }
%struct.icmphdr = type { i8, i8, i16, %union.anon.148 }
%union.anon.148 = type { i32 }
%struct.anon.151 = type { %struct.sock_extended_err, %struct.sockaddr_in }
%struct.sock_extended_err = type { i32, i8, i8, i8, i8, i32, %union.anon.147 }
%union.anon.147 = type { i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, i32, i32, i32, i32, i32, %union.anon.142, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.142 = type { %struct.anon.143 }
%struct.anon.143 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.82, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.netdevice_tracker = type {}
%union.anon.82 = type { %struct.in6_addr }
%struct.ip_mreqn = type { %struct.in_addr, %struct.in_addr, i32 }
%struct.group_req = type { i32, %struct.__kernel_sockaddr_storage }
%struct.__kernel_sockaddr_storage = type { %union.anon.157 }
%union.anon.157 = type { ptr, [124 x i8] }
%struct.group_source_req = type { i32, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage }
%struct.ip_mreq_source = type { i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ip_options_rcu = type { %struct.callback_head, %struct.ip_options }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.152, %struct.anon.153, i32, i32, [13 x i64] }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.152 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.153 = type { i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.126, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.141, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.126 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.141 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.anon.156 = type { i32, i32, i32, i32, [0 x i32] }
%struct.anon.164 = type { i32, %struct.__kernel_sockaddr_storage, i32, i32, [0 x %struct.__kernel_sockaddr_storage] }
%struct.group_filter = type { %union.anon.162 }
%union.anon.162 = type { %struct.anon.163 }
%struct.anon.163 = type { i32, %struct.__kernel_sockaddr_storage, i32, i32, [1 x %struct.__kernel_sockaddr_storage] }
%struct.ip_msfilter = type { %union.anon.154 }
%union.anon.154 = type { %struct.anon.155 }
%struct.anon.155 = type { i32, i32, i32, i32, [1 x i32] }
%struct.anon.26 = type { i32, i32 }

@__kstrtab_ip_cmsg_recv_offset = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_cmsg_recv_offset = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_cmsg_recv_offset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_cmsg_recv_offset to i32), ptr @__kstrtab_ip_cmsg_recv_offset, ptr @__kstrtabns_ip_cmsg_recv_offset }, section "___ksymtab+ip_cmsg_recv_offset", align 4
@__kstrtab_ip_sock_set_tos = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_sock_set_tos = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_sock_set_tos = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_sock_set_tos to i32), ptr @__kstrtab_ip_sock_set_tos, ptr @__kstrtabns_ip_sock_set_tos }, section "___ksymtab+ip_sock_set_tos", align 4
@__kstrtab_ip_sock_set_freebind = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_sock_set_freebind = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_sock_set_freebind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_sock_set_freebind to i32), ptr @__kstrtab_ip_sock_set_freebind, ptr @__kstrtabns_ip_sock_set_freebind }, section "___ksymtab+ip_sock_set_freebind", align 4
@__kstrtab_ip_sock_set_recverr = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_sock_set_recverr = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_sock_set_recverr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_sock_set_recverr to i32), ptr @__kstrtab_ip_sock_set_recverr, ptr @__kstrtabns_ip_sock_set_recverr }, section "___ksymtab+ip_sock_set_recverr", align 4
@__kstrtab_ip_sock_set_mtu_discover = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_sock_set_mtu_discover = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_sock_set_mtu_discover = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_sock_set_mtu_discover to i32), ptr @__kstrtab_ip_sock_set_mtu_discover, ptr @__kstrtabns_ip_sock_set_mtu_discover }, section "___ksymtab+ip_sock_set_mtu_discover", align 4
@__kstrtab_ip_sock_set_pktinfo = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_sock_set_pktinfo = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_sock_set_pktinfo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_sock_set_pktinfo to i32), ptr @__kstrtab_ip_sock_set_pktinfo, ptr @__kstrtabns_ip_sock_set_pktinfo }, section "___ksymtab+ip_sock_set_pktinfo", align 4
@ip4_min_ttl = dso_local global %struct.static_key_false zeroinitializer, align 4
@__kstrtab_ip_setsockopt = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_setsockopt = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_setsockopt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_setsockopt to i32), ptr @__kstrtab_ip_setsockopt, ptr @__kstrtabns_ip_setsockopt }, section "___ksymtab+ip_setsockopt", align 4
@__kstrtab_ip_getsockopt = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_getsockopt = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_getsockopt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_getsockopt to i32), ptr @__kstrtab_ip_getsockopt, ptr @__kstrtabns_ip_getsockopt }, section "___ksymtab+ip_getsockopt", align 4
@init_net = external dso_local global %struct.net, align 64
@ip_tos2prio = external dso_local local_unnamed_addr constant [16 x i8], align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@sysctl_optmem_max = external dso_local local_unnamed_addr global i32, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"include/linux/jump_label.h\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_enable = private unnamed_addr constant [18 x i8] c"static_key_enable\00", align 1
@static_key_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_ip_cmsg_recv_offset, ptr @__ksymtab_ip_getsockopt, ptr @__ksymtab_ip_setsockopt, ptr @__ksymtab_ip_sock_set_freebind, ptr @__ksymtab_ip_sock_set_mtu_discover, ptr @__ksymtab_ip_sock_set_pktinfo, ptr @__ksymtab_ip_sock_set_recverr, ptr @__ksymtab_ip_sock_set_tos], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_cmsg_recv_offset(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i16], align 4
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca [56 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca %struct.in_pktinfo, align 8
  %13 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 4
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #11
  %19 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3
  %20 = load i64, ptr %19, align 8
  store i64 %20, ptr %12, align 8
  %21 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 18
  %24 = load i16, ptr %23, align 4
  %25 = zext i16 %24 to i32
  %26 = getelementptr i8, ptr %22, i32 %25
  %27 = getelementptr inbounds %struct.iphdr, ptr %26, i32 0, i32 9
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.in_pktinfo, ptr %12, i32 0, i32 2
  store i32 %28, ptr %29, align 8
  %30 = call i32 @put_cmsg(ptr noundef %0, i32 noundef 0, i32 noundef 8, i32 noundef 12, ptr noundef nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #11
  %31 = and i32 %15, 65534
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %215, label %33

33:                                               ; preds = %18, %5
  %34 = phi i32 [ %31, %18 ], [ %15, %5 ]
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  %38 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 18
  %41 = load i16, ptr %40, align 4
  %42 = zext i16 %41 to i32
  %43 = getelementptr i8, ptr %39, i32 %42
  %44 = getelementptr inbounds %struct.iphdr, ptr %43, i32 0, i32 5
  %45 = load i8, ptr %44, align 4
  %46 = zext i8 %45 to i32
  store i32 %46, ptr %11, align 4
  %47 = call i32 @put_cmsg(ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  %48 = and i32 %34, 65533
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %215, label %50

50:                                               ; preds = %37, %33
  %51 = phi i32 [ %48, %37 ], [ %34, %33 ]
  %52 = and i32 %51, 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 18
  %58 = load i16, ptr %57, align 4
  %59 = zext i16 %58 to i32
  %60 = getelementptr i8, ptr %56, i32 %59
  %61 = getelementptr inbounds %struct.iphdr, ptr %60, i32 0, i32 1
  %62 = call i32 @put_cmsg(ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef %61) #11
  %63 = and i32 %51, -5
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %215, label %65

65:                                               ; preds = %54, %50
  %66 = phi i32 [ %63, %54 ], [ %51, %50 ]
  %67 = and i32 %66, 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %86, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 12
  %71 = load i8, ptr %70, align 4
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %69
  %74 = zext i8 %71 to i32
  %75 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 18
  %78 = load i16, ptr %77, align 4
  %79 = zext i16 %78 to i32
  %80 = getelementptr i8, ptr %76, i32 %79
  %81 = getelementptr %struct.iphdr, ptr %80, i32 1
  %82 = call i32 @put_cmsg(ptr noundef %0, i32 noundef 0, i32 noundef 6, i32 noundef %74, ptr noundef %81) #11
  br label %83

83:                                               ; preds = %73, %69
  %84 = and i32 %66, -9
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %215, label %86

86:                                               ; preds = %83, %65
  %87 = phi i32 [ %84, %83 ], [ %66, %65 ]
  %88 = and i32 %87, 16
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %111, label %90

90:                                               ; preds = %86
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(56) %10, i8 0, i32 56, i1 false) #11, !annotation !9
  %91 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 12
  %92 = load i8, ptr %91, align 4
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %108, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 4
  %96 = call i32 @__ip_options_echo(ptr noundef nonnull @init_net, ptr noundef nonnull %10, ptr noundef %2, ptr noundef %95) #11
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.msghdr, ptr %0, i32 0, i32 6
  %100 = load i32, ptr %99, align 4
  %101 = or i32 %100, 8
  store i32 %101, ptr %99, align 4
  br label %108

102:                                              ; preds = %94
  call void @ip_options_undo(ptr noundef nonnull %10) #11
  %103 = getelementptr inbounds %struct.ip_options, ptr %10, i32 0, i32 2
  %104 = load i8, ptr %103, align 4
  %105 = zext i8 %104 to i32
  %106 = getelementptr inbounds %struct.ip_options, ptr %10, i32 0, i32 10
  %107 = call i32 @put_cmsg(ptr noundef %0, i32 noundef 0, i32 noundef 7, i32 noundef %105, ptr noundef %106) #11
  br label %108

108:                                              ; preds = %102, %98, %90
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #11
  %109 = and i32 %87, -17
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %215, label %111

111:                                              ; preds = %108, %86
  %112 = phi i32 [ %109, %108 ], [ %87, %86 ]
  %113 = and i32 %112, 32
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = and i32 %112, -33
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %215, label %118

118:                                              ; preds = %115, %111
  %119 = phi i32 [ %116, %115 ], [ %112, %111 ]
  %120 = and i32 %119, 64
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %169, label %122

122:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store i32 0, ptr %8, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #11
  %123 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %124 = load ptr, ptr %123, align 8
  %125 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 17
  %126 = load i16, ptr %125, align 2
  %127 = zext i16 %126 to i32
  %128 = getelementptr i8, ptr %124, i32 %127
  %129 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %130 = load ptr, ptr %129, align 4
  %131 = ptrtoint ptr %128 to i32
  %132 = ptrtoint ptr %130 to i32
  %133 = sub i32 %131, %132
  %134 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %135 = load i32, ptr %134, align 8
  %136 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 6
  %137 = load i32, ptr %136, align 4
  %138 = add i32 %137, %133
  %139 = sub i32 %135, %138
  %140 = icmp sgt i32 %139, 3
  br i1 %140, label %148, label %141, !prof !10

141:                                              ; preds = %122
  %142 = icmp eq ptr %2, null
  br i1 %142, label %166, label %143

143:                                              ; preds = %141
  %144 = call i32 @skb_copy_bits(ptr noundef nonnull %2, i32 noundef %133, ptr noundef nonnull %8, i32 noundef 4) #11
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %166, label %146

146:                                              ; preds = %143
  %147 = load ptr, ptr %123, align 8
  br label %151

148:                                              ; preds = %122
  %149 = getelementptr i8, ptr %130, i32 %133
  %150 = icmp eq ptr %149, null
  br i1 %150, label %166, label %151

151:                                              ; preds = %148, %146
  %152 = phi ptr [ %124, %148 ], [ %147, %146 ]
  %153 = phi ptr [ %149, %148 ], [ %8, %146 ]
  store i16 2, ptr %9, align 4
  %154 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 18
  %155 = load i16, ptr %154, align 4
  %156 = zext i16 %155 to i32
  %157 = getelementptr i8, ptr %152, i32 %156
  %158 = getelementptr inbounds %struct.iphdr, ptr %157, i32 0, i32 9
  %159 = load i32, ptr %158, align 4
  %160 = getelementptr inbounds %struct.sockaddr_in, ptr %9, i32 0, i32 2
  store i32 %159, ptr %160, align 4
  %161 = getelementptr i16, ptr %153, i32 1
  %162 = load i16, ptr %161, align 2
  %163 = getelementptr inbounds %struct.sockaddr_in, ptr %9, i32 0, i32 1
  store i16 %162, ptr %163, align 2
  %164 = getelementptr inbounds %struct.sockaddr_in, ptr %9, i32 0, i32 3
  store i64 0, ptr %164, align 4
  %165 = call i32 @put_cmsg(ptr noundef %0, i32 noundef 0, i32 noundef 20, i32 noundef 16, ptr noundef nonnull %9) #11
  br label %166

166:                                              ; preds = %151, %148, %143, %141
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  %167 = and i32 %119, -65
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %215, label %169

169:                                              ; preds = %166, %118
  %170 = phi i32 [ %167, %166 ], [ %119, %118 ]
  %171 = and i32 %170, 128
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %204, label %173

173:                                              ; preds = %169
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  %174 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 4
  %175 = load i32, ptr %174, align 4
  store i32 %175, ptr %7, align 4
  %176 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13
  %177 = load i16, ptr %176, align 8
  %178 = and i16 %177, 96
  %179 = icmp eq i16 %178, 64
  br i1 %179, label %180, label %203

180:                                              ; preds = %173
  %181 = icmp eq i32 %4, 0
  br i1 %181, label %201, label %182

182:                                              ; preds = %180
  %183 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %184 = load ptr, ptr %183, align 8
  %185 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 17
  %186 = load i16, ptr %185, align 2
  %187 = zext i16 %186 to i32
  %188 = getelementptr i8, ptr %184, i32 %187
  %189 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %190 = load ptr, ptr %189, align 4
  %191 = ptrtoint ptr %188 to i32
  %192 = ptrtoint ptr %190 to i32
  %193 = sub i32 %3, %192
  %194 = add i32 %193, %191
  %195 = call i32 @skb_checksum(ptr noundef %2, i32 noundef %194, i32 noundef %4, i32 noundef 0) #11
  %196 = xor i32 %195, -1
  %197 = add i32 %175, %196
  %198 = icmp ult i32 %197, %196
  %199 = zext i1 %198 to i32
  %200 = add i32 %197, %199
  store i32 %200, ptr %7, align 4
  br label %201

201:                                              ; preds = %182, %180
  %202 = call i32 @put_cmsg(ptr noundef %0, i32 noundef 0, i32 noundef 23, i32 noundef 4, ptr noundef nonnull %7) #11
  br label %203

203:                                              ; preds = %201, %173
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  br label %204

204:                                              ; preds = %203, %169
  %205 = and i32 %170, 256
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %215, label %207

207:                                              ; preds = %204
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  %208 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 22
  %209 = load i16, ptr %208, align 2
  %210 = icmp eq i16 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %207
  %212 = zext i16 %209 to i32
  store i32 %212, ptr %6, align 4
  %213 = call i32 @put_cmsg(ptr noundef %0, i32 noundef 0, i32 noundef 25, i32 noundef 4, ptr noundef nonnull %6) #11
  br label %214

214:                                              ; preds = %211, %207
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  br label %215

215:                                              ; preds = %214, %204, %166, %115, %108, %83, %54, %37, %18
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_cmsg_send(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = icmp ugt i32 %6, 11
  br i1 %7, label %8, label %131

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %131, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 3
  %14 = getelementptr inbounds %struct.ipcm_cookie, ptr %2, i32 0, i32 5
  %15 = getelementptr inbounds %struct.ipcm_cookie, ptr %2, i32 0, i32 6
  %16 = getelementptr inbounds %struct.ipcm_cookie, ptr %2, i32 0, i32 4
  %17 = getelementptr inbounds %struct.ipcm_cookie, ptr %2, i32 0, i32 2
  %18 = getelementptr inbounds %struct.ipcm_cookie, ptr %2, i32 0, i32 1
  %19 = getelementptr inbounds %struct.ipcm_cookie, ptr %2, i32 0, i32 3
  br label %20

20:                                               ; preds = %116, %12
  %21 = phi i32 [ %6, %12 ], [ %119, %116 ]
  %22 = phi ptr [ %10, %12 ], [ %123, %116 ]
  %23 = phi i8 [ undef, %12 ], [ %117, %116 ]
  %24 = load i32, ptr %22, align 4
  %25 = icmp ugt i32 %24, 11
  br i1 %25, label %26, label %131

26:                                               ; preds = %20
  %27 = load ptr, ptr %13, align 8
  %28 = ptrtoint ptr %22 to i32
  %29 = ptrtoint ptr %27 to i32
  %30 = sub i32 %21, %28
  %31 = add i32 %30, %29
  %32 = icmp ugt i32 %24, %31
  br i1 %32, label %131, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.cmsghdr, ptr %22, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 41
  %37 = select i1 %3, i1 %36, i1 false
  br i1 %37, label %38, label %63

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.cmsghdr, ptr %22, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 50
  br i1 %41, label %42, label %116

42:                                               ; preds = %38
  %43 = icmp ult i32 %24, 32
  br i1 %43, label %131, label %44

44:                                               ; preds = %42
  %45 = getelementptr i8, ptr %22, i32 12
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr i8, ptr %22, i32 16
  %48 = load i32, ptr %47, align 4
  %49 = or i32 %48, %46
  %50 = getelementptr i8, ptr %22, i32 20
  %51 = load i32, ptr %50, align 4
  %52 = xor i32 %51, -65536
  %53 = or i32 %49, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %131

55:                                               ; preds = %44
  %56 = getelementptr i8, ptr %22, i32 28
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  store i32 %57, ptr %17, align 4
  br label %60

60:                                               ; preds = %59, %55
  %61 = getelementptr i8, ptr %22, i32 24
  %62 = load i32, ptr %61, align 4
  store i32 %62, ptr %18, align 8
  br label %116

63:                                               ; preds = %33
  switch i32 %35, label %116 [
    i32 1, label %64
    i32 0, label %67
  ]

64:                                               ; preds = %63
  %65 = tail call i32 @__sock_cmsg_send(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %22, ptr noundef %2) #11
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %116, label %131

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.cmsghdr, ptr %22, i32 0, i32 2
  %69 = load i32, ptr %68, align 4
  switch i32 %69, label %131 [
    i32 7, label %70
    i32 8, label %81
    i32 2, label %91
    i32 1, label %100
  ]

70:                                               ; preds = %67
  %71 = add i32 %24, -12
  %72 = getelementptr i8, ptr %22, i32 12
  %73 = or i8 %23, 1
  %74 = tail call i32 @llvm.smin.i32(i32 %71, i32 40)
  %75 = ptrtoint ptr %72 to i32
  %76 = insertvalue [2 x i32] poison, i32 %75, 0
  %77 = zext i8 %73 to i32
  %78 = insertvalue [2 x i32] %76, i32 %77, 1
  %79 = tail call i32 @ip_options_get(ptr noundef nonnull @init_net, ptr noundef %19, [2 x i32] %78, i32 noundef %74) #11
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %116, label %131

81:                                               ; preds = %67
  %82 = icmp eq i32 %24, 24
  br i1 %82, label %83, label %131

83:                                               ; preds = %81
  %84 = getelementptr i8, ptr %22, i32 12
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  store i32 %85, ptr %17, align 4
  br label %88

88:                                               ; preds = %87, %83
  %89 = getelementptr i8, ptr %22, i32 16
  %90 = load i32, ptr %89, align 4
  store i32 %90, ptr %18, align 8
  br label %116

91:                                               ; preds = %67
  %92 = icmp eq i32 %24, 16
  br i1 %92, label %93, label %131

93:                                               ; preds = %91
  %94 = getelementptr i8, ptr %22, i32 12
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %95, -256
  %97 = icmp ult i32 %96, -255
  br i1 %97, label %131, label %98

98:                                               ; preds = %93
  %99 = trunc i32 %95 to i8
  store i8 %99, ptr %16, align 4
  br label %116

100:                                              ; preds = %67
  switch i32 %24, label %131 [
    i32 16, label %105
    i32 13, label %101
  ]

101:                                              ; preds = %100
  %102 = getelementptr i8, ptr %22, i32 12
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i32
  br label %109

105:                                              ; preds = %100
  %106 = getelementptr i8, ptr %22, i32 12
  %107 = load i32, ptr %106, align 4
  %108 = icmp ugt i32 %107, 255
  br i1 %108, label %131, label %109

109:                                              ; preds = %105, %101
  %110 = phi i32 [ %104, %101 ], [ %107, %105 ]
  %111 = trunc i32 %110 to i16
  store i16 %111, ptr %14, align 2
  %112 = lshr i32 %110, 1
  %113 = and i32 %112, 15
  %114 = getelementptr [16 x i8], ptr @ip_tos2prio, i32 0, i32 %113
  %115 = load i8, ptr %114, align 1
  store i8 %115, ptr %15, align 8
  br label %116

116:                                              ; preds = %109, %98, %88, %70, %64, %63, %60, %38
  %117 = phi i8 [ %23, %60 ], [ %23, %63 ], [ %23, %109 ], [ %23, %98 ], [ %23, %88 ], [ %73, %70 ], [ %23, %64 ], [ %23, %38 ]
  %118 = load ptr, ptr %13, align 8
  %119 = load i32, ptr %5, align 8
  %120 = load i32, ptr %22, align 4
  %121 = add i32 %120, 3
  %122 = and i32 %121, -4
  %123 = getelementptr i8, ptr %22, i32 %122
  %124 = getelementptr %struct.cmsghdr, ptr %123, i32 1
  %125 = ptrtoint ptr %124 to i32
  %126 = ptrtoint ptr %118 to i32
  %127 = sub i32 %125, %126
  %128 = icmp ugt i32 %127, %119
  %129 = icmp eq ptr %123, null
  %130 = select i1 %128, i1 true, i1 %129
  br i1 %130, label %131, label %20

131:                                              ; preds = %116, %105, %100, %93, %91, %81, %70, %67, %64, %44, %42, %26, %20, %8, %4
  %132 = phi i32 [ 0, %8 ], [ 0, %4 ], [ -22, %81 ], [ 0, %116 ], [ -22, %67 ], [ -22, %105 ], [ -22, %100 ], [ -22, %93 ], [ -22, %91 ], [ %79, %70 ], [ %65, %64 ], [ -22, %42 ], [ -22, %44 ], [ -22, %20 ], [ -22, %26 ]
  ret i32 %132
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sock_cmsg_send(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_options_get(ptr noundef, ptr noundef, [2 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_ra_control(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %5 = load i16, ptr %4, align 2
  %6 = icmp eq i16 %5, 3
  br i1 %6, label %7, label %55

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %9 = getelementptr inbounds %struct.anon.29, ptr %8, i32 0, i32 1
  %10 = load i16, ptr %9, align 2
  %11 = icmp eq i16 %10, 255
  br i1 %11, label %55, label %12

12:                                               ; preds = %7
  %13 = icmp eq i8 %1, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 20) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %55, label %18

18:                                               ; preds = %14, %12
  %19 = phi ptr [ %16, %14 ], [ null, %12 ]
  tail call void @mutex_lock(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 9)) #11
  br label %20

20:                                               ; preds = %24, %18
  %21 = phi ptr [ getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 8), %18 ], [ %22, %24 ]
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %39, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ip_ra_chain, ptr %22, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %0
  br i1 %27, label %28, label %20

28:                                               ; preds = %24
  br i1 %13, label %30, label %29

29:                                               ; preds = %28
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 9)) #11
  tail call void @kfree(ptr noundef %19) #11
  br label %55

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.ip_ra_chain, ptr %22, i32 0, i32 1
  store ptr null, ptr %31, align 4
  %32 = load ptr, ptr %22, align 4
  store volatile ptr %32, ptr %21, align 4
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 9)) #11
  %33 = getelementptr inbounds %struct.ip_ra_chain, ptr %22, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  tail call void %34(ptr noundef %0) #11
  br label %37

37:                                               ; preds = %36, %30
  store ptr %0, ptr %33, align 4
  %38 = getelementptr inbounds %struct.ip_ra_chain, ptr %22, i32 0, i32 3
  tail call void @call_rcu(ptr noundef %38, ptr noundef nonnull @ip_ra_destroy_rcu) #11
  br label %55

39:                                               ; preds = %20
  br i1 %13, label %40, label %41

40:                                               ; preds = %39
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 9)) #11
  br label %55

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.ip_ra_chain, ptr %19, i32 0, i32 1
  store ptr %0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.ip_ra_chain, ptr %19, i32 0, i32 2
  store ptr %2, ptr %43, align 8
  store volatile ptr null, ptr %19, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  store volatile ptr %19, ptr %21, align 4
  %44 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #11, !srcloc !12
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #11, !srcloc !13
  %46 = extractvalue { i32, i32, i32 } %45, 0
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48, !prof !14

48:                                               ; preds = %41
  %49 = add i32 %46, 1
  %50 = or i32 %49, %46
  %51 = icmp sgt i32 %50, -1
  br i1 %51, label %54, label %52, !prof !10

52:                                               ; preds = %48, %41
  %53 = phi i32 [ 2, %41 ], [ 1, %48 ]
  tail call void @refcount_warn_saturate(ptr noundef %44, i32 noundef %53) #11
  br label %54

54:                                               ; preds = %52, %48
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 9)) #11
  br label %55

55:                                               ; preds = %54, %40, %37, %29, %14, %7, %3
  %56 = phi i32 [ -98, %29 ], [ 0, %37 ], [ 0, %54 ], [ -105, %40 ], [ -22, %7 ], [ -22, %3 ], [ -12, %14 ]
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ip_ra_destroy_rcu(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #11, !srcloc !12
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #11, !srcloc !16
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %12, label %10, !prof !10

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #11
  br label %12

11:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  tail call void @sk_free(ptr noundef %3) #11
  br label %12

12:                                               ; preds = %11, %10, %8
  %13 = getelementptr i8, ptr %0, i32 -12
  tail call void @kfree(ptr noundef %13) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_icmp_error(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @skb_clone(ptr noundef %1, i32 noundef 2592) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %71, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 24
  store i32 %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 28
  store i8 2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 16
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 13, i32 0, i32 17
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = getelementptr i8, ptr %13, i32 %16
  %18 = load i8, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 29
  store i8 %18, ptr %19, align 1
  %20 = getelementptr inbounds %struct.icmphdr, ptr %17, i32 0, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 30
  store i8 %21, ptr %22, align 2
  %23 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 31
  store i8 0, ptr %23, align 1
  %24 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 32
  store i32 %4, ptr %24, align 4
  %25 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 36
  store i32 0, ptr %25, align 4
  %26 = getelementptr %struct.icmphdr, ptr %17, i32 3
  %27 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 13, i32 0, i32 18
  %28 = load i16, ptr %27, align 4
  %29 = zext i16 %28 to i32
  %30 = getelementptr i8, ptr %13, i32 %29
  %31 = ptrtoint ptr %26 to i32
  %32 = ptrtoint ptr %30 to i32
  %33 = sub i32 %31, %32
  %34 = trunc i32 %33 to i16
  %35 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 40
  store i16 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 42
  store i16 %3, ptr %36, align 2
  %37 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %38 = load ptr, ptr %37, align 4
  %39 = ptrtoint ptr %5 to i32
  %40 = ptrtoint ptr %38 to i32
  %41 = sub i32 %39, %40
  %42 = tail call ptr @skb_pull(ptr noundef nonnull %7, i32 noundef %41) #11
  %43 = icmp eq ptr %42, null
  br i1 %43, label %70, label %44

44:                                               ; preds = %9
  %45 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %46 = load i16, ptr %45, align 8
  %47 = and i16 %46, 512
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr %12, align 8
  %51 = load i16, ptr %14, align 2
  %52 = zext i16 %51 to i32
  %53 = getelementptr i8, ptr %50, i32 %52
  %54 = load i8, ptr %53, align 4
  switch i8 %54, label %61 [
    i8 3, label %55
    i8 11, label %55
    i8 12, label %55
  ]

55:                                               ; preds = %49, %49, %49
  %56 = getelementptr inbounds %struct.icmphdr, ptr %53, i32 0, i32 3
  %57 = getelementptr [4 x i8], ptr %56, i32 0, i32 1
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = shl nuw nsw i32 %59, 2
  tail call void @ip_icmp_error_rfc4884(ptr noundef nonnull %7, ptr noundef %25, i32 noundef 8, i32 noundef %60) #11
  br label %61

61:                                               ; preds = %55, %49, %44
  %62 = load ptr, ptr %37, align 4
  %63 = load ptr, ptr %12, align 8
  %64 = ptrtoint ptr %62 to i32
  %65 = ptrtoint ptr %63 to i32
  %66 = sub i32 %64, %65
  %67 = trunc i32 %66 to i16
  store i16 %67, ptr %14, align 2
  %68 = tail call i32 @sock_queue_err_skb(ptr noundef %0, ptr noundef nonnull %7) #11
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %61, %9
  tail call void @kfree_skb_reason(ptr noundef nonnull %7, i32 noundef 0) #11
  br label %71

71:                                               ; preds = %70, %61, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_local_error(ptr noundef %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %67, label %10

10:                                               ; preds = %5
  %11 = tail call ptr @__alloc_skb(i32 noundef 20, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %67, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @skb_put(ptr noundef nonnull %11, i32 noundef 20) #11
  %15 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 16
  %18 = load ptr, ptr %17, align 8
  %19 = ptrtoint ptr %16 to i32
  %20 = ptrtoint ptr %18 to i32
  %21 = sub i32 %19, %20
  %22 = trunc i32 %21 to i16
  %23 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 13, i32 0, i32 18
  store i16 %22, ptr %23, align 4
  %24 = and i32 %21, 65535
  %25 = getelementptr i8, ptr %18, i32 %24
  %26 = getelementptr inbounds %struct.iphdr, ptr %25, i32 0, i32 9
  store i32 %2, ptr %26, align 4
  %27 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 24
  store i32 %1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 28
  store i8 1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 29
  store i8 0, ptr %29, align 1
  %30 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 30
  store i8 0, ptr %30, align 2
  %31 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 31
  store i8 0, ptr %31, align 1
  %32 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 32
  store i32 %4, ptr %32, align 4
  %33 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 36
  store i32 0, ptr %33, align 4
  %34 = load ptr, ptr %17, align 8
  %35 = load i16, ptr %23, align 4
  %36 = zext i16 %35 to i32
  %37 = getelementptr i8, ptr %34, i32 %36
  %38 = ptrtoint ptr %26 to i32
  %39 = ptrtoint ptr %37 to i32
  %40 = sub i32 %38, %39
  %41 = trunc i32 %40 to i16
  %42 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 40
  store i16 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 42
  store i16 %3, ptr %43, align 2
  %44 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 14
  %45 = load ptr, ptr %44, align 8
  %46 = load ptr, ptr %15, align 4
  %47 = ptrtoint ptr %45 to i32
  %48 = ptrtoint ptr %46 to i32
  %49 = sub i32 %47, %48
  %50 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 5
  %51 = load i32, ptr %50, align 8
  %52 = sub i32 %51, %49
  store i32 %52, ptr %50, align 8
  %53 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = icmp ult i32 %52, %54
  br i1 %55, label %56, label %57, !prof !14

56:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #11, !srcloc !18
  unreachable

57:                                               ; preds = %13
  %58 = getelementptr i8, ptr %46, i32 %49
  store ptr %58, ptr %15, align 4
  %59 = ptrtoint ptr %58 to i32
  %60 = ptrtoint ptr %34 to i32
  %61 = sub i32 %59, %60
  %62 = trunc i32 %61 to i16
  %63 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 13, i32 0, i32 17
  store i16 %62, ptr %63, align 2
  %64 = tail call i32 @sock_queue_err_skb(ptr noundef %0, ptr noundef nonnull %11) #11
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %57
  tail call void @kfree_skb_reason(ptr noundef nonnull %11, i32 noundef 0) #11
  br label %67

67:                                               ; preds = %66, %57, %10, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_recv_error(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.anon.151, align 4
  %6 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !9
  %7 = tail call ptr @sock_dequeue_err_skb(ptr noundef %0) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %147, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = icmp sgt i32 %11, %2
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, 32
  store i32 %16, ptr %14, align 4
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i32 [ %2, %13 ], [ %11, %9 ]
  %19 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %20 = tail call i32 @skb_copy_datagram_iter(ptr noundef nonnull %7, i32 noundef 0, ptr noundef %19, i32 noundef %18) #11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22, !prof !10

22:                                               ; preds = %17
  tail call void @kfree_skb_reason(ptr noundef nonnull %7, i32 noundef 0) #11
  br label %147

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 2
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 15
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.skb_shared_info, ptr %27, i32 0, i32 7
  %29 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 2048
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 65
  %35 = load i16, ptr %34, align 8
  %36 = zext i16 %35 to i32
  %37 = and i32 %36, 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = icmp eq i64 %25, 0
  %41 = and i32 %36, 16
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %40, i1 true, i1 %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i64, ptr %28, align 8
  %46 = icmp eq i64 %45, 0
  %47 = and i16 %35, 64
  %48 = icmp eq i16 %47, 0
  %49 = select i1 %46, i1 true, i1 %48
  br i1 %49, label %51, label %50

50:                                               ; preds = %44, %39, %33, %23
  tail call void @__sock_recv_timestamp(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %7) #11
  br label %61

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 64
  %53 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 64, i32 1
  tail call void @_raw_spin_lock(ptr noundef %53) #11
  %54 = load i32, ptr %52, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %52, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !19
  %56 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 63
  store i64 %25, ptr %56, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !20
  %57 = load i32, ptr %52, align 4
  %58 = add i32 %57, 1
  store i32 %58, ptr %52, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !21
  %59 = load i16, ptr %53, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr %53, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !24
  br label %61

61:                                               ; preds = %51, %50
  %62 = load volatile i32, ptr %29, align 4
  %63 = and i32 %62, 524288
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 13
  %67 = load i16, ptr %66, align 8
  %68 = and i16 %67, 1024
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  tail call void @__sock_recv_wifi_status(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %7) #11
  br label %71

71:                                               ; preds = %70, %65, %61
  %72 = icmp eq ptr %6, null
  br i1 %72, label %99, label %73

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 28
  %75 = load i8, ptr %74, align 4
  %76 = add i8 %75, -1
  %77 = icmp ult i8 %76, 2
  br i1 %77, label %82, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 42
  %80 = load i16, ptr %79, align 2
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %99, label %82

82:                                               ; preds = %78, %73
  store i16 2, ptr %6, align 4
  %83 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 16
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 13, i32 0, i32 18
  %86 = load i16, ptr %85, align 4
  %87 = zext i16 %86 to i32
  %88 = getelementptr i8, ptr %84, i32 %87
  %89 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 40
  %90 = load i16, ptr %89, align 4
  %91 = zext i16 %90 to i32
  %92 = getelementptr i8, ptr %88, i32 %91
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr inbounds %struct.sockaddr_in, ptr %6, i32 0, i32 2
  store i32 %93, ptr %94, align 4
  %95 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 42
  %96 = load i16, ptr %95, align 2
  %97 = getelementptr inbounds %struct.sockaddr_in, ptr %6, i32 0, i32 1
  store i16 %96, ptr %97, align 2
  %98 = getelementptr inbounds %struct.sockaddr_in, ptr %6, i32 0, i32 3
  store i64 0, ptr %98, align 4
  store i32 16, ptr %3, align 4
  br label %99

99:                                               ; preds = %82, %78, %71
  %100 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 24
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef align 4 dereferenceable(16) %100, i32 16, i1 false)
  %101 = getelementptr inbounds %struct.anon.151, ptr %5, i32 0, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %101, i8 0, i32 16, i1 false)
  %102 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 28
  %103 = load i8, ptr %102, align 4
  switch i8 %103, label %110 [
    i8 2, label %104
    i8 1, label %142
  ]

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 16
  %106 = load ptr, ptr %105, align 8
  %107 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 13, i32 0, i32 18
  %108 = load i16, ptr %107, align 4
  %109 = zext i16 %108 to i32
  br label %129

110:                                              ; preds = %99
  %111 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 65
  %112 = load i16, ptr %111, align 8
  %113 = and i16 %112, 1024
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %142, label %115

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %142, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 16
  %121 = load ptr, ptr %120, align 8
  %122 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 13, i32 0, i32 18
  %123 = load i16, ptr %122, align 4
  %124 = zext i16 %123 to i32
  %125 = getelementptr i8, ptr %121, i32 %124
  %126 = getelementptr inbounds %struct.iphdr, ptr %125, i32 0, i32 8
  %127 = load i32, ptr %126, align 4
  %128 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 4
  store i32 %127, ptr %128, align 4
  br label %129

129:                                              ; preds = %119, %104
  %130 = phi i32 [ %109, %104 ], [ %124, %119 ]
  %131 = phi ptr [ %106, %104 ], [ %121, %119 ]
  store i16 2, ptr %101, align 4
  %132 = getelementptr i8, ptr %131, i32 %130
  %133 = getelementptr inbounds %struct.iphdr, ptr %132, i32 0, i32 8
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr inbounds %struct.anon.151, ptr %5, i32 0, i32 1, i32 2
  store i32 %134, ptr %135, align 4
  %136 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 4
  %137 = load i16, ptr %136, align 2
  %138 = icmp eq i16 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %129
  %140 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  tail call void @ip_cmsg_recv_offset(ptr noundef %1, ptr noundef %141, ptr noundef nonnull %7, i32 noundef 0, i32 noundef 0) #11
  br label %142

142:                                              ; preds = %139, %129, %115, %110, %99
  %143 = call i32 @put_cmsg(ptr noundef %1, i32 noundef 0, i32 noundef 11, i32 noundef 32, ptr noundef nonnull %5) #11
  %144 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %145 = load i32, ptr %144, align 4
  %146 = or i32 %145, 8192
  store i32 %146, ptr %144, align 4
  call void @consume_skb(ptr noundef nonnull %7) #11
  br label %147

147:                                              ; preds = %142, %22, %4
  %148 = phi i32 [ %20, %22 ], [ %18, %142 ], [ -11, %4 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  ret i32 %148
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_dequeue_err_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_cmsg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__ip_sock_set_tos(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %4 = load i16, ptr %3, align 2
  %5 = icmp eq i16 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %8 = load i8, ptr %7, align 4
  br label %16

9:                                                ; preds = %2
  %10 = and i32 %1, -4
  %11 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, 3
  %14 = zext i8 %13 to i32
  %15 = or i32 %10, %14
  br label %16

16:                                               ; preds = %9, %6
  %17 = phi i8 [ %12, %9 ], [ %8, %6 ]
  %18 = phi i32 [ %15, %9 ], [ %1, %6 ]
  %19 = zext i8 %17 to i32
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %36, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %23 = trunc i32 %18 to i8
  store i8 %23, ptr %22, align 4
  %24 = lshr i32 %18, 1
  %25 = and i32 %24, 15
  %26 = getelementptr [16 x i8], ptr @ip_tos2prio, i32 0, i32 %25
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 33
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 16
  store i16 -1, ptr %30, align 4
  %31 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #11, !srcloc !12
  %33 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %32) #11, !srcloc !26
  %34 = extractvalue { i32, i32 } %33, 0
  %35 = inttoptr i32 %34 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !27
  tail call void @dst_release(ptr noundef %35) #11
  br label %36

36:                                               ; preds = %21, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_sock_set_tos(ptr noundef %0, i32 noundef %1) #0 {
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #11
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %4 = load i16, ptr %3, align 2
  %5 = icmp eq i16 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %8 = load i8, ptr %7, align 4
  br label %16

9:                                                ; preds = %2
  %10 = and i32 %1, -4
  %11 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, 3
  %14 = zext i8 %13 to i32
  %15 = or i32 %10, %14
  br label %16

16:                                               ; preds = %9, %6
  %17 = phi i8 [ %12, %9 ], [ %8, %6 ]
  %18 = phi i32 [ %15, %9 ], [ %1, %6 ]
  %19 = zext i8 %17 to i32
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %36, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %23 = trunc i32 %18 to i8
  store i8 %23, ptr %22, align 4
  %24 = lshr i32 %18, 1
  %25 = and i32 %24, 15
  %26 = getelementptr [16 x i8], ptr @ip_tos2prio, i32 0, i32 %25
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 33
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 16
  store i16 -1, ptr %30, align 4
  %31 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #11, !srcloc !12
  %33 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %32) #11, !srcloc !26
  %34 = extractvalue { i32, i32 } %33, 0
  %35 = inttoptr i32 %34 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !27
  tail call void @dst_release(ptr noundef %35) #11
  br label %36

36:                                               ; preds = %21, %16
  tail call void @release_sock(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_sock_set_freebind(ptr noundef %0) #0 {
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #11
  %2 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %3 = load i16, ptr %2, align 8
  %4 = or i16 %3, 4
  store i16 %4, ptr %2, align 8
  tail call void @release_sock(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_sock_set_recverr(ptr noundef %0) #0 {
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #11
  %2 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %3 = load i16, ptr %2, align 8
  %4 = or i16 %3, 1
  store i16 %4, ptr %2, align 8
  tail call void @release_sock(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_sock_set_mtu_discover(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp ugt i32 %1, 5
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #11
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 11
  store i8 %5, ptr %6, align 1
  tail call void @release_sock(ptr noundef %0) #11
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi i32 [ 0, %4 ], [ -22, %2 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_sock_set_pktinfo(ptr noundef %0) #0 {
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #11
  %2 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 2
  %4 = or i16 %3, 1
  store i16 %4, ptr %2, align 2
  tail call void @release_sock(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipv4_pktinfo_prepare(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %4 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 4
  %5 = load i16, ptr %4, align 2
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %10 = load i16, ptr %9, align 8
  %11 = icmp eq i16 %10, 10
  br i1 %11, label %12, label %57

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %14 = load volatile i8, ptr %13, align 2
  %15 = zext i8 %14 to i32
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, -4161
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  br label %22

22:                                               ; preds = %19, %12
  %23 = phi ptr [ %21, %19 ], [ null, %12 ]
  %24 = getelementptr inbounds %struct.ipv6_pinfo, ptr %23, i32 0, i32 8
  %25 = load i16, ptr %24, align 4
  %26 = and i16 %25, 4
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %57, label %28

28:                                               ; preds = %22, %2
  %29 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, -2
  %32 = inttoptr i32 %31 to ptr
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %57, label %34

34:                                               ; preds = %28
  %35 = load i32, ptr %3, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.rtable, ptr %32, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 6
  %43 = load i32, ptr %42, align 4
  br label %53

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 20
  %46 = load i16, ptr %45, align 4
  %47 = and i16 %46, 128
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.rtable, ptr %32, i32 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49, %41, %37
  %54 = phi i32 [ %43, %41 ], [ %39, %37 ], [ %51, %49 ]
  store i32 %54, ptr %3, align 4
  br label %55

55:                                               ; preds = %53, %49, %44
  %56 = tail call i32 @fib_compute_spec_dst(ptr noundef %1) #11
  br label %58

57:                                               ; preds = %28, %22, %8
  store i32 0, ptr %3, align 4
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ 0, %57 ], [ %56, %55 ]
  %60 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  store i32 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %62 = load i32, ptr %61, align 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %58
  %65 = and i32 %62, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = and i32 %62, -2
  %69 = inttoptr i32 %68 to ptr
  tail call void @dst_release(ptr noundef %69) #11
  br label %70

70:                                               ; preds = %67, %64
  store i32 0, ptr %61, align 8
  br label %71

71:                                               ; preds = %70, %58
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_compute_spec_dst(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_setsockopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, [2 x i32] %3, i32 noundef %4) #0 {
  %6 = alloca %struct.ip_mreqn, align 4
  %7 = alloca %struct.group_req, align 4
  %8 = alloca %struct.group_source_req, align 4
  %9 = alloca %struct.ip_mreq_source, align 4
  %10 = alloca %struct.ip_mreqn, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca ptr, align 4
  %14 = alloca %struct.ip_mreqn, align 8
  %15 = alloca %struct.ip_mreqn, align 8
  %16 = alloca %struct.ip_mreq_source, align 4
  %17 = alloca %struct.ip_mreqn, align 4
  %18 = icmp eq i32 %1, 0
  br i1 %18, label %19, label %900

19:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  store i32 0, ptr %11, align 4
  %20 = add i32 %2, -35
  %21 = icmp ult i32 %20, 14
  switch i32 %2, label %80 [
    i32 8, label %22
    i32 12, label %22
    i32 6, label %22
    i32 13, label %22
    i32 7, label %22
    i32 1, label %22
    i32 2, label %22
    i32 3, label %22
    i32 10, label %22
    i32 11, label %22
    i32 5, label %22
    i32 15, label %22
    i32 18, label %22
    i32 19, label %22
    i32 21, label %22
    i32 22, label %22
    i32 24, label %22
    i32 50, label %22
    i32 33, label %22
    i32 49, label %22
    i32 34, label %22
    i32 20, label %22
    i32 23, label %22
    i32 25, label %22
    i32 26, label %22
  ]

22:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19
  %23 = icmp ugt i32 %4, 3
  br i1 %23, label %24, label %48

24:                                               ; preds = %22
  %25 = extractvalue [2 x i32] %3, 0
  %26 = inttoptr i32 %25 to ptr
  %27 = extractvalue [2 x i32] %3, 1
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %24
  %31 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %26, i32 4, i32 -1090519040) #13, !srcloc !28
  %32 = extractvalue { i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42, !prof !10

34:                                               ; preds = %30
  %35 = tail call ptr @llvm.thread.pointer() #11
  %36 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 3
  %37 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %36) #10, !srcloc !29
  %38 = and i32 %37, -13
  %39 = or i32 %38, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #11, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %40 = call i32 @arm_copy_from_user(ptr noundef nonnull %11, ptr noundef %26, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %73, label %42, !prof !10

42:                                               ; preds = %34, %30
  %43 = phi i32 [ %40, %34 ], [ 4, %30 ]
  %44 = sub i32 4, %43
  %45 = getelementptr i8, ptr %11, i32 %44
  call void @llvm.memset.p0.i32(ptr align 1 %45, i8 0, i32 %43, i1 false) #11
  br label %898

46:                                               ; preds = %24
  %47 = load i32, ptr %26, align 1
  store i32 %47, ptr %11, align 4
  br label %73

48:                                               ; preds = %22
  %49 = icmp eq i32 %4, 0
  br i1 %49, label %73, label %50

50:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #11
  store i8 0, ptr %12, align 1, !annotation !9
  %51 = extractvalue [2 x i32] %3, 0
  %52 = inttoptr i32 %51 to ptr
  %53 = extractvalue [2 x i32] %3, 1
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %50
  %57 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %52, i32 1, i32 -1090519040) #13, !srcloc !28
  %58 = extractvalue { i32, i32 } %57, 0
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %68, !prof !10

60:                                               ; preds = %56
  %61 = tail call ptr @llvm.thread.pointer() #11
  %62 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 3
  %63 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %62) #10, !srcloc !29
  %64 = and i32 %63, -13
  %65 = or i32 %64, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #11, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %66 = call i32 @arm_copy_from_user(ptr noundef nonnull %12, ptr noundef %52, i32 noundef 1) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %63) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68, !prof !10

68:                                               ; preds = %60, %56
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #11
  br label %898

69:                                               ; preds = %60, %50
  %70 = phi ptr [ %12, %60 ], [ %52, %50 ]
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  store i32 %72, ptr %11, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #11
  br label %73

73:                                               ; preds = %69, %48, %46, %34
  %74 = icmp eq i32 %2, 5
  br i1 %74, label %75, label %80

75:                                               ; preds = %73
  %76 = load i32, ptr %11, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i8
  %79 = call i32 @ip_ra_control(ptr noundef %0, i8 noundef zeroext %78, ptr noundef null) #11
  br label %898

80:                                               ; preds = %73, %19
  br i1 %21, label %81, label %82

81:                                               ; preds = %80
  call void @rtnl_lock() #11
  br label %82

82:                                               ; preds = %81, %80
  call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #11
  switch i32 %2, label %893 [
    i32 4, label %83
    i32 8, label %140
    i32 12, label %149
    i32 13, label %158
    i32 6, label %167
    i32 7, label %176
    i32 18, label %185
    i32 20, label %194
    i32 23, label %203
    i32 25, label %225
    i32 1, label %239
    i32 2, label %274
    i32 3, label %285
    i32 22, label %297
    i32 24, label %309
    i32 10, label %317
    i32 11, label %323
    i32 26, label %334
    i32 33, label %344
    i32 34, label %360
    i32 50, label %370
    i32 32, label %398
    i32 35, label %528
    i32 36, label %528
    i32 41, label %588
    i32 38, label %613
    i32 37, label %613
    i32 39, label %613
    i32 40, label %613
    i32 42, label %660
    i32 45, label %660
    i32 46, label %702
    i32 47, label %702
    i32 43, label %702
    i32 44, label %702
    i32 48, label %760
    i32 49, label %818
    i32 15, label %831
    i32 16, label %841
    i32 17, label %841
    i32 19, label %846
    i32 21, label %865
  ]

83:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #11
  store ptr null, ptr %13, align 4
  %84 = icmp ugt i32 %4, 40
  br i1 %84, label %139, label %85

85:                                               ; preds = %83
  %86 = call i32 @ip_options_get(ptr noundef nonnull @init_net, ptr noundef nonnull %13, [2 x i32] %3, i32 noundef %4) #11
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %138

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 5
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %92 = load i16, ptr %91, align 8
  %93 = and i16 %92, 2
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %134, label %95

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %97 = load i16, ptr %96, align 8
  %98 = icmp eq i16 %97, 2
  br i1 %98, label %109, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %101 = load volatile i8, ptr %100, align 2
  %102 = zext i8 %101 to i32
  %103 = shl nuw i32 1, %102
  %104 = and i32 %103, 1152
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %134

106:                                              ; preds = %99
  %107 = load i32, ptr %0, align 8
  %108 = icmp eq i32 %107, 100663423
  br i1 %108, label %134, label %109

109:                                              ; preds = %106, %95
  %110 = icmp eq ptr %90, null
  br i1 %110, label %118, label %111

111:                                              ; preds = %109
  %112 = getelementptr inbounds %struct.ip_options_rcu, ptr %90, i32 0, i32 1, i32 2
  %113 = load i8, ptr %112, align 4
  %114 = zext i8 %113 to i16
  %115 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 23
  %116 = load i16, ptr %115, align 2
  %117 = sub i16 %116, %114
  store i16 %117, ptr %115, align 2
  br label %118

118:                                              ; preds = %111, %109
  %119 = load ptr, ptr %13, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %128, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.ip_options_rcu, ptr %119, i32 0, i32 1, i32 2
  %123 = load i8, ptr %122, align 4
  %124 = zext i8 %123 to i16
  %125 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 23
  %126 = load i16, ptr %125, align 2
  %127 = add i16 %126, %124
  store i16 %127, ptr %125, align 2
  br label %128

128:                                              ; preds = %121, %118
  %129 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 16
  %130 = load ptr, ptr %129, align 8
  %131 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 9
  %132 = load i32, ptr %131, align 8
  %133 = call i32 %130(ptr noundef %0, i32 noundef %132) #11
  br label %134

134:                                              ; preds = %128, %106, %99, %88
  %135 = load ptr, ptr %13, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !32
  store volatile ptr %135, ptr %89, align 4
  %136 = icmp eq ptr %90, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %134
  call void @kvfree_call_rcu(ptr noundef nonnull %90, ptr noundef null) #11
  br label %138

138:                                              ; preds = %137, %134, %85
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #11
  br label %893

139:                                              ; preds = %83
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #11
  br label %896

140:                                              ; preds = %82
  %141 = load i32, ptr %11, align 4
  %142 = icmp eq i32 %141, 0
  %143 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 4
  %144 = load i16, ptr %143, align 2
  br i1 %142, label %147, label %145

145:                                              ; preds = %140
  %146 = or i16 %144, 1
  store i16 %146, ptr %143, align 2
  br label %893

147:                                              ; preds = %140
  %148 = and i16 %144, -2
  store i16 %148, ptr %143, align 2
  br label %893

149:                                              ; preds = %82
  %150 = load i32, ptr %11, align 4
  %151 = icmp eq i32 %150, 0
  %152 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 4
  %153 = load i16, ptr %152, align 2
  br i1 %151, label %156, label %154

154:                                              ; preds = %149
  %155 = or i16 %153, 2
  store i16 %155, ptr %152, align 2
  br label %893

156:                                              ; preds = %149
  %157 = and i16 %153, -3
  store i16 %157, ptr %152, align 2
  br label %893

158:                                              ; preds = %82
  %159 = load i32, ptr %11, align 4
  %160 = icmp eq i32 %159, 0
  %161 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 4
  %162 = load i16, ptr %161, align 2
  br i1 %160, label %165, label %163

163:                                              ; preds = %158
  %164 = or i16 %162, 4
  store i16 %164, ptr %161, align 2
  br label %893

165:                                              ; preds = %158
  %166 = and i16 %162, -5
  store i16 %166, ptr %161, align 2
  br label %893

167:                                              ; preds = %82
  %168 = load i32, ptr %11, align 4
  %169 = icmp eq i32 %168, 0
  %170 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 4
  %171 = load i16, ptr %170, align 2
  br i1 %169, label %174, label %172

172:                                              ; preds = %167
  %173 = or i16 %171, 8
  store i16 %173, ptr %170, align 2
  br label %893

174:                                              ; preds = %167
  %175 = and i16 %171, -9
  store i16 %175, ptr %170, align 2
  br label %893

176:                                              ; preds = %82
  %177 = load i32, ptr %11, align 4
  %178 = icmp eq i32 %177, 0
  %179 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 4
  %180 = load i16, ptr %179, align 2
  br i1 %178, label %183, label %181

181:                                              ; preds = %176
  %182 = or i16 %180, 16
  store i16 %182, ptr %179, align 2
  br label %893

183:                                              ; preds = %176
  %184 = and i16 %180, -17
  store i16 %184, ptr %179, align 2
  br label %893

185:                                              ; preds = %82
  %186 = load i32, ptr %11, align 4
  %187 = icmp eq i32 %186, 0
  %188 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 4
  %189 = load i16, ptr %188, align 2
  br i1 %187, label %192, label %190

190:                                              ; preds = %185
  %191 = or i16 %189, 32
  store i16 %191, ptr %188, align 2
  br label %893

192:                                              ; preds = %185
  %193 = and i16 %189, -33
  store i16 %193, ptr %188, align 2
  br label %893

194:                                              ; preds = %82
  %195 = load i32, ptr %11, align 4
  %196 = icmp eq i32 %195, 0
  %197 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 4
  %198 = load i16, ptr %197, align 2
  br i1 %196, label %201, label %199

199:                                              ; preds = %194
  %200 = or i16 %198, 64
  store i16 %200, ptr %197, align 2
  br label %893

201:                                              ; preds = %194
  %202 = and i16 %198, -65
  store i16 %202, ptr %197, align 2
  br label %893

203:                                              ; preds = %82
  %204 = load i32, ptr %11, align 4
  %205 = icmp eq i32 %204, 0
  %206 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 4
  %207 = load i16, ptr %206, align 2
  %208 = and i16 %207, 128
  %209 = icmp eq i16 %208, 0
  br i1 %205, label %216, label %210

210:                                              ; preds = %203
  br i1 %209, label %211, label %893

211:                                              ; preds = %210
  %212 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 14
  %213 = load i8, ptr %212, align 1
  %214 = add i8 %213, 1
  store i8 %214, ptr %212, align 1
  %215 = or i16 %207, 128
  store i16 %215, ptr %206, align 2
  br label %893

216:                                              ; preds = %203
  br i1 %209, label %893, label %217

217:                                              ; preds = %216
  %218 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 14
  %219 = load i8, ptr %218, align 1
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %223, label %221

221:                                              ; preds = %217
  %222 = add i8 %219, -1
  store i8 %222, ptr %218, align 1
  br label %223

223:                                              ; preds = %221, %217
  %224 = and i16 %207, -129
  store i16 %224, ptr %206, align 2
  br label %893

225:                                              ; preds = %82
  %226 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %227 = load i16, ptr %226, align 2
  %228 = and i16 %227, -2
  %229 = icmp eq i16 %228, 2
  br i1 %229, label %230, label %896

230:                                              ; preds = %225
  %231 = load i32, ptr %11, align 4
  %232 = icmp eq i32 %231, 0
  %233 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 4
  %234 = load i16, ptr %233, align 2
  br i1 %232, label %237, label %235

235:                                              ; preds = %230
  %236 = or i16 %234, 256
  store i16 %236, ptr %233, align 2
  br label %893

237:                                              ; preds = %230
  %238 = and i16 %234, -257
  store i16 %238, ptr %233, align 2
  br label %893

239:                                              ; preds = %82
  %240 = load i32, ptr %11, align 4
  %241 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %242 = load i16, ptr %241, align 2
  %243 = icmp eq i16 %242, 1
  br i1 %243, label %247, label %244

244:                                              ; preds = %239
  %245 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %246 = load i8, ptr %245, align 4
  br label %254

247:                                              ; preds = %239
  %248 = and i32 %240, -4
  %249 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %250 = load i8, ptr %249, align 4
  %251 = and i8 %250, 3
  %252 = zext i8 %251 to i32
  %253 = or i32 %248, %252
  br label %254

254:                                              ; preds = %247, %244
  %255 = phi i8 [ %250, %247 ], [ %246, %244 ]
  %256 = phi i32 [ %253, %247 ], [ %240, %244 ]
  %257 = zext i8 %255 to i32
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %893, label %259

259:                                              ; preds = %254
  %260 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %261 = trunc i32 %256 to i8
  store i8 %261, ptr %260, align 4
  %262 = lshr i32 %256, 1
  %263 = and i32 %262, 15
  %264 = getelementptr [16 x i8], ptr @ip_tos2prio, i32 0, i32 %263
  %265 = load i8, ptr %264, align 1
  %266 = zext i8 %265 to i32
  %267 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 33
  store i32 %266, ptr %267, align 4
  %268 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 16
  store i16 -1, ptr %268, align 4
  %269 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %269, align 4
  %270 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !25
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %270) #11, !srcloc !12
  %271 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %270) #11, !srcloc !26
  %272 = extractvalue { i32, i32 } %271, 0
  %273 = inttoptr i32 %272 to ptr
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !27
  call void @dst_release(ptr noundef %273) #11
  br label %893

274:                                              ; preds = %82
  %275 = icmp eq i32 %4, 0
  br i1 %275, label %896, label %276

276:                                              ; preds = %274
  %277 = load i32, ptr %11, align 4
  %278 = icmp ne i32 %277, -1
  %279 = add i32 %277, -256
  %280 = icmp ult i32 %279, -255
  %281 = and i1 %278, %280
  br i1 %281, label %896, label %282

282:                                              ; preds = %276
  %283 = trunc i32 %277 to i16
  %284 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 3
  store i16 %283, ptr %284, align 8
  br label %893

285:                                              ; preds = %82
  %286 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %287 = load i16, ptr %286, align 2
  %288 = icmp eq i16 %287, 3
  br i1 %288, label %289, label %893

289:                                              ; preds = %285
  %290 = load i32, ptr %11, align 4
  %291 = icmp eq i32 %290, 0
  %292 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %293 = load i16, ptr %292, align 8
  %294 = select i1 %291, i16 0, i16 8
  %295 = and i16 %293, -9
  %296 = or i16 %295, %294
  store i16 %296, ptr %292, align 8
  br label %893

297:                                              ; preds = %82
  %298 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %299 = load i16, ptr %298, align 2
  %300 = icmp eq i16 %299, 3
  br i1 %300, label %301, label %893

301:                                              ; preds = %297
  %302 = load i32, ptr %11, align 4
  %303 = icmp eq i32 %302, 0
  %304 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %305 = load i16, ptr %304, align 8
  %306 = select i1 %303, i16 0, i16 128
  %307 = and i16 %305, -129
  %308 = or i16 %307, %306
  store i16 %308, ptr %304, align 8
  br label %893

309:                                              ; preds = %82
  %310 = load i32, ptr %11, align 4
  %311 = icmp eq i32 %310, 0
  %312 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %313 = load i16, ptr %312, align 8
  %314 = select i1 %311, i16 0, i16 256
  %315 = and i16 %313, -257
  %316 = or i16 %315, %314
  store i16 %316, ptr %312, align 8
  br label %893

317:                                              ; preds = %82
  %318 = load i32, ptr %11, align 4
  %319 = icmp ugt i32 %318, 5
  br i1 %319, label %896, label %320

320:                                              ; preds = %317
  %321 = trunc i32 %318 to i8
  %322 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 11
  store i8 %321, ptr %322, align 1
  br label %893

323:                                              ; preds = %82
  %324 = load i32, ptr %11, align 4
  %325 = icmp ne i32 %324, 0
  %326 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %327 = zext i1 %325 to i16
  %328 = load i16, ptr %326, align 8
  %329 = and i16 %328, -2
  %330 = or i16 %329, %327
  store i16 %330, ptr %326, align 8
  %331 = icmp eq i32 %324, 0
  br i1 %331, label %332, label %893

332:                                              ; preds = %323
  %333 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 7
  call void @skb_queue_purge(ptr noundef %333) #11
  br label %893

334:                                              ; preds = %82
  %335 = load i32, ptr %11, align 4
  %336 = icmp ugt i32 %335, 1
  br i1 %336, label %896, label %337

337:                                              ; preds = %334
  %338 = icmp eq i32 %335, 0
  %339 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %340 = load i16, ptr %339, align 8
  %341 = select i1 %338, i16 0, i16 512
  %342 = and i16 %340, -513
  %343 = or i16 %342, %341
  store i16 %343, ptr %339, align 8
  br label %893

344:                                              ; preds = %82
  %345 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %346 = load i16, ptr %345, align 2
  %347 = icmp eq i16 %346, 1
  %348 = icmp eq i32 %4, 0
  %349 = or i1 %348, %347
  br i1 %349, label %896, label %350

350:                                              ; preds = %344
  %351 = load i32, ptr %11, align 4
  %352 = icmp eq i32 %351, -1
  br i1 %352, label %353, label %354

353:                                              ; preds = %350
  store i32 1, ptr %11, align 4
  br label %356

354:                                              ; preds = %350
  %355 = icmp ugt i32 %351, 255
  br i1 %355, label %896, label %356

356:                                              ; preds = %354, %353
  %357 = phi i32 [ 1, %353 ], [ %351, %354 ]
  %358 = trunc i32 %357 to i8
  %359 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 10
  store i8 %358, ptr %359, align 2
  br label %893

360:                                              ; preds = %82
  %361 = icmp eq i32 %4, 0
  br i1 %361, label %896, label %362

362:                                              ; preds = %360
  %363 = load i32, ptr %11, align 4
  %364 = icmp eq i32 %363, 0
  %365 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %366 = load i16, ptr %365, align 8
  %367 = select i1 %364, i16 0, i16 16
  %368 = and i16 %366, -17
  %369 = or i16 %368, %367
  store i16 %369, ptr %365, align 8
  br label %893

370:                                              ; preds = %82
  %371 = icmp eq i32 %4, 4
  br i1 %371, label %372, label %896

372:                                              ; preds = %370
  %373 = load i32, ptr %11, align 4
  %374 = call i32 @llvm.bswap.i32(i32 %373) #11
  %375 = icmp eq i32 %373, 0
  br i1 %375, label %376, label %378

376:                                              ; preds = %372
  %377 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 15
  store i32 0, ptr %377, align 4
  br label %893

378:                                              ; preds = %372
  %379 = call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %374) #11
  %380 = icmp eq ptr %379, null
  br i1 %380, label %893, label %381

381:                                              ; preds = %378
  %382 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !33
  %383 = getelementptr inbounds %struct.net_device, ptr %379, i32 0, i32 99
  %384 = load ptr, ptr %383, align 8
  %385 = ptrtoint ptr %384 to i32
  %386 = call i32 @llvm.read_register.i32(metadata !0) #11
  %387 = inttoptr i32 %386 to ptr
  %388 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %387) #10, !srcloc !34
  %389 = add i32 %388, %385
  %390 = inttoptr i32 %389 to ptr
  %391 = load i32, ptr %390, align 4
  %392 = add i32 %391, -1
  store i32 %392, ptr %390, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %382) #11, !srcloc !35
  %393 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %394 = load i32, ptr %393, align 4
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %893

396:                                              ; preds = %381
  %397 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 15
  store i32 %374, ptr %397, align 4
  br label %893

398:                                              ; preds = %82
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(12) %14, i8 0, i32 12, i1 false) #11, !annotation !9
  %399 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %400 = load i16, ptr %399, align 2
  %401 = icmp eq i16 %400, 1
  %402 = icmp ult i32 %4, 4
  %403 = or i1 %402, %401
  br i1 %403, label %527, label %404

404:                                              ; preds = %398
  %405 = icmp ugt i32 %4, 11
  br i1 %405, label %406, label %429

406:                                              ; preds = %404
  %407 = extractvalue [2 x i32] %3, 0
  %408 = inttoptr i32 %407 to ptr
  %409 = extractvalue [2 x i32] %3, 1
  %410 = and i32 %409, 1
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %428

412:                                              ; preds = %406
  %413 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %408, i32 12, i32 -1090519040) #13, !srcloc !28
  %414 = extractvalue { i32, i32 } %413, 0
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %424, !prof !10

416:                                              ; preds = %412
  %417 = tail call ptr @llvm.thread.pointer() #11
  %418 = getelementptr inbounds %struct.thread_info, ptr %417, i32 0, i32 3
  %419 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %418) #10, !srcloc !29
  %420 = and i32 %419, -13
  %421 = or i32 %420, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %421) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %422 = call i32 @arm_copy_from_user(ptr noundef nonnull %14, ptr noundef %408, i32 noundef 12) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %419) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %480, label %424, !prof !10

424:                                              ; preds = %416, %412
  %425 = phi i32 [ %422, %416 ], [ 12, %412 ]
  %426 = sub i32 12, %425
  %427 = getelementptr i8, ptr %14, i32 %426
  call void @llvm.memset.p0.i32(ptr align 1 %427, i8 0, i32 %425, i1 false) #11
  br label %525

428:                                              ; preds = %406
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef align 1 dereferenceable(12) %408, i32 12, i1 false) #11
  br label %480

429:                                              ; preds = %404
  %430 = icmp ugt i32 %4, 7
  br i1 %430, label %431, label %455

431:                                              ; preds = %429
  %432 = extractvalue [2 x i32] %3, 0
  %433 = inttoptr i32 %432 to ptr
  %434 = extractvalue [2 x i32] %3, 1
  %435 = and i32 %434, 1
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %453

437:                                              ; preds = %431
  %438 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %433, i32 8, i32 -1090519040) #13, !srcloc !28
  %439 = extractvalue { i32, i32 } %438, 0
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %441, label %449, !prof !10

441:                                              ; preds = %437
  %442 = tail call ptr @llvm.thread.pointer() #11
  %443 = getelementptr inbounds %struct.thread_info, ptr %442, i32 0, i32 3
  %444 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %443) #10, !srcloc !29
  %445 = and i32 %444, -13
  %446 = or i32 %445, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %446) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %447 = call i32 @arm_copy_from_user(ptr noundef nonnull %14, ptr noundef %433, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %444) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %480, label %449, !prof !10

449:                                              ; preds = %441, %437
  %450 = phi i32 [ %447, %441 ], [ 8, %437 ]
  %451 = sub i32 8, %450
  %452 = getelementptr i8, ptr %14, i32 %451
  call void @llvm.memset.p0.i32(ptr align 1 %452, i8 0, i32 %450, i1 false) #11
  br label %525

453:                                              ; preds = %431
  %454 = load i64, ptr %433, align 1
  store i64 %454, ptr %14, align 8
  br label %480

455:                                              ; preds = %429
  %456 = getelementptr inbounds %struct.ip_mreqn, ptr %14, i32 0, i32 1
  %457 = extractvalue [2 x i32] %3, 0
  %458 = inttoptr i32 %457 to ptr
  %459 = extractvalue [2 x i32] %3, 1
  %460 = and i32 %459, 1
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %462, label %478

462:                                              ; preds = %455
  %463 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %458, i32 4, i32 -1090519040) #13, !srcloc !28
  %464 = extractvalue { i32, i32 } %463, 0
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %466, label %474, !prof !10

466:                                              ; preds = %462
  %467 = tail call ptr @llvm.thread.pointer() #11
  %468 = getelementptr inbounds %struct.thread_info, ptr %467, i32 0, i32 3
  %469 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %468) #10, !srcloc !29
  %470 = and i32 %469, -13
  %471 = or i32 %470, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %471) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %472 = call i32 @arm_copy_from_user(ptr noundef %456, ptr noundef %458, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %469) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %480, label %474, !prof !10

474:                                              ; preds = %466, %462
  %475 = phi i32 [ %472, %466 ], [ 4, %462 ]
  %476 = sub i32 4, %475
  %477 = getelementptr i8, ptr %456, i32 %476
  call void @llvm.memset.p0.i32(ptr align 1 %477, i8 0, i32 %475, i1 false) #11
  br label %525

478:                                              ; preds = %455
  %479 = load i32, ptr %458, align 1
  store i32 %479, ptr %456, align 4
  br label %480

480:                                              ; preds = %478, %466, %453, %441, %428, %416
  %481 = getelementptr inbounds %struct.ip_mreqn, ptr %14, i32 0, i32 2
  %482 = load i32, ptr %481, align 8
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %496

484:                                              ; preds = %480
  %485 = getelementptr inbounds %struct.ip_mreqn, ptr %14, i32 0, i32 1
  %486 = load i32, ptr %485, align 4
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %488, label %490

488:                                              ; preds = %484
  %489 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 16
  store i32 0, ptr %489, align 8
  br label %522

490:                                              ; preds = %484
  %491 = call ptr @__ip_dev_find(ptr noundef nonnull @init_net, i32 noundef %486, i1 noundef zeroext true) #11
  %492 = icmp eq ptr %491, null
  br i1 %492, label %525, label %493

493:                                              ; preds = %490
  %494 = getelementptr inbounds %struct.net_device, ptr %491, i32 0, i32 17
  %495 = load i32, ptr %494, align 4
  store i32 %495, ptr %481, align 8
  br label %499

496:                                              ; preds = %480
  %497 = call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %482) #11
  %498 = icmp eq ptr %497, null
  br i1 %498, label %525, label %499

499:                                              ; preds = %496, %493
  %500 = phi ptr [ %491, %493 ], [ %497, %496 ]
  %501 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !33
  %502 = getelementptr inbounds %struct.net_device, ptr %500, i32 0, i32 99
  %503 = load ptr, ptr %502, align 8
  %504 = ptrtoint ptr %503 to i32
  %505 = call i32 @llvm.read_register.i32(metadata !0) #11
  %506 = inttoptr i32 %505 to ptr
  %507 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %506) #10, !srcloc !34
  %508 = add i32 %507, %504
  %509 = inttoptr i32 %508 to ptr
  %510 = load i32, ptr %509, align 4
  %511 = add i32 %510, -1
  store i32 %511, ptr %509, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %501) #11, !srcloc !35
  %512 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %513 = load i32, ptr %512, align 4
  %514 = icmp eq i32 %513, 0
  %515 = load i32, ptr %481, align 8
  %516 = icmp eq i32 %515, %513
  %517 = select i1 %514, i1 true, i1 %516
  br i1 %517, label %518, label %525

518:                                              ; preds = %499
  %519 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 16
  store i32 %515, ptr %519, align 8
  %520 = getelementptr inbounds %struct.ip_mreqn, ptr %14, i32 0, i32 1
  %521 = load i32, ptr %520, align 4
  br label %522

522:                                              ; preds = %518, %488
  %523 = phi i32 [ %521, %518 ], [ 0, %488 ]
  %524 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 17
  store i32 %523, ptr %524, align 4
  br label %525

525:                                              ; preds = %522, %499, %496, %490, %474, %449, %424
  %526 = phi i32 [ -22, %499 ], [ -99, %496 ], [ -99, %490 ], [ 0, %522 ], [ -14, %424 ], [ -14, %449 ], [ -14, %474 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #11
  br label %893

527:                                              ; preds = %398
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #11
  br label %896

528:                                              ; preds = %82, %82
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(12) %15, i8 0, i32 12, i1 false) #11, !annotation !9
  %529 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %530 = load i16, ptr %529, align 8
  %531 = and i16 %530, 2
  %532 = icmp eq i16 %531, 0
  br i1 %532, label %533, label %585

533:                                              ; preds = %528
  %534 = icmp ult i32 %4, 8
  br i1 %534, label %587, label %535

535:                                              ; preds = %533
  %536 = icmp ugt i32 %4, 11
  %537 = extractvalue [2 x i32] %3, 0
  %538 = inttoptr i32 %537 to ptr
  %539 = extractvalue [2 x i32] %3, 1
  %540 = and i32 %539, 1
  %541 = icmp eq i32 %540, 0
  br i1 %536, label %542, label %560

542:                                              ; preds = %535
  br i1 %541, label %543, label %559

543:                                              ; preds = %542
  %544 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %538, i32 12, i32 -1090519040) #13, !srcloc !28
  %545 = extractvalue { i32, i32 } %544, 0
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %547, label %555, !prof !10

547:                                              ; preds = %543
  %548 = tail call ptr @llvm.thread.pointer() #11
  %549 = getelementptr inbounds %struct.thread_info, ptr %548, i32 0, i32 3
  %550 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %549) #10, !srcloc !29
  %551 = and i32 %550, -13
  %552 = or i32 %551, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %552) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %553 = call i32 @arm_copy_from_user(ptr noundef nonnull %15, ptr noundef %538, i32 noundef 12) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %550) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %579, label %555, !prof !10

555:                                              ; preds = %547, %543
  %556 = phi i32 [ %553, %547 ], [ 12, %543 ]
  %557 = sub i32 12, %556
  %558 = getelementptr i8, ptr %15, i32 %557
  call void @llvm.memset.p0.i32(ptr align 1 %558, i8 0, i32 %556, i1 false) #11
  br label %585

559:                                              ; preds = %542
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(12) %15, ptr noundef align 1 dereferenceable(12) %538, i32 12, i1 false) #11
  br label %579

560:                                              ; preds = %535
  br i1 %541, label %561, label %577

561:                                              ; preds = %560
  %562 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %538, i32 8, i32 -1090519040) #13, !srcloc !28
  %563 = extractvalue { i32, i32 } %562, 0
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %565, label %573, !prof !10

565:                                              ; preds = %561
  %566 = tail call ptr @llvm.thread.pointer() #11
  %567 = getelementptr inbounds %struct.thread_info, ptr %566, i32 0, i32 3
  %568 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %567) #10, !srcloc !29
  %569 = and i32 %568, -13
  %570 = or i32 %569, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %570) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %571 = call i32 @arm_copy_from_user(ptr noundef nonnull %15, ptr noundef %538, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %568) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %579, label %573, !prof !10

573:                                              ; preds = %565, %561
  %574 = phi i32 [ %571, %565 ], [ 8, %561 ]
  %575 = sub i32 8, %574
  %576 = getelementptr i8, ptr %15, i32 %575
  call void @llvm.memset.p0.i32(ptr align 1 %576, i8 0, i32 %574, i1 false) #11
  br label %585

577:                                              ; preds = %560
  %578 = load i64, ptr %538, align 1
  store i64 %578, ptr %15, align 8
  br label %579

579:                                              ; preds = %577, %565, %559, %547
  %580 = icmp eq i32 %2, 35
  br i1 %580, label %581, label %583

581:                                              ; preds = %579
  %582 = call i32 @ip_mc_join_group(ptr noundef %0, ptr noundef nonnull %15) #11
  br label %585

583:                                              ; preds = %579
  %584 = call i32 @ip_mc_leave_group(ptr noundef %0, ptr noundef nonnull %15) #11
  br label %585

585:                                              ; preds = %583, %581, %573, %555, %528
  %586 = phi i32 [ %584, %583 ], [ %582, %581 ], [ -71, %528 ], [ -14, %555 ], [ -14, %573 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #11
  br label %893

587:                                              ; preds = %533
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #11
  br label %896

588:                                              ; preds = %82
  %589 = icmp ult i32 %4, 16
  br i1 %589, label %896, label %590

590:                                              ; preds = %588
  %591 = load i32, ptr @sysctl_optmem_max, align 4
  %592 = icmp ult i32 %591, %4
  br i1 %592, label %893, label %593

593:                                              ; preds = %590
  %594 = call fastcc ptr @memdup_sockptr([2 x i32] %3, i32 noundef %4) #11
  %595 = icmp ugt ptr %594, inttoptr (i32 -4096 to ptr)
  br i1 %595, label %596, label %598

596:                                              ; preds = %593
  %597 = ptrtoint ptr %594 to i32
  br label %893

598:                                              ; preds = %593
  %599 = getelementptr inbounds %struct.anon.156, ptr %594, i32 0, i32 3
  %600 = load i32, ptr %599, align 4
  %601 = icmp ugt i32 %600, 1073741819
  %602 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 112), align 16
  %603 = icmp ugt i32 %600, %602
  %604 = select i1 %601, i1 true, i1 %603
  br i1 %604, label %605, label %606

605:                                              ; preds = %598
  call void @kfree(ptr noundef %594) #11
  br label %893

606:                                              ; preds = %598
  %607 = shl nuw i32 %600, 2
  %608 = add nuw i32 %607, 16
  %609 = icmp ugt i32 %608, %4
  br i1 %609, label %610, label %611

610:                                              ; preds = %606
  call void @kfree(ptr noundef %594) #11
  br label %893

611:                                              ; preds = %606
  %612 = call i32 @ip_mc_msfilter(ptr noundef %0, ptr noundef %594, i32 noundef 0) #11
  call void @kfree(ptr noundef %594) #11
  br label %893

613:                                              ; preds = %82, %82, %82, %82
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %16, i8 0, i32 12, i1 false) #11, !annotation !9
  %614 = icmp eq i32 %4, 12
  br i1 %614, label %616, label %615

615:                                              ; preds = %613
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #11
  br label %896

616:                                              ; preds = %613
  %617 = extractvalue [2 x i32] %3, 0
  %618 = inttoptr i32 %617 to ptr
  %619 = extractvalue [2 x i32] %3, 1
  %620 = and i32 %619, 1
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %622, label %638

622:                                              ; preds = %616
  %623 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %618, i32 12, i32 -1090519040) #13, !srcloc !28
  %624 = extractvalue { i32, i32 } %623, 0
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %626, label %634, !prof !10

626:                                              ; preds = %622
  %627 = tail call ptr @llvm.thread.pointer() #11
  %628 = getelementptr inbounds %struct.thread_info, ptr %627, i32 0, i32 3
  %629 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %628) #10, !srcloc !29
  %630 = and i32 %629, -13
  %631 = or i32 %630, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %631) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %632 = call i32 @arm_copy_from_user(ptr noundef nonnull %16, ptr noundef %618, i32 noundef 12) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %629) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %639, label %634, !prof !10

634:                                              ; preds = %626, %622
  %635 = phi i32 [ %632, %626 ], [ 12, %622 ]
  %636 = sub i32 12, %635
  %637 = getelementptr i8, ptr %16, i32 %636
  call void @llvm.memset.p0.i32(ptr align 1 %637, i8 0, i32 %635, i1 false) #11
  br label %657

638:                                              ; preds = %616
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %16, ptr noundef align 1 dereferenceable(12) %618, i32 12, i1 false) #11
  br label %639

639:                                              ; preds = %638, %626
  switch i32 %2, label %652 [
    i32 38, label %653
    i32 37, label %640
    i32 39, label %641
  ]

640:                                              ; preds = %639
  br label %653

641:                                              ; preds = %639
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #11
  %642 = load i32, ptr %16, align 4
  store i32 %642, ptr %17, align 4
  %643 = getelementptr inbounds %struct.ip_mreq_source, ptr %16, i32 0, i32 1
  %644 = load i32, ptr %643, align 4
  %645 = getelementptr inbounds %struct.ip_mreqn, ptr %17, i32 0, i32 1
  store i32 %644, ptr %645, align 4
  %646 = getelementptr inbounds %struct.ip_mreqn, ptr %17, i32 0, i32 2
  store i32 0, ptr %646, align 4
  %647 = call i32 @ip_mc_join_group_ssm(ptr noundef %0, ptr noundef nonnull %17, i32 noundef 1) #11
  switch i32 %647, label %649 [
    i32 -98, label %648
    i32 0, label %648
  ]

648:                                              ; preds = %641, %641
  br label %649

649:                                              ; preds = %648, %641
  %650 = phi i1 [ true, %641 ], [ false, %648 ]
  %651 = phi i32 [ 0, %641 ], [ 1, %648 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #11
  switch i32 %647, label %659 [
    i32 -98, label %653
    i32 0, label %653
  ]

652:                                              ; preds = %639
  br label %653

653:                                              ; preds = %652, %649, %649, %640, %639
  %654 = phi i32 [ 0, %640 ], [ %651, %649 ], [ 1, %652 ], [ 0, %639 ], [ %651, %649 ]
  %655 = phi i32 [ 0, %640 ], [ %651, %649 ], [ 0, %652 ], [ 1, %639 ], [ %651, %649 ]
  %656 = call i32 @ip_mc_source(i32 noundef %655, i32 noundef %654, ptr noundef %0, ptr noundef nonnull %16, i32 noundef 0) #11
  br label %657

657:                                              ; preds = %653, %634
  %658 = phi i32 [ %656, %653 ], [ -14, %634 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #11
  br label %893

659:                                              ; preds = %649
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #11
  br i1 %650, label %893, label %898

660:                                              ; preds = %82, %82
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  %661 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 0, ptr %661, align 4
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %7) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(132) %7, i8 0, i32 132, i1 false) #11, !annotation !9
  %662 = icmp ult i32 %4, 132
  br i1 %662, label %700, label %663

663:                                              ; preds = %660
  %664 = extractvalue [2 x i32] %3, 0
  %665 = inttoptr i32 %664 to ptr
  %666 = extractvalue [2 x i32] %3, 1
  %667 = and i32 %666, 1
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %669, label %685

669:                                              ; preds = %663
  %670 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %665, i32 132, i32 -1090519040) #13, !srcloc !28
  %671 = extractvalue { i32, i32 } %670, 0
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %673, label %681, !prof !10

673:                                              ; preds = %669
  %674 = tail call ptr @llvm.thread.pointer() #11
  %675 = getelementptr inbounds %struct.thread_info, ptr %674, i32 0, i32 3
  %676 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %675) #10, !srcloc !29
  %677 = and i32 %676, -13
  %678 = or i32 %677, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %678) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %679 = call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef %665, i32 noundef 132) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %676) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %686, label %681, !prof !10

681:                                              ; preds = %673, %669
  %682 = phi i32 [ %679, %673 ], [ 132, %669 ]
  %683 = sub i32 132, %682
  %684 = getelementptr i8, ptr %7, i32 %683
  call void @llvm.memset.p0.i32(ptr align 1 %684, i8 0, i32 %682, i1 false) #11
  br label %700

685:                                              ; preds = %663
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(132) %7, ptr noundef align 1 dereferenceable(132) %665, i32 132, i1 false) #11
  br label %686

686:                                              ; preds = %685, %673
  %687 = getelementptr inbounds %struct.group_req, ptr %7, i32 0, i32 1
  %688 = load i16, ptr %687, align 4
  %689 = icmp eq i16 %688, 2
  br i1 %689, label %690, label %700

690:                                              ; preds = %686
  %691 = getelementptr inbounds %struct.group_req, ptr %7, i32 0, i32 1, i32 0, i32 1
  %692 = load i32, ptr %691, align 4
  store i32 %692, ptr %6, align 4
  %693 = load i32, ptr %7, align 4
  %694 = getelementptr inbounds %struct.ip_mreqn, ptr %6, i32 0, i32 2
  store i32 %693, ptr %694, align 4
  %695 = icmp eq i32 %2, 42
  br i1 %695, label %696, label %698

696:                                              ; preds = %690
  %697 = call i32 @ip_mc_join_group(ptr noundef %0, ptr noundef nonnull %6) #11
  br label %700

698:                                              ; preds = %690
  %699 = call i32 @ip_mc_leave_group(ptr noundef %0, ptr noundef nonnull %6) #11
  br label %700

700:                                              ; preds = %698, %696, %686, %681, %660
  %701 = phi i32 [ %697, %696 ], [ %699, %698 ], [ -22, %660 ], [ -22, %686 ], [ -14, %681 ]
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  br label %893

702:                                              ; preds = %82, %82, %82, %82
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %8) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(260) %8, i8 0, i32 260, i1 false) #11, !annotation !9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #11
  %703 = icmp eq i32 %4, 260
  br i1 %703, label %704, label %758

704:                                              ; preds = %702
  %705 = extractvalue [2 x i32] %3, 0
  %706 = inttoptr i32 %705 to ptr
  %707 = extractvalue [2 x i32] %3, 1
  %708 = and i32 %707, 1
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %710, label %726

710:                                              ; preds = %704
  %711 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %706, i32 260, i32 -1090519040) #13, !srcloc !28
  %712 = extractvalue { i32, i32 } %711, 0
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %714, label %722, !prof !10

714:                                              ; preds = %710
  %715 = tail call ptr @llvm.thread.pointer() #11
  %716 = getelementptr inbounds %struct.thread_info, ptr %715, i32 0, i32 3
  %717 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %716) #10, !srcloc !29
  %718 = and i32 %717, -13
  %719 = or i32 %718, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %719) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %720 = call i32 @arm_copy_from_user(ptr noundef nonnull %8, ptr noundef %706, i32 noundef 260) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %717) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %727, label %722, !prof !10

722:                                              ; preds = %714, %710
  %723 = phi i32 [ %720, %714 ], [ 260, %710 ]
  %724 = sub i32 260, %723
  %725 = getelementptr i8, ptr %8, i32 %724
  call void @llvm.memset.p0.i32(ptr align 1 %725, i8 0, i32 %723, i1 false) #11
  br label %758

726:                                              ; preds = %704
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(260) %8, ptr noundef align 1 dereferenceable(260) %706, i32 260, i1 false) #11
  br label %727

727:                                              ; preds = %726, %714
  %728 = getelementptr inbounds %struct.group_source_req, ptr %8, i32 0, i32 1
  %729 = load i16, ptr %728, align 4
  %730 = icmp eq i16 %729, 2
  br i1 %730, label %731, label %758

731:                                              ; preds = %727
  %732 = getelementptr inbounds %struct.group_source_req, ptr %8, i32 0, i32 2
  %733 = load i16, ptr %732, align 4
  %734 = icmp eq i16 %733, 2
  br i1 %734, label %735, label %758

735:                                              ; preds = %731
  %736 = getelementptr inbounds %struct.group_source_req, ptr %8, i32 0, i32 1, i32 0, i32 1
  %737 = load i32, ptr %736, align 4
  store i32 %737, ptr %9, align 4
  %738 = getelementptr inbounds %struct.group_source_req, ptr %8, i32 0, i32 2, i32 0, i32 1
  %739 = load i32, ptr %738, align 4
  %740 = getelementptr inbounds %struct.ip_mreq_source, ptr %9, i32 0, i32 2
  store i32 %739, ptr %740, align 4
  %741 = getelementptr inbounds %struct.ip_mreq_source, ptr %9, i32 0, i32 1
  store i32 0, ptr %741, align 4
  switch i32 %2, label %752 [
    i32 43, label %753
    i32 44, label %742
    i32 46, label %743
  ]

742:                                              ; preds = %735
  br label %753

743:                                              ; preds = %735
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #11
  store i32 %737, ptr %10, align 4
  %744 = getelementptr inbounds %struct.ip_mreqn, ptr %10, i32 0, i32 1
  store i32 0, ptr %744, align 4
  %745 = load i32, ptr %8, align 4
  %746 = getelementptr inbounds %struct.ip_mreqn, ptr %10, i32 0, i32 2
  store i32 %745, ptr %746, align 4
  %747 = call i32 @ip_mc_join_group_ssm(ptr noundef %0, ptr noundef nonnull %10, i32 noundef 1) #11
  switch i32 %747, label %750 [
    i32 -98, label %748
    i32 0, label %748
  ]

748:                                              ; preds = %743, %743
  %749 = load i32, ptr %746, align 4
  store i32 %749, ptr %8, align 4
  br label %750

750:                                              ; preds = %748, %743
  %751 = phi i32 [ 1, %748 ], [ 0, %743 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #11
  switch i32 %747, label %758 [
    i32 -98, label %753
    i32 0, label %753
  ]

752:                                              ; preds = %735
  br label %753

753:                                              ; preds = %752, %750, %750, %742, %735
  %754 = phi i32 [ 0, %742 ], [ %751, %750 ], [ 1, %752 ], [ 0, %735 ], [ %751, %750 ]
  %755 = phi i32 [ 0, %742 ], [ %751, %750 ], [ 0, %752 ], [ 1, %735 ], [ %751, %750 ]
  %756 = load i32, ptr %8, align 4
  %757 = call i32 @ip_mc_source(i32 noundef %755, i32 noundef %754, ptr noundef %0, ptr noundef nonnull %9, i32 noundef %756) #11
  br label %758

758:                                              ; preds = %753, %750, %731, %727, %722, %702
  %759 = phi i32 [ %757, %753 ], [ %747, %750 ], [ -99, %731 ], [ -99, %727 ], [ -14, %722 ], [ -22, %702 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %8) #11
  br label %893

760:                                              ; preds = %82
  %761 = icmp ult i32 %4, 140
  br i1 %761, label %893, label %762

762:                                              ; preds = %760
  %763 = load i32, ptr @sysctl_optmem_max, align 4
  %764 = icmp slt i32 %763, %4
  br i1 %764, label %893, label %765

765:                                              ; preds = %762
  %766 = call fastcc ptr @memdup_sockptr([2 x i32] %3, i32 noundef %4) #11
  %767 = icmp ugt ptr %766, inttoptr (i32 -4096 to ptr)
  br i1 %767, label %768, label %770

768:                                              ; preds = %765
  %769 = ptrtoint ptr %766 to i32
  br label %893

770:                                              ; preds = %765
  %771 = getelementptr inbounds %struct.anon.164, ptr %766, i32 0, i32 3
  %772 = load i32, ptr %771, align 4
  %773 = icmp ugt i32 %772, 33554430
  %774 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 112), align 16
  %775 = icmp ugt i32 %772, %774
  %776 = select i1 %773, i1 true, i1 %775
  br i1 %776, label %816, label %777

777:                                              ; preds = %770
  %778 = shl nuw i32 %772, 7
  %779 = add nuw i32 %778, 140
  %780 = icmp ugt i32 %779, %4
  br i1 %780, label %816, label %781

781:                                              ; preds = %777
  %782 = load i32, ptr %766, align 4
  %783 = getelementptr inbounds %struct.anon.164, ptr %766, i32 0, i32 2
  %784 = load i32, ptr %783, align 4
  %785 = getelementptr inbounds %struct.anon.164, ptr %766, i32 0, i32 4
  %786 = shl nuw nsw i32 %772, 2
  %787 = add nuw nsw i32 %786, 16
  %788 = call noalias align 64 ptr @__kmalloc(i32 noundef %787, i32 noundef 3264) #14
  %789 = icmp eq ptr %788, null
  br i1 %789, label %816, label %790

790:                                              ; preds = %781
  %791 = getelementptr inbounds %struct.anon.164, ptr %766, i32 0, i32 1
  %792 = load i16, ptr %791, align 4
  %793 = icmp eq i16 %792, 2
  br i1 %793, label %794, label %814

794:                                              ; preds = %790
  %795 = getelementptr inbounds %struct.anon.164, ptr %766, i32 0, i32 1, i32 0, i32 1
  %796 = load i32, ptr %795, align 4
  store i32 %796, ptr %788, align 64
  %797 = getelementptr inbounds %struct.anon.156, ptr %788, i32 0, i32 1
  store i32 0, ptr %797, align 4
  %798 = getelementptr inbounds %struct.anon.156, ptr %788, i32 0, i32 2
  store i32 %784, ptr %798, align 8
  %799 = getelementptr inbounds %struct.anon.156, ptr %788, i32 0, i32 3
  store i32 %772, ptr %799, align 4
  %800 = icmp eq i32 %772, 0
  br i1 %800, label %812, label %801

801:                                              ; preds = %806, %794
  %802 = phi i32 [ %810, %806 ], [ 0, %794 ]
  %803 = getelementptr %struct.__kernel_sockaddr_storage, ptr %785, i32 %802
  %804 = load i16, ptr %803, align 4
  %805 = icmp eq i16 %804, 2
  br i1 %805, label %806, label %814

806:                                              ; preds = %801
  %807 = getelementptr inbounds %struct.sockaddr_in, ptr %803, i32 0, i32 2
  %808 = load i32, ptr %807, align 4
  %809 = getelementptr %struct.anon.156, ptr %788, i32 0, i32 4, i32 %802
  store i32 %808, ptr %809, align 4
  %810 = add nuw nsw i32 %802, 1
  %811 = icmp eq i32 %810, %772
  br i1 %811, label %812, label %801

812:                                              ; preds = %806, %794
  %813 = call i32 @ip_mc_msfilter(ptr noundef %0, ptr noundef nonnull %788, i32 noundef %782) #11
  br label %814

814:                                              ; preds = %812, %801, %790
  %815 = phi i32 [ %813, %812 ], [ -99, %790 ], [ -99, %801 ]
  call void @kfree(ptr noundef nonnull %788) #11
  br label %816

816:                                              ; preds = %814, %781, %777, %770
  %817 = phi i32 [ -105, %770 ], [ -22, %777 ], [ -105, %781 ], [ %815, %814 ]
  call void @kfree(ptr noundef %766) #11
  br label %893

818:                                              ; preds = %82
  %819 = icmp eq i32 %4, 0
  br i1 %819, label %896, label %820

820:                                              ; preds = %818
  %821 = load i32, ptr %11, align 4
  %822 = icmp ugt i32 %821, 1
  br i1 %822, label %896, label %823

823:                                              ; preds = %820
  %824 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %825 = trunc i32 %821 to i16
  %826 = load i16, ptr %824, align 8
  %827 = shl nuw nsw i16 %825, 6
  %828 = and i16 %827, 64
  %829 = and i16 %826, -65
  %830 = or i16 %829, %828
  store i16 %830, ptr %824, align 8
  br label %893

831:                                              ; preds = %82
  %832 = icmp eq i32 %4, 0
  br i1 %832, label %896, label %833

833:                                              ; preds = %831
  %834 = load i32, ptr %11, align 4
  %835 = icmp eq i32 %834, 0
  %836 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %837 = load i16, ptr %836, align 8
  %838 = select i1 %835, i16 0, i16 4
  %839 = and i16 %837, -5
  %840 = or i16 %839, %838
  store i16 %840, ptr %836, align 8
  br label %893

841:                                              ; preds = %82, %82
  %842 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %843 = call zeroext i1 @ns_capable(ptr noundef %842, i32 noundef 12) #11
  br i1 %843, label %844, label %893

844:                                              ; preds = %841
  %845 = call i32 @xfrm_user_policy(ptr noundef %0, i32 noundef %2, [2 x i32] %3, i32 noundef %4) #11
  br label %893

846:                                              ; preds = %82
  %847 = load i32, ptr %11, align 4
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %855, label %849

849:                                              ; preds = %846
  %850 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %851 = call zeroext i1 @ns_capable(ptr noundef %850, i32 noundef 13) #11
  br i1 %851, label %855, label %852

852:                                              ; preds = %849
  %853 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %854 = call zeroext i1 @ns_capable(ptr noundef %853, i32 noundef 12) #11
  br i1 %854, label %855, label %893

855:                                              ; preds = %852, %849, %846
  %856 = icmp eq i32 %4, 0
  br i1 %856, label %896, label %857

857:                                              ; preds = %855
  %858 = load i32, ptr %11, align 4
  %859 = icmp eq i32 %858, 0
  %860 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %861 = load i16, ptr %860, align 8
  %862 = select i1 %859, i16 0, i16 32
  %863 = and i16 %861, -33
  %864 = or i16 %863, %862
  store i16 %864, ptr %860, align 8
  br label %893

865:                                              ; preds = %82
  %866 = icmp eq i32 %4, 0
  br i1 %866, label %896, label %867

867:                                              ; preds = %865
  %868 = load i32, ptr %11, align 4
  %869 = icmp ugt i32 %868, 255
  br i1 %869, label %896, label %870

870:                                              ; preds = %867
  %871 = icmp eq i32 %868, 0
  br i1 %871, label %890, label %872

872:                                              ; preds = %870
  %873 = load i8, ptr @static_key_initialized, align 1, !range !36
  %874 = icmp eq i8 %873, 0
  br i1 %874, label %875, label %876, !prof !14

875:                                              ; preds = %872
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 318, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.static_key_enable, ptr noundef nonnull @ip4_min_ttl) #11
  br label %876

876:                                              ; preds = %875, %872
  %877 = load volatile i32, ptr @ip4_min_ttl, align 4
  %878 = icmp eq i32 %877, 0
  br i1 %878, label %886, label %879

879:                                              ; preds = %876
  %880 = load volatile i32, ptr @ip4_min_ttl, align 4
  %881 = icmp ne i32 %880, 1
  %882 = load i1, ptr @static_key_enable.__already_done, align 1
  %883 = xor i1 %882, true
  %884 = select i1 %881, i1 %883, i1 false
  br i1 %884, label %885, label %887, !prof !14

885:                                              ; preds = %879
  store i1 true, ptr @static_key_enable.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 321, i32 noundef 9, ptr noundef null) #11
  br label %887

886:                                              ; preds = %876
  store volatile i32 1, ptr @ip4_min_ttl, align 4
  br label %887

887:                                              ; preds = %886, %885, %879
  %888 = load i32, ptr %11, align 4
  %889 = trunc i32 %888 to i8
  br label %890

890:                                              ; preds = %887, %870
  %891 = phi i8 [ 0, %870 ], [ %889, %887 ]
  %892 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 9
  store volatile i8 %891, ptr %892, align 1
  br label %893

893:                                              ; preds = %890, %857, %852, %844, %841, %833, %823, %816, %768, %762, %760, %758, %700, %659, %657, %611, %610, %605, %596, %590, %585, %525, %396, %381, %378, %376, %362, %356, %337, %332, %323, %320, %309, %301, %297, %289, %285, %282, %259, %254, %237, %235, %223, %216, %211, %210, %201, %199, %192, %190, %183, %181, %174, %172, %165, %163, %156, %154, %147, %145, %138, %82
  %894 = phi i32 [ 0, %890 ], [ 0, %857 ], [ %845, %844 ], [ -1, %841 ], [ 0, %833 ], [ 0, %823 ], [ %759, %758 ], [ %701, %700 ], [ %647, %659 ], [ 0, %362 ], [ 0, %356 ], [ 0, %337 ], [ 0, %323 ], [ 0, %332 ], [ 0, %320 ], [ 0, %309 ], [ 0, %301 ], [ 0, %289 ], [ 0, %282 ], [ 0, %235 ], [ 0, %237 ], [ 0, %210 ], [ 0, %211 ], [ 0, %223 ], [ 0, %216 ], [ 0, %199 ], [ 0, %201 ], [ 0, %190 ], [ 0, %192 ], [ 0, %181 ], [ 0, %183 ], [ 0, %172 ], [ 0, %174 ], [ 0, %163 ], [ 0, %165 ], [ 0, %154 ], [ 0, %156 ], [ 0, %145 ], [ 0, %147 ], [ -92, %285 ], [ -92, %297 ], [ -1, %852 ], [ -92, %82 ], [ %86, %138 ], [ %526, %525 ], [ %586, %585 ], [ %658, %657 ], [ -22, %381 ], [ -99, %378 ], [ 0, %396 ], [ 0, %376 ], [ -105, %590 ], [ %612, %611 ], [ -22, %610 ], [ -105, %605 ], [ %597, %596 ], [ 0, %254 ], [ 0, %259 ], [ %769, %768 ], [ %817, %816 ], [ -22, %760 ], [ -105, %762 ]
  call void @release_sock(ptr noundef %0) #11
  br i1 %21, label %895, label %898

895:                                              ; preds = %893
  call void @rtnl_unlock() #11
  br label %898

896:                                              ; preds = %867, %865, %855, %831, %820, %818, %615, %588, %587, %527, %370, %360, %354, %344, %334, %317, %276, %274, %225, %139
  call void @release_sock(ptr noundef %0) #11
  br i1 %21, label %897, label %898

897:                                              ; preds = %896
  call void @rtnl_unlock() #11
  br label %898

898:                                              ; preds = %897, %896, %895, %893, %659, %75, %68, %42
  %899 = phi i32 [ %79, %75 ], [ -14, %659 ], [ -14, %68 ], [ %894, %895 ], [ %894, %893 ], [ -22, %897 ], [ -22, %896 ], [ -14, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  br label %900

900:                                              ; preds = %898, %5
  %901 = phi i32 [ %899, %898 ], [ -92, %5 ]
  ret i32 %901
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_getsockopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.group_filter, align 4
  %7 = alloca i32, align 4
  %8 = alloca [56 x i8], align 1
  %9 = alloca %struct.in_addr, align 4
  %10 = alloca %struct.ip_msfilter, align 4
  %11 = alloca %struct.msghdr, align 8
  %12 = alloca %struct.in_pktinfo, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 0, ptr %7, align 4, !annotation !9
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %17, label %416

17:                                               ; preds = %5
  %18 = tail call ptr @llvm.thread.pointer() #11
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #10, !srcloc !29
  %21 = and i32 %20, -13
  %22 = or i32 %21, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #11, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %23 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1090519041) #11, !srcloc !37
  %24 = extractvalue { i32, i32 } %23, 0
  %25 = extractvalue { i32, i32 } %23, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #11, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %26 = icmp eq i32 %24, 0
  br i1 %26, label %27, label %416

27:                                               ; preds = %17
  %28 = icmp slt i32 %25, 0
  br i1 %28, label %416, label %29

29:                                               ; preds = %27
  switch i32 %2, label %31 [
    i32 48, label %30
    i32 41, label %30
  ]

30:                                               ; preds = %29, %29
  tail call void @rtnl_lock() #11
  br label %31

31:                                               ; preds = %30, %29
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #11
  switch i32 %2, label %366 [
    i32 4, label %32
    i32 8, label %79
    i32 12, label %84
    i32 13, label %90
    i32 6, label %96
    i32 7, label %102
    i32 18, label %108
    i32 20, label %114
    i32 23, label %120
    i32 25, label %126
    i32 1, label %132
    i32 2, label %136
    i32 3, label %144
    i32 22, label %150
    i32 24, label %156
    i32 10, label %162
    i32 14, label %166
    i32 11, label %184
    i32 26, label %189
    i32 33, label %195
    i32 34, label %199
    i32 50, label %205
    i32 32, label %209
    i32 41, label %233
    i32 48, label %253
    i32 49, label %294
    i32 9, label %300
    i32 15, label %350
    i32 19, label %356
    i32 21, label %362
  ]

32:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(56) %8, i8 0, i32 56, i1 false) #11, !annotation !9
  %33 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ip_options, ptr %8, i32 0, i32 2
  %36 = icmp eq ptr %34, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.ip_options_rcu, ptr %34, i32 0, i32 1
  %39 = getelementptr inbounds %struct.ip_options_rcu, ptr %34, i32 0, i32 1, i32 2
  %40 = load i8, ptr %39, align 4
  %41 = zext i8 %40 to i32
  %42 = add nuw nsw i32 %41, 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 %8, ptr noundef align 4 %38, i32 %42, i1 false) #11
  br label %43

43:                                               ; preds = %37, %32
  tail call void @release_sock(ptr noundef %0) #11
  %44 = load i8, ptr %35, align 4
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #10, !srcloc !29
  %48 = and i32 %47, -13
  %49 = or i32 %48, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #11, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %50 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 0, i32 -1090519041) #11, !srcloc !38
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #11, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  br label %77

51:                                               ; preds = %43
  call void @ip_options_undo(ptr noundef nonnull %8) #11
  %52 = load i8, ptr %35, align 4
  %53 = zext i8 %52 to i32
  %54 = call i32 @llvm.umin.i32(i32 %25, i32 %53) #11
  %55 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #10, !srcloc !29
  %56 = and i32 %55, -13
  %57 = or i32 %56, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %57) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %58 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %54, i32 -1090519041) #11, !srcloc !39
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.ip_options, ptr %8, i32 0, i32 10
  %62 = icmp ugt i32 %54, 40
  br i1 %62, label %63, label %64, !prof !14

63:                                               ; preds = %60
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef 40, i32 noundef %54) #11
  br label %77

64:                                               ; preds = %60
  %65 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %54, i32 -1090519040) #13, !srcloc !40
  %66 = extractvalue { i32, i32 } %65, 0
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #10, !srcloc !29
  %70 = and i32 %69, -13
  %71 = or i32 %70, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %71) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %72 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef %61, i32 noundef %54) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %69) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  br label %73

73:                                               ; preds = %68, %64
  %74 = phi i32 [ %72, %68 ], [ %54, %64 ]
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %75, i32 0, i32 -14
  br label %77

77:                                               ; preds = %73, %63, %51, %46
  %78 = phi i32 [ %50, %46 ], [ -14, %51 ], [ -14, %63 ], [ %76, %73 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #11
  br label %416

79:                                               ; preds = %31
  %80 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 4
  %81 = load i16, ptr %80, align 2
  %82 = and i16 %81, 1
  %83 = zext i16 %82 to i32
  store i32 %83, ptr %7, align 4
  br label %367

84:                                               ; preds = %31
  %85 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 4
  %86 = load i16, ptr %85, align 2
  %87 = lshr i16 %86, 1
  %88 = and i16 %87, 1
  %89 = zext i16 %88 to i32
  store i32 %89, ptr %7, align 4
  br label %367

90:                                               ; preds = %31
  %91 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 4
  %92 = load i16, ptr %91, align 2
  %93 = lshr i16 %92, 2
  %94 = and i16 %93, 1
  %95 = zext i16 %94 to i32
  store i32 %95, ptr %7, align 4
  br label %367

96:                                               ; preds = %31
  %97 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 4
  %98 = load i16, ptr %97, align 2
  %99 = lshr i16 %98, 3
  %100 = and i16 %99, 1
  %101 = zext i16 %100 to i32
  store i32 %101, ptr %7, align 4
  br label %367

102:                                              ; preds = %31
  %103 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 4
  %104 = load i16, ptr %103, align 2
  %105 = lshr i16 %104, 4
  %106 = and i16 %105, 1
  %107 = zext i16 %106 to i32
  store i32 %107, ptr %7, align 4
  br label %367

108:                                              ; preds = %31
  %109 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 4
  %110 = load i16, ptr %109, align 2
  %111 = lshr i16 %110, 5
  %112 = and i16 %111, 1
  %113 = zext i16 %112 to i32
  store i32 %113, ptr %7, align 4
  br label %367

114:                                              ; preds = %31
  %115 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 4
  %116 = load i16, ptr %115, align 2
  %117 = lshr i16 %116, 6
  %118 = and i16 %117, 1
  %119 = zext i16 %118 to i32
  store i32 %119, ptr %7, align 4
  br label %367

120:                                              ; preds = %31
  %121 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 4
  %122 = load i16, ptr %121, align 2
  %123 = lshr i16 %122, 7
  %124 = and i16 %123, 1
  %125 = zext i16 %124 to i32
  store i32 %125, ptr %7, align 4
  br label %367

126:                                              ; preds = %31
  %127 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 4
  %128 = load i16, ptr %127, align 2
  %129 = lshr i16 %128, 8
  %130 = and i16 %129, 1
  %131 = zext i16 %130 to i32
  store i32 %131, ptr %7, align 4
  br label %367

132:                                              ; preds = %31
  %133 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %134 = load i8, ptr %133, align 4
  %135 = zext i8 %134 to i32
  store i32 %135, ptr %7, align 4
  br label %367

136:                                              ; preds = %31
  %137 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 3
  %138 = load i16, ptr %137, align 8
  %139 = icmp eq i16 %138, -1
  %140 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 31), align 2
  %141 = zext i8 %140 to i32
  %142 = sext i16 %138 to i32
  %143 = select i1 %139, i32 %141, i32 %142
  store i32 %143, ptr %7, align 4
  br label %367

144:                                              ; preds = %31
  %145 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %146 = load i16, ptr %145, align 8
  %147 = lshr i16 %146, 3
  %148 = and i16 %147, 1
  %149 = zext i16 %148 to i32
  store i32 %149, ptr %7, align 4
  br label %367

150:                                              ; preds = %31
  %151 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %152 = load i16, ptr %151, align 8
  %153 = lshr i16 %152, 7
  %154 = and i16 %153, 1
  %155 = zext i16 %154 to i32
  store i32 %155, ptr %7, align 4
  br label %367

156:                                              ; preds = %31
  %157 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %158 = load i16, ptr %157, align 8
  %159 = lshr i16 %158, 8
  %160 = and i16 %159, 1
  %161 = zext i16 %160 to i32
  store i32 %161, ptr %7, align 4
  br label %367

162:                                              ; preds = %31
  %163 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 11
  %164 = load i8, ptr %163, align 1
  %165 = zext i8 %164 to i32
  store i32 %165, ptr %7, align 4
  br label %367

166:                                              ; preds = %31
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !41
  %167 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %168 = load volatile ptr, ptr %167, align 8
  %169 = icmp eq ptr %168, null
  br i1 %169, label %175, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.dst_entry, ptr %168, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !42
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %171) #11, !srcloc !12
  %172 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %171, ptr %171, i32 0, i32 1, ptr elementtype(i32) %171) #11, !srcloc !43
  %173 = extractvalue { i32, i32, i32 } %172, 0
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %170, %166
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !44
  br label %183

176:                                              ; preds = %170
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !45
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !44
  %177 = getelementptr inbounds %struct.dst_entry, ptr %168, i32 0, i32 1
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr inbounds %struct.dst_ops, ptr %178, i32 0, i32 5
  %180 = load ptr, ptr %179, align 4
  %181 = tail call i32 %180(ptr noundef nonnull %168) #11
  store i32 %181, ptr %7, align 4
  tail call void @dst_release(ptr noundef nonnull %168) #11
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %367

183:                                              ; preds = %176, %175
  tail call void @release_sock(ptr noundef %0) #11
  br label %416

184:                                              ; preds = %31
  %185 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %186 = load i16, ptr %185, align 8
  %187 = and i16 %186, 1
  %188 = zext i16 %187 to i32
  store i32 %188, ptr %7, align 4
  br label %367

189:                                              ; preds = %31
  %190 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %191 = load i16, ptr %190, align 8
  %192 = lshr i16 %191, 9
  %193 = and i16 %192, 1
  %194 = zext i16 %193 to i32
  store i32 %194, ptr %7, align 4
  br label %367

195:                                              ; preds = %31
  %196 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 10
  %197 = load i8, ptr %196, align 2
  %198 = zext i8 %197 to i32
  store i32 %198, ptr %7, align 4
  br label %367

199:                                              ; preds = %31
  %200 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %201 = load i16, ptr %200, align 8
  %202 = lshr i16 %201, 4
  %203 = and i16 %202, 1
  %204 = zext i16 %203 to i32
  store i32 %204, ptr %7, align 4
  br label %367

205:                                              ; preds = %31
  %206 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 15
  %207 = load i32, ptr %206, align 4
  %208 = tail call i32 @llvm.bswap.i32(i32 %207) #11
  store i32 %208, ptr %7, align 4
  br label %367

209:                                              ; preds = %31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  %210 = tail call i32 @llvm.umin.i32(i32 %25, i32 4) #11
  %211 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 17
  %212 = load i32, ptr %211, align 4
  store i32 %212, ptr %9, align 4
  tail call void @release_sock(ptr noundef %0) #11
  %213 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #10, !srcloc !29
  %214 = and i32 %213, -13
  %215 = or i32 %214, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %215) #11, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %216 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %210, i32 -1090519041) #11, !srcloc !46
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %213) #11, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %231

218:                                              ; preds = %209
  %219 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %210, i32 -1090519040) #13, !srcloc !40
  %220 = extractvalue { i32, i32 } %219, 0
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %218
  %223 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #10, !srcloc !29
  %224 = and i32 %223, -13
  %225 = or i32 %224, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %225) #11, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %226 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %9, i32 noundef %210) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %223) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  br label %227

227:                                              ; preds = %222, %218
  %228 = phi i32 [ %226, %222 ], [ %210, %218 ]
  %229 = icmp eq i32 %228, 0
  %230 = select i1 %229, i32 0, i32 -14
  br label %231

231:                                              ; preds = %227, %209
  %232 = phi i32 [ -14, %209 ], [ %230, %227 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  br label %416

233:                                              ; preds = %31
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %10) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %10, i8 0, i32 20, i1 false) #11, !annotation !9
  %234 = icmp ult i32 %25, 16
  br i1 %234, label %251, label %235

235:                                              ; preds = %233
  %236 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 16, i32 -1090519040) #13, !srcloc !28
  %237 = extractvalue { i32, i32 } %236, 0
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %245, !prof !10

239:                                              ; preds = %235
  %240 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #10, !srcloc !29
  %241 = and i32 %240, -13
  %242 = or i32 %241, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %242) #11, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %243 = call i32 @arm_copy_from_user(ptr noundef nonnull %10, ptr noundef %3, i32 noundef 16) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %240) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %249, label %245, !prof !10

245:                                              ; preds = %239, %235
  %246 = phi i32 [ %243, %239 ], [ 16, %235 ]
  %247 = sub i32 16, %246
  %248 = getelementptr i8, ptr %10, i32 %247
  call void @llvm.memset.p0.i32(ptr align 1 %248, i8 0, i32 %246, i1 false) #11
  br label %251

249:                                              ; preds = %239
  %250 = call i32 @ip_mc_msfget(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %3, ptr noundef %4) #11
  br label %251

251:                                              ; preds = %249, %245, %233
  %252 = phi i32 [ %250, %249 ], [ -22, %233 ], [ -14, %245 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %10) #11
  br label %414

253:                                              ; preds = %31
  call void @llvm.lifetime.start.p0(i64 268, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(268) %6, i8 0, i32 268, i1 false) #11, !annotation !9
  %254 = icmp ult i32 %25, 140
  br i1 %254, label %292, label %255

255:                                              ; preds = %253
  %256 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 140, i32 -1090519040) #13
  %257 = extractvalue { i32, i32 } %256, 0
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %265, !prof !10

259:                                              ; preds = %255
  %260 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #10, !srcloc !29
  %261 = and i32 %260, -13
  %262 = or i32 %261, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %262) #11, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %263 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %3, i32 noundef 140) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %260) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %269, label %265, !prof !10

265:                                              ; preds = %259, %255
  %266 = phi i32 [ %263, %259 ], [ 140, %255 ]
  %267 = sub i32 140, %266
  %268 = getelementptr i8, ptr %6, i32 %267
  call void @llvm.memset.p0.i32(ptr align 1 %268, i8 0, i32 %266, i1 false) #11
  br label %292

269:                                              ; preds = %259
  %270 = getelementptr inbounds %struct.anon.164, ptr %6, i32 0, i32 3
  %271 = load i32, ptr %270, align 4
  %272 = getelementptr inbounds %struct.anon.164, ptr %3, i32 0, i32 4
  %273 = call i32 @ip_mc_gsfget(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %272) #11
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %292

275:                                              ; preds = %269
  %276 = load i32, ptr %270, align 4
  %277 = call i32 @llvm.umin.i32(i32 %276, i32 %271) #11
  %278 = shl i32 %277, 7
  %279 = add i32 %278, 140
  %280 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #10, !srcloc !29
  %281 = and i32 %280, -13
  %282 = or i32 %281, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %282) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %283 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %279, i32 -1090519041) #11, !srcloc !47
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %280) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %292

285:                                              ; preds = %275
  %286 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #10, !srcloc !29
  %287 = and i32 %286, -13
  %288 = or i32 %287, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %288) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %289 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %6, i32 noundef 140) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %286) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %290 = icmp eq i32 %289, 0
  %291 = select i1 %290, i32 0, i32 -14
  br label %292

292:                                              ; preds = %285, %275, %269, %265, %253
  %293 = phi i32 [ -22, %253 ], [ %273, %269 ], [ -14, %275 ], [ -14, %265 ], [ %291, %285 ]
  call void @llvm.lifetime.end.p0(i64 268, ptr nonnull %6) #11
  br label %414

294:                                              ; preds = %31
  %295 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %296 = load i16, ptr %295, align 8
  %297 = lshr i16 %296, 6
  %298 = and i16 %297, 1
  %299 = zext i16 %298 to i32
  store i32 %299, ptr %7, align 4
  br label %367

300:                                              ; preds = %31
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %11, i8 0, i32 56, i1 false) #11, !annotation !9
  tail call void @release_sock(ptr noundef %0) #11
  %301 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %302 = load i16, ptr %301, align 2
  %303 = icmp eq i16 %302, 1
  br i1 %303, label %304, label %348

304:                                              ; preds = %300
  %305 = getelementptr inbounds %struct.msghdr, ptr %11, i32 0, i32 4
  store i8 1, ptr %305, align 4
  %306 = getelementptr inbounds %struct.msghdr, ptr %11, i32 0, i32 3
  store ptr %3, ptr %306, align 8
  %307 = getelementptr inbounds %struct.msghdr, ptr %11, i32 0, i32 5
  store i32 %25, ptr %307, align 8
  %308 = getelementptr inbounds %struct.msghdr, ptr %11, i32 0, i32 6
  store i32 0, ptr %308, align 4
  %309 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 4
  %310 = load i16, ptr %309, align 2
  %311 = and i16 %310, 1
  %312 = icmp eq i16 %311, 0
  br i1 %312, label %322, label %313

313:                                              ; preds = %304
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #11
  %314 = getelementptr inbounds %struct.anon.26, ptr %0, i32 0, i32 1
  %315 = load i32, ptr %314, align 4
  %316 = getelementptr inbounds %struct.in_pktinfo, ptr %12, i32 0, i32 2
  store i32 %315, ptr %316, align 4
  %317 = getelementptr inbounds %struct.in_pktinfo, ptr %12, i32 0, i32 1
  store i32 %315, ptr %317, align 4
  %318 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 16
  %319 = load i32, ptr %318, align 8
  store i32 %319, ptr %12, align 4
  %320 = call i32 @put_cmsg(ptr noundef nonnull %11, i32 noundef 0, i32 noundef 8, i32 noundef 12, ptr noundef nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #11
  %321 = load i16, ptr %309, align 2
  br label %322

322:                                              ; preds = %313, %304
  %323 = phi i16 [ %321, %313 ], [ %310, %304 ]
  %324 = and i16 %323, 2
  %325 = icmp eq i16 %324, 0
  br i1 %325, label %332, label %326

326:                                              ; preds = %322
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #11
  %327 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 10
  %328 = load i8, ptr %327, align 2
  %329 = zext i8 %328 to i32
  store i32 %329, ptr %13, align 4
  %330 = call i32 @put_cmsg(ptr noundef nonnull %11, i32 noundef 0, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #11
  %331 = load i16, ptr %309, align 2
  br label %332

332:                                              ; preds = %326, %322
  %333 = phi i16 [ %331, %326 ], [ %323, %322 ]
  %334 = and i16 %333, 4
  %335 = icmp eq i16 %334, 0
  br i1 %335, label %341, label %336

336:                                              ; preds = %332
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #11
  %337 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 13
  %338 = load i8, ptr %337, align 2
  %339 = zext i8 %338 to i32
  store i32 %339, ptr %14, align 4
  %340 = call i32 @put_cmsg(ptr noundef nonnull %11, i32 noundef 0, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #11
  br label %341

341:                                              ; preds = %336, %332
  %342 = load i32, ptr %307, align 8
  %343 = sub i32 %25, %342
  %344 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #10, !srcloc !29
  %345 = and i32 %344, -13
  %346 = or i32 %345, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %346) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %347 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %343, i32 -1090519041) #11, !srcloc !48
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %344) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  br label %348

348:                                              ; preds = %341, %300
  %349 = phi i32 [ %347, %341 ], [ -92, %300 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #11
  br label %416

350:                                              ; preds = %31
  %351 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %352 = load i16, ptr %351, align 8
  %353 = lshr i16 %352, 2
  %354 = and i16 %353, 1
  %355 = zext i16 %354 to i32
  store i32 %355, ptr %7, align 4
  br label %367

356:                                              ; preds = %31
  %357 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %358 = load i16, ptr %357, align 8
  %359 = lshr i16 %358, 5
  %360 = and i16 %359, 1
  %361 = zext i16 %360 to i32
  store i32 %361, ptr %7, align 4
  br label %367

362:                                              ; preds = %31
  %363 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 9
  %364 = load i8, ptr %363, align 1
  %365 = zext i8 %364 to i32
  store i32 %365, ptr %7, align 4
  br label %367

366:                                              ; preds = %31
  tail call void @release_sock(ptr noundef %0) #11
  br label %416

367:                                              ; preds = %362, %356, %350, %294, %205, %199, %195, %189, %184, %176, %162, %156, %150, %144, %136, %132, %126, %120, %114, %108, %102, %96, %90, %84, %79
  %368 = phi i32 [ %181, %176 ], [ %365, %362 ], [ %361, %356 ], [ %355, %350 ], [ %299, %294 ], [ %208, %205 ], [ %204, %199 ], [ %198, %195 ], [ %194, %189 ], [ %188, %184 ], [ %165, %162 ], [ %161, %156 ], [ %155, %150 ], [ %149, %144 ], [ %143, %136 ], [ %135, %132 ], [ %131, %126 ], [ %125, %120 ], [ %119, %114 ], [ %113, %108 ], [ %107, %102 ], [ %101, %96 ], [ %95, %90 ], [ %89, %84 ], [ %83, %79 ]
  tail call void @release_sock(ptr noundef %0) #11
  %369 = add nsw i32 %25, -1
  %370 = icmp ult i32 %369, 3
  %371 = icmp sgt i32 %368, -1
  %372 = select i1 %370, i1 %371, i1 false
  %373 = icmp slt i32 %368, 256
  %374 = select i1 %372, i1 %373, i1 false
  br i1 %374, label %375, label %394

375:                                              ; preds = %367
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #11
  %376 = trunc i32 %368 to i8
  store i8 %376, ptr %15, align 1
  %377 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #10, !srcloc !29
  %378 = and i32 %377, -13
  %379 = or i32 %378, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %379) #11, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %380 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 1, i32 -1090519041) #11, !srcloc !49
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %377) #11, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %383, label %382

382:                                              ; preds = %375
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #11
  br label %416

383:                                              ; preds = %375
  %384 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 1, i32 -1090519040) #13, !srcloc !40
  %385 = extractvalue { i32, i32 } %384, 0
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %388, label %387

387:                                              ; preds = %383
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #11
  br label %416

388:                                              ; preds = %383
  %389 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #10, !srcloc !29
  %390 = and i32 %389, -13
  %391 = or i32 %390, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %391) #11, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %392 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %15, i32 noundef 1) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %389) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %393 = icmp eq i32 %392, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #11
  br i1 %393, label %413, label %416

394:                                              ; preds = %367
  %395 = tail call i32 @llvm.umin.i32(i32 %25, i32 4) #11
  %396 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #10, !srcloc !29
  %397 = and i32 %396, -13
  %398 = or i32 %397, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %398) #11, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %399 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %395, i32 -1090519041) #11, !srcloc !50
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %396) #11, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %416

401:                                              ; preds = %394
  %402 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %395, i32 -1090519040) #13, !srcloc !40
  %403 = extractvalue { i32, i32 } %402, 0
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %410

405:                                              ; preds = %401
  %406 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #10, !srcloc !29
  %407 = and i32 %406, -13
  %408 = or i32 %407, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %408) #11, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %409 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %7, i32 noundef %395) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %406) #11, !srcloc !30
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  br label %410

410:                                              ; preds = %405, %401
  %411 = phi i32 [ %409, %405 ], [ %395, %401 ]
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %413, label %416

413:                                              ; preds = %410, %388
  br label %416

414:                                              ; preds = %292, %251
  %415 = phi i32 [ %293, %292 ], [ %252, %251 ]
  call void @release_sock(ptr noundef %0) #11
  call void @rtnl_unlock() #11
  br label %416

416:                                              ; preds = %414, %413, %410, %394, %388, %387, %382, %366, %348, %231, %183, %77, %27, %17, %5
  %417 = phi i32 [ -92, %366 ], [ 0, %413 ], [ -14, %388 ], [ %349, %348 ], [ %232, %231 ], [ %78, %77 ], [ -95, %5 ], [ -14, %17 ], [ -22, %27 ], [ -107, %183 ], [ -14, %394 ], [ -14, %410 ], [ %415, %414 ], [ -14, %382 ], [ -14, %387 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  ret i32 %417
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_options_undo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ip_options_echo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_icmp_error_rfc4884(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_timestamp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_wifi_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_mc_join_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_mc_leave_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @memdup_sockptr([2 x i32] %0, i32 noundef %1) unnamed_addr #8 {
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call ptr @__kmalloc_track_caller(i32 noundef %1, i32 noundef 1060032, i32 noundef %4) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %39, label %7

7:                                                ; preds = %2
  %8 = extractvalue [2 x i32] %0, 0
  %9 = inttoptr i32 %8 to ptr
  %10 = extractvalue [2 x i32] %0, 1
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %7
  %14 = icmp slt i32 %1, 0
  %15 = load i1, ptr @check_copy_size.__already_done, align 1
  %16 = xor i1 %15, true
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %19, !prof !14

18:                                               ; preds = %13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %19

19:                                               ; preds = %18, %13
  br i1 %14, label %38, label %20, !prof !14

20:                                               ; preds = %19
  %21 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 %1, i32 -1090519040) #13, !srcloc !28
  %22 = extractvalue { i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31, !prof !10

24:                                               ; preds = %20
  %25 = tail call ptr @llvm.thread.pointer() #11
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %26) #10, !srcloc !29
  %28 = and i32 %27, -13
  %29 = or i32 %28, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #11, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  %30 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %9, i32 noundef %1) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #11, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !31
  br label %31

31:                                               ; preds = %24, %20
  %32 = phi i32 [ %30, %24 ], [ %1, %20 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34, !prof !10

34:                                               ; preds = %31
  %35 = sub i32 %1, %32
  %36 = getelementptr i8, ptr %5, i32 %35
  tail call void @llvm.memset.p0.i32(ptr align 1 %36, i8 0, i32 %32, i1 false) #11
  br label %38

37:                                               ; preds = %7
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %5, ptr align 1 %9, i32 %1, i1 false) #11
  br label %39

38:                                               ; preds = %34, %19
  tail call void @kfree(ptr noundef nonnull %5) #11
  br label %39

39:                                               ; preds = %38, %37, %31, %2
  %40 = phi ptr [ inttoptr (i32 -14 to ptr), %38 ], [ inttoptr (i32 -12 to ptr), %2 ], [ %5, %31 ], [ %5, %37 ]
  ret ptr %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_mc_msfilter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_mc_join_group_ssm(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_mc_source(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_user_policy(ptr noundef, i32 noundef, [2 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ip_dev_find(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmalloc_track_caller(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_mc_msfget(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_mc_gsfget(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(0) }

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
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2156615908}
!12 = !{i64 581919, i64 2148071890, i64 2148071916, i64 2148071963, i64 2148071985, i64 2148072013, i64 2148072033}
!13 = !{i64 2148084763, i64 2148084795, i64 2148084824, i64 2148084858, i64 2148084889, i64 2148084912}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2148184985}
!16 = !{i64 2148087120, i64 2148087152, i64 2148087181, i64 2148087215, i64 2148087246, i64 2148087269}
!17 = !{i64 2149034432}
!18 = !{i64 2153310560, i64 2153311048, i64 2153310597, i64 2153310653, i64 2153310687, i64 2153310711, i64 2153310752, i64 2153310773, i64 2153310801, i64 2153310835}
!19 = !{i64 2149422319}
!20 = !{i64 2149422620}
!21 = !{i64 2148966444}
!22 = !{i64 2148962268}
!23 = !{i64 2148962343, i64 2148962370, i64 2148962417, i64 2148962439, i64 2148962467, i64 2148962487}
!24 = !{i64 2148989447}
!25 = !{i64 2155320456}
!26 = !{i64 590569, i64 590586, i64 590610, i64 590636, i64 590654}
!27 = !{i64 2155320775}
!28 = !{i64 2151783843, i64 2151783868}
!29 = !{i64 4275894}
!30 = !{i64 4276091}
!31 = !{i64 2151761370}
!32 = !{i64 2156635626}
!33 = !{i64 487597, i64 487658}
!34 = !{i64 506297}
!35 = !{i64 490614}
!36 = !{i8 0, i8 2}
!37 = !{i64 2156693346, i64 2156693626, i64 2156693960, i64 2156694294}
!38 = !{i64 2156702658, i64 2156702938, i64 2156703272, i64 2156703606}
!39 = !{i64 2156712668, i64 2156712948, i64 2156713282, i64 2156713616}
!40 = !{i64 2151784421, i64 2151784446}
!41 = !{i64 2149084799}
!42 = !{i64 2148082812}
!43 = !{i64 568488, i64 568513, i64 568535, i64 568551, i64 568563, i64 568583, i64 568607, i64 568623, i64 568635}
!44 = !{i64 2149085016}
!45 = !{i64 2148082938}
!46 = !{i64 2156723838, i64 2156724118, i64 2156724452, i64 2156724786}
!47 = !{i64 2156657415, i64 2156657695, i64 2156658029, i64 2156658363}
!48 = !{i64 2156732502, i64 2156732782, i64 2156733116, i64 2156733450}
!49 = !{i64 2156740644, i64 2156740924, i64 2156741258, i64 2156741592}
!50 = !{i64 2156750660, i64 2156750940, i64 2156751274, i64 2156751608}
