; ModuleID = '/llk/IR/net/ipv4/tcp_ipv4.c_pt.bc'
source_filename = "../net/ipv4/tcp_ipv4.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_hashinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_hashinfo\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_hashinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_twsk_unique:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_twsk_unique\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_twsk_unique:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_v4_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_v4_connect\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_v4_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_v4_mtu_reduced:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_v4_mtu_reduced\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_v4_mtu_reduced:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_req_err:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_req_err\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_req_err:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_ld_RTO_revert:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_ld_RTO_revert\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_ld_RTO_revert:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_v4_send_check:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_v4_send_check\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_v4_send_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_v4_conn_request:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_v4_conn_request\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_v4_conn_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_v4_syn_recv_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_v4_syn_recv_sock\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_v4_syn_recv_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_v4_do_rcv:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_v4_do_rcv\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_v4_do_rcv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_add_backlog:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_add_backlog\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_add_backlog:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_filter:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_filter\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_filter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_sk_rx_dst_set:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_sk_rx_dst_set\22\09\09\09\09\09"
module asm "__kstrtabns_inet_sk_rx_dst_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv4_specific:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv4_specific\22\09\09\09\09\09"
module asm "__kstrtabns_ipv4_specific:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_v4_destroy_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_v4_destroy_sock\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_v4_destroy_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_seq_start:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_seq_start\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_seq_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_seq_next:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_seq_next\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_seq_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_seq_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_seq_stop\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_seq_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_stream_memory_free:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_stream_memory_free\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_stream_memory_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_prot\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.inet_hashinfo = type { ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, [28 x i8], [32 x %struct.inet_listen_hashbucket] }
%struct.inet_listen_hashbucket = type { %struct.spinlock, i32, %union.anon.1 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { %struct.hlist_head }
%struct.hlist_head = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.icmp_err = type { i32, i8 }
%struct.request_sock_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tcp_request_sock_ops = type { i16, ptr, ptr, ptr, ptr }
%struct.inet_connection_sock_af_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, ptr, ptr, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.timewait_sock_ops = type { ptr, ptr, i32, ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.170, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.170 = type { ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.26, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.134, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.134 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.tcp_seq_afinfo = type { i16 }
%struct.tcp_congestion_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.list_head, i32, i32, ptr, ptr, [40 x i8] }
%struct.sock_common = type { %union.anon.2, %union.anon.3, %union.anon.4, i16, i8, i8, i32, %union.anon.6, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.171, [0 x i32], %union.anon.172, i16, i16, %union.anon.173, %struct.refcount_struct, [0 x i32], %union.anon.174 }
%union.anon.2 = type { i64 }
%union.anon.3 = type { i32 }
%union.anon.4 = type { i32 }
%union.anon.6 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.116 }
%union.anon.116 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.171 = type { i32 }
%union.anon.172 = type { %struct.hlist_node }
%union.anon.173 = type { i32 }
%union.anon.174 = type { i32 }
%struct.anon = type { i32, i32 }
%struct.tcp_timewait_sock = type { %struct.inet_timewait_sock, i32, i32, i32, i32, i32, i32 }
%struct.inet_timewait_sock = type { %struct.sock_common, i32, i8, i8, i16, i32, i32, i32, %struct.timer_list, ptr }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.188, %struct.anon.189, %struct.anon.190, i32, ptr, ptr, ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.186, %struct.anon.187, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.175, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.176, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.177, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.175 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.176 = type { ptr }
%union.anon.177 = type { ptr }
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.121 }
%union.anon.121 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.186 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.187 = type { i32, i32, i32, i32 }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.188 = type { i32, i32, i64 }
%struct.anon.189 = type { i32, i32, i64 }
%struct.anon.190 = type { i32, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.ip_options_rcu = type { %struct.callback_head, %struct.ip_options }
%struct.ip_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [0 x i8] }
%struct.anon.122 = type { i16, i16 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.126, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.netdevice_tracker = type {}
%union.anon.126 = type { %struct.in6_addr }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.tcp_request_sock = type { %struct.inet_request_sock, ptr, i64, i8, i8, i32, i32, i32, i32, i32, i32, i8 }
%struct.inet_request_sock = type { %struct.request_sock, i16, i32, %union.anon.194 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%union.anon.194 = type { %struct.anon.195 }
%struct.anon.195 = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.icmphdr = type { i8, i8, i16, %union.anon.196 }
%union.anon.196 = type { i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.anon.53 = type { i16, i16 }
%struct.anon.206 = type { %struct.tcphdr, [1 x i32] }
%struct.ip_reply_arg = type { [1 x %struct.kvec], i32, i32, i32, i32, i8, %struct.kuid_t }
%struct.kvec = type { ptr, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.tcp_iter_state = type { %struct.seq_net_private, i32, ptr, i32, i32, i32, i32, i64 }
%struct.seq_net_private = type {}
%struct.file = type { %union.anon.10, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.10 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.179, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.180, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.181, ptr, %struct.address_space, %struct.list_head, %union.anon.182, i32, i32, ptr, ptr }
%union.anon.179 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.180 = type { %struct.callback_head }
%union.anon.181 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.182 = type { ptr }
%struct.inet_ehash_bucket = type { %struct.hlist_nulls_head }
%struct.hlist_nulls_head = type { ptr }
%struct.anon.205 = type { %struct.tcphdr, [3 x i32] }
%struct.anon.5 = type { i16, i16 }

@tcp_hashinfo = dso_local global %struct.inet_hashinfo zeroinitializer, align 64
@__kstrtab_tcp_hashinfo = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_hashinfo = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_hashinfo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_hashinfo to i32), ptr @__kstrtab_tcp_hashinfo, ptr @__kstrtabns_tcp_hashinfo }, section "___ksymtab+tcp_hashinfo", align 4
@__kstrtab_tcp_twsk_unique = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_twsk_unique = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_twsk_unique = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_twsk_unique to i32), ptr @__kstrtab_tcp_twsk_unique, ptr @__kstrtabns_tcp_twsk_unique }, section "___ksymtab_gpl+tcp_twsk_unique", align 4
@__kstrtab_tcp_v4_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_v4_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_v4_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_v4_connect to i32), ptr @__kstrtab_tcp_v4_connect, ptr @__kstrtabns_tcp_v4_connect }, section "___ksymtab+tcp_v4_connect", align 4
@__kstrtab_tcp_v4_mtu_reduced = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_v4_mtu_reduced = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_v4_mtu_reduced = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_v4_mtu_reduced to i32), ptr @__kstrtab_tcp_v4_mtu_reduced, ptr @__kstrtabns_tcp_v4_mtu_reduced }, section "___ksymtab+tcp_v4_mtu_reduced", align 4
@__kstrtab_tcp_req_err = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_req_err = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_req_err = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_req_err to i32), ptr @__kstrtab_tcp_req_err, ptr @__kstrtabns_tcp_req_err }, section "___ksymtab+tcp_req_err", align 4
@tcp_ld_RTO_revert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"net/ipv4/tcp_ipv4.c\00", align 1
@__kstrtab_tcp_ld_RTO_revert = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_ld_RTO_revert = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_ld_RTO_revert = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_ld_RTO_revert to i32), ptr @__kstrtab_tcp_ld_RTO_revert, ptr @__kstrtabns_tcp_ld_RTO_revert }, section "___ksymtab+tcp_ld_RTO_revert", align 4
@ip4_min_ttl = external dso_local global %struct.static_key_false, align 4
@icmp_err_convert = external dso_local local_unnamed_addr constant [0 x %struct.icmp_err], align 4
@__kstrtab_tcp_v4_send_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_v4_send_check = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_v4_send_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_v4_send_check to i32), ptr @__kstrtab_tcp_v4_send_check, ptr @__kstrtabns_tcp_v4_send_check }, section "___ksymtab+tcp_v4_send_check", align 4
@tcp_request_sock_ops = dso_local global %struct.request_sock_ops { i32 2, i32 232, ptr null, ptr null, ptr @tcp_rtx_synack, ptr @tcp_v4_reqsk_send_ack, ptr @tcp_v4_send_reset, ptr @tcp_v4_reqsk_destructor, ptr @tcp_syn_ack_timeout }, section ".data..read_mostly", align 4
@tcp_request_sock_ipv4_ops = dso_local constant %struct.tcp_request_sock_ops { i16 536, ptr @tcp_v4_route_req, ptr @tcp_v4_init_seq, ptr @tcp_v4_init_ts_off, ptr @tcp_v4_send_synack }, align 4
@__kstrtab_tcp_v4_conn_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_v4_conn_request = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_v4_conn_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_v4_conn_request to i32), ptr @__kstrtab_tcp_v4_conn_request, ptr @__kstrtabns_tcp_v4_conn_request }, section "___ksymtab+tcp_v4_conn_request", align 4
@__kstrtab_tcp_v4_syn_recv_sock = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_v4_syn_recv_sock = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_v4_syn_recv_sock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_v4_syn_recv_sock to i32), ptr @__kstrtab_tcp_v4_syn_recv_sock, ptr @__kstrtabns_tcp_v4_syn_recv_sock }, section "___ksymtab+tcp_v4_syn_recv_sock", align 4
@__kstrtab_tcp_v4_do_rcv = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_v4_do_rcv = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_v4_do_rcv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_v4_do_rcv to i32), ptr @__kstrtab_tcp_v4_do_rcv, ptr @__kstrtabns_tcp_v4_do_rcv }, section "___ksymtab+tcp_v4_do_rcv", align 4
@__kstrtab_tcp_add_backlog = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_add_backlog = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_add_backlog = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_add_backlog to i32), ptr @__kstrtab_tcp_add_backlog, ptr @__kstrtabns_tcp_add_backlog }, section "___ksymtab+tcp_add_backlog", align 4
@__kstrtab_tcp_filter = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_filter = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_filter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_filter to i32), ptr @__kstrtab_tcp_filter, ptr @__kstrtabns_tcp_filter }, section "___ksymtab+tcp_filter", align 4
@__kstrtab_inet_sk_rx_dst_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_sk_rx_dst_set = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_sk_rx_dst_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_sk_rx_dst_set to i32), ptr @__kstrtab_inet_sk_rx_dst_set, ptr @__kstrtabns_inet_sk_rx_dst_set }, section "___ksymtab+inet_sk_rx_dst_set", align 4
@ipv4_specific = dso_local constant %struct.inet_connection_sock_af_ops { ptr @ip_queue_xmit, ptr @tcp_v4_send_check, ptr @inet_sk_rebuild_header, ptr @inet_sk_rx_dst_set, ptr @tcp_v4_conn_request, ptr @tcp_v4_syn_recv_sock, i16 20, i16 0, i16 16, ptr @ip_setsockopt, ptr @ip_getsockopt, ptr @inet_csk_addr2sockaddr, ptr @tcp_v4_mtu_reduced }, align 4
@__kstrtab_ipv4_specific = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv4_specific = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv4_specific = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv4_specific to i32), ptr @__kstrtab_ipv4_specific, ptr @__kstrtabns_ipv4_specific }, section "___ksymtab+ipv4_specific", align 4
@__kstrtab_tcp_v4_destroy_sock = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_v4_destroy_sock = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_v4_destroy_sock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_v4_destroy_sock to i32), ptr @__kstrtab_tcp_v4_destroy_sock, ptr @__kstrtabns_tcp_v4_destroy_sock }, section "___ksymtab+tcp_v4_destroy_sock", align 4
@__kstrtab_tcp_seq_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_seq_start = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_seq_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_seq_start to i32), ptr @__kstrtab_tcp_seq_start, ptr @__kstrtabns_tcp_seq_start }, section "___ksymtab+tcp_seq_start", align 4
@__kstrtab_tcp_seq_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_seq_next = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_seq_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_seq_next to i32), ptr @__kstrtab_tcp_seq_next, ptr @__kstrtabns_tcp_seq_next }, section "___ksymtab+tcp_seq_next", align 4
@__kstrtab_tcp_seq_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_seq_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_seq_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_seq_stop to i32), ptr @__kstrtab_tcp_seq_stop, ptr @__kstrtabns_tcp_seq_stop }, section "___ksymtab+tcp_seq_stop", align 4
@tcp4_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @tcp4_proc_init_net, ptr null, ptr @tcp4_proc_exit_net, ptr null, ptr null, i32 0 }, align 4
@__kstrtab_tcp_stream_memory_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_stream_memory_free = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_stream_memory_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_stream_memory_free to i32), ptr @__kstrtab_tcp_stream_memory_free, ptr @__kstrtabns_tcp_stream_memory_free }, section "___ksymtab+tcp_stream_memory_free", align 4
@tcp_memory_allocated = external dso_local global %struct.atomic_t, align 4
@tcp_sockets_allocated = external dso_local global %struct.percpu_counter, align 8
@tcp_memory_pressure = external dso_local global i32, align 4
@sysctl_tcp_mem = external dso_local global [3 x i32], align 4
@tcp_orphan_count = external dso_local global i32, section ".data..percpu", align 4
@tcp_timewait_sock_ops = internal global %struct.timewait_sock_ops { ptr null, ptr null, i32 184, ptr @tcp_twsk_unique, ptr @tcp_twsk_destructor }, align 4
@tcp_prot = dso_local global %struct.proto { ptr @tcp_close, ptr @tcp_v4_pre_connect, ptr @tcp_v4_connect, ptr @tcp_disconnect, ptr @inet_csk_accept, ptr @tcp_ioctl, ptr @tcp_v4_init_sock, ptr @tcp_v4_destroy_sock, ptr @tcp_shutdown, ptr @tcp_setsockopt, ptr @tcp_getsockopt, ptr @tcp_set_keepalive, ptr @tcp_sendmsg, ptr @tcp_recvmsg, ptr @tcp_sendpage, ptr null, ptr null, ptr @tcp_v4_do_rcv, ptr @tcp_bpf_bypass_getsockopt, ptr @tcp_release_cb, ptr @inet_hash, ptr @inet_unhash, ptr null, ptr @inet_csk_get_port, ptr @inet_put_port, i32 0, ptr @tcp_stream_memory_free, ptr null, ptr @tcp_enter_memory_pressure, ptr @tcp_leave_memory_pressure, ptr @tcp_memory_allocated, ptr @tcp_sockets_allocated, ptr @tcp_memory_pressure, ptr @sysctl_tcp_mem, ptr null, ptr null, i32 708, i32 720, i32 320, i8 1, ptr null, i32 1736, i32 524288, i32 0, i32 0, ptr @tcp_orphan_count, ptr @tcp_request_sock_ops, ptr @tcp_timewait_sock_ops, %union.anon.170 { ptr @tcp_hashinfo }, ptr null, [32 x i8] c"TCP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr @tcp_abort }, align 4
@__kstrtab_tcp_prot = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_prot = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_prot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_prot to i32), ptr @__kstrtab_tcp_prot, ptr @__kstrtabns_tcp_prot }, section "___ksymtab+tcp_prot", align 4
@tcp_sk_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @tcp_sk_init, ptr null, ptr @tcp_sk_exit, ptr @tcp_sk_exit_batch, ptr null, i32 0 }, section ".init.data", align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed to create the TCP control socket.\0A\00", align 1
@init_net = external dso_local global %struct.net, align 64
@reqsk_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"include/net/request_sock.h\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@tcp_tx_delay_enabled = external dso_local global %struct.static_key_false, align 4
@__tracepoint_tcp_send_reset = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_tcp_bad_csum = external dso_local global %struct.tracepoint, align 4
@__tracepoint_tcp_destroy_sock = external dso_local global %struct.tracepoint, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@tcp4_seq_ops = internal constant %struct.seq_operations { ptr @tcp_seq_start, ptr @tcp_seq_stop, ptr @tcp_seq_next, ptr @tcp4_seq_show }, align 4
@tcp4_seq_afinfo = internal global %struct.tcp_seq_afinfo { i16 2 }, align 2
@.str.9 = private unnamed_addr constant [97 x i8] c"  sl  local_address rem_address   st tx_queue rx_queue tr tm->when retrnsmt   uid  timeout inode\00", align 1
@.str.10 = private unnamed_addr constant [74 x i8] c"%4d: %08X:%04X %08X:%04X %02X %08X:%08X %02X:%08lX %08X %5d %8d %d %d %pK\00", align 1
@.str.11 = private unnamed_addr constant [74 x i8] c"%4d: %08X:%04X %08X:%04X %02X %08X:%08X %02X:%08lX %08X %5u %8d %u %d %pK\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [92 x i8] c"%4d: %08X:%04X %08X:%04X %02X %08X:%08X %02X:%08lX %08X %5u %8d %lu %d %pK %lu %lu %u %u %d\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@tcp_reno = external dso_local global %struct.tcp_congestion_ops, align 64
@llvm.compiler.used = appending global [20 x ptr] [ptr @__ksymtab_inet_sk_rx_dst_set, ptr @__ksymtab_ipv4_specific, ptr @__ksymtab_tcp_add_backlog, ptr @__ksymtab_tcp_filter, ptr @__ksymtab_tcp_hashinfo, ptr @__ksymtab_tcp_ld_RTO_revert, ptr @__ksymtab_tcp_prot, ptr @__ksymtab_tcp_req_err, ptr @__ksymtab_tcp_seq_next, ptr @__ksymtab_tcp_seq_start, ptr @__ksymtab_tcp_seq_stop, ptr @__ksymtab_tcp_stream_memory_free, ptr @__ksymtab_tcp_twsk_unique, ptr @__ksymtab_tcp_v4_conn_request, ptr @__ksymtab_tcp_v4_connect, ptr @__ksymtab_tcp_v4_destroy_sock, ptr @__ksymtab_tcp_v4_do_rcv, ptr @__ksymtab_tcp_v4_mtu_reduced, ptr @__ksymtab_tcp_v4_send_check, ptr @__ksymtab_tcp_v4_syn_recv_sock], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_twsk_unique(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) #0 {
  %4 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 61), align 1
  %5 = zext i8 %4 to i32
  %6 = icmp eq i8 %4, 2
  br i1 %6, label %7, label %69

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  %11 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 3
  %12 = load i16, ptr %11, align 8
  %13 = icmp eq i16 %12, 10
  br i1 %13, label %14, label %58

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 10
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, %16
  %20 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %19, %21
  %23 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = xor i32 %24, 16777216
  %26 = or i32 %22, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %68, label %28

28:                                               ; preds = %14
  %29 = xor i32 %21, -65536
  %30 = or i32 %29, %19
  %31 = icmp eq i32 %30, 0
  %32 = and i32 %24, 255
  %33 = icmp eq i32 %32, 127
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %68, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 11
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = or i32 %39, %37
  %41 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = or i32 %40, %42
  %44 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = xor i32 %45, 16777216
  %47 = or i32 %43, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %68, label %49

49:                                               ; preds = %35
  %50 = xor i32 %42, -65536
  %51 = or i32 %50, %40
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  br i1 %10, label %68, label %69

54:                                               ; preds = %49
  %55 = and i32 %45, 255
  %56 = icmp eq i32 %55, 127
  %57 = select i1 %56, i1 true, i1 %10
  br i1 %57, label %68, label %69

58:                                               ; preds = %7
  %59 = load i32, ptr %1, align 8
  %60 = and i32 %59, 255
  %61 = icmp eq i32 %60, 127
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 255
  %66 = icmp eq i32 %65, 127
  %67 = select i1 %66, i1 true, i1 %10
  br i1 %67, label %68, label %69

68:                                               ; preds = %62, %58, %54, %53, %35, %28, %14
  br label %69

69:                                               ; preds = %68, %62, %54, %53, %3
  %70 = phi i32 [ %5, %3 ], [ 2, %68 ], [ 0, %53 ], [ 0, %62 ], [ 0, %54 ]
  %71 = getelementptr inbounds %struct.tcp_timewait_sock, ptr %1, i32 0, i32 5
  %72 = load i32, ptr %71, align 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %111, label %74

74:                                               ; preds = %69
  %75 = icmp eq ptr %2, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %74
  %77 = icmp eq i32 %70, 0
  br i1 %77, label %111, label %78

78:                                               ; preds = %76
  %79 = tail call i64 @ktime_get_seconds() #18
  %80 = trunc i64 %79 to i32
  %81 = sub i32 %72, %80
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %111

83:                                               ; preds = %78, %74
  %84 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %85 = load i16, ptr %84, align 4
  %86 = and i16 %85, 16384
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %88, label %100, !prof !9

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 21
  %90 = load i32, ptr %89, align 8
  %91 = add i32 %90, 65537
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i32 1, i32 %91
  %94 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  store volatile i32 %93, ptr %94, align 4
  %95 = getelementptr inbounds %struct.tcp_timewait_sock, ptr %1, i32 0, i32 3
  %96 = load i32, ptr %95, align 8
  %97 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61
  %98 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 1
  store i32 %96, ptr %98, align 4
  %99 = load i32, ptr %71, align 8
  store i32 %99, ptr %97, align 4
  br label %100

100:                                              ; preds = %88, %83
  %101 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %101) #18, !srcloc !10
  %102 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %101, ptr %101, i32 1, ptr elementtype(i32) %101) #18, !srcloc !11
  %103 = extractvalue { i32, i32, i32 } %102, 0
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %109, label %105, !prof !12

105:                                              ; preds = %100
  %106 = add i32 %103, 1
  %107 = or i32 %106, %103
  %108 = icmp sgt i32 %107, -1
  br i1 %108, label %111, label %109, !prof !9

109:                                              ; preds = %105, %100
  %110 = phi i32 [ 2, %100 ], [ 1, %105 ]
  tail call void @refcount_warn_saturate(ptr noundef %101, i32 noundef %110) #18
  br label %111

111:                                              ; preds = %109, %105, %78, %76, %69
  %112 = phi i32 [ 0, %78 ], [ 0, %76 ], [ 0, %69 ], [ 1, %105 ], [ 1, %109 ]
  ret i32 %112
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_seconds() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_v4_connect(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  %5 = icmp ult i32 %2, 16
  br i1 %5, label %205, label %6

6:                                                ; preds = %3
  %7 = load i16, ptr %1, align 4
  %8 = icmp eq i16 %7, 2
  br i1 %8, label %9, label %205

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.sockaddr_in, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ip_options_rcu, ptr %13, i32 0, i32 1
  %17 = getelementptr inbounds %struct.ip_options_rcu, ptr %13, i32 0, i32 1, i32 3
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = icmp eq i32 %11, 0
  br i1 %21, label %205, label %22

22:                                               ; preds = %20
  %23 = load i32, ptr %16, align 4
  br label %24

24:                                               ; preds = %22, %15, %9
  %25 = phi i32 [ %23, %22 ], [ %11, %15 ], [ %11, %9 ]
  %26 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 6
  %27 = load i16, ptr %26, align 8
  %28 = getelementptr inbounds %struct.sockaddr_in, ptr %1, i32 0, i32 1
  %29 = load i16, ptr %28, align 2
  %30 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1
  %31 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %34 = load i8, ptr %33, align 4
  %35 = and i8 %34, 30
  %36 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %37 = load volatile i32, ptr %36, align 4
  %38 = lshr i32 %37, 13
  %39 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %42 = load i16, ptr %41, align 8
  %43 = trunc i16 %42 to i8
  %44 = lshr i8 %43, 5
  %45 = and i8 %44, 1
  %46 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 34
  %47 = load i32, ptr %46, align 8
  %48 = trunc i32 %38 to i8
  %49 = and i8 %48, 1
  %50 = or i8 %49, %35
  %51 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 55
  %52 = load i32, ptr %51, align 4
  store i32 %40, ptr %30, align 8
  %53 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 1
  store i32 1, ptr %53, align 4
  %54 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 2
  store i32 %47, ptr %54, align 8
  %55 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 3
  store i8 %50, ptr %55, align 4
  %56 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 4
  store i8 0, ptr %56, align 1
  %57 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 5
  store i8 6, ptr %57, align 2
  %58 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 6
  store i8 %45, ptr %58, align 1
  %59 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 7
  store i32 0, ptr %59, align 8
  %60 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 9
  store i64 0, ptr %60, align 8
  %61 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 8
  store i32 %52, ptr %61, align 4
  %62 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1
  store i32 %25, ptr %62, align 4
  %63 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 1
  store i32 %32, ptr %63, align 8
  %64 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 2
  store i16 %29, ptr %64, align 8
  %65 = getelementptr inbounds %struct.anon.122, ptr %64, i32 0, i32 1
  store i16 %27, ptr %65, align 2
  %66 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1, i32 0, i32 0, i32 0, i32 10
  store i32 0, ptr %66, align 8
  %67 = icmp ne i32 %25, 0
  %68 = icmp ne i32 %32, 0
  %69 = and i1 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %24
  %71 = tail call ptr @ip_route_output_key_hash(ptr noundef nonnull @init_net, ptr noundef %30, ptr noundef null) #18
  %72 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  tail call void @dst_release(ptr noundef %71) #18
  store i32 %40, ptr %30, align 8
  store i8 %50, ptr %55, align 4
  br label %74

74:                                               ; preds = %73, %24
  %75 = tail call ptr @ip_route_output_flow(ptr noundef nonnull @init_net, ptr noundef %30, ptr noundef %0) #18
  br label %76

76:                                               ; preds = %74, %70
  %77 = phi ptr [ %75, %74 ], [ %71, %70 ]
  %78 = icmp ugt ptr %77, inttoptr (i32 -4096 to ptr)
  br i1 %78, label %79, label %102

79:                                               ; preds = %76
  %80 = ptrtoint ptr %77 to i32
  %81 = icmp eq ptr %77, inttoptr (i32 -101 to ptr)
  br i1 %81, label %82, label %205

82:                                               ; preds = %79
  %83 = tail call ptr @llvm.thread.pointer() #18
  %84 = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 1
  %85 = load volatile i32, ptr %84, align 4
  %86 = add i32 %85, 512
  store volatile i32 %86, ptr %84, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  %87 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30), align 8
  %88 = ptrtoint ptr %87 to i32
  %89 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %90 = inttoptr i32 %89 to ptr
  %91 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %90) #12, !srcloc !14
  %92 = add i32 %91, %88
  %93 = inttoptr i32 %92 to ptr
  %94 = getelementptr inbounds %struct.ipstats_mib, ptr %93, i32 0, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %95, 1
  store i32 %96, ptr %94, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #18, !srcloc !15
  %97 = getelementptr [37 x i64], ptr %93, i32 0, i32 15
  %98 = load i64, ptr %97, align 8
  %99 = add i64 %98, 1
  store i64 %99, ptr %97, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #18, !srcloc !16
  %100 = load i32, ptr %94, align 4
  %101 = add i32 %100, 1
  store i32 %101, ptr %94, align 4
  tail call fastcc void @local_bh_enable()
  br label %205

102:                                              ; preds = %76
  %103 = getelementptr inbounds %struct.rtable, ptr %77, i32 0, i32 2
  %104 = load i32, ptr %103, align 4
  %105 = and i32 %104, 805306368
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %102
  tail call void @dst_release(ptr noundef %77) #18
  br label %205

108:                                              ; preds = %102
  br i1 %14, label %113, label %109

109:                                              ; preds = %108
  %110 = getelementptr inbounds %struct.ip_options_rcu, ptr %13, i32 0, i32 1, i32 3
  %111 = load i8, ptr %110, align 1
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %109, %108
  %114 = load i32, ptr %62, align 4
  br label %115

115:                                              ; preds = %113, %109
  %116 = phi i32 [ %11, %109 ], [ %114, %113 ]
  %117 = load i32, ptr %31, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i32, ptr %63, align 8
  store i32 %120, ptr %31, align 4
  br label %121

121:                                              ; preds = %119, %115
  %122 = phi i32 [ %120, %119 ], [ %117, %115 ]
  %123 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  store i32 %122, ptr %123, align 4
  %124 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 11
  store i32 0, ptr %124, align 4
  %125 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 1
  store i32 0, ptr %125, align 4
  %126 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 2
  store i32 -65536, ptr %126, align 4
  %127 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 3
  store i32 %122, ptr %127, align 4
  %128 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %142, label %131

131:                                              ; preds = %121
  %132 = load i32, ptr %0, align 8
  %133 = icmp eq i32 %132, %116
  br i1 %133, label %142, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 1
  store i32 0, ptr %135, align 4
  store i32 0, ptr %128, align 4
  %136 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %137 = load i16, ptr %136, align 4
  %138 = and i16 %137, 16384
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %140, label %142, !prof !9

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  store volatile i32 0, ptr %141, align 4
  br label %142

142:                                              ; preds = %140, %134, %131, %121
  %143 = load i16, ptr %28, align 2
  %144 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  store i16 %143, ptr %144, align 4
  store i32 %116, ptr %0, align 8
  %145 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 10
  store i32 0, ptr %145, align 4
  %146 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 1
  store i32 0, ptr %146, align 4
  %147 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 2
  store i32 -65536, ptr %147, align 4
  %148 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 3
  store i32 %116, ptr %148, align 4
  %149 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 23
  store i16 0, ptr %149, align 2
  br i1 %14, label %154, label %150

150:                                              ; preds = %142
  %151 = getelementptr inbounds %struct.ip_options_rcu, ptr %13, i32 0, i32 1, i32 2
  %152 = load i8, ptr %151, align 4
  %153 = zext i8 %152 to i16
  store i16 %153, ptr %149, align 2
  br label %154

154:                                              ; preds = %150, %142
  %155 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 7
  store i16 536, ptr %155, align 2
  tail call void @tcp_set_state(ptr noundef %0, i32 noundef 2) #18
  %156 = tail call i32 @inet_hash_connect(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35), ptr noundef %0) #18
  store i32 %156, ptr %4, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %201

158:                                              ; preds = %154
  %159 = tail call i32 @prandom_u32() #18
  %160 = icmp eq i32 %159, 0
  %161 = select i1 %160, i32 1, i32 %159
  %162 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 42
  store volatile i32 %161, ptr %162, align 4
  %163 = load i16, ptr %26, align 8
  %164 = load i16, ptr %144, align 4
  %165 = tail call fastcc ptr @ip_route_newports(ptr noundef %30, ptr noundef %77, i16 noundef zeroext %27, i16 noundef zeroext %29, i16 noundef zeroext %163, i16 noundef zeroext %164, ptr noundef %0)
  %166 = icmp ugt ptr %165, inttoptr (i32 -4096 to ptr)
  br i1 %166, label %167, label %169

167:                                              ; preds = %158
  %168 = ptrtoint ptr %165 to i32
  store i32 %168, ptr %4, align 4
  br label %201

169:                                              ; preds = %158
  %170 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 39
  store i32 1, ptr %170, align 8
  tail call void @sk_setup_caps(ptr noundef %0, ptr noundef %165) #18
  %171 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %172 = load i16, ptr %171, align 4
  %173 = and i16 %172, 16384
  %174 = icmp eq i16 %173, 0
  br i1 %174, label %175, label %190, !prof !9

175:                                              ; preds = %169
  %176 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %177 = load i32, ptr %176, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %175
  %180 = load i32, ptr %31, align 4
  %181 = load i32, ptr %0, align 8
  %182 = load i16, ptr %26, align 8
  %183 = load i16, ptr %28, align 2
  %184 = tail call i32 @secure_tcp_seq(i32 noundef %180, i32 noundef %181, i16 noundef zeroext %182, i16 noundef zeroext %183) #18
  store volatile i32 %184, ptr %176, align 4
  br label %185

185:                                              ; preds = %179, %175
  %186 = load i32, ptr %31, align 4
  %187 = load i32, ptr %0, align 8
  %188 = tail call i32 @secure_tcp_ts_off(ptr noundef nonnull @init_net, i32 noundef %186, i32 noundef %187) #18
  %189 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 22
  store i32 %188, ptr %189, align 4
  br label %190

190:                                              ; preds = %185, %169
  %191 = tail call i32 @prandom_u32() #18
  %192 = trunc i32 %191 to i16
  %193 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 7
  store i16 %192, ptr %193, align 2
  %194 = call zeroext i1 @tcp_fastopen_defer_connect(ptr noundef %0, ptr noundef nonnull %4) #18
  %195 = load i32, ptr %4, align 4
  br i1 %194, label %205, label %196

196:                                              ; preds = %190
  %197 = icmp eq i32 %195, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %196
  %199 = call i32 @tcp_connect(ptr noundef %0) #18
  store i32 %199, ptr %4, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %205, label %201

201:                                              ; preds = %198, %196, %167, %154
  %202 = phi ptr [ %77, %154 ], [ null, %167 ], [ null, %196 ], [ null, %198 ]
  call void @tcp_set_state(ptr noundef %0, i32 noundef 7) #18
  call void @dst_release(ptr noundef %202) #18
  %203 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 38
  store i64 0, ptr %203, align 8
  store i16 0, ptr %144, align 4
  %204 = load i32, ptr %4, align 4
  br label %205

205:                                              ; preds = %201, %198, %190, %107, %82, %79, %20, %6, %3
  %206 = phi i32 [ -101, %107 ], [ %204, %201 ], [ -22, %3 ], [ -97, %6 ], [ -22, %20 ], [ 0, %198 ], [ %80, %82 ], [ %80, %79 ], [ %195, %190 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  ret i32 %206
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_hash_connect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ip_route_newports(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, ptr noundef %6) unnamed_addr #3 {
  %8 = icmp eq i16 %4, %2
  %9 = icmp eq i16 %5, %3
  %10 = and i1 %8, %9
  br i1 %10, label %27, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.flowi4, ptr %0, i32 0, i32 3
  store i16 %5, ptr %12, align 8
  %13 = getelementptr inbounds %struct.anon.122, ptr %12, i32 0, i32 1
  store i16 %4, ptr %13, align 2
  tail call void @dst_release(ptr noundef %1) #18
  %14 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.inet_sock, ptr %6, i32 0, i32 8
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 30
  %19 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 13
  %20 = load volatile i32, ptr %19, align 4
  %21 = lshr i32 %20, 13
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = or i8 %23, %18
  store i32 %15, ptr %0, align 8
  %25 = getelementptr inbounds %struct.flowi_common, ptr %0, i32 0, i32 3
  store i8 %24, ptr %25, align 4
  %26 = tail call ptr @ip_route_output_flow(ptr noundef nonnull @init_net, ptr noundef %0, ptr noundef %6) #18
  br label %27

27:                                               ; preds = %11, %7
  %28 = phi ptr [ %26, %11 ], [ %1, %7 ]
  ret ptr %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_setup_caps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @secure_tcp_seq(i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @secure_tcp_ts_off(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tcp_fastopen_defer_connect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_connect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_v4_mtu_reduced(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %3 = load volatile i8, ptr %2, align 2
  %4 = zext i8 %3 to i32
  %5 = shl nuw i32 1, %4
  %6 = and i32 %5, 1152
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %51

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 114
  %10 = load volatile i32, ptr %9, align 8
  %11 = tail call ptr @inet_csk_update_pmtu(ptr noundef %0, i32 noundef %10) #18
  %12 = icmp eq ptr %11, null
  br i1 %12, label %51, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.dst_entry, ptr %11, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dst_ops, ptr %15, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef nonnull %11) #18
  %19 = icmp ult i32 %10, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 11
  %22 = load volatile i8, ptr %21, align 1
  switch i8 %22, label %38 [
    i8 2, label %36
    i8 1, label %23
  ]

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.rtable, ptr %11, i32 0, i32 9
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.dst_entry, ptr %11, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, -4
  %32 = inttoptr i32 %31 to ptr
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28, %20
  %37 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 52
  store i32 90, ptr %37, align 8
  br label %38

38:                                               ; preds = %36, %28, %23, %20, %13
  %39 = load ptr, ptr %14, align 4
  %40 = getelementptr inbounds %struct.dst_ops, ptr %39, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 %41(ptr noundef nonnull %11) #18
  %43 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 11
  %44 = load i8, ptr %43, align 1
  switch i8 %44, label %45 [
    i8 5, label %51
    i8 4, label %51
    i8 0, label %51
  ]

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 9
  %47 = load i32, ptr %46, align 8
  %48 = icmp ugt i32 %47, %42
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = tail call i32 @tcp_sync_mss(ptr noundef %0, i32 noundef %42) #18
  tail call void @tcp_simple_retransmit(ptr noundef %0) #18
  br label %51

51:                                               ; preds = %49, %45, %38, %38, %38, %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_csk_update_pmtu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_sync_mss(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_simple_retransmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_req_err(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.tcp_request_sock, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %9 = getelementptr [126 x i32], ptr %8, i32 0, i32 8
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #12, !srcloc !14
  %14 = add i32 %13, %10
  br label %30

15:                                               ; preds = %3
  br i1 %2, label %16, label %35

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %18 = load ptr, ptr %17, align 8
  %19 = tail call zeroext i1 @inet_csk_reqsk_queue_drop(ptr noundef %18, ptr noundef %0) #18
  %20 = load ptr, ptr %17, align 8
  %21 = getelementptr inbounds %struct.sock, ptr %20, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #18, !srcloc !10
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #18, !srcloc !17
  %23 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %24 = getelementptr [126 x i32], ptr %23, i32 0, i32 20
  %25 = ptrtoint ptr %24 to i32
  %26 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %27 = inttoptr i32 %26 to ptr
  %28 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %27) #12, !srcloc !14
  %29 = add i32 %28, %25
  br label %30

30:                                               ; preds = %16, %7
  %31 = phi i32 [ %14, %7 ], [ %29, %16 ]
  %32 = inttoptr i32 %31 to ptr
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 4
  br label %35

35:                                               ; preds = %30, %15
  tail call fastcc void @reqsk_put(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inet_csk_reqsk_queue_drop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @reqsk_put(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #18, !srcloc !10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #18, !srcloc !19
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %39, label %8, !prof !9

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #18
  br label %39

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !20
  %10 = load volatile i32, ptr %2, align 4
  %11 = icmp ne i32 %10, 0
  %12 = load i1, ptr @reqsk_free.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !12

15:                                               ; preds = %9
  store i1 true, ptr @reqsk_free.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 126, i32 noundef 9, ptr noundef null) #18
  br label %16

16:                                               ; preds = %15, %9
  %17 = getelementptr inbounds %struct.request_sock, ptr %0, i32 0, i32 7
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.request_sock_ops, ptr %18, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  tail call void %20(ptr noundef %0) #18
  %21 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.sock_common, ptr %22, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #18, !srcloc !10
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #18, !srcloc !19
  %27 = extractvalue { i32, i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = icmp sgt i32 %27, 0
  br i1 %30, label %33, label %31, !prof !9

31:                                               ; preds = %29
  tail call void @refcount_warn_saturate(ptr noundef %25, i32 noundef 3) #18
  br label %33

32:                                               ; preds = %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !20
  tail call void @sk_free(ptr noundef nonnull %22) #18
  br label %33

33:                                               ; preds = %32, %31, %29, %16
  %34 = getelementptr inbounds %struct.request_sock, ptr %0, i32 0, i32 9
  %35 = load ptr, ptr %34, align 8
  tail call void @kfree(ptr noundef %35) #18
  %36 = load ptr, ptr %17, align 8
  %37 = getelementptr inbounds %struct.request_sock_ops, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  tail call void @kmem_cache_free(ptr noundef %38, ptr noundef %0) #18
  br label %39

39:                                               ; preds = %33, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_ld_RTO_revert(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %72

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, %1
  br i1 %9, label %10, label %72

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 18
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %72, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 20
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %72, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %20 = tail call ptr @rb_first(ptr noundef %19) #18
  %21 = icmp eq ptr %20, null
  %22 = load i1, ptr @tcp_ld_RTO_revert.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %26, !prof !12

25:                                               ; preds = %18
  store i1 true, ptr @tcp_ld_RTO_revert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 424, i32 noundef 9, ptr noundef null) #18
  br label %26

26:                                               ; preds = %25, %18
  br i1 %21, label %72, label %27

27:                                               ; preds = %26
  %28 = load i8, ptr %15, align 1
  %29 = add i8 %28, -1
  store i8 %29, ptr %15, align 1
  %30 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 45
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 48
  %35 = load i32, ptr %34, align 4
  %36 = lshr i32 %31, 3
  %37 = add i32 %35, %36
  %38 = tail call i32 @__usecs_to_jiffies(i32 noundef %37) #18
  br label %39

39:                                               ; preds = %33, %27
  %40 = phi i32 [ 100, %27 ], [ %38, %33 ]
  %41 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 6
  %42 = zext i32 %40 to i64
  %43 = load i8, ptr %15, align 1
  %44 = zext i8 %43 to i64
  %45 = shl i64 %42, %44
  %46 = tail call i64 @llvm.umin.i64(i64 %45, i64 12000) #18
  %47 = trunc i64 %46 to i32
  store i32 %47, ptr %41, align 4
  tail call void @tcp_mstamp_refresh(ptr noundef %0) #18
  %48 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 2
  %49 = load i64, ptr %48, align 8
  %50 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %49, i32 0) #19, !srcloc !21
  %51 = extractvalue { i64, i32 } %50, 0
  %52 = extractvalue { i64, i32 } %50, 1
  %53 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %49, i64 %51, i32 %52) #19, !srcloc !22
  %54 = load i32, ptr %41, align 4
  %55 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  %56 = load i64, ptr %55, align 8
  %57 = extractvalue { i64, i32 } %53, 0
  %58 = lshr i64 %57, 9
  %59 = sub i64 %56, %58
  %60 = trunc i64 %59 to i32
  %61 = tail call i32 @__usecs_to_jiffies(i32 noundef %60) #18
  %62 = sub i32 %54, %61
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %39
  %65 = tail call i32 @llvm.umin.i32(i32 %62, i32 12000) #18
  %66 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 19
  store i8 1, ptr %66, align 2
  %67 = load volatile i32, ptr @jiffies, align 64
  %68 = add i32 %67, %65
  %69 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 3
  store i32 %68, ptr %69, align 8
  %70 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 4
  tail call void @sk_reset_timer(ptr noundef %0, ptr noundef %70, i32 noundef %68) #18
  br label %72

71:                                               ; preds = %39
  tail call void @tcp_retransmit_timer(ptr noundef %0) #18
  br label %72

72:                                               ; preds = %71, %64, %26, %14, %10, %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_mstamp_refresh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_retransmit_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_v4_err(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 4
  %6 = shl i8 %5, 2
  %7 = and i8 %6, 60
  %8 = zext i8 %7 to i32
  %9 = getelementptr i8, ptr %4, i32 %8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = getelementptr i8, ptr %11, i32 %14
  %16 = load i8, ptr %15, align 4
  %17 = getelementptr inbounds %struct.icmphdr, ptr %15, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.iphdr, ptr %4, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.tcphdr, ptr %9, i32 0, i32 1
  %23 = load i16, ptr %22, align 2
  %24 = getelementptr inbounds %struct.iphdr, ptr %4, i32 0, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = load i16, ptr %9, align 4
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, -2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %2
  %33 = inttoptr i32 %30 to ptr
  %34 = getelementptr inbounds %struct.rtable, ptr %33, i32 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32, %2
  %38 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  br label %40

40:                                               ; preds = %37, %32
  %41 = phi i32 [ %39, %37 ], [ %35, %32 ]
  %42 = tail call ptr @__inet_lookup_established(ptr noundef nonnull @init_net, ptr noundef nonnull @tcp_hashinfo, i32 noundef %21, i16 noundef zeroext %23, i32 noundef %25, i16 noundef zeroext %27, i32 noundef %41, i32 noundef 0) #18
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 8), align 8
  %46 = getelementptr [28 x i32], ptr %45, i32 0, i32 2
  %47 = ptrtoint ptr %46 to i32
  %48 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %49 = inttoptr i32 %48 to ptr
  %50 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %49) #12, !srcloc !14
  %51 = add i32 %50, %47
  %52 = inttoptr i32 %51 to ptr
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr %52, align 4
  br label %263

55:                                               ; preds = %40
  %56 = getelementptr inbounds %struct.sock_common, ptr %42, i32 0, i32 4
  %57 = load volatile i8, ptr %56, align 2
  %58 = icmp eq i8 %57, 6
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  tail call void @inet_twsk_put(ptr noundef nonnull %42) #18
  br label %263

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.tcphdr, ptr %9, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %64 = load volatile i8, ptr %56, align 2
  %65 = icmp eq i8 %64, 12
  br i1 %65, label %66, label %106

66:                                               ; preds = %60
  %67 = add i8 %16, -11
  %68 = icmp ult i8 %67, 2
  %69 = getelementptr inbounds %struct.tcp_request_sock, ptr %42, i32 0, i32 7
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, %63
  br i1 %68, label %73, label %72

72:                                               ; preds = %66
  br i1 %71, label %82, label %74

73:                                               ; preds = %66
  br i1 %71, label %86, label %74

74:                                               ; preds = %73, %72
  %75 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %76 = getelementptr [126 x i32], ptr %75, i32 0, i32 8
  %77 = ptrtoint ptr %76 to i32
  %78 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %79 = inttoptr i32 %78 to ptr
  %80 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %79) #12, !srcloc !14
  %81 = add i32 %80, %77
  br label %100

82:                                               ; preds = %72
  %83 = icmp eq i8 %16, 3
  %84 = icmp ult i8 %18, 2
  %85 = select i1 %83, i1 %84, i1 false
  br i1 %85, label %86, label %105

86:                                               ; preds = %82, %73
  %87 = getelementptr inbounds %struct.sock_common, ptr %42, i32 0, i32 13
  %88 = load ptr, ptr %87, align 8
  %89 = tail call zeroext i1 @inet_csk_reqsk_queue_drop(ptr noundef %88, ptr noundef nonnull %42) #18
  %90 = load ptr, ptr %87, align 8
  %91 = getelementptr inbounds %struct.sock, ptr %90, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %91) #18, !srcloc !10
  %92 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %91, ptr %91, i32 1, ptr elementtype(i32) %91) #18, !srcloc !17
  %93 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %94 = getelementptr [126 x i32], ptr %93, i32 0, i32 20
  %95 = ptrtoint ptr %94 to i32
  %96 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %97 = inttoptr i32 %96 to ptr
  %98 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %97) #12, !srcloc !14
  %99 = add i32 %98, %95
  br label %100

100:                                              ; preds = %86, %74
  %101 = phi i32 [ %81, %74 ], [ %99, %86 ]
  %102 = inttoptr i32 %101 to ptr
  %103 = load i32, ptr %102, align 4
  %104 = add i32 %103, 1
  store i32 %104, ptr %102, align 4
  br label %105

105:                                              ; preds = %100, %82
  tail call fastcc void @reqsk_put(ptr noundef nonnull %42) #18
  br label %263

106:                                              ; preds = %60
  %107 = getelementptr inbounds %struct.sock, ptr %42, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %107) #18
  %108 = getelementptr inbounds %struct.sock, ptr %42, i32 0, i32 4, i32 1
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %126, label %111

111:                                              ; preds = %106
  %112 = icmp eq i8 %16, 3
  %113 = icmp eq i8 %18, 4
  %114 = select i1 %112, i1 %113, i1 false
  br i1 %114, label %126, label %115

115:                                              ; preds = %111
  %116 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %117 = getelementptr [126 x i32], ptr %116, i32 0, i32 9
  %118 = ptrtoint ptr %117 to i32
  %119 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %120 = inttoptr i32 %119 to ptr
  %121 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %120) #12, !srcloc !14
  %122 = add i32 %121, %118
  %123 = inttoptr i32 %122 to ptr
  %124 = load i32, ptr %123, align 4
  %125 = add i32 %124, 1
  store i32 %125, ptr %123, align 4
  br label %126

126:                                              ; preds = %115, %111, %106
  %127 = load volatile i8, ptr %56, align 2
  %128 = icmp eq i8 %127, 7
  br i1 %128, label %252, label %129

129:                                              ; preds = %126
  %130 = load volatile i32, ptr @ip4_min_ttl, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %149, !prof !12

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.iphdr, ptr %4, i32 0, i32 5
  %134 = load i8, ptr %133, align 4
  %135 = getelementptr inbounds %struct.inet_sock, ptr %42, i32 0, i32 9
  %136 = load volatile i8, ptr %135, align 1
  %137 = icmp ult i8 %134, %136
  br i1 %137, label %138, label %149, !prof !12

138:                                              ; preds = %132
  %139 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %140 = getelementptr [126 x i32], ptr %139, i32 0, i32 70
  %141 = ptrtoint ptr %140 to i32
  %142 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %143 = inttoptr i32 %142 to ptr
  %144 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %143) #12, !srcloc !14
  %145 = add i32 %144, %141
  %146 = inttoptr i32 %145 to ptr
  %147 = load i32, ptr %146, align 4
  %148 = add i32 %147, 1
  store i32 %148, ptr %146, align 4
  br label %252

149:                                              ; preds = %132, %129
  %150 = getelementptr inbounds %struct.tcp_sock, ptr %42, i32 0, i32 116
  %151 = load volatile ptr, ptr %150, align 8
  %152 = icmp eq ptr %151, null
  %153 = getelementptr inbounds %struct.tcp_request_sock, ptr %151, i32 0, i32 7
  %154 = getelementptr inbounds %struct.tcp_sock, ptr %42, i32 0, i32 16
  %155 = select i1 %152, ptr %154, ptr %153
  %156 = load i32, ptr %155, align 4
  %157 = load volatile i8, ptr %56, align 2
  %158 = icmp eq i8 %157, 10
  br i1 %158, label %176, label %159

159:                                              ; preds = %149
  %160 = getelementptr inbounds %struct.tcp_sock, ptr %42, i32 0, i32 10
  %161 = load i32, ptr %160, align 4
  %162 = sub i32 %161, %156
  %163 = sub i32 %63, %156
  %164 = icmp ult i32 %162, %163
  br i1 %164, label %165, label %176

165:                                              ; preds = %159
  %166 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %167 = getelementptr [126 x i32], ptr %166, i32 0, i32 8
  %168 = ptrtoint ptr %167 to i32
  %169 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %170 = inttoptr i32 %169 to ptr
  %171 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %170) #12, !srcloc !14
  %172 = add i32 %171, %168
  %173 = inttoptr i32 %172 to ptr
  %174 = load i32, ptr %173, align 4
  %175 = add i32 %174, 1
  store i32 %175, ptr %173, align 4
  br label %252

176:                                              ; preds = %159, %149
  switch i8 %16, label %252 [
    i8 5, label %177
    i8 11, label %221
    i8 12, label %222
    i8 3, label %188
  ]

177:                                              ; preds = %176
  %178 = load i32, ptr %108, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %252

180:                                              ; preds = %177
  %181 = tail call ptr @__sk_dst_check(ptr noundef nonnull %42, i32 noundef 0) #18
  %182 = icmp eq ptr %181, null
  br i1 %182, label %252, label %183

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.dst_entry, ptr %181, i32 0, i32 1
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr inbounds %struct.dst_ops, ptr %185, i32 0, i32 12
  %187 = load ptr, ptr %186, align 16
  tail call void %187(ptr noundef nonnull %181, ptr noundef nonnull %42, ptr noundef %0) #18
  br label %252

188:                                              ; preds = %176
  %189 = icmp ugt i8 %18, 15
  br i1 %189, label %252, label %190

190:                                              ; preds = %188
  %191 = icmp eq i8 %18, 4
  br i1 %191, label %192, label %215

192:                                              ; preds = %190
  %193 = load volatile i8, ptr %56, align 2
  %194 = icmp eq i8 %193, 10
  br i1 %194, label %252, label %195

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.tcp_sock, ptr %42, i32 0, i32 114
  store volatile i32 %1, ptr %196, align 8
  %197 = load i32, ptr %108, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %195
  tail call void @tcp_v4_mtu_reduced(ptr noundef nonnull %42)
  br label %252

200:                                              ; preds = %195
  %201 = getelementptr inbounds %struct.sock, ptr %42, i32 0, i32 24
  %202 = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %201) #18
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %252

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.sock_common, ptr %42, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %205) #18, !srcloc !10
  %206 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %205, ptr %205, i32 1, ptr elementtype(i32) %205) #18, !srcloc !11
  %207 = extractvalue { i32, i32, i32 } %206, 0
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %213, label %209, !prof !12

209:                                              ; preds = %204
  %210 = add i32 %207, 1
  %211 = or i32 %210, %207
  %212 = icmp sgt i32 %211, -1
  br i1 %212, label %252, label %213, !prof !9

213:                                              ; preds = %209, %204
  %214 = phi i32 [ 2, %204 ], [ 1, %209 ]
  tail call void @refcount_warn_saturate(ptr noundef %205, i32 noundef %214) #18
  br label %252

215:                                              ; preds = %190
  %216 = getelementptr [0 x %struct.icmp_err], ptr @icmp_err_convert, i32 0, i32 %19
  %217 = load i32, ptr %216, align 4
  %218 = icmp ult i8 %18, 2
  %219 = select i1 %152, i1 %218, i1 false
  br i1 %219, label %220, label %222

220:                                              ; preds = %215
  tail call void @tcp_ld_RTO_revert(ptr noundef nonnull %42, i32 noundef %63)
  br label %222

221:                                              ; preds = %176
  br label %222

222:                                              ; preds = %221, %220, %215, %176
  %223 = phi i32 [ %217, %215 ], [ %217, %220 ], [ 113, %221 ], [ 71, %176 ]
  %224 = load volatile i8, ptr %56, align 2
  %225 = and i8 %224, -2
  %226 = icmp eq i8 %225, 2
  br i1 %226, label %227, label %240

227:                                              ; preds = %222
  br i1 %152, label %232, label %228

228:                                              ; preds = %227
  %229 = getelementptr inbounds %struct.request_sock, ptr %151, i32 0, i32 8
  %230 = load ptr, ptr %229, align 4
  %231 = icmp eq ptr %230, null
  br i1 %231, label %240, label %232

232:                                              ; preds = %228, %227
  %233 = load i16, ptr %22, align 2
  tail call void @ip_icmp_error(ptr noundef nonnull %42, ptr noundef %0, i32 noundef %223, i16 noundef zeroext %233, i32 noundef %1, ptr noundef %9) #18
  %234 = load i32, ptr %108, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.sock, ptr %42, i32 0, i32 51
  store i32 %223, ptr %237, align 4
  tail call void @sk_error_report(ptr noundef nonnull %42) #18
  tail call void @tcp_done(ptr noundef nonnull %42) #18
  br label %252

238:                                              ; preds = %232
  %239 = getelementptr inbounds %struct.sock, ptr %42, i32 0, i32 52
  store i32 %223, ptr %239, align 8
  br label %252

240:                                              ; preds = %228, %222
  %241 = load i32, ptr %108, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %240
  %244 = getelementptr inbounds %struct.inet_sock, ptr %42, i32 0, i32 12
  %245 = load i16, ptr %244, align 8
  %246 = and i16 %245, 1
  %247 = icmp eq i16 %246, 0
  br i1 %247, label %250, label %248

248:                                              ; preds = %243
  %249 = getelementptr inbounds %struct.sock, ptr %42, i32 0, i32 51
  store i32 %223, ptr %249, align 4
  tail call void @sk_error_report(ptr noundef nonnull %42) #18
  br label %252

250:                                              ; preds = %243, %240
  %251 = getelementptr inbounds %struct.sock, ptr %42, i32 0, i32 52
  store i32 %223, ptr %251, align 8
  br label %252

252:                                              ; preds = %250, %248, %238, %236, %213, %209, %200, %199, %192, %188, %183, %180, %177, %176, %165, %138, %126
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %253 = load i16, ptr %107, align 4
  %254 = add i16 %253, 1
  store i16 %254, ptr %107, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  %255 = getelementptr inbounds %struct.sock_common, ptr %42, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %255) #18, !srcloc !10
  %256 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %255, ptr %255, i32 1, ptr elementtype(i32) %255) #18, !srcloc !19
  %257 = extractvalue { i32, i32, i32 } %256, 0
  %258 = icmp eq i32 %257, 1
  br i1 %258, label %262, label %259

259:                                              ; preds = %252
  %260 = icmp sgt i32 %257, 0
  br i1 %260, label %263, label %261, !prof !9

261:                                              ; preds = %259
  tail call void @refcount_warn_saturate(ptr noundef %255, i32 noundef 3) #18
  br label %263

262:                                              ; preds = %252
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !20
  tail call void @sk_free(ptr noundef nonnull %42) #18
  br label %263

263:                                              ; preds = %262, %261, %259, %105, %59, %44
  %264 = phi i32 [ 0, %59 ], [ 0, %105 ], [ -2, %44 ], [ 0, %259 ], [ 0, %261 ], [ 0, %262 ]
  ret i32 %264
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__inet_lookup_established(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_twsk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_icmp_error(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sock_put(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #18, !srcloc !10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #18, !srcloc !19
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %10, label %8, !prof !9

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #18
  br label %10

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !20
  tail call void @sk_free(ptr noundef %0) #18
  br label %10

10:                                               ; preds = %9, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__tcp_v4_send_check(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = add i32 %11, 6
  %13 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3, ror #8\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %2, i32 %1, i32 %12) #19, !srcloc !27
  %14 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %13) #19, !srcloc !28
  %15 = xor i32 %14, -1
  %16 = lshr i32 %15, 16
  %17 = trunc i32 %16 to i16
  %18 = xor i16 %17, -1
  %19 = getelementptr inbounds %struct.tcphdr, ptr %9, i32 0, i32 6
  store i16 %18, ptr %19, align 4
  %20 = load i16, ptr %6, align 2
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  store i16 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.anon.53, ptr %21, i32 0, i32 1
  store i16 16, ptr %22, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_v4_send_check(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = load i32, ptr %0, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = getelementptr i8, ptr %7, i32 %10
  %12 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %13 = load i32, ptr %12, align 8
  %14 = add i32 %13, 6
  %15 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3, ror #8\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %5, i32 %4, i32 %14) #19, !srcloc !27
  %16 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %15) #19, !srcloc !28
  %17 = xor i32 %16, -1
  %18 = lshr i32 %17, 16
  %19 = trunc i32 %18 to i16
  %20 = xor i16 %19, -1
  %21 = getelementptr inbounds %struct.tcphdr, ptr %11, i32 0, i32 6
  store i16 %20, ptr %21, align 4
  %22 = load i16, ptr %8, align 2
  %23 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  store i16 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.anon.53, ptr %23, i32 0, i32 1
  store i16 16, ptr %24, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_rtx_synack(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tcp_v4_reqsk_send_ack(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
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
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %17 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %18 = getelementptr inbounds %struct.tcp_request_sock, ptr %2, i32 0, i32 10
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 18
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.inet_request_sock, ptr %2, i32 0, i32 1
  %23 = load i16, ptr %22, align 8
  %24 = lshr i16 %23, 4
  %25 = and i16 %24, 15
  %26 = zext i16 %25 to i32
  %27 = lshr i32 %21, %26
  %28 = tail call i64 @ktime_get() #18
  %29 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %28) #19, !srcloc !29
  %30 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %28, i64 %29, i32 0) #19, !srcloc !22
  %31 = extractvalue { i64, i32 } %30, 0
  %32 = lshr i64 %31, 18
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds %struct.tcp_request_sock, ptr %2, i32 0, i32 8
  %35 = load i32, ptr %34, align 8
  %36 = add i32 %35, %33
  %37 = getelementptr inbounds %struct.request_sock, ptr %2, i32 0, i32 5
  %38 = load i32, ptr %37, align 8
  %39 = load i16, ptr %22, align 8
  %40 = lshr i16 %39, 13
  %41 = and i16 %40, 1
  %42 = zext i16 %41 to i32
  %43 = load ptr, ptr %16, align 8
  %44 = load i16, ptr %17, align 4
  %45 = zext i16 %44 to i32
  %46 = getelementptr i8, ptr %43, i32 %45
  %47 = getelementptr inbounds %struct.iphdr, ptr %46, i32 0, i32 1
  %48 = load i8, ptr %47, align 1
  tail call fastcc void @tcp_v4_send_ack(ptr noundef %0, ptr noundef %1, i32 noundef %15, i32 noundef %19, i32 noundef %27, i32 noundef %36, i32 noundef %38, i32 noundef 0, i32 noundef %42, i8 noundef zeroext %48)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tcp_v4_send_reset(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.anon.206, align 4
  %4 = alloca %struct.ip_reply_arg, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %6, i32 %9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #18
  %11 = getelementptr inbounds %struct.tcphdr, ptr %10, i32 0, i32 4
  %12 = load i16, ptr %11, align 4
  %13 = and i16 %12, 1024
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %222

15:                                               ; preds = %2
  %16 = icmp eq ptr %0, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, -2
  %21 = inttoptr i32 %20 to ptr
  %22 = getelementptr inbounds %struct.rtable, ptr %21, i32 0, i32 3
  %23 = load i16, ptr %22, align 4
  %24 = icmp eq i16 %23, 2
  br i1 %24, label %25, label %222

25:                                               ; preds = %17, %15
  %26 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %26, i8 0, i32 20, i1 false)
  %27 = load i16, ptr %10, align 4
  %28 = getelementptr inbounds %struct.tcphdr, ptr %3, i32 0, i32 1
  store i16 %27, ptr %28, align 2
  %29 = getelementptr inbounds %struct.tcphdr, ptr %10, i32 0, i32 1
  %30 = load i16, ptr %29, align 2
  store i16 %30, ptr %3, align 4
  %31 = getelementptr inbounds %struct.tcphdr, ptr %3, i32 0, i32 4
  store i16 1104, ptr %31, align 4
  %32 = load i16, ptr %11, align 4
  %33 = and i16 %32, 4096
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.tcphdr, ptr %10, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.tcphdr, ptr %3, i32 0, i32 2
  store i32 %37, ptr %38, align 4
  br label %61

39:                                               ; preds = %25
  store i16 5200, ptr %31, align 4
  %40 = getelementptr inbounds %struct.tcphdr, ptr %10, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %43 = load i16, ptr %11, align 4
  %44 = lshr i16 %43, 9
  %45 = and i16 %44, 1
  %46 = zext i16 %45 to i32
  %47 = lshr i16 %43, 8
  %48 = and i16 %47, 1
  %49 = zext i16 %48 to i32
  %50 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %51 = load i32, ptr %50, align 8
  %52 = lshr i16 %43, 2
  %53 = and i16 %52, 60
  %54 = zext i16 %53 to i32
  %55 = add i32 %51, %42
  %56 = add i32 %55, %46
  %57 = add i32 %56, %49
  %58 = sub i32 %57, %54
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %60 = getelementptr inbounds %struct.tcphdr, ptr %3, i32 0, i32 3
  store i32 %59, ptr %60, align 4
  br label %61

61:                                               ; preds = %39, %35
  %62 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %62, i8 0, i32 24, i1 false)
  store ptr %3, ptr %4, align 4
  %63 = getelementptr inbounds %struct.kvec, ptr %4, i32 0, i32 1
  store i32 20, ptr %63, align 4
  %64 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %65 = load i16, ptr %64, align 4
  %66 = zext i16 %65 to i32
  %67 = getelementptr i8, ptr %6, i32 %66
  %68 = getelementptr inbounds %struct.iphdr, ptr %67, i32 0, i32 9
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.iphdr, ptr %67, i32 0, i32 8
  %71 = load i32, ptr %70, align 4
  %72 = call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3, ror #8\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %71, i32 %69, i32 26) #19, !srcloc !27
  %73 = getelementptr inbounds %struct.ip_reply_arg, ptr %4, i32 0, i32 2
  store i32 %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.ip_reply_arg, ptr %4, i32 0, i32 3
  store i32 8, ptr %74, align 4
  br i1 %16, label %124, label %75

75:                                               ; preds = %61
  %76 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %77 = load volatile i8, ptr %76, align 2
  switch i8 %77, label %88 [
    i8 6, label %78
    i8 12, label %83
  ]

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.inet_timewait_sock, ptr %0, i32 0, i32 5
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, 2
  %82 = icmp ne i32 %81, 0
  br label %93

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.inet_request_sock, ptr %0, i32 0, i32 1
  %85 = load i16, ptr %84, align 8
  %86 = and i16 %85, 8192
  %87 = icmp ne i16 %86, 0
  br label %93

88:                                               ; preds = %75
  %89 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %90 = load i16, ptr %89, align 8
  %91 = and i16 %90, 32
  %92 = icmp ne i16 %91, 0
  br label %93

93:                                               ; preds = %88, %83, %78
  %94 = phi i1 [ %92, %88 ], [ %87, %83 ], [ %82, %78 ]
  %95 = zext i1 %94 to i32
  %96 = getelementptr inbounds %struct.ip_reply_arg, ptr %4, i32 0, i32 1
  store i32 %95, ptr %96, align 4
  %97 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr inbounds %struct.ip_reply_arg, ptr %4, i32 0, i32 4
  store i32 %98, ptr %99, align 4
  %100 = load volatile i8, ptr %76, align 2
  %101 = zext i8 %100 to i32
  %102 = shl nuw i32 1, %101
  %103 = and i32 %102, -4161
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %129, label %105

105:                                              ; preds = %93
  %106 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tcp_send_reset, i32 0, i32 1), align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %129

108:                                              ; preds = %105
  %109 = tail call ptr @llvm.thread.pointer() #18
  %110 = getelementptr inbounds %struct.thread_info, ptr %109, i32 0, i32 2
  %111 = load i32, ptr %110, align 8
  %112 = lshr i32 %111, 5
  %113 = getelementptr i32, ptr @__cpu_online_mask, i32 %112
  %114 = load volatile i32, ptr %113, align 4
  %115 = and i32 %111, 31
  %116 = shl nuw i32 1, %115
  %117 = and i32 %116, %114
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %129, label %119

119:                                              ; preds = %108
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !30
  %120 = call i32 @__traceiter_tcp_send_reset(ptr noundef null, ptr noundef nonnull %0, ptr noundef %1) #18
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !31
  %121 = load ptr, ptr %5, align 8
  %122 = load i16, ptr %64, align 4
  %123 = zext i16 %122 to i32
  br label %129

124:                                              ; preds = %61
  %125 = getelementptr inbounds %struct.iphdr, ptr %67, i32 0, i32 1
  %126 = load i8, ptr %125, align 1
  %127 = getelementptr inbounds %struct.ip_reply_arg, ptr %4, i32 0, i32 5
  store i8 %126, ptr %127, align 4
  %128 = getelementptr inbounds %struct.ip_reply_arg, ptr %4, i32 0, i32 6
  br label %145

129:                                              ; preds = %119, %108, %105, %93
  %130 = phi i32 [ %123, %119 ], [ %66, %108 ], [ %66, %105 ], [ %66, %93 ]
  %131 = phi ptr [ %121, %119 ], [ %6, %108 ], [ %6, %105 ], [ %6, %93 ]
  %132 = getelementptr i8, ptr %131, i32 %130
  %133 = getelementptr inbounds %struct.iphdr, ptr %132, i32 0, i32 1
  %134 = load i8, ptr %133, align 1
  %135 = getelementptr inbounds %struct.ip_reply_arg, ptr %4, i32 0, i32 5
  store i8 %134, ptr %135, align 4
  %136 = getelementptr inbounds %struct.ip_reply_arg, ptr %4, i32 0, i32 6
  %137 = load volatile i8, ptr %76, align 2
  %138 = zext i8 %137 to i32
  %139 = shl nuw i32 1, %138
  %140 = and i32 %139, -4161
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %129
  %143 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 55
  %144 = load i32, ptr %143, align 4
  br label %145

145:                                              ; preds = %142, %129, %124
  %146 = phi ptr [ %136, %142 ], [ %136, %129 ], [ %128, %124 ]
  %147 = phi i32 [ %144, %142 ], [ 0, %129 ], [ 0, %124 ]
  store i32 %147, ptr %146, align 4
  %148 = tail call ptr @llvm.thread.pointer() #18
  %149 = getelementptr inbounds %struct.thread_info, ptr %148, i32 0, i32 1
  %150 = load volatile i32, ptr %149, align 4
  %151 = add i32 %150, 512
  store volatile i32 %151, ptr %149, align 4
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !32
  %152 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 17), align 4
  %153 = ptrtoint ptr %152 to i32
  %154 = call i32 @llvm.read_register.i32(metadata !0) #18
  %155 = inttoptr i32 %154 to ptr
  %156 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %155) #12, !srcloc !14
  %157 = add i32 %156, %153
  %158 = inttoptr i32 %157 to ptr
  %159 = load volatile ptr, ptr %158, align 4
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !33
  br i1 %16, label %189, label %160

160:                                              ; preds = %145
  %161 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %162 = load volatile i8, ptr %161, align 2
  %163 = icmp eq i8 %162, 6
  %164 = getelementptr inbounds %struct.inet_timewait_sock, ptr %0, i32 0, i32 1
  %165 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 34
  %166 = select i1 %163, ptr %164, ptr %165
  %167 = load i32, ptr %166, align 8
  %168 = getelementptr inbounds %struct.sock, ptr %159, i32 0, i32 34
  store i32 %167, ptr %168, align 8
  %169 = load volatile i8, ptr %161, align 2
  %170 = icmp eq i8 %169, 6
  %171 = getelementptr inbounds %struct.inet_timewait_sock, ptr %0, i32 0, i32 7
  %172 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 33
  %173 = select i1 %170, ptr %171, ptr %172
  %174 = load i32, ptr %173, align 4
  %175 = getelementptr inbounds %struct.sock, ptr %159, i32 0, i32 33
  store i32 %174, ptr %175, align 4
  %176 = load volatile i32, ptr @tcp_tx_delay_enabled, align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %189, !prof !12

178:                                              ; preds = %160
  %179 = load volatile i8, ptr %161, align 2
  %180 = icmp eq i8 %179, 6
  %181 = getelementptr inbounds %struct.tcp_timewait_sock, ptr %0, i32 0, i32 6
  %182 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 41
  %183 = select i1 %180, ptr %181, ptr %182
  %184 = load i32, ptr %183, align 4
  %185 = call i64 @ktime_get() #18
  %186 = zext i32 %184 to i64
  %187 = mul nuw nsw i64 %186, 1000
  %188 = add i64 %187, %185
  br label %189

189:                                              ; preds = %178, %160, %145
  %190 = phi i64 [ 0, %145 ], [ %188, %178 ], [ 0, %160 ]
  %191 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %192 = load ptr, ptr %5, align 8
  %193 = load i16, ptr %64, align 4
  %194 = zext i16 %193 to i32
  %195 = getelementptr i8, ptr %192, i32 %194
  %196 = getelementptr inbounds %struct.iphdr, ptr %195, i32 0, i32 8
  %197 = load i32, ptr %196, align 4
  %198 = getelementptr inbounds %struct.iphdr, ptr %195, i32 0, i32 9
  %199 = load i32, ptr %198, align 4
  %200 = load i32, ptr %63, align 4
  call void @ip_send_unicast_reply(ptr noundef %159, ptr noundef %1, ptr noundef %191, i32 noundef %197, i32 noundef %199, ptr noundef nonnull %4, i32 noundef %200, i64 noundef %190) #18
  %201 = getelementptr inbounds %struct.sock, ptr %159, i32 0, i32 34
  store i32 0, ptr %201, align 8
  %202 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %203 = getelementptr [16 x i32], ptr %202, i32 0, i32 11
  %204 = ptrtoint ptr %203 to i32
  %205 = call i32 @llvm.read_register.i32(metadata !0) #18
  %206 = inttoptr i32 %205 to ptr
  %207 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %206) #12, !srcloc !14
  %208 = add i32 %207, %204
  %209 = inttoptr i32 %208 to ptr
  %210 = load i32, ptr %209, align 4
  %211 = add i32 %210, 1
  store i32 %211, ptr %209, align 4
  %212 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %213 = getelementptr [16 x i32], ptr %212, i32 0, i32 14
  %214 = ptrtoint ptr %213 to i32
  %215 = call i32 @llvm.read_register.i32(metadata !0) #18
  %216 = inttoptr i32 %215 to ptr
  %217 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %216) #12, !srcloc !14
  %218 = add i32 %217, %214
  %219 = inttoptr i32 %218 to ptr
  %220 = load i32, ptr %219, align 4
  %221 = add i32 %220, 1
  store i32 %221, ptr %219, align 4
  call fastcc void @local_bh_enable()
  br label %222

222:                                              ; preds = %189, %17, %2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tcp_v4_reqsk_destructor(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.inet_request_sock, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  tail call void @kfree(ptr noundef %3) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_syn_ack_timeout(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tcp_v4_route_req(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = getelementptr inbounds %struct.iphdr, ptr %10, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 11
  store i32 0, ptr %14, align 4
  %15 = getelementptr %struct.sock_common, ptr %3, i32 0, i32 11, i32 0, i32 0, i32 1
  store i32 0, ptr %15, align 4
  %16 = getelementptr %struct.sock_common, ptr %3, i32 0, i32 11, i32 0, i32 0, i32 2
  store i32 -65536, ptr %16, align 4
  %17 = getelementptr %struct.sock_common, ptr %3, i32 0, i32 11, i32 0, i32 0, i32 3
  store i32 %12, ptr %17, align 4
  %18 = load ptr, ptr %5, align 8
  %19 = load i16, ptr %7, align 4
  %20 = zext i16 %19 to i32
  %21 = getelementptr i8, ptr %18, i32 %20
  %22 = getelementptr inbounds %struct.iphdr, ptr %21, i32 0, i32 8
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %3, align 8
  %24 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 10
  store i32 0, ptr %24, align 4
  %25 = getelementptr %struct.sock_common, ptr %3, i32 0, i32 10, i32 0, i32 0, i32 1
  store i32 0, ptr %25, align 4
  %26 = getelementptr %struct.sock_common, ptr %3, i32 0, i32 10, i32 0, i32 0, i32 2
  store i32 -65536, ptr %26, align 4
  %27 = getelementptr %struct.sock_common, ptr %3, i32 0, i32 10, i32 0, i32 0, i32 3
  store i32 %23, ptr %27, align 4
  %28 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %29 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 36
  %30 = load i8, ptr %29, align 4
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %4
  %33 = zext i8 %30 to i32
  %34 = add nuw nsw i32 %33, 24
  %35 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %34, i32 noundef 2592) #20
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.ip_options_rcu, ptr %35, i32 0, i32 1
  %39 = tail call i32 @__ip_options_echo(ptr noundef nonnull @init_net, ptr noundef %38, ptr noundef %1, ptr noundef %28) #18
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void @kfree(ptr noundef nonnull %35) #18
  br label %42

42:                                               ; preds = %41, %37, %32, %4
  %43 = phi ptr [ null, %4 ], [ null, %41 ], [ %35, %37 ], [ null, %32 ]
  %44 = getelementptr inbounds %struct.inet_request_sock, ptr %3, i32 0, i32 3
  store volatile ptr %43, ptr %44, align 8
  %45 = tail call ptr @inet_csk_route_req(ptr noundef %0, ptr noundef %2, ptr noundef %3) #18
  ret ptr %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tcp_v4_init_seq(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = getelementptr i8, ptr %3, i32 %6
  %8 = getelementptr inbounds %struct.iphdr, ptr %7, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.iphdr, ptr %7, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = getelementptr i8, ptr %3, i32 %14
  %16 = getelementptr inbounds %struct.tcphdr, ptr %15, i32 0, i32 1
  %17 = load i16, ptr %16, align 2
  %18 = load i16, ptr %15, align 4
  %19 = tail call i32 @secure_tcp_seq(i32 noundef %9, i32 noundef %11, i16 noundef zeroext %17, i16 noundef zeroext %18) #18
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tcp_v4_init_ts_off(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = getelementptr inbounds %struct.iphdr, ptr %8, i32 0, i32 9
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.iphdr, ptr %8, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @secure_tcp_ts_off(ptr noundef %0, i32 noundef %10, i32 noundef %12) #18
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tcp_v4_send_synack(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) #0 {
  %8 = alloca %struct.flowi4, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %8, i8 0, i32 56, i1 false), !annotation !34
  %9 = icmp eq ptr %1, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = call ptr @inet_csk_route_req(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %3) #18
  %12 = icmp eq ptr %11, null
  br i1 %12, label %68, label %13

13:                                               ; preds = %10, %7
  %14 = phi ptr [ %1, %7 ], [ %11, %10 ]
  %15 = call ptr @tcp_make_synack(ptr noundef %0, ptr noundef nonnull %14, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) #18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %68, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %3, align 8
  %21 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 16
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 13, i32 0, i32 17
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  %26 = getelementptr i8, ptr %22, i32 %25
  %27 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 5
  %28 = load i32, ptr %27, align 8
  %29 = add i32 %28, 6
  %30 = call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3, ror #8\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %20, i32 %19, i32 %29) #19, !srcloc !27
  %31 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %30) #19, !srcloc !28
  %32 = xor i32 %31, -1
  %33 = lshr i32 %32, 16
  %34 = trunc i32 %33 to i16
  %35 = xor i16 %34, -1
  %36 = getelementptr inbounds %struct.tcphdr, ptr %26, i32 0, i32 6
  store i16 %35, ptr %36, align 4
  %37 = load i16, ptr %23, align 2
  %38 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 13, i32 0, i32 4
  store i16 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.anon.53, ptr %38, i32 0, i32 1
  store i16 16, ptr %39, align 2
  %40 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 91), align 2
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %17
  %43 = getelementptr inbounds %struct.tcp_request_sock, ptr %3, i32 0, i32 11
  %44 = load i8, ptr %43, align 4
  %45 = and i8 %44, -4
  %46 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %47 = load i8, ptr %46, align 4
  %48 = and i8 %47, 3
  %49 = or i8 %48, %45
  br label %53

50:                                               ; preds = %17
  %51 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %52 = load i8, ptr %51, align 4
  br label %53

53:                                               ; preds = %50, %42
  %54 = phi i8 [ %49, %42 ], [ %52, %50 ]
  %55 = and i8 %54, 2
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 4
  %59 = load volatile i8, ptr %58, align 2
  br label %60

60:                                               ; preds = %57, %53
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !35
  %61 = load i32, ptr %18, align 4
  %62 = load i32, ptr %3, align 8
  %63 = getelementptr inbounds %struct.inet_request_sock, ptr %3, i32 0, i32 3
  %64 = load volatile ptr, ptr %63, align 8
  %65 = call i32 @ip_build_and_send_pkt(ptr noundef nonnull %15, ptr noundef %0, i32 noundef %61, i32 noundef %62, ptr noundef %64, i8 noundef zeroext %54) #18
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !36
  %66 = icmp eq i32 %65, 2
  %67 = select i1 %66, i32 0, i32 %65
  br label %68

68:                                               ; preds = %60, %13, %10
  %69 = phi i32 [ -1, %10 ], [ %67, %60 ], [ -1, %13 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #18
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_v4_conn_request(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, -2
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.rtable, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 805306368
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = tail call i32 @tcp_conn_request(ptr noundef nonnull @tcp_request_sock_ops, ptr noundef nonnull @tcp_request_sock_ipv4_ops, ptr noundef %0, ptr noundef %1) #18
  br label %26

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #18, !srcloc !10
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #18, !srcloc !17
  %16 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %17 = getelementptr [126 x i32], ptr %16, i32 0, i32 20
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %20 = inttoptr i32 %19 to ptr
  %21 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %20) #12, !srcloc !14
  %22 = add i32 %21, %18
  %23 = inttoptr i32 %22 to ptr
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 4
  br label %26

26:                                               ; preds = %13, %11
  %27 = phi i32 [ 0, %13 ], [ %12, %11 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_conn_request(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tcp_v4_syn_recv_sock(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef writeonly %5) #0 {
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #18
  store i8 0, ptr %7, align 1
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 53
  %9 = load volatile i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 54
  %11 = load volatile i32, ptr %10, align 8
  %12 = icmp ugt i32 %9, %11
  br i1 %12, label %154, label %13

13:                                               ; preds = %6
  %14 = tail call ptr @tcp_create_openreq_child(ptr noundef %0, ptr noundef %2, ptr noundef %1) #18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %166, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 39
  store i32 1, ptr %17, align 8
  %18 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, -2
  %21 = inttoptr i32 %20 to ptr
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.dst_entry, ptr %21, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !37
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #18, !srcloc !10
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 0, i32 1, ptr elementtype(i32) %24) #18, !srcloc !38
  %26 = extractvalue { i32, i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !39
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !40
  %29 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 1
  store volatile ptr %21, ptr %29, align 8
  %30 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 2
  store i32 %31, ptr %32, align 4
  br label %33

33:                                               ; preds = %28, %23, %16
  %34 = load i32, ptr %2, align 8
  store i32 %34, ptr %14, align 8
  %35 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 10
  store i32 0, ptr %35, align 4
  %36 = getelementptr %struct.sock_common, ptr %14, i32 0, i32 10, i32 0, i32 0, i32 1
  store i32 0, ptr %36, align 4
  %37 = getelementptr %struct.sock_common, ptr %14, i32 0, i32 10, i32 0, i32 0, i32 2
  store i32 -65536, ptr %37, align 4
  %38 = getelementptr %struct.sock_common, ptr %14, i32 0, i32 10, i32 0, i32 0, i32 3
  store i32 %34, ptr %38, align 4
  %39 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.anon, ptr %14, i32 0, i32 1
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 11
  store i32 0, ptr %42, align 4
  %43 = getelementptr %struct.sock_common, ptr %14, i32 0, i32 11, i32 0, i32 0, i32 1
  store i32 0, ptr %43, align 4
  %44 = getelementptr %struct.sock_common, ptr %14, i32 0, i32 11, i32 0, i32 0, i32 2
  store i32 -65536, ptr %44, align 4
  %45 = getelementptr %struct.sock_common, ptr %14, i32 0, i32 11, i32 0, i32 0, i32 3
  store i32 %40, ptr %45, align 4
  %46 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 6
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 6
  store i32 %47, ptr %48, align 4
  %49 = load i32, ptr %39, align 4
  %50 = getelementptr inbounds %struct.inet_sock, ptr %14, i32 0, i32 2
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.inet_request_sock, ptr %2, i32 0, i32 3
  %52 = load volatile ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.inet_sock, ptr %14, i32 0, i32 5
  store volatile ptr %52, ptr %53, align 4
  %54 = load i32, ptr %18, align 8
  %55 = and i32 %54, -2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %33
  %58 = inttoptr i32 %55 to ptr
  %59 = getelementptr inbounds %struct.rtable, ptr %58, i32 0, i32 6
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57, %33
  %63 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 6
  %64 = load i32, ptr %63, align 4
  br label %65

65:                                               ; preds = %62, %57
  %66 = phi i32 [ %64, %62 ], [ %60, %57 ]
  %67 = getelementptr inbounds %struct.inet_sock, ptr %14, i32 0, i32 16
  store i32 %66, ptr %67, align 8
  %68 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %71 = load i16, ptr %70, align 4
  %72 = zext i16 %71 to i32
  %73 = getelementptr i8, ptr %69, i32 %72
  %74 = getelementptr inbounds %struct.iphdr, ptr %73, i32 0, i32 5
  %75 = load i8, ptr %74, align 4
  %76 = getelementptr inbounds %struct.inet_sock, ptr %14, i32 0, i32 10
  store i8 %75, ptr %76, align 2
  %77 = load ptr, ptr %68, align 8
  %78 = load i16, ptr %70, align 4
  %79 = zext i16 %78 to i32
  %80 = getelementptr i8, ptr %77, i32 %79
  %81 = getelementptr inbounds %struct.iphdr, ptr %80, i32 0, i32 1
  %82 = load i8, ptr %81, align 1
  %83 = getelementptr inbounds %struct.inet_sock, ptr %14, i32 0, i32 13
  store i8 %82, ptr %83, align 2
  %84 = getelementptr inbounds %struct.inet_connection_sock, ptr %14, i32 0, i32 23
  store i16 0, ptr %84, align 2
  %85 = icmp eq ptr %52, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %65
  %87 = getelementptr inbounds %struct.ip_options_rcu, ptr %52, i32 0, i32 1, i32 2
  %88 = load i8, ptr %87, align 4
  %89 = zext i8 %88 to i16
  store i16 %89, ptr %84, align 2
  br label %90

90:                                               ; preds = %86, %65
  %91 = tail call i32 @prandom_u32() #18
  %92 = trunc i32 %91 to i16
  %93 = getelementptr inbounds %struct.inet_sock, ptr %14, i32 0, i32 7
  store i16 %92, ptr %93, align 2
  %94 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 91), align 2
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.tcp_request_sock, ptr %2, i32 0, i32 11
  %98 = load i8, ptr %97, align 4
  %99 = and i8 %98, -4
  %100 = getelementptr inbounds %struct.inet_sock, ptr %14, i32 0, i32 8
  store i8 %99, ptr %100, align 4
  br label %101

101:                                              ; preds = %96, %90
  %102 = icmp eq ptr %3, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %101
  %104 = tail call ptr @inet_csk_route_child_sock(ptr noundef %0, ptr noundef nonnull %14, ptr noundef %2) #18
  %105 = icmp eq ptr %104, null
  br i1 %105, label %180, label %106

106:                                              ; preds = %103, %101
  %107 = phi ptr [ %3, %101 ], [ %104, %103 ]
  tail call void @sk_setup_caps(ptr noundef nonnull %14, ptr noundef nonnull %107) #18
  tail call void @tcp_ca_openreq_child(ptr noundef nonnull %14, ptr noundef nonnull %107) #18
  %108 = getelementptr inbounds %struct.dst_entry, ptr %107, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.dst_ops, ptr %109, i32 0, i32 5
  %111 = load ptr, ptr %110, align 4
  %112 = tail call i32 %111(ptr noundef nonnull %107) #18
  %113 = tail call i32 @tcp_sync_mss(ptr noundef nonnull %14, i32 noundef %112) #18
  %114 = getelementptr inbounds %struct.dst_entry, ptr %107, i32 0, i32 2
  %115 = load i32, ptr %114, align 4
  %116 = and i32 %115, -4
  %117 = inttoptr i32 %116 to ptr
  %118 = getelementptr i32, ptr %117, i32 7
  %119 = load i32, ptr %118, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %106
  %122 = load ptr, ptr %108, align 4
  %123 = getelementptr inbounds %struct.dst_ops, ptr %122, i32 0, i32 4
  %124 = load ptr, ptr %123, align 16
  %125 = tail call i32 %124(ptr noundef nonnull %107) #18
  br label %126

126:                                              ; preds = %121, %106
  %127 = phi i32 [ %119, %106 ], [ %125, %121 ]
  %128 = trunc i32 %127 to i16
  %129 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 6
  %130 = load volatile i16, ptr %129, align 4
  %131 = icmp ne i16 %130, 0
  %132 = icmp ult i16 %130, %128
  %133 = and i1 %131, %132
  %134 = select i1 %133, i16 %130, i16 %128
  %135 = getelementptr inbounds %struct.tcp_sock, ptr %14, i32 0, i32 32
  store i16 %134, ptr %135, align 8
  tail call void @tcp_initialize_rcv_mss(ptr noundef nonnull %14) #18
  %136 = tail call i32 @__inet_inherit_port(ptr noundef %0, ptr noundef nonnull %14) #18
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %180, label %138

138:                                              ; preds = %126
  %139 = call zeroext i1 @inet_ehash_nolisten(ptr noundef nonnull %14, ptr noundef %4, ptr noundef nonnull %7) #18
  %140 = zext i1 %139 to i8
  store i8 %140, ptr %5, align 1
  br i1 %139, label %141, label %145, !prof !9

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.request_sock, ptr %2, i32 0, i32 9
  %143 = load ptr, ptr %142, align 8
  %144 = getelementptr inbounds %struct.tcp_sock, ptr %14, i32 0, i32 117
  store ptr %143, ptr %144, align 4
  store ptr null, ptr %142, align 8
  store ptr null, ptr %51, align 8
  br label %181

145:                                              ; preds = %138
  store ptr null, ptr %53, align 4
  %146 = icmp ne ptr %4, null
  %147 = load i8, ptr %7, align 1
  %148 = icmp eq i8 %147, 0
  %149 = select i1 %146, i1 true, i1 %148
  br i1 %149, label %181, label %150

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 4
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %152 = load i16, ptr %151, align 4
  %153 = add i16 %152, 1
  store i16 %153, ptr %151, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !24
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  call fastcc void @sock_put(ptr noundef nonnull %14)
  br label %181

154:                                              ; preds = %6
  %155 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !41
  %156 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %157 = getelementptr [126 x i32], ptr %156, i32 0, i32 19
  %158 = ptrtoint ptr %157 to i32
  %159 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %160 = inttoptr i32 %159 to ptr
  %161 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %160) #12, !srcloc !14
  %162 = add i32 %161, %158
  %163 = inttoptr i32 %162 to ptr
  %164 = load i32, ptr %163, align 4
  %165 = add i32 %164, 1
  store i32 %165, ptr %163, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %155) #18, !srcloc !42
  br label %166

166:                                              ; preds = %154, %13
  tail call void @dst_release(ptr noundef %3) #18
  br label %167

167:                                              ; preds = %180, %166
  %168 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %168) #18, !srcloc !10
  %169 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %168, ptr %168, i32 1, ptr elementtype(i32) %168) #18, !srcloc !17
  %170 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %171 = getelementptr [126 x i32], ptr %170, i32 0, i32 20
  %172 = ptrtoint ptr %171 to i32
  %173 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %174 = inttoptr i32 %173 to ptr
  %175 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %174) #12, !srcloc !14
  %176 = add i32 %175, %172
  %177 = inttoptr i32 %176 to ptr
  %178 = load i32, ptr %177, align 4
  %179 = add i32 %178, 1
  store i32 %179, ptr %177, align 4
  br label %181

180:                                              ; preds = %126, %103
  store ptr null, ptr %53, align 4
  tail call void @inet_csk_prepare_forced_close(ptr noundef nonnull %14) #18
  tail call void @tcp_done(ptr noundef nonnull %14) #18
  br label %167

181:                                              ; preds = %167, %150, %145, %141
  %182 = phi ptr [ null, %167 ], [ %14, %141 ], [ %14, %145 ], [ null, %150 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #18
  ret ptr %182
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcp_create_openreq_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_sk_rx_dst_set(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, -2
  %6 = inttoptr i32 %5 to ptr
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dst_entry, ptr %6, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !37
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #18, !srcloc !10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 0, i32 1, ptr elementtype(i32) %9) #18, !srcloc !38
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !39
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !40
  %14 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 1
  store volatile ptr %6, ptr %14, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 2
  store i32 %16, ptr %17, align 4
  br label %18

18:                                               ; preds = %13, %8, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_csk_route_child_sock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_ca_openreq_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_initialize_rcv_mss(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__inet_inherit_port(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inet_ehash_nolisten(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_csk_prepare_forced_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @tcp_v4_get_syncookie(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) local_unnamed_addr #5 {
  ret i16 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_v4_do_rcv(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %4 = load volatile i8, ptr %3, align 2
  %5 = icmp eq i8 %4, 1
  br i1 %5, label %6, label %49

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 21
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 7
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %15, label %14, !prof !9

14:                                               ; preds = %6
  store i32 %12, ptr %9, align 8
  br label %15

15:                                               ; preds = %14, %6
  %16 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 14
  %17 = load volatile i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 10
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %22, label %21, !prof !9

21:                                               ; preds = %15
  store volatile i32 %19, ptr %16, align 8
  br label %22

22:                                               ; preds = %21, %15
  %23 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 9
  %24 = load i16, ptr %23, align 4
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = add i16 %24, -1
  %28 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 17
  %29 = load volatile i16, ptr %28, align 2
  %30 = icmp eq i16 %29, %27
  br i1 %30, label %32, label %31, !prof !9

31:                                               ; preds = %26
  store volatile i16 %27, ptr %28, align 2
  br label %32

32:                                               ; preds = %31, %26, %22
  %33 = icmp eq ptr %8, null
  br i1 %33, label %48, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.dst_entry, ptr %8, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.dst_ops, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = tail call ptr %44(ptr noundef nonnull %8, i32 noundef 0) #18
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %40, %34
  store volatile ptr null, ptr %7, align 8
  tail call void @dst_release(ptr noundef nonnull %8) #18
  br label %48

48:                                               ; preds = %47, %40, %32
  tail call void @tcp_rcv_established(ptr noundef %0, ptr noundef %1) #18
  br label %131

49:                                               ; preds = %2
  %50 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %51 = load i16, ptr %50, align 8
  %52 = lshr i16 %51, 5
  %53 = and i16 %52, 3
  %54 = icmp ne i16 %53, 1
  %55 = icmp sgt i16 %51, -1
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %57, label %75

57:                                               ; preds = %49
  %58 = icmp eq i16 %53, 3
  br i1 %58, label %59, label %72

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %61 = load i16, ptr %60, align 4
  %62 = zext i16 %61 to i32
  %63 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %66 = load ptr, ptr %65, align 8
  %67 = ptrtoint ptr %64 to i32
  %68 = ptrtoint ptr %66 to i32
  %69 = sub i32 %62, %67
  %70 = add i32 %69, %68
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %59, %57
  %73 = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %1) #18
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %72, %59, %49
  %76 = load volatile i8, ptr %3, align 2
  %77 = icmp eq i8 %76, 10
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = icmp eq ptr %0, null
  br i1 %79, label %91, label %87

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 21
  %82 = load i32, ptr %81, align 8
  %83 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 7
  %84 = load i32, ptr %83, align 8
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %87, label %86, !prof !9

86:                                               ; preds = %80
  store i32 %84, ptr %81, align 8
  br label %87

87:                                               ; preds = %86, %80, %78
  %88 = tail call i32 @tcp_rcv_state_process(ptr noundef %0, ptr noundef %1) #18
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %131, label %90

90:                                               ; preds = %87
  tail call void @tcp_v4_send_reset(ptr noundef %0, ptr noundef %1)
  br label %91

91:                                               ; preds = %108, %90, %78
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #18
  br label %131

92:                                               ; preds = %72
  %93 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tcp_bad_csum, i32 0, i32 1), align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %92
  %96 = tail call ptr @llvm.thread.pointer() #18
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
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !43
  %107 = tail call i32 @__traceiter_tcp_bad_csum(ptr noundef null, ptr noundef %1) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !44
  br label %108

108:                                              ; preds = %106, %95, %92
  %109 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !41
  %110 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %111 = getelementptr [16 x i32], ptr %110, i32 0, i32 15
  %112 = ptrtoint ptr %111 to i32
  %113 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %114 = inttoptr i32 %113 to ptr
  %115 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %114) #12, !srcloc !14
  %116 = add i32 %115, %112
  %117 = inttoptr i32 %116 to ptr
  %118 = load i32, ptr %117, align 4
  %119 = add i32 %118, 1
  store i32 %119, ptr %117, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %109) #18, !srcloc !42
  %120 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !41
  %121 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %122 = getelementptr [16 x i32], ptr %121, i32 0, i32 13
  %123 = ptrtoint ptr %122 to i32
  %124 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %125 = inttoptr i32 %124 to ptr
  %126 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %125) #12, !srcloc !14
  %127 = add i32 %126, %123
  %128 = inttoptr i32 %127 to ptr
  %129 = load i32, ptr %128, align 4
  %130 = add i32 %129, 1
  store i32 %130, ptr %128, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %120) #18, !srcloc !42
  br label %91

131:                                              ; preds = %91, %87, %48
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_rcv_established(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tcp_checksum_complete(ptr noundef %0) unnamed_addr #3 {
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
  %25 = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %0) #18
  %26 = icmp ne i16 %25, 0
  br label %27

27:                                               ; preds = %24, %11, %1
  %28 = phi i1 [ false, %11 ], [ %26, %24 ], [ false, %1 ]
  ret i1 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_child_process(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_rcv_state_process(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_tcp_bad_csum(ptr noundef %0) unnamed_addr #3 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tcp_bad_csum, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #18
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
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !43
  %16 = tail call i32 @__traceiter_tcp_bad_csum(ptr noundef null, ptr noundef %0) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !44
  br label %17

17:                                               ; preds = %15, %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_v4_early_demux(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 7
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %97

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
  br i1 %24, label %25, label %35, !prof !12

25:                                               ; preds = %6
  %26 = icmp ult i32 %20, %18
  br i1 %26, label %97, label %27, !prof !12

27:                                               ; preds = %25
  %28 = sub i32 %18, %23
  %29 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %28) #18
  %30 = icmp eq ptr %29, null
  br i1 %30, label %97, label %31

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
  br i1 %42, label %97, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %45 = load i16, ptr %44, align 4
  %46 = zext i16 %45 to i32
  %47 = getelementptr i8, ptr %37, i32 %46
  %48 = getelementptr inbounds %struct.iphdr, ptr %47, i32 0, i32 8
  %49 = load i32, ptr %48, align 4
  %50 = load i16, ptr %38, align 4
  %51 = getelementptr inbounds %struct.iphdr, ptr %47, i32 0, i32 9
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.tcphdr, ptr %38, i32 0, i32 1
  %54 = load i16, ptr %53, align 2
  %55 = tail call i16 @llvm.bswap.i16(i16 %54)
  %56 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = tail call ptr @__inet_lookup_established(ptr noundef nonnull @init_net, ptr noundef nonnull @tcp_hashinfo, i32 noundef %49, i16 noundef zeroext %50, i32 noundef %52, i16 noundef zeroext %55, i32 noundef %57, i32 noundef 0) #18
  %59 = icmp eq ptr %58, null
  br i1 %59, label %97, label %60

60:                                               ; preds = %43
  %61 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  store ptr %58, ptr %61, align 4
  %62 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4, i32 0, i32 1
  store ptr @sock_edemux, ptr %62, align 4
  %63 = getelementptr inbounds %struct.sock_common, ptr %58, i32 0, i32 4
  %64 = load volatile i8, ptr %63, align 2
  %65 = zext i8 %64 to i32
  %66 = shl nuw i32 1, %65
  %67 = and i32 %66, -4161
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %97, label %69

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.sock, ptr %58, i32 0, i32 1
  %71 = load volatile ptr, ptr %70, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %97, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.dst_entry, ptr %71, i32 0, i32 8
  %75 = load i16, ptr %74, align 2
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.dst_entry, ptr %71, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.dst_ops, ptr %79, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = tail call ptr %81(ptr noundef nonnull %71, i32 noundef 0) #18
  %83 = icmp eq ptr %82, null
  br i1 %83, label %97, label %84

84:                                               ; preds = %77, %73
  %85 = phi ptr [ %82, %77 ], [ %71, %73 ]
  %86 = getelementptr inbounds %struct.sock, ptr %58, i32 0, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = load i32, ptr %56, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %92 = load i16, ptr %91, align 2
  %93 = or i16 %92, 16384
  store i16 %93, ptr %91, align 2
  %94 = ptrtoint ptr %85 to i32
  %95 = or i32 %94, 1
  %96 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  store i32 %95, ptr %96, align 8
  br label %97

97:                                               ; preds = %90, %84, %77, %69, %60, %43, %35, %27, %25, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_edemux(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @tcp_add_backlog(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #18
  store i8 0, ptr %3, align 1, !annotation !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  store i32 0, ptr %4, align 4, !annotation !34
  tail call void @skb_condense(ptr noundef %1) #18
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = and i32 %6, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = and i32 %6, -2
  %13 = inttoptr i32 %12 to ptr
  tail call void @dst_release(ptr noundef %13) #18
  br label %14

14:                                               ; preds = %11, %8
  store i32 0, ptr %5, align 8
  br label %15

15:                                               ; preds = %14, %2
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %17 = load i16, ptr %16, align 8
  %18 = lshr i16 %17, 5
  %19 = and i16 %18, 3
  %20 = icmp ne i16 %19, 1
  %21 = icmp sgt i16 %17, -1
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %65

23:                                               ; preds = %15
  %24 = icmp eq i16 %19, 3
  br i1 %24, label %25, label %38

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %27 = load i16, ptr %26, align 4
  %28 = zext i16 %27 to i32
  %29 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %32 = load ptr, ptr %31, align 8
  %33 = ptrtoint ptr %30 to i32
  %34 = ptrtoint ptr %32 to i32
  %35 = sub i32 %28, %33
  %36 = add i32 %35, %34
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %65

38:                                               ; preds = %25, %23
  %39 = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %1) #18
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %65, label %41, !prof !9

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %43 = load i16, ptr %42, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %42, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  tail call fastcc void @trace_tcp_bad_csum(ptr noundef %1)
  %45 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %46 = getelementptr [16 x i32], ptr %45, i32 0, i32 15
  %47 = ptrtoint ptr %46 to i32
  %48 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %49 = inttoptr i32 %48 to ptr
  %50 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %49) #12, !srcloc !14
  %51 = add i32 %50, %47
  %52 = inttoptr i32 %51 to ptr
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr %52, align 4
  %55 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %56 = getelementptr [16 x i32], ptr %55, i32 0, i32 13
  %57 = ptrtoint ptr %56 to i32
  %58 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %59 = inttoptr i32 %58 to ptr
  %60 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %59) #12, !srcloc !14
  %61 = add i32 %60, %57
  %62 = inttoptr i32 %61 to ptr
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr %62, align 4
  br label %300

65:                                               ; preds = %38, %25, %15
  %66 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.tcphdr, ptr %67, i32 0, i32 4
  %69 = load i16, ptr %68, align 4
  %70 = lshr i16 %69, 4
  %71 = and i16 %70, 15
  %72 = shl nuw nsw i16 %71, 2
  %73 = zext i16 %72 to i32
  %74 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %223, label %77

77:                                               ; preds = %65
  %78 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 17
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 3, i32 4
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %83 = load i32, ptr %82, align 8
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %223

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 3, i32 14
  %87 = load i8, ptr %86, align 2
  %88 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 14
  %89 = load i8, ptr %88, align 2
  %90 = icmp eq i8 %87, %89
  br i1 %90, label %91, label %223

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 3, i32 12
  %93 = load i8, ptr %92, align 4
  %94 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %95 = load i8, ptr %94, align 4
  %96 = or i8 %95, %93
  %97 = and i8 %96, 38
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %223

99:                                               ; preds = %91
  %100 = and i8 %93, 16
  %101 = and i8 %100, %95
  %102 = icmp ne i8 %101, 0
  %103 = xor i8 %95, %93
  %104 = icmp ult i8 %103, 64
  %105 = select i1 %102, i1 %104, i1 false
  br i1 %105, label %106, label %223

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.tcphdr, ptr %79, i32 0, i32 4
  %108 = load i16, ptr %107, align 4
  %109 = lshr i16 %108, 4
  %110 = and i16 %109, 15
  %111 = icmp eq i16 %110, %71
  br i1 %111, label %112, label %223

112:                                              ; preds = %106
  %113 = getelementptr %struct.tcphdr, ptr %79, i32 1
  %114 = getelementptr %struct.tcphdr, ptr %67, i32 1
  %115 = add nsw i32 %73, -20
  %116 = tail call i32 @bcmp(ptr %113, ptr %114, i32 %115)
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %223

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %120 = load i32, ptr %119, align 8
  %121 = sub i32 %120, %73
  store i32 %121, ptr %119, align 8
  %122 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %123 = load i32, ptr %122, align 4
  %124 = icmp ult i32 %121, %123
  br i1 %124, label %125, label %126, !prof !12

125:                                              ; preds = %118
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #18, !srcloc !45
  unreachable

126:                                              ; preds = %118
  %127 = getelementptr i8, ptr %67, i32 %73
  store ptr %127, ptr %66, align 4
  %128 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.skb_shared_info, ptr %129, i32 0, i32 4
  %131 = load i16, ptr %130, align 4
  %132 = zext i16 %131 to i32
  %133 = icmp eq i16 %131, 0
  %134 = select i1 %133, i32 %121, i32 %132
  %135 = getelementptr inbounds %struct.skb_shared_info, ptr %129, i32 0, i32 5
  %136 = load i16, ptr %135, align 2
  %137 = icmp eq i16 %136, 0
  %138 = select i1 %137, i16 1, i16 %136
  %139 = zext i16 %138 to i32
  %140 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 15
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.skb_shared_info, ptr %141, i32 0, i32 4
  %143 = load i16, ptr %142, align 4
  %144 = zext i16 %143 to i32
  %145 = icmp eq i16 %143, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %126
  %147 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 5
  %148 = load i32, ptr %147, align 8
  %149 = sub i32 %148, %73
  br label %150

150:                                              ; preds = %146, %126
  %151 = phi i32 [ %149, %146 ], [ %144, %126 ]
  %152 = getelementptr inbounds %struct.skb_shared_info, ptr %141, i32 0, i32 5
  %153 = load i16, ptr %152, align 2
  %154 = icmp eq i16 %153, 0
  %155 = select i1 %154, i16 1, i16 %153
  %156 = zext i16 %155 to i32
  %157 = call zeroext i1 @skb_try_coalesce(ptr noundef nonnull %75, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  br i1 %157, label %158, label %217

158:                                              ; preds = %150
  %159 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %160 = load i32, ptr %159, align 4
  store i32 %160, ptr %80, align 4
  %161 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  %162 = load i32, ptr %161, align 8
  %163 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 3, i32 16
  %164 = load i32, ptr %163, align 8
  %165 = sub i32 %162, %164
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %171, label %167, !prof !12

167:                                              ; preds = %158
  store i32 %162, ptr %163, align 8
  %168 = getelementptr inbounds %struct.tcphdr, ptr %67, i32 0, i32 5
  %169 = load i16, ptr %168, align 2
  %170 = getelementptr inbounds %struct.tcphdr, ptr %79, i32 0, i32 5
  store i16 %169, ptr %170, align 2
  br label %171

171:                                              ; preds = %167, %158
  %172 = load i16, ptr %68, align 4
  %173 = load i16, ptr %107, align 4
  %174 = and i16 %172, 256
  %175 = or i16 %174, %173
  store i16 %175, ptr %107, align 4
  %176 = load i8, ptr %94, align 4
  %177 = load i8, ptr %92, align 4
  %178 = or i8 %177, %176
  store i8 %178, ptr %92, align 4
  %179 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 15
  %180 = load i8, ptr %179, align 1
  %181 = and i8 %180, 4
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %195, label %183

183:                                              ; preds = %171
  %184 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 3, i32 15
  %185 = load i8, ptr %184, align 1
  %186 = or i8 %185, 4
  store i8 %186, ptr %184, align 1
  %187 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 2
  %188 = load i64, ptr %187, align 8
  %189 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 2
  store i64 %188, ptr %189, align 8
  %190 = load ptr, ptr %128, align 4
  %191 = getelementptr inbounds %struct.skb_shared_info, ptr %190, i32 0, i32 7
  %192 = load i64, ptr %191, align 8
  %193 = load ptr, ptr %140, align 4
  %194 = getelementptr inbounds %struct.skb_shared_info, ptr %193, i32 0, i32 7
  store i64 %192, ptr %194, align 8
  br label %195

195:                                              ; preds = %183, %171
  %196 = call i32 @llvm.umax.i32(i32 %134, i32 %151)
  %197 = trunc i32 %196 to i16
  store i16 %197, ptr %142, align 4
  %198 = add nuw nsw i32 %156, %139
  %199 = call i32 @llvm.umin.i32(i32 %198, i32 65535)
  %200 = trunc i32 %199 to i16
  store i16 %200, ptr %152, align 2
  %201 = load i32, ptr %4, align 4
  %202 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9, i32 1
  %203 = load i32, ptr %202, align 4
  %204 = add i32 %203, %201
  store i32 %204, ptr %202, align 4
  %205 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %206 = getelementptr [126 x i32], ptr %205, i32 0, i32 78
  %207 = ptrtoint ptr %206 to i32
  %208 = call i32 @llvm.read_register.i32(metadata !0) #18
  %209 = inttoptr i32 %208 to ptr
  %210 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %209) #12, !srcloc !14
  %211 = add i32 %210, %207
  %212 = inttoptr i32 %211 to ptr
  %213 = load i32, ptr %212, align 4
  %214 = add i32 %213, 1
  store i32 %214, ptr %212, align 4
  %215 = load i8, ptr %3, align 1, !range !46
  %216 = icmp ne i8 %215, 0
  call void @kfree_skb_partial(ptr noundef %1, i1 noundef zeroext %216) #18
  br label %300

217:                                              ; preds = %150
  %218 = load ptr, ptr %66, align 4
  %219 = sub nsw i32 0, %73
  %220 = getelementptr i8, ptr %218, i32 %219
  store ptr %220, ptr %66, align 4
  %221 = load i32, ptr %119, align 8
  %222 = add i32 %221, %73
  store i32 %222, ptr %119, align 8
  br label %223

223:                                              ; preds = %217, %112, %106, %99, %91, %85, %77, %65
  %224 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 15
  %225 = load volatile i32, ptr %224, align 4
  %226 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 21
  %227 = load volatile i32, ptr %226, align 8
  %228 = add i32 %225, 65536
  %229 = add i32 %228, %227
  %230 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %231 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9, i32 1
  %232 = load i32, ptr %231, align 4
  %233 = load volatile i32, ptr %230, align 4
  %234 = add i32 %233, %232
  %235 = icmp ugt i32 %234, %229
  br i1 %235, label %286, label %236

236:                                              ; preds = %223
  %237 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %238 = load i8, ptr %237, align 2
  %239 = and i8 %238, 64
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %246, label %241

241:                                              ; preds = %236
  %242 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %243 = load volatile i32, ptr %242, align 4
  %244 = and i32 %243, 16384
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %286, label %246

246:                                              ; preds = %241, %236
  %247 = load i32, ptr %5, align 8
  %248 = and i32 %247, 1
  %249 = icmp ne i32 %248, 0
  %250 = icmp ugt i32 %247, 1
  %251 = and i1 %250, %249
  br i1 %251, label %252, label %275

252:                                              ; preds = %246
  %253 = and i32 %247, -2
  %254 = inttoptr i32 %253 to ptr
  %255 = getelementptr inbounds %struct.dst_entry, ptr %254, i32 0, i32 18
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !37
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %255) #18, !srcloc !10
  %256 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %255, ptr %255, i32 0, i32 1, ptr elementtype(i32) %255) #18, !srcloc !38
  %257 = extractvalue { i32, i32, i32 } %256, 0
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %260, label %259

259:                                              ; preds = %252
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !39
  br label %260

260:                                              ; preds = %259, %252
  %261 = phi ptr [ null, %252 ], [ %254, %259 ]
  %262 = ptrtoint ptr %261 to i32
  store i32 %262, ptr %5, align 8
  %263 = icmp ne ptr %261, null
  %264 = zext i1 %263 to i8
  %265 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 3
  %266 = load i16, ptr %265, align 2
  %267 = lshr i16 %266, 14
  %268 = trunc i16 %267 to i8
  %269 = and i8 %268, 1
  %270 = or i8 %269, %264
  %271 = zext i8 %270 to i16
  %272 = shl nuw nsw i16 %271, 14
  %273 = and i16 %266, -16385
  %274 = or i16 %272, %273
  store i16 %274, ptr %265, align 2
  br label %275

275:                                              ; preds = %260, %246
  %276 = load ptr, ptr %74, align 4
  %277 = icmp eq ptr %276, null
  br i1 %277, label %278, label %280

278:                                              ; preds = %275
  %279 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9, i32 2
  store volatile ptr %1, ptr %279, align 8
  br label %281

280:                                              ; preds = %275
  store ptr %1, ptr %276, align 8
  br label %281

281:                                              ; preds = %280, %278
  store volatile ptr %1, ptr %74, align 4
  store ptr null, ptr %1, align 8
  %282 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %283 = load i32, ptr %282, align 8
  %284 = load i32, ptr %231, align 4
  %285 = add i32 %284, %283
  store i32 %285, ptr %231, align 4
  br label %300

286:                                              ; preds = %241, %223
  %287 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %288 = load i16, ptr %287, align 4
  %289 = add i16 %288, 1
  store i16 %289, ptr %287, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !24
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  %290 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %291 = getelementptr [126 x i32], ptr %290, i32 0, i32 68
  %292 = ptrtoint ptr %291 to i32
  %293 = call i32 @llvm.read_register.i32(metadata !0) #18
  %294 = inttoptr i32 %293 to ptr
  %295 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %294) #12, !srcloc !14
  %296 = add i32 %295, %292
  %297 = inttoptr i32 %296 to ptr
  %298 = load i32, ptr %297, align 4
  %299 = add i32 %298, 1
  store i32 %299, ptr %297, align 4
  br label %300

300:                                              ; preds = %286, %281, %195, %41
  %301 = phi i1 [ true, %41 ], [ true, %286 ], [ false, %195 ], [ false, %281 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #18
  ret i1 %301
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_condense(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_try_coalesce(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_partial(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_filter(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tcphdr, ptr %4, i32 0, i32 4
  %6 = load i16, ptr %5, align 4
  %7 = lshr i16 %6, 2
  %8 = and i16 %7, 60
  %9 = zext i16 %8 to i32
  %10 = tail call i32 @sk_filter_trim_cap(ptr noundef %0, ptr noundef %1, i32 noundef %9) #18
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_filter_trim_cap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_v4_rcv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %struct.anon.44, ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %6 = load i16, ptr %5, align 8
  %7 = and i16 %6, 7
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %409

9:                                                ; preds = %1
  %10 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %11 = getelementptr [16 x i32], ptr %10, i32 0, i32 10
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #12, !srcloc !14
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
  br i1 %25, label %26, label %32, !prof !12

26:                                               ; preds = %9
  %27 = icmp ult i32 %21, 20
  br i1 %27, label %409, label %28, !prof !12

28:                                               ; preds = %26
  %29 = sub nuw nsw i32 20, %24
  %30 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %29) #18
  %31 = icmp eq ptr %30, null
  br i1 %31, label %409, label %32

32:                                               ; preds = %28, %9
  %33 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.tcphdr, ptr %34, i32 0, i32 4
  %36 = load i16, ptr %35, align 4
  %37 = lshr i16 %36, 4
  %38 = and i16 %37, 15
  %39 = icmp ult i16 %38, 5
  br i1 %39, label %396, label %40, !prof !12

40:                                               ; preds = %32
  %41 = shl nuw nsw i16 %38, 2
  %42 = zext i16 %41 to i32
  %43 = load i32, ptr %20, align 8
  %44 = load i32, ptr %22, align 4
  %45 = sub i32 %43, %44
  %46 = icmp ult i32 %45, %42
  br i1 %46, label %47, label %53, !prof !12

47:                                               ; preds = %40
  %48 = icmp ult i32 %43, %42
  br i1 %48, label %409, label %49, !prof !12

49:                                               ; preds = %47
  %50 = sub i32 %42, %45
  %51 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %50) #18
  %52 = icmp eq ptr %51, null
  br i1 %52, label %409, label %53

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
  br i1 %76, label %77, label %127

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
  br label %127

85:                                               ; preds = %77
  %86 = add i8 %80, 12
  %87 = and i8 %86, 12
  %88 = zext i8 %87 to i16
  %89 = and i16 %79, -13
  %90 = or i16 %89, %88
  store i16 %90, ptr %78, align 2
  br label %127

91:                                               ; preds = %61, %58
  %92 = phi ptr [ %60, %58 ], [ %67, %61 ]
  %93 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %94 = load i16, ptr %93, align 4
  %95 = zext i16 %94 to i32
  %96 = getelementptr i8, ptr %92, i32 %95
  %97 = getelementptr inbounds %struct.iphdr, ptr %96, i32 0, i32 8
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr inbounds %struct.iphdr, ptr %96, i32 0, i32 9
  %100 = load i32, ptr %99, align 4
  %101 = load i32, ptr %20, align 8
  %102 = add i32 %101, 6
  %103 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3, ror #8\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %100, i32 %98, i32 %102) #19, !srcloc !27
  %104 = and i16 %54, 96
  %105 = icmp eq i16 %104, 64
  br i1 %105, label %106, label %117

106:                                              ; preds = %91
  %107 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  %108 = load i32, ptr %107, align 4
  %109 = add i32 %108, %103
  %110 = icmp ult i32 %109, %108
  %111 = zext i1 %110 to i32
  %112 = add i32 %109, %111
  %113 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %112) #19, !srcloc !28
  %114 = icmp ugt i32 %113, -65537
  br i1 %114, label %115, label %117

115:                                              ; preds = %106
  %116 = or i16 %54, -32768
  store i16 %116, ptr %5, align 8
  br label %127

117:                                              ; preds = %106, %91
  %118 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  store i32 %103, ptr %118, align 4
  %119 = icmp ult i32 %101, 77
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %0) #18
  %122 = icmp eq i16 %121, 0
  %123 = load i16, ptr %5, align 8
  %124 = select i1 %122, i16 -32768, i16 0
  %125 = and i16 %123, 32767
  %126 = or i16 %125, %124
  store i16 %126, ptr %5, align 8
  br i1 %122, label %127, label %369

127:                                              ; preds = %120, %117, %115, %85, %83, %73
  %128 = load ptr, ptr %33, align 4
  %129 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %130 = load ptr, ptr %129, align 8
  %131 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %132 = load i16, ptr %131, align 4
  %133 = zext i16 %132 to i32
  %134 = getelementptr i8, ptr %130, i32 %133
  %135 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %136 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4, i32 0, i32 1
  %137 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 6
  %138 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 12
  %139 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  %140 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  %141 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 4
  %142 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 16
  %143 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %144 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 8
  %145 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 14
  %146 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 13
  %147 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 2
  %148 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %149 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 15
  %150 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  br label %151

151:                                              ; preds = %287, %127
  %152 = phi ptr [ %128, %127 ], [ %288, %287 ]
  %153 = phi ptr [ %134, %127 ], [ %289, %287 ]
  %154 = getelementptr inbounds %struct.tcphdr, ptr %152, i32 0, i32 4
  %155 = load i16, ptr %154, align 4
  %156 = lshr i16 %155, 2
  %157 = and i16 %156, 60
  %158 = zext i16 %157 to i32
  %159 = load i16, ptr %152, align 4
  %160 = getelementptr inbounds %struct.tcphdr, ptr %152, i32 0, i32 1
  %161 = load i16, ptr %160, align 2
  %162 = load ptr, ptr %135, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %184, label %164

164:                                              ; preds = %151
  %165 = load ptr, ptr %136, align 4
  %166 = icmp eq ptr %165, @sock_pfree
  br i1 %166, label %167, label %182

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.sock_common, ptr %162, i32 0, i32 4
  %169 = load volatile i8, ptr %168, align 2
  %170 = zext i8 %169 to i32
  %171 = shl nuw i32 1, %170
  %172 = and i32 %171, -4161
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %167
  %175 = getelementptr inbounds %struct.sock_common, ptr %162, i32 0, i32 13
  %176 = load volatile i32, ptr %175, align 4
  %177 = and i32 %176, 8388608
  %178 = icmp eq i32 %177, 0
  br label %179

179:                                              ; preds = %174, %167
  %180 = phi i1 [ true, %167 ], [ %178, %174 ]
  %181 = zext i1 %180 to i8
  br label %182

182:                                              ; preds = %179, %164
  %183 = phi i8 [ %181, %179 ], [ 1, %164 ]
  store ptr null, ptr %136, align 4
  store ptr null, ptr %135, align 4
  br label %211

184:                                              ; preds = %151
  %185 = load ptr, ptr %129, align 8
  %186 = load i16, ptr %131, align 4
  %187 = zext i16 %186 to i32
  %188 = getelementptr i8, ptr %185, i32 %187
  %189 = load i32, ptr %4, align 8
  %190 = and i32 %189, -2
  %191 = getelementptr inbounds %struct.iphdr, ptr %188, i32 0, i32 8
  %192 = load i32, ptr %191, align 4
  %193 = getelementptr inbounds %struct.iphdr, ptr %188, i32 0, i32 9
  %194 = load i32, ptr %193, align 4
  %195 = icmp eq i32 %190, 0
  br i1 %195, label %201, label %196

196:                                              ; preds = %184
  %197 = inttoptr i32 %190 to ptr
  %198 = getelementptr inbounds %struct.rtable, ptr %197, i32 0, i32 6
  %199 = load i32, ptr %198, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %196, %184
  %202 = load i32, ptr %137, align 4
  br label %203

203:                                              ; preds = %201, %196
  %204 = phi i32 [ %202, %201 ], [ %199, %196 ]
  %205 = call i16 @llvm.bswap.i16(i16 %161) #18
  %206 = call ptr @__inet_lookup_established(ptr noundef nonnull @init_net, ptr noundef nonnull @tcp_hashinfo, i32 noundef %192, i16 noundef zeroext %159, i32 noundef %194, i16 noundef zeroext %205, i32 noundef %204, i32 noundef 0) #18
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = call ptr @__inet_lookup_listener(ptr noundef nonnull @init_net, ptr noundef nonnull @tcp_hashinfo, ptr noundef %0, i32 noundef %158, i32 noundef %192, i16 noundef zeroext %159, i32 noundef %194, i16 noundef zeroext %205, i32 noundef %204, i32 noundef 0) #18
  %210 = icmp eq ptr %209, null
  br i1 %210, label %364, label %211

211:                                              ; preds = %208, %203, %182
  %212 = phi ptr [ %209, %208 ], [ %162, %182 ], [ %206, %203 ]
  %213 = phi i8 [ 0, %208 ], [ %183, %182 ], [ 1, %203 ]
  %214 = getelementptr inbounds %struct.sock_common, ptr %212, i32 0, i32 4
  %215 = load volatile i8, ptr %214, align 2
  %216 = icmp eq i8 %215, 6
  br i1 %216, label %217, label %224

217:                                              ; preds = %211
  %218 = getelementptr inbounds %struct.tcphdr, ptr %152, i32 0, i32 2
  %219 = getelementptr inbounds %struct.tcphdr, ptr %152, i32 0, i32 3
  %220 = getelementptr i8, ptr %152, i32 13
  %221 = getelementptr inbounds %struct.iphdr, ptr %153, i32 0, i32 1
  %222 = getelementptr inbounds %struct.iphdr, ptr %153, i32 0, i32 8
  %223 = getelementptr inbounds %struct.iphdr, ptr %153, i32 0, i32 9
  br label %425

224:                                              ; preds = %544, %211
  %225 = phi ptr [ %212, %211 ], [ %542, %544 ]
  %226 = phi i8 [ %213, %211 ], [ 0, %544 ]
  %227 = getelementptr inbounds %struct.sock_common, ptr %225, i32 0, i32 4
  %228 = load volatile i8, ptr %227, align 2
  %229 = icmp eq i8 %228, 12
  br i1 %229, label %230, label %290

230:                                              ; preds = %224
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #18
  store i8 0, ptr %2, align 1
  %231 = getelementptr inbounds %struct.sock_common, ptr %225, i32 0, i32 13
  %232 = load ptr, ptr %231, align 8
  %233 = call fastcc zeroext i1 @tcp_checksum_complete(ptr noundef %0)
  br i1 %233, label %234, label %235

234:                                              ; preds = %230
  call fastcc void @reqsk_put(ptr noundef nonnull %225)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #18
  br label %369

235:                                              ; preds = %230
  %236 = getelementptr inbounds %struct.sock_common, ptr %232, i32 0, i32 4
  %237 = load volatile i8, ptr %236, align 2
  %238 = icmp eq i8 %237, 10
  br i1 %238, label %243, label %239, !prof !9

239:                                              ; preds = %235
  %240 = call ptr @reuseport_migrate_sock(ptr noundef %232, ptr noundef nonnull %225, ptr noundef %0) #18
  %241 = icmp eq ptr %240, null
  br i1 %241, label %242, label %254

242:                                              ; preds = %239
  call void @inet_csk_reqsk_queue_drop_and_put(ptr noundef %232, ptr noundef nonnull %225) #18
  br label %287

243:                                              ; preds = %235
  %244 = getelementptr inbounds %struct.sock_common, ptr %232, i32 0, i32 19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %244) #18, !srcloc !10
  %245 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %244, ptr %244, i32 1, ptr elementtype(i32) %244) #18, !srcloc !11
  %246 = extractvalue { i32, i32, i32 } %245, 0
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %252, label %248, !prof !12

248:                                              ; preds = %243
  %249 = add i32 %246, 1
  %250 = or i32 %249, %246
  %251 = icmp sgt i32 %250, -1
  br i1 %251, label %254, label %252, !prof !9

252:                                              ; preds = %248, %243
  %253 = phi i32 [ 2, %243 ], [ 1, %248 ]
  call void @refcount_warn_saturate(ptr noundef %244, i32 noundef %253) #18
  br label %254

254:                                              ; preds = %252, %248, %239
  %255 = phi ptr [ %240, %239 ], [ %232, %248 ], [ %232, %252 ]
  %256 = load ptr, ptr %33, align 4
  %257 = getelementptr inbounds %struct.tcphdr, ptr %256, i32 0, i32 4
  %258 = load i16, ptr %257, align 4
  %259 = lshr i16 %258, 2
  %260 = and i16 %259, 60
  %261 = zext i16 %260 to i32
  %262 = call i32 @sk_filter_trim_cap(ptr noundef %255, ptr noundef %0, i32 noundef %261) #18
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %272

264:                                              ; preds = %254
  %265 = load ptr, ptr %33, align 4
  %266 = load ptr, ptr %129, align 8
  %267 = load i16, ptr %131, align 4
  %268 = zext i16 %267 to i32
  %269 = getelementptr i8, ptr %266, i32 %268
  call fastcc void @tcp_v4_fill_cb(ptr noundef %0, ptr noundef %269, ptr noundef %265)
  %270 = call ptr @tcp_check_req(ptr noundef %255, ptr noundef %0, ptr noundef nonnull %225, i1 noundef zeroext false, ptr noundef nonnull %2) #18
  %271 = icmp eq ptr %270, null
  br i1 %271, label %272, label %278

272:                                              ; preds = %264, %254
  %273 = phi ptr [ %269, %264 ], [ %153, %254 ]
  %274 = phi ptr [ %265, %264 ], [ %152, %254 ]
  call fastcc void @reqsk_put(ptr noundef nonnull %225)
  %275 = load i8, ptr %2, align 1, !range !46
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %286, label %277

277:                                              ; preds = %272
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %139, ptr noundef align 8 dereferenceable(24) %140, i32 24, i1 false) #18
  call fastcc void @sock_put(ptr noundef %255)
  br label %287

278:                                              ; preds = %264
  %279 = icmp eq ptr %270, %255
  br i1 %279, label %280, label %281

280:                                              ; preds = %278
  call fastcc void @reqsk_put(ptr noundef nonnull %225)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %139, ptr noundef align 8 dereferenceable(24) %140, i32 24, i1 false) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #18
  br label %290

281:                                              ; preds = %278
  %282 = call i32 @tcp_child_process(ptr noundef %255, ptr noundef nonnull %270, ptr noundef %0) #18
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %285, label %284

284:                                              ; preds = %281
  call void @tcp_v4_send_reset(ptr noundef nonnull %270, ptr noundef %0)
  br label %286

285:                                              ; preds = %281
  call fastcc void @sock_put(ptr noundef %255)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #18
  br label %550

286:                                              ; preds = %284, %272
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #18
  br label %411

287:                                              ; preds = %277, %242
  %288 = phi ptr [ %274, %277 ], [ %152, %242 ]
  %289 = phi ptr [ %273, %277 ], [ %153, %242 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #18
  br label %151

290:                                              ; preds = %280, %224
  %291 = phi i8 [ 1, %280 ], [ %226, %224 ]
  %292 = phi ptr [ %255, %280 ], [ %225, %224 ]
  %293 = phi ptr [ %269, %280 ], [ %153, %224 ]
  %294 = load volatile i32, ptr @ip4_min_ttl, align 4
  %295 = icmp sgt i32 %294, 0
  br i1 %295, label %296, label %313, !prof !12

296:                                              ; preds = %290
  %297 = getelementptr inbounds %struct.iphdr, ptr %293, i32 0, i32 5
  %298 = load i8, ptr %297, align 4
  %299 = getelementptr inbounds %struct.inet_sock, ptr %292, i32 0, i32 9
  %300 = load volatile i8, ptr %299, align 1
  %301 = icmp ult i8 %298, %300
  br i1 %301, label %302, label %313, !prof !12

302:                                              ; preds = %296
  %303 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %304 = getelementptr [126 x i32], ptr %303, i32 0, i32 70
  %305 = ptrtoint ptr %304 to i32
  %306 = call i32 @llvm.read_register.i32(metadata !0) #18
  %307 = inttoptr i32 %306 to ptr
  %308 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %307) #12, !srcloc !14
  %309 = add i32 %308, %305
  %310 = inttoptr i32 %309 to ptr
  %311 = load i32, ptr %310, align 4
  %312 = add i32 %311, 1
  store i32 %312, ptr %310, align 4
  br label %411

313:                                              ; preds = %296, %290
  %314 = call fastcc i32 @xfrm4_policy_check(ptr noundef %292, ptr noundef %0)
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %411, label %316

316:                                              ; preds = %313
  %317 = load ptr, ptr %33, align 4
  %318 = getelementptr inbounds %struct.tcphdr, ptr %317, i32 0, i32 4
  %319 = load i16, ptr %318, align 4
  %320 = lshr i16 %319, 2
  %321 = and i16 %320, 60
  %322 = zext i16 %321 to i32
  %323 = call i32 @sk_filter_trim_cap(ptr noundef %292, ptr noundef %0, i32 noundef %322) #18
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %411

325:                                              ; preds = %316
  %326 = load ptr, ptr %33, align 4
  %327 = load ptr, ptr %129, align 8
  %328 = load i16, ptr %131, align 4
  %329 = zext i16 %328 to i32
  %330 = getelementptr i8, ptr %327, i32 %329
  call fastcc void @tcp_v4_fill_cb(ptr noundef %0, ptr noundef %330, ptr noundef %326)
  store ptr null, ptr %3, align 8
  %331 = getelementptr inbounds %struct.sock_common, ptr %292, i32 0, i32 4
  %332 = load volatile i8, ptr %331, align 2
  %333 = icmp eq i8 %332, 10
  br i1 %333, label %334, label %336

334:                                              ; preds = %325
  %335 = call i32 @tcp_v4_do_rcv(ptr noundef %292, ptr noundef %0)
  br label %361

336:                                              ; preds = %325
  %337 = tail call ptr @llvm.thread.pointer() #18
  %338 = getelementptr inbounds %struct.thread_info, ptr %337, i32 0, i32 2
  %339 = load i32, ptr %338, align 8
  %340 = getelementptr inbounds %struct.sock_common, ptr %292, i32 0, i32 18
  %341 = load volatile i32, ptr %340, align 8
  %342 = icmp eq i32 %341, %339
  br i1 %342, label %344, label %343, !prof !9

343:                                              ; preds = %336
  store volatile i32 %339, ptr %340, align 8
  br label %344

344:                                              ; preds = %343, %336
  %345 = getelementptr inbounds %struct.sock, ptr %292, i32 0, i32 10
  %346 = load volatile ptr, ptr %345, align 4
  %347 = icmp eq ptr %346, null
  br i1 %347, label %349, label %348

348:                                              ; preds = %344
  call void @__sk_defer_free_flush(ptr noundef %292) #18
  br label %349

349:                                              ; preds = %348, %344
  %350 = getelementptr inbounds %struct.sock, ptr %292, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %350) #18
  call fastcc void @tcp_segs_in(ptr noundef %292, ptr noundef %0)
  %351 = getelementptr inbounds %struct.sock, ptr %292, i32 0, i32 4, i32 1
  %352 = load i32, ptr %351, align 4
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %356

354:                                              ; preds = %349
  %355 = call i32 @tcp_v4_do_rcv(ptr noundef %292, ptr noundef %0)
  br label %358

356:                                              ; preds = %349
  %357 = call zeroext i1 @tcp_add_backlog(ptr noundef %292, ptr noundef %0)
  br i1 %357, label %411, label %358

358:                                              ; preds = %356, %354
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %359 = load i16, ptr %350, align 4
  %360 = add i16 %359, 1
  store i16 %360, ptr %350, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !24
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  br label %361

361:                                              ; preds = %358, %334
  %362 = icmp eq i8 %291, 0
  br i1 %362, label %550, label %363

363:                                              ; preds = %361
  call fastcc void @sock_put(ptr noundef %292)
  br label %550

364:                                              ; preds = %208
  %365 = call fastcc i32 @xfrm4_policy_check(ptr noundef null, ptr noundef %0)
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %409, label %367

367:                                              ; preds = %364
  call fastcc void @tcp_v4_fill_cb(ptr noundef %0, ptr noundef %153, ptr noundef %152)
  %368 = call fastcc zeroext i1 @tcp_checksum_complete(ptr noundef %0)
  br i1 %368, label %369, label %408

369:                                              ; preds = %517, %367, %234, %120
  %370 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tcp_bad_csum, i32 0, i32 1), align 4
  %371 = icmp sgt i32 %370, 0
  br i1 %371, label %372, label %385

372:                                              ; preds = %369
  %373 = tail call ptr @llvm.thread.pointer() #18
  %374 = getelementptr inbounds %struct.thread_info, ptr %373, i32 0, i32 2
  %375 = load i32, ptr %374, align 8
  %376 = lshr i32 %375, 5
  %377 = getelementptr i32, ptr @__cpu_online_mask, i32 %376
  %378 = load volatile i32, ptr %377, align 4
  %379 = and i32 %375, 31
  %380 = shl nuw i32 1, %379
  %381 = and i32 %380, %378
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %385, label %383

383:                                              ; preds = %372
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !43
  %384 = call i32 @__traceiter_tcp_bad_csum(ptr noundef null, ptr noundef %0) #18
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !44
  br label %385

385:                                              ; preds = %383, %372, %369
  %386 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %387 = getelementptr [16 x i32], ptr %386, i32 0, i32 15
  %388 = ptrtoint ptr %387 to i32
  %389 = call i32 @llvm.read_register.i32(metadata !0) #18
  %390 = inttoptr i32 %389 to ptr
  %391 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %390) #12, !srcloc !14
  %392 = add i32 %391, %388
  %393 = inttoptr i32 %392 to ptr
  %394 = load i32, ptr %393, align 4
  %395 = add i32 %394, 1
  store i32 %395, ptr %393, align 4
  br label %396

396:                                              ; preds = %385, %32
  %397 = phi i32 [ 3, %385 ], [ 2, %32 ]
  %398 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %399 = getelementptr [16 x i32], ptr %398, i32 0, i32 13
  %400 = ptrtoint ptr %399 to i32
  %401 = call i32 @llvm.read_register.i32(metadata !0) #18
  %402 = inttoptr i32 %401 to ptr
  %403 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %402) #12, !srcloc !14
  %404 = add i32 %403, %400
  %405 = inttoptr i32 %404 to ptr
  %406 = load i32, ptr %405, align 4
  %407 = add i32 %406, 1
  store i32 %407, ptr %405, align 4
  br label %409

408:                                              ; preds = %367
  call void @tcp_v4_send_reset(ptr noundef null, ptr noundef %0)
  br label %409

409:                                              ; preds = %549, %548, %518, %460, %424, %411, %408, %396, %364, %49, %47, %28, %26, %1
  %410 = phi i32 [ 0, %1 ], [ %397, %396 ], [ 0, %549 ], [ 0, %548 ], [ 0, %460 ], [ %413, %424 ], [ %413, %411 ], [ 1, %408 ], [ 1, %364 ], [ 0, %49 ], [ 0, %28 ], [ 0, %26 ], [ 0, %47 ], [ 0, %518 ]
  call void @kfree_skb_reason(ptr noundef %0, i32 noundef %410) #18
  br label %550

411:                                              ; preds = %356, %316, %313, %302, %286
  %412 = phi i8 [ %291, %302 ], [ %291, %313 ], [ %291, %356 ], [ %291, %316 ], [ 1, %286 ]
  %413 = phi i32 [ 0, %302 ], [ 0, %313 ], [ 0, %356 ], [ 4, %316 ], [ 0, %286 ]
  %414 = phi ptr [ %292, %302 ], [ %292, %313 ], [ %292, %356 ], [ %292, %316 ], [ %255, %286 ]
  %415 = load ptr, ptr %148, align 4
  %416 = getelementptr inbounds %struct.skb_shared_info, ptr %415, i32 0, i32 5
  %417 = load i16, ptr %416, align 2
  %418 = icmp eq i16 %417, 0
  %419 = select i1 %418, i16 1, i16 %417
  %420 = zext i16 %419 to i32
  %421 = getelementptr inbounds %struct.sock, ptr %414, i32 0, i32 5
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %421) #18, !srcloc !10
  %422 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %421, ptr %421, i32 %420, ptr elementtype(i32) %421) #18, !srcloc !17
  %423 = icmp eq i8 %412, 0
  br i1 %423, label %409, label %424

424:                                              ; preds = %411
  call fastcc void @sock_put(ptr noundef %414)
  br label %409

425:                                              ; preds = %544, %217
  %426 = phi ptr [ %212, %217 ], [ %542, %544 ]
  %427 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 23), align 4
  %428 = and i8 %427, 1
  %429 = icmp eq i8 %428, 0
  br i1 %429, label %430, label %447

430:                                              ; preds = %425
  %431 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 13), align 16
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %433, label %437

433:                                              ; preds = %430
  %434 = load i8, ptr %138, align 1
  %435 = and i8 %434, 1
  %436 = icmp eq i8 %435, 0
  br i1 %436, label %461, label %437

437:                                              ; preds = %433, %430
  %438 = load i32, ptr %4, align 8
  %439 = and i32 %438, -2
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %457, label %441

441:                                              ; preds = %437
  %442 = inttoptr i32 %439 to ptr
  %443 = getelementptr inbounds %struct.dst_entry, ptr %442, i32 0, i32 7
  %444 = load i16, ptr %443, align 4
  %445 = and i16 %444, 4
  %446 = icmp eq i16 %445, 0
  br i1 %446, label %457, label %461

447:                                              ; preds = %425
  %448 = load i32, ptr %4, align 8
  %449 = and i32 %448, -2
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %457, label %451

451:                                              ; preds = %447
  %452 = inttoptr i32 %449 to ptr
  %453 = getelementptr inbounds %struct.dst_entry, ptr %452, i32 0, i32 7
  %454 = load i16, ptr %453, align 4
  %455 = and i16 %454, 4
  %456 = icmp eq i16 %455, 0
  br i1 %456, label %457, label %461

457:                                              ; preds = %451, %447, %441, %437
  %458 = call i32 @__xfrm_policy_check(ptr noundef null, i32 noundef 0, ptr noundef %0, i16 noundef zeroext 2) #18
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %460, label %461

460:                                              ; preds = %457
  call void @inet_twsk_put(ptr noundef nonnull %426) #18
  br label %409

461:                                              ; preds = %457, %451, %441, %433
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %140, ptr noundef align 8 dereferenceable(24) %139, i32 24, i1 false) #18
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !47
  %462 = load i32, ptr %218, align 4
  %463 = call i32 @llvm.bswap.i32(i32 %462) #18
  store i32 %463, ptr %139, align 8
  %464 = load i16, ptr %154, align 4
  %465 = lshr i16 %464, 9
  %466 = and i16 %465, 1
  %467 = zext i16 %466 to i32
  %468 = lshr i16 %464, 8
  %469 = and i16 %468, 1
  %470 = zext i16 %469 to i32
  %471 = load i32, ptr %20, align 8
  %472 = lshr i16 %464, 2
  %473 = and i16 %472, 60
  %474 = zext i16 %473 to i32
  %475 = add i32 %471, %463
  %476 = add i32 %475, %467
  %477 = add i32 %476, %470
  %478 = sub i32 %477, %474
  store i32 %478, ptr %141, align 4
  %479 = load i32, ptr %219, align 4
  %480 = call i32 @llvm.bswap.i32(i32 %479) #18
  store i32 %480, ptr %142, align 8
  %481 = load i8, ptr %220, align 1
  store i8 %481, ptr %143, align 4
  store i32 0, ptr %144, align 8
  %482 = load i8, ptr %221, align 1
  store i8 %482, ptr %145, align 2
  store i8 0, ptr %146, align 1
  %483 = load i64, ptr %147, align 8
  %484 = icmp eq i64 %483, 0
  br i1 %484, label %485, label %491

485:                                              ; preds = %461
  %486 = load ptr, ptr %148, align 4
  %487 = getelementptr inbounds %struct.skb_shared_info, ptr %486, i32 0, i32 7
  %488 = load i64, ptr %487, align 8
  %489 = icmp eq i64 %488, 0
  %490 = select i1 %489, i8 0, i8 4
  br label %491

491:                                              ; preds = %485, %461
  %492 = phi i8 [ 4, %461 ], [ %490, %485 ]
  %493 = load i8, ptr %149, align 1
  %494 = and i8 %493, -5
  %495 = or i8 %494, %492
  store i8 %495, ptr %149, align 1
  %496 = load i16, ptr %5, align 8
  %497 = lshr i16 %496, 5
  %498 = and i16 %497, 3
  %499 = icmp ne i16 %498, 1
  %500 = icmp sgt i16 %496, -1
  %501 = select i1 %499, i1 %500, i1 false
  br i1 %501, label %502, label %518

502:                                              ; preds = %491
  %503 = icmp eq i16 %498, 3
  br i1 %503, label %504, label %514

504:                                              ; preds = %502
  %505 = load i16, ptr %150, align 4
  %506 = zext i16 %505 to i32
  %507 = load ptr, ptr %33, align 4
  %508 = load ptr, ptr %129, align 8
  %509 = ptrtoint ptr %507 to i32
  %510 = ptrtoint ptr %508 to i32
  %511 = sub i32 %506, %509
  %512 = add i32 %511, %510
  %513 = icmp slt i32 %512, 0
  br i1 %513, label %514, label %518

514:                                              ; preds = %504, %502
  %515 = call zeroext i16 @__skb_checksum_complete(ptr noundef %0) #18
  %516 = icmp eq i16 %515, 0
  br i1 %516, label %518, label %517

517:                                              ; preds = %514
  call void @inet_twsk_put(ptr noundef nonnull %426) #18
  br label %369

518:                                              ; preds = %514, %504, %491
  %519 = call i32 @tcp_timewait_state_process(ptr noundef nonnull %426, ptr noundef %0, ptr noundef %152) #18
  switch i32 %519, label %409 [
    i32 3, label %520
    i32 2, label %548
    i32 1, label %549
  ]

520:                                              ; preds = %518
  %521 = load i16, ptr %154, align 4
  %522 = lshr i16 %521, 2
  %523 = and i16 %522, 60
  %524 = zext i16 %523 to i32
  %525 = load i32, ptr %222, align 4
  %526 = load i16, ptr %152, align 4
  %527 = load i32, ptr %223, align 4
  %528 = load i16, ptr %160, align 2
  %529 = load i32, ptr %4, align 8
  %530 = and i32 %529, -2
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %537, label %532

532:                                              ; preds = %520
  %533 = inttoptr i32 %530 to ptr
  %534 = getelementptr inbounds %struct.rtable, ptr %533, i32 0, i32 6
  %535 = load i32, ptr %534, align 4
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %537, label %539

537:                                              ; preds = %532, %520
  %538 = load i32, ptr %137, align 4
  br label %539

539:                                              ; preds = %537, %532
  %540 = phi i32 [ %538, %537 ], [ %535, %532 ]
  %541 = call i16 @llvm.bswap.i16(i16 %528) #18
  %542 = call ptr @__inet_lookup_listener(ptr noundef nonnull @init_net, ptr noundef nonnull @tcp_hashinfo, ptr noundef %0, i32 noundef %524, i32 noundef %525, i16 noundef zeroext %526, i32 noundef %527, i16 noundef zeroext %541, i32 noundef %540, i32 noundef 0) #18
  %543 = icmp eq ptr %542, null
  br i1 %543, label %548, label %544

544:                                              ; preds = %539
  call void @inet_twsk_deschedule_put(ptr noundef nonnull %426) #18
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %139, ptr noundef align 8 dereferenceable(24) %140, i32 24, i1 false) #18
  %545 = getelementptr inbounds %struct.sock_common, ptr %542, i32 0, i32 4
  %546 = load volatile i8, ptr %545, align 2
  %547 = icmp eq i8 %546, 6
  br i1 %547, label %425, label %224

548:                                              ; preds = %539, %518
  call fastcc void @tcp_v4_timewait_ack(ptr noundef nonnull %426, ptr noundef %0)
  br label %409

549:                                              ; preds = %518
  call void @tcp_v4_send_reset(ptr noundef nonnull %426, ptr noundef %0)
  call void @inet_twsk_deschedule_put(ptr noundef nonnull %426) #18
  br label %409

550:                                              ; preds = %409, %363, %361, %285
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @reuseport_migrate_sock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_csk_reqsk_queue_drop_and_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_v4_fill_cb(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %5, ptr noundef align 8 dereferenceable(24) %4, i32 24, i1 false)
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !47
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
  %35 = getelementptr inbounds %struct.iphdr, ptr %1, i32 0, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 14
  store i8 %36, ptr %37, align 2
  %38 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 13
  store i8 0, ptr %38, align 1
  %39 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 2
  %40 = load i64, ptr %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %3
  %43 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.skb_shared_info, ptr %44, i32 0, i32 7
  %46 = load i64, ptr %45, align 8
  %47 = icmp eq i64 %46, 0
  %48 = select i1 %47, i8 0, i8 4
  br label %49

49:                                               ; preds = %42, %3
  %50 = phi i8 [ 4, %3 ], [ %48, %42 ]
  %51 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 15
  %52 = load i8, ptr %51, align 1
  %53 = and i8 %52, -5
  %54 = or i8 %53, %50
  store i8 %54, ptr %51, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcp_check_req(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xfrm4_policy_check(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 18
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @__xfrm_policy_check(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %1, i16 noundef zeroext 2) #18
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
  %34 = tail call i32 @__xfrm_policy_check(ptr noundef %0, i32 noundef 0, ptr noundef %1, i16 noundef zeroext 2) #18
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
  %49 = tail call i32 @__xfrm_policy_check(ptr noundef %0, i32 noundef 0, ptr noundef %1, i16 noundef zeroext 2) #18
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  br label %52

52:                                               ; preds = %48, %42, %33, %27, %17, %8
  %53 = phi i32 [ %9, %8 ], [ 1, %27 ], [ 1, %17 ], [ %36, %33 ], [ 1, %42 ], [ %51, %48 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_segs_in(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
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
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_timewait_state_process(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_twsk_deschedule_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_v4_timewait_ack(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
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
  %13 = tail call i64 @ktime_get() #18
  %14 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %13) #19, !srcloc !29
  %15 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %13, i64 %14, i32 0) #19, !srcloc !22
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
  %28 = lshr i32 %27, 1
  %29 = and i32 %28, 1
  %30 = lshr i32 %27, 24
  %31 = trunc i32 %30 to i8
  tail call fastcc void @tcp_v4_send_ack(ptr noundef %0, ptr noundef %1, i32 noundef %4, i32 noundef %6, i32 noundef %12, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %29, i8 noundef zeroext %31)
  tail call void @inet_twsk_put(ptr noundef %0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_queue_xmit(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_sk_rebuild_header(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_csk_addr2sockaddr(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_v4_destroy_sock(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tcp_destroy_sock, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #18
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
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !48
  %16 = tail call i32 @__traceiter_tcp_destroy_sock(ptr noundef null, ptr noundef %0) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !49
  br label %17

17:                                               ; preds = %15, %4, %1
  %18 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 85
  %19 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %18) #18
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #18, !srcloc !10
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #18, !srcloc !19
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %27, !prof !12

26:                                               ; preds = %21
  tail call void @refcount_warn_saturate(ptr noundef %22, i32 noundef 4) #18
  br label %27

27:                                               ; preds = %26, %21, %17
  %28 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 86
  %29 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %28) #18
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #18, !srcloc !10
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #18, !srcloc !19
  %34 = extractvalue { i32, i32, i32 } %33, 0
  %35 = icmp slt i32 %34, 2
  br i1 %35, label %36, label %37, !prof !12

36:                                               ; preds = %31
  tail call void @refcount_warn_saturate(ptr noundef %32, i32 noundef 4) #18
  br label %37

37:                                               ; preds = %36, %31, %27
  tail call void @inet_csk_clear_xmit_timers(ptr noundef %0) #18
  tail call void @tcp_cleanup_congestion_control(ptr noundef %0) #18
  tail call void @tcp_cleanup_ulp(ptr noundef %0) #18
  tail call void @tcp_write_queue_purge(ptr noundef %0) #18
  tail call void @tcp_fastopen_active_disable_ofo_check(ptr noundef %0) #18
  %38 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 89
  %39 = tail call i32 @skb_rbtree_purge(ptr noundef %38) #18
  %40 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  tail call void @inet_put_port(ptr noundef %0) #18
  br label %44

44:                                               ; preds = %43, %37
  %45 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 116
  %46 = load volatile ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48, !prof !9

48:                                               ; preds = %44
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/tcp_ipv4.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2297, 0\0A.popsection", ""() #18, !srcloc !50
  unreachable

49:                                               ; preds = %44
  tail call void @tcp_free_fastopen_req(ptr noundef %0) #18
  tail call void @tcp_fastopen_destroy_cipher(ptr noundef %0) #18
  %50 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 117
  %51 = load ptr, ptr %50, align 4
  tail call void @kfree(ptr noundef %51) #18
  store ptr null, ptr %50, align 4
  %52 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.proto, ptr %53, i32 0, i32 31
  %55 = load ptr, ptr %54, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %55, i64 noundef -1, i32 noundef 16) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_cleanup_congestion_control(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_cleanup_ulp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_write_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_fastopen_active_disable_ofo_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_rbtree_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_put_port(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_free_fastopen_req(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_fastopen_destroy_cipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tcp_seq_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load i64, ptr %1, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %170, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tcp_iter_state, ptr %4, i32 0, i32 7
  %9 = load i64, ptr %8, align 8
  %10 = icmp eq i64 %5, %9
  br i1 %10, label %11, label %170

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tcp_iter_state, ptr %4, i32 0, i32 3
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.tcp_iter_state, ptr %4, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.tcp_iter_state, ptr %4, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.tcp_iter_state, ptr %4, i32 0, i32 1
  %19 = load i32, ptr %18, align 8
  switch i32 %19, label %170 [
    i32 0, label %20
    i32 1, label %96
  ]

20:                                               ; preds = %11
  %21 = load i32, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 7), align 4
  %22 = icmp ugt i32 %13, %21
  br i1 %22, label %170, label %23

23:                                               ; preds = %20
  store i32 0, ptr %18, align 8
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds %struct.tcp_iter_state, ptr %24, i32 0, i32 4
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.tcp_iter_state, ptr %24, i32 0, i32 3
  %27 = load i32, ptr %26, align 8
  %28 = load i32, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 7), align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %74, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  br label %32

32:                                               ; preds = %69, %30
  %33 = phi i32 [ %27, %30 ], [ %71, %69 ]
  %34 = load ptr, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 8), align 32
  %35 = getelementptr %struct.inet_listen_hashbucket, ptr %34, i32 %33
  %36 = getelementptr %struct.inet_listen_hashbucket, ptr %34, i32 %33, i32 2
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %69, label %39

39:                                               ; preds = %32
  tail call void @_raw_spin_lock(ptr noundef %35) #18
  %40 = load ptr, ptr %36, align 4
  %41 = icmp eq ptr %40, null
  %42 = getelementptr i8, ptr %40, i32 -840
  %43 = icmp eq ptr %42, null
  %44 = or i1 %41, %43
  br i1 %44, label %65, label %45

45:                                               ; preds = %39
  %46 = load ptr, ptr %31, align 4
  %47 = getelementptr inbounds %struct.file, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.inode, ptr %48, i32 0, i32 47
  %50 = load ptr, ptr %49, align 4
  %51 = load i16, ptr %50, align 2
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %76, label %53

53:                                               ; preds = %58, %45
  %54 = phi ptr [ %62, %58 ], [ %42, %45 ]
  %55 = getelementptr inbounds %struct.sock_common, ptr %54, i32 0, i32 3
  %56 = load i16, ptr %55, align 8
  %57 = icmp eq i16 %51, %56
  br i1 %57, label %76, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.inet_connection_sock, ptr %54, i32 0, i32 15
  %60 = load ptr, ptr %59, align 8
  %61 = icmp eq ptr %60, null
  %62 = getelementptr i8, ptr %60, i32 -840
  %63 = icmp eq ptr %62, null
  %64 = or i1 %61, %63
  br i1 %64, label %65, label %53

65:                                               ; preds = %58, %39
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %66 = load i16, ptr %35, align 4
  %67 = add i16 %66, 1
  store i16 %67, ptr %35, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  %68 = load i32, ptr %26, align 8
  br label %69

69:                                               ; preds = %65, %32
  %70 = phi i32 [ %68, %65 ], [ %33, %32 ]
  %71 = add i32 %70, 1
  store i32 %71, ptr %26, align 8
  %72 = load i32, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 7), align 4
  %73 = icmp ugt i32 %71, %72
  br i1 %73, label %74, label %32

74:                                               ; preds = %69, %23
  %75 = add i32 %15, -1
  br label %94

76:                                               ; preds = %53, %45
  %77 = phi ptr [ %54, %53 ], [ %42, %45 ]
  %78 = icmp eq i32 %15, 0
  br i1 %78, label %165, label %79

79:                                               ; preds = %76
  %80 = add i32 %15, -1
  br label %81

81:                                               ; preds = %86, %79
  %82 = phi i32 [ %88, %86 ], [ %80, %79 ]
  %83 = phi ptr [ %87, %86 ], [ %77, %79 ]
  %84 = load i32, ptr %12, align 8
  %85 = icmp eq i32 %13, %84
  br i1 %85, label %86, label %165

86:                                               ; preds = %81
  %87 = tail call fastcc ptr @listening_get_next(ptr noundef %0, ptr noundef nonnull %83) #18
  %88 = add i32 %82, -1
  %89 = icmp ne i32 %82, 0
  %90 = icmp ne ptr %87, null
  %91 = select i1 %89, i1 %90, i1 false
  br i1 %91, label %81, label %92

92:                                               ; preds = %86
  br i1 %90, label %93, label %94

93:                                               ; preds = %92
  store i32 %17, ptr %16, align 4
  br label %180

94:                                               ; preds = %92, %74
  %95 = phi i32 [ %75, %74 ], [ %88, %92 ]
  store i32 0, ptr %12, align 8
  store i32 1, ptr %18, align 8
  br label %99

96:                                               ; preds = %11
  %97 = load i32, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 2), align 8
  %98 = icmp ugt i32 %13, %97
  br i1 %98, label %170, label %99

99:                                               ; preds = %96, %94
  %100 = phi i32 [ %95, %94 ], [ %15, %96 ]
  %101 = tail call fastcc ptr @established_get_first(ptr noundef %0) #18
  %102 = icmp ne i32 %100, 0
  %103 = icmp ne ptr %101, null
  %104 = select i1 %102, i1 %103, i1 false
  br i1 %104, label %105, label %167

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  br label %107

107:                                              ; preds = %160, %105
  %108 = phi i32 [ %100, %105 ], [ %110, %160 ]
  %109 = phi ptr [ %101, %105 ], [ %161, %160 ]
  %110 = add i32 %108, -1
  %111 = load i32, ptr %12, align 8
  %112 = icmp eq i32 %13, %111
  br i1 %112, label %113, label %165

113:                                              ; preds = %107
  %114 = load ptr, ptr %3, align 8
  %115 = getelementptr inbounds %struct.tcp_iter_state, ptr %114, i32 0, i32 6
  %116 = load i32, ptr %115, align 4
  %117 = add i32 %116, 1
  store i32 %117, ptr %115, align 4
  %118 = getelementptr inbounds %struct.tcp_iter_state, ptr %114, i32 0, i32 4
  %119 = load i32, ptr %118, align 4
  %120 = add i32 %119, 1
  store i32 %120, ptr %118, align 4
  %121 = getelementptr inbounds %struct.sock_common, ptr %109, i32 0, i32 15
  %122 = load ptr, ptr %121, align 4
  %123 = ptrtoint ptr %122 to i32
  %124 = and i32 %123, 1
  %125 = icmp eq i32 %124, 0
  %126 = getelementptr i8, ptr %122, i32 -84
  %127 = icmp ne ptr %126, null
  %128 = select i1 %125, i1 %127, i1 false
  br i1 %128, label %129, label %147

129:                                              ; preds = %113
  %130 = load ptr, ptr %106, align 4
  %131 = getelementptr inbounds %struct.file, ptr %130, i32 0, i32 2
  %132 = load ptr, ptr %131, align 8
  %133 = getelementptr inbounds %struct.inode, ptr %132, i32 0, i32 47
  %134 = load ptr, ptr %133, align 4
  %135 = load i16, ptr %134, align 2
  %136 = icmp eq i16 %135, 0
  br i1 %136, label %157, label %137

137:                                              ; preds = %142, %129
  %138 = phi ptr [ %143, %142 ], [ %122, %129 ]
  %139 = getelementptr i8, ptr %138, i32 -68
  %140 = load i16, ptr %139, align 8
  %141 = icmp eq i16 %135, %140
  br i1 %141, label %157, label %142

142:                                              ; preds = %137
  %143 = load ptr, ptr %138, align 4
  %144 = ptrtoint ptr %143 to i32
  %145 = and i32 %144, 1
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %137, label %147

147:                                              ; preds = %142, %113
  %148 = getelementptr inbounds %struct.tcp_iter_state, ptr %114, i32 0, i32 3
  %149 = load i32, ptr %148, align 8
  %150 = load ptr, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 1), align 4
  %151 = load i32, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 3), align 4
  %152 = and i32 %151, %149
  %153 = getelementptr %struct.spinlock, ptr %150, i32 %152
  tail call void @_raw_spin_unlock_bh(ptr noundef %153) #18
  %154 = load i32, ptr %148, align 8
  %155 = add i32 %154, 1
  store i32 %155, ptr %148, align 8
  %156 = tail call fastcc ptr @established_get_first(ptr noundef %0) #18
  br label %160

157:                                              ; preds = %137, %129
  %158 = phi ptr [ %122, %129 ], [ %138, %137 ]
  %159 = getelementptr i8, ptr %158, i32 -84
  br label %160

160:                                              ; preds = %157, %147
  %161 = phi ptr [ %156, %147 ], [ %159, %157 ]
  %162 = icmp ne i32 %110, 0
  %163 = icmp ne ptr %161, null
  %164 = select i1 %162, i1 %163, i1 false
  br i1 %164, label %107, label %167

165:                                              ; preds = %107, %81, %76
  %166 = phi ptr [ %77, %76 ], [ %109, %107 ], [ %83, %81 ]
  store i32 %17, ptr %16, align 4
  br label %180

167:                                              ; preds = %160, %99
  %168 = phi ptr [ %101, %99 ], [ %161, %160 ]
  store i32 %17, ptr %16, align 4
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %180

170:                                              ; preds = %167, %96, %20, %11, %7, %2
  %171 = getelementptr inbounds %struct.tcp_iter_state, ptr %4, i32 0, i32 1
  store i32 0, ptr %171, align 8
  %172 = getelementptr inbounds %struct.tcp_iter_state, ptr %4, i32 0, i32 6
  store i32 0, ptr %172, align 4
  %173 = getelementptr inbounds %struct.tcp_iter_state, ptr %4, i32 0, i32 3
  store i32 0, ptr %173, align 8
  %174 = getelementptr inbounds %struct.tcp_iter_state, ptr %4, i32 0, i32 4
  store i32 0, ptr %174, align 4
  %175 = load i64, ptr %1, align 8
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %170
  %178 = add i64 %175, -1
  %179 = tail call fastcc ptr @tcp_get_idx(ptr noundef %0, i64 noundef %178)
  br label %180

180:                                              ; preds = %177, %170, %167, %165, %93
  %181 = phi ptr [ %168, %167 ], [ %179, %177 ], [ inttoptr (i32 1 to ptr), %170 ], [ %166, %165 ], [ %87, %93 ]
  %182 = load i64, ptr %1, align 8
  %183 = getelementptr inbounds %struct.tcp_iter_state, ptr %4, i32 0, i32 7
  store i64 %182, ptr %183, align 8
  ret ptr %181
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @tcp_get_idx(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.tcp_iter_state, ptr %4, i32 0, i32 1
  store i32 0, ptr %5, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.tcp_iter_state, ptr %6, i32 0, i32 3
  store i32 0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.tcp_iter_state, ptr %6, i32 0, i32 4
  store i32 0, ptr %8, align 4
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.tcp_iter_state, ptr %9, i32 0, i32 4
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.tcp_iter_state, ptr %9, i32 0, i32 3
  %12 = load i32, ptr %11, align 8
  %13 = load i32, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 7), align 4
  %14 = icmp ugt i32 %12, %13
  br i1 %14, label %69, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  br label %17

17:                                               ; preds = %56, %15
  %18 = phi i32 [ %12, %15 ], [ %58, %56 ]
  %19 = load ptr, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 8), align 32
  %20 = getelementptr %struct.inet_listen_hashbucket, ptr %19, i32 %18
  %21 = getelementptr %struct.inet_listen_hashbucket, ptr %19, i32 %18, i32 2
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %56, label %24

24:                                               ; preds = %17
  tail call void @_raw_spin_lock(ptr noundef %20) #18
  %25 = load ptr, ptr %21, align 4
  %26 = icmp eq ptr %25, null
  %27 = getelementptr i8, ptr %25, i32 -840
  %28 = icmp eq ptr %27, null
  %29 = or i1 %26, %28
  br i1 %29, label %52, label %30

30:                                               ; preds = %24
  %31 = load ptr, ptr %16, align 4
  %32 = getelementptr inbounds %struct.file, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.inode, ptr %33, i32 0, i32 47
  %35 = load ptr, ptr %34, align 4
  %36 = load i16, ptr %35, align 2
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %45, %30
  %39 = phi ptr [ %49, %45 ], [ %27, %30 ]
  %40 = getelementptr inbounds %struct.sock_common, ptr %39, i32 0, i32 3
  %41 = load i16, ptr %40, align 8
  %42 = icmp eq i16 %36, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38, %30
  %44 = phi ptr [ %39, %38 ], [ %27, %30 ]
  br label %61

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.inet_connection_sock, ptr %39, i32 0, i32 15
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  %49 = getelementptr i8, ptr %47, i32 -840
  %50 = icmp eq ptr %49, null
  %51 = or i1 %48, %50
  br i1 %51, label %52, label %38

52:                                               ; preds = %45, %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %53 = load i16, ptr %20, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  %55 = load i32, ptr %11, align 8
  br label %56

56:                                               ; preds = %52, %17
  %57 = phi i32 [ %55, %52 ], [ %18, %17 ]
  %58 = add i32 %57, 1
  store i32 %58, ptr %11, align 8
  %59 = load i32, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 7), align 4
  %60 = icmp ugt i32 %58, %59
  br i1 %60, label %69, label %17

61:                                               ; preds = %65, %43
  %62 = phi i64 [ %67, %65 ], [ %1, %43 ]
  %63 = phi ptr [ %66, %65 ], [ %44, %43 ]
  %64 = icmp eq i64 %62, 0
  br i1 %64, label %134, label %65

65:                                               ; preds = %61
  %66 = tail call fastcc ptr @listening_get_next(ptr noundef %0, ptr noundef nonnull %63) #18
  %67 = add i64 %62, -1
  %68 = icmp eq ptr %66, null
  br i1 %68, label %69, label %61

69:                                               ; preds = %65, %56, %2
  %70 = phi i64 [ %1, %2 ], [ %67, %65 ], [ %1, %56 ]
  store i32 1, ptr %5, align 8
  %71 = load ptr, ptr %3, align 8
  %72 = getelementptr inbounds %struct.tcp_iter_state, ptr %71, i32 0, i32 3
  store i32 0, ptr %72, align 8
  %73 = tail call fastcc ptr @established_get_first(ptr noundef %0) #18
  %74 = icmp ne ptr %73, null
  %75 = icmp ne i64 %70, 0
  %76 = and i1 %75, %74
  br i1 %76, label %77, label %134

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  br label %79

79:                                               ; preds = %128, %77
  %80 = phi ptr [ %73, %77 ], [ %129, %128 ]
  %81 = phi i64 [ %70, %77 ], [ %130, %128 ]
  %82 = load ptr, ptr %3, align 8
  %83 = getelementptr inbounds %struct.tcp_iter_state, ptr %82, i32 0, i32 6
  %84 = load i32, ptr %83, align 4
  %85 = add i32 %84, 1
  store i32 %85, ptr %83, align 4
  %86 = getelementptr inbounds %struct.tcp_iter_state, ptr %82, i32 0, i32 4
  %87 = load i32, ptr %86, align 4
  %88 = add i32 %87, 1
  store i32 %88, ptr %86, align 4
  %89 = getelementptr inbounds %struct.sock_common, ptr %80, i32 0, i32 15
  %90 = load ptr, ptr %89, align 4
  %91 = ptrtoint ptr %90 to i32
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  %94 = getelementptr i8, ptr %90, i32 -84
  %95 = icmp ne ptr %94, null
  %96 = select i1 %93, i1 %95, i1 false
  br i1 %96, label %97, label %115

97:                                               ; preds = %79
  %98 = load ptr, ptr %78, align 4
  %99 = getelementptr inbounds %struct.file, ptr %98, i32 0, i32 2
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr inbounds %struct.inode, ptr %100, i32 0, i32 47
  %102 = load ptr, ptr %101, align 4
  %103 = load i16, ptr %102, align 2
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %125, label %105

105:                                              ; preds = %110, %97
  %106 = phi ptr [ %111, %110 ], [ %90, %97 ]
  %107 = getelementptr i8, ptr %106, i32 -68
  %108 = load i16, ptr %107, align 8
  %109 = icmp eq i16 %103, %108
  br i1 %109, label %125, label %110

110:                                              ; preds = %105
  %111 = load ptr, ptr %106, align 4
  %112 = ptrtoint ptr %111 to i32
  %113 = and i32 %112, 1
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %105, label %115

115:                                              ; preds = %110, %79
  %116 = getelementptr inbounds %struct.tcp_iter_state, ptr %82, i32 0, i32 3
  %117 = load i32, ptr %116, align 8
  %118 = load ptr, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 1), align 4
  %119 = load i32, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 3), align 4
  %120 = and i32 %119, %117
  %121 = getelementptr %struct.spinlock, ptr %118, i32 %120
  tail call void @_raw_spin_unlock_bh(ptr noundef %121) #18
  %122 = load i32, ptr %116, align 8
  %123 = add i32 %122, 1
  store i32 %123, ptr %116, align 8
  %124 = tail call fastcc ptr @established_get_first(ptr noundef %0) #18
  br label %128

125:                                              ; preds = %105, %97
  %126 = phi ptr [ %90, %97 ], [ %106, %105 ]
  %127 = getelementptr i8, ptr %126, i32 -84
  br label %128

128:                                              ; preds = %125, %115
  %129 = phi ptr [ %124, %115 ], [ %127, %125 ]
  %130 = add i64 %81, -1
  %131 = icmp ne ptr %129, null
  %132 = icmp ne i64 %130, 0
  %133 = select i1 %131, i1 %132, i1 false
  br i1 %133, label %79, label %134

134:                                              ; preds = %128, %69, %61
  %135 = phi ptr [ %73, %69 ], [ %129, %128 ], [ %63, %61 ]
  ret ptr %135
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tcp_seq_next(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call fastcc ptr @tcp_get_idx(ptr noundef %0, i64 noundef 0)
  br label %66

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tcp_iter_state, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  switch i32 %11, label %66 [
    i32 0, label %12
    i32 1, label %19
  ]

12:                                               ; preds = %9
  %13 = tail call fastcc ptr @listening_get_next(ptr noundef %0, ptr noundef %1)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %66

15:                                               ; preds = %12
  store i32 1, ptr %10, align 8
  %16 = getelementptr inbounds %struct.tcp_iter_state, ptr %5, i32 0, i32 3
  store i32 0, ptr %16, align 8
  %17 = getelementptr inbounds %struct.tcp_iter_state, ptr %5, i32 0, i32 4
  store i32 0, ptr %17, align 4
  %18 = tail call fastcc ptr @established_get_first(ptr noundef %0)
  br label %66

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.tcp_iter_state, ptr %5, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4
  %23 = getelementptr inbounds %struct.tcp_iter_state, ptr %5, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 4
  %26 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15
  %27 = load ptr, ptr %26, align 4
  %28 = ptrtoint ptr %27 to i32
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr i8, ptr %27, i32 -84
  %32 = icmp ne ptr %31, null
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %53

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.file, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 47
  %40 = load ptr, ptr %39, align 4
  %41 = load i16, ptr %40, align 2
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %63, label %43

43:                                               ; preds = %48, %34
  %44 = phi ptr [ %49, %48 ], [ %27, %34 ]
  %45 = getelementptr i8, ptr %44, i32 -68
  %46 = load i16, ptr %45, align 8
  %47 = icmp eq i16 %41, %46
  br i1 %47, label %63, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %44, align 4
  %50 = ptrtoint ptr %49 to i32
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %43, label %53

53:                                               ; preds = %48, %19
  %54 = getelementptr inbounds %struct.tcp_iter_state, ptr %5, i32 0, i32 3
  %55 = load i32, ptr %54, align 8
  %56 = load ptr, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 1), align 4
  %57 = load i32, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 3), align 4
  %58 = and i32 %57, %55
  %59 = getelementptr %struct.spinlock, ptr %56, i32 %58
  tail call void @_raw_spin_unlock_bh(ptr noundef %59) #18
  %60 = load i32, ptr %54, align 8
  %61 = add i32 %60, 1
  store i32 %61, ptr %54, align 8
  %62 = tail call fastcc ptr @established_get_first(ptr noundef %0) #18
  br label %66

63:                                               ; preds = %43, %34
  %64 = phi ptr [ %27, %34 ], [ %44, %43 ]
  %65 = getelementptr i8, ptr %64, i32 -84
  br label %66

66:                                               ; preds = %63, %53, %15, %12, %9, %7
  %67 = phi ptr [ %8, %7 ], [ null, %9 ], [ %13, %12 ], [ %18, %15 ], [ %62, %53 ], [ %65, %63 ]
  %68 = load i64, ptr %2, align 8
  %69 = add i64 %68, 1
  store i64 %69, ptr %2, align 8
  %70 = getelementptr inbounds %struct.tcp_iter_state, ptr %5, i32 0, i32 7
  store i64 %69, ptr %70, align 8
  ret ptr %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @listening_get_next(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.tcp_iter_state, ptr %4, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.tcp_iter_state, ptr %4, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 15
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  %14 = getelementptr i8, ptr %12, i32 -840
  %15 = icmp eq ptr %14, null
  %16 = or i1 %13, %15
  br i1 %16, label %39, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.file, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 47
  %23 = load ptr, ptr %22, align 4
  %24 = load i16, ptr %23, align 2
  %25 = icmp eq i16 %24, 0
  br label %26

26:                                               ; preds = %32, %17
  %27 = phi ptr [ %14, %17 ], [ %36, %32 ]
  br i1 %25, label %98, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.sock_common, ptr %27, i32 0, i32 3
  %30 = load i16, ptr %29, align 8
  %31 = icmp eq i16 %24, %30
  br i1 %31, label %98, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.inet_connection_sock, ptr %27, i32 0, i32 15
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  %36 = getelementptr i8, ptr %34, i32 -840
  %37 = icmp eq ptr %36, null
  %38 = or i1 %35, %37
  br i1 %38, label %39, label %26

39:                                               ; preds = %32, %2
  %40 = load ptr, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 8), align 32
  %41 = getelementptr inbounds %struct.tcp_iter_state, ptr %4, i32 0, i32 3
  %42 = load i32, ptr %41, align 8
  %43 = getelementptr %struct.inet_listen_hashbucket, ptr %40, i32 %42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %44 = load i16, ptr %43, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %43, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  %46 = load i32, ptr %41, align 8
  %47 = add i32 %46, 1
  store i32 %47, ptr %41, align 8
  %48 = load ptr, ptr %3, align 8
  %49 = getelementptr inbounds %struct.tcp_iter_state, ptr %48, i32 0, i32 4
  store i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.tcp_iter_state, ptr %48, i32 0, i32 3
  %51 = load i32, ptr %50, align 8
  %52 = load i32, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 7), align 4
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %98, label %54

54:                                               ; preds = %39
  %55 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  br label %56

56:                                               ; preds = %93, %54
  %57 = phi i32 [ %51, %54 ], [ %95, %93 ]
  %58 = load ptr, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 8), align 32
  %59 = getelementptr %struct.inet_listen_hashbucket, ptr %58, i32 %57
  %60 = getelementptr %struct.inet_listen_hashbucket, ptr %58, i32 %57, i32 2
  %61 = load volatile ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %93, label %63

63:                                               ; preds = %56
  tail call void @_raw_spin_lock(ptr noundef %59) #18
  %64 = load ptr, ptr %60, align 4
  %65 = icmp eq ptr %64, null
  %66 = getelementptr i8, ptr %64, i32 -840
  %67 = icmp eq ptr %66, null
  %68 = or i1 %65, %67
  br i1 %68, label %89, label %69

69:                                               ; preds = %63
  %70 = load ptr, ptr %55, align 4
  %71 = getelementptr inbounds %struct.file, ptr %70, i32 0, i32 2
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.inode, ptr %72, i32 0, i32 47
  %74 = load ptr, ptr %73, align 4
  %75 = load i16, ptr %74, align 2
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %98, label %77

77:                                               ; preds = %82, %69
  %78 = phi ptr [ %86, %82 ], [ %66, %69 ]
  %79 = getelementptr inbounds %struct.sock_common, ptr %78, i32 0, i32 3
  %80 = load i16, ptr %79, align 8
  %81 = icmp eq i16 %75, %80
  br i1 %81, label %98, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.inet_connection_sock, ptr %78, i32 0, i32 15
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %84, null
  %86 = getelementptr i8, ptr %84, i32 -840
  %87 = icmp eq ptr %86, null
  %88 = or i1 %85, %87
  br i1 %88, label %89, label %77

89:                                               ; preds = %82, %63
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %90 = load i16, ptr %59, align 4
  %91 = add i16 %90, 1
  store i16 %91, ptr %59, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  %92 = load i32, ptr %50, align 8
  br label %93

93:                                               ; preds = %89, %56
  %94 = phi i32 [ %92, %89 ], [ %57, %56 ]
  %95 = add i32 %94, 1
  store i32 %95, ptr %50, align 8
  %96 = load i32, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 7), align 4
  %97 = icmp ugt i32 %95, %96
  br i1 %97, label %98, label %56

98:                                               ; preds = %93, %77, %69, %39, %28, %26
  %99 = phi ptr [ null, %39 ], [ %78, %77 ], [ %66, %69 ], [ null, %93 ], [ %27, %28 ], [ %14, %26 ]
  ret ptr %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @established_get_first(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tcp_iter_state, ptr %3, i32 0, i32 4
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.tcp_iter_state, ptr %3, i32 0, i32 3
  %6 = load i32, ptr %5, align 8
  %7 = load i32, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 2), align 8
  %8 = icmp ugt i32 %6, %7
  br i1 %8, label %60, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 1), align 4
  %12 = load ptr, ptr @tcp_hashinfo, align 64
  br label %13

13:                                               ; preds = %51, %9
  %14 = phi ptr [ %12, %9 ], [ %53, %51 ]
  %15 = phi ptr [ %11, %9 ], [ %54, %51 ]
  %16 = phi i32 [ %6, %9 ], [ %55, %51 ]
  %17 = load i32, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 3), align 4
  %18 = and i32 %17, %16
  %19 = getelementptr %struct.spinlock, ptr %15, i32 %18
  %20 = getelementptr %struct.inet_ehash_bucket, ptr %14, i32 %16
  %21 = load volatile ptr, ptr %20, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %13
  tail call void @_raw_spin_lock_bh(ptr noundef %19) #18
  %26 = load ptr, ptr @tcp_hashinfo, align 64
  %27 = load i32, ptr %5, align 8
  %28 = getelementptr %struct.inet_ehash_bucket, ptr %26, i32 %27
  br label %29

29:                                               ; preds = %43, %25
  %30 = phi ptr [ %28, %25 ], [ %31, %43 ]
  %31 = load ptr, ptr %30, align 4
  %32 = ptrtoint ptr %31 to i32
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load ptr, ptr %10, align 4
  %37 = getelementptr inbounds %struct.file, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 47
  %40 = load ptr, ptr %39, align 4
  %41 = load i16, ptr %40, align 2
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %35
  %44 = getelementptr i8, ptr %31, i32 -68
  %45 = load i16, ptr %44, align 8
  %46 = icmp eq i16 %41, %45
  br i1 %46, label %58, label %29

47:                                               ; preds = %29
  tail call void @_raw_spin_unlock_bh(ptr noundef %19) #18
  %48 = load ptr, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 1), align 4
  %49 = load ptr, ptr @tcp_hashinfo, align 64
  %50 = load i32, ptr %5, align 8
  br label %51

51:                                               ; preds = %47, %13
  %52 = phi i32 [ %50, %47 ], [ %16, %13 ]
  %53 = phi ptr [ %49, %47 ], [ %14, %13 ]
  %54 = phi ptr [ %48, %47 ], [ %15, %13 ]
  %55 = add i32 %52, 1
  store i32 %55, ptr %5, align 8
  %56 = load i32, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 2), align 8
  %57 = icmp ugt i32 %55, %56
  br i1 %57, label %60, label %13

58:                                               ; preds = %43, %35
  %59 = getelementptr i8, ptr %31, i32 -84
  br label %60

60:                                               ; preds = %58, %51, %1
  %61 = phi ptr [ %59, %58 ], [ null, %1 ], [ null, %51 ]
  ret ptr %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_seq_stop(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.tcp_iter_state, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 8
  switch i32 %6, label %25 [
    i32 0, label %7
    i32 1, label %16
  ]

7:                                                ; preds = %2
  %8 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %8, label %25, label %9

9:                                                ; preds = %7
  %10 = load ptr, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 8), align 32
  %11 = getelementptr inbounds %struct.tcp_iter_state, ptr %4, i32 0, i32 3
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr %struct.inet_listen_hashbucket, ptr %10, i32 %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %14 = load i16, ptr %13, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  br label %25

16:                                               ; preds = %2
  %17 = icmp eq ptr %1, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.tcp_iter_state, ptr %4, i32 0, i32 3
  %20 = load i32, ptr %19, align 8
  %21 = load ptr, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 1), align 4
  %22 = load i32, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 3), align 4
  %23 = and i32 %22, %20
  %24 = getelementptr %struct.spinlock, ptr %21, i32 %23
  tail call void @_raw_spin_unlock_bh(ptr noundef %24) #18
  br label %25

25:                                               ; preds = %18, %16, %9, %7, %2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @tcp4_proc_init() local_unnamed_addr #7 section ".init.text" {
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @tcp4_net_ops) #18
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp4_proc_exit() local_unnamed_addr #0 {
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @tcp4_net_ops) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tcp_stream_memory_free(ptr noundef %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %4 = load volatile i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %6 = load volatile i32, ptr %5, align 4
  %7 = sub i32 %4, %6
  %8 = shl i32 %7, %1
  %9 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 81
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  %12 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 63), align 8
  %13 = select i1 %11, i32 %12, i32 %10
  %14 = icmp ult i32 %8, %13
  ret i1 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_close(ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @tcp_v4_pre_connect(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #5 {
  %4 = icmp ult i32 %2, 16
  %5 = select i1 %4, i32 -22, i32 0
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_disconnect(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_csk_accept(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tcp_v4_init_sock(ptr noundef %0) #0 {
  tail call void @tcp_init_sock(ptr noundef %0) #18
  %2 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 11
  store ptr @ipv4_specific, ptr %2, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_shutdown(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_set_keepalive(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_sendmsg(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tcp_bpf_bypass_getsockopt(i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_release_cb(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_hash(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_unhash(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_csk_get_port(ptr noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_enter_memory_pressure(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_leave_memory_pressure(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_abort(ptr noundef, i32 noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @tcp_v4_init() local_unnamed_addr #7 section ".init.text" {
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @tcp_sk_ops) #18
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.2) #21
  unreachable

4:                                                ; preds = %0
  ret void
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_key_hash(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_reset_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__sk_dst_check(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_v4_send_ack(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i8 noundef zeroext %9) unnamed_addr #0 {
  %11 = alloca %struct.anon.205, align 4
  %12 = alloca %struct.ip_reply_arg, align 4
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = getelementptr i8, ptr %14, i32 %17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #18
  %19 = getelementptr inbounds i8, ptr %11, i32 20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %19, i8 0, i32 12, i1 false), !annotation !34
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #18
  %20 = getelementptr inbounds i8, ptr %11, i32 16
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds i8, ptr %12, i32 20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %21, i8 0, i32 12, i1 false)
  store ptr %11, ptr %12, align 4
  %22 = getelementptr inbounds %struct.kvec, ptr %12, i32 0, i32 1
  store i32 20, ptr %22, align 4
  %23 = icmp eq i32 %6, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.anon.205, ptr %11, i32 0, i32 1
  store i32 168296705, ptr %25, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %5)
  %27 = getelementptr inbounds %struct.anon.205, ptr %11, i32 0, i32 1, i32 1
  store i32 %26, ptr %27, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %6)
  %29 = getelementptr inbounds %struct.anon.205, ptr %11, i32 0, i32 1, i32 2
  store i32 %28, ptr %29, align 4
  store i32 32, ptr %22, align 4
  br label %30

30:                                               ; preds = %24, %10
  %31 = phi i32 [ 32, %24 ], [ 20, %10 ]
  %32 = load i16, ptr %18, align 4
  %33 = getelementptr inbounds %struct.tcphdr, ptr %11, i32 0, i32 1
  store i16 %32, ptr %33, align 2
  %34 = getelementptr inbounds %struct.tcphdr, ptr %18, i32 0, i32 1
  %35 = load i16, ptr %34, align 2
  store i16 %35, ptr %11, align 4
  %36 = trunc i32 %31 to i16
  %37 = getelementptr inbounds %struct.tcphdr, ptr %11, i32 0, i32 4
  %38 = shl nuw nsw i16 %36, 2
  %39 = call i32 @llvm.bswap.i32(i32 %2)
  %40 = getelementptr inbounds %struct.tcphdr, ptr %11, i32 0, i32 2
  store i32 %39, ptr %40, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %3)
  %42 = getelementptr inbounds %struct.tcphdr, ptr %11, i32 0, i32 3
  store i32 %41, ptr %42, align 4
  %43 = or i16 %38, 4096
  store i16 %43, ptr %37, align 4
  %44 = trunc i32 %4 to i16
  %45 = call i16 @llvm.bswap.i16(i16 %44)
  %46 = getelementptr inbounds %struct.tcphdr, ptr %11, i32 0, i32 5
  store i16 %45, ptr %46, align 2
  %47 = getelementptr inbounds %struct.ip_reply_arg, ptr %12, i32 0, i32 1
  store i32 %8, ptr %47, align 4
  %48 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %49 = load i16, ptr %48, align 4
  %50 = zext i16 %49 to i32
  %51 = getelementptr i8, ptr %14, i32 %50
  %52 = getelementptr inbounds %struct.iphdr, ptr %51, i32 0, i32 9
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.iphdr, ptr %51, i32 0, i32 8
  %55 = load i32, ptr %54, align 4
  %56 = add nuw nsw i32 %31, 6
  %57 = call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3, ror #8\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %55, i32 %53, i32 %56) #19, !srcloc !27
  %58 = getelementptr inbounds %struct.ip_reply_arg, ptr %12, i32 0, i32 2
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.ip_reply_arg, ptr %12, i32 0, i32 3
  store i32 8, ptr %59, align 4
  %60 = icmp eq i32 %7, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %30
  %62 = getelementptr inbounds %struct.ip_reply_arg, ptr %12, i32 0, i32 4
  store i32 %7, ptr %62, align 4
  br label %63

63:                                               ; preds = %61, %30
  %64 = getelementptr inbounds %struct.ip_reply_arg, ptr %12, i32 0, i32 5
  store i8 %9, ptr %64, align 4
  %65 = getelementptr inbounds %struct.ip_reply_arg, ptr %12, i32 0, i32 6
  %66 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %67 = load volatile i8, ptr %66, align 2
  %68 = zext i8 %67 to i32
  %69 = shl nuw i32 1, %68
  %70 = and i32 %69, -4161
  %71 = icmp eq i32 %70, 0
  %72 = icmp eq ptr %0, null
  %73 = or i1 %72, %71
  br i1 %73, label %77, label %74

74:                                               ; preds = %63
  %75 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 55
  %76 = load i32, ptr %75, align 4
  br label %77

77:                                               ; preds = %74, %63
  %78 = phi i32 [ %76, %74 ], [ 0, %63 ]
  store i32 %78, ptr %65, align 4
  %79 = tail call ptr @llvm.thread.pointer() #18
  %80 = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 1
  %81 = load volatile i32, ptr %80, align 4
  %82 = add i32 %81, 512
  store volatile i32 %82, ptr %80, align 4
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !51
  %83 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 17), align 4
  %84 = ptrtoint ptr %83 to i32
  %85 = call i32 @llvm.read_register.i32(metadata !0) #18
  %86 = inttoptr i32 %85 to ptr
  %87 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %86) #12, !srcloc !14
  %88 = add i32 %87, %84
  %89 = inttoptr i32 %88 to ptr
  %90 = load volatile ptr, ptr %89, align 4
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !52
  %91 = load volatile i8, ptr %66, align 2
  %92 = icmp eq i8 %91, 6
  %93 = getelementptr inbounds %struct.inet_timewait_sock, ptr %0, i32 0, i32 1
  %94 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 34
  %95 = select i1 %92, ptr %93, ptr %94
  %96 = load i32, ptr %95, align 8
  %97 = getelementptr inbounds %struct.sock, ptr %90, i32 0, i32 34
  store i32 %96, ptr %97, align 8
  %98 = load volatile i8, ptr %66, align 2
  %99 = icmp eq i8 %98, 6
  %100 = getelementptr inbounds %struct.inet_timewait_sock, ptr %0, i32 0, i32 7
  %101 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 33
  %102 = select i1 %99, ptr %100, ptr %101
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds %struct.sock, ptr %90, i32 0, i32 33
  store i32 %103, ptr %104, align 4
  %105 = load volatile i32, ptr @tcp_tx_delay_enabled, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %118, !prof !12

107:                                              ; preds = %77
  %108 = load volatile i8, ptr %66, align 2
  %109 = icmp eq i8 %108, 6
  %110 = getelementptr inbounds %struct.tcp_timewait_sock, ptr %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 41
  %112 = select i1 %109, ptr %110, ptr %111
  %113 = load i32, ptr %112, align 4
  %114 = call i64 @ktime_get() #18
  %115 = zext i32 %113 to i64
  %116 = mul nuw nsw i64 %115, 1000
  %117 = add i64 %116, %114
  br label %118

118:                                              ; preds = %107, %77
  %119 = phi i64 [ %117, %107 ], [ 0, %77 ]
  %120 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %121 = load ptr, ptr %13, align 8
  %122 = load i16, ptr %48, align 4
  %123 = zext i16 %122 to i32
  %124 = getelementptr i8, ptr %121, i32 %123
  %125 = getelementptr inbounds %struct.iphdr, ptr %124, i32 0, i32 8
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr inbounds %struct.iphdr, ptr %124, i32 0, i32 9
  %128 = load i32, ptr %127, align 4
  %129 = load i32, ptr %22, align 4
  call void @ip_send_unicast_reply(ptr noundef %90, ptr noundef %1, ptr noundef %120, i32 noundef %126, i32 noundef %128, ptr noundef nonnull %12, i32 noundef %129, i64 noundef %119) #18
  store i32 0, ptr %97, align 8
  %130 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %131 = getelementptr [16 x i32], ptr %130, i32 0, i32 11
  %132 = ptrtoint ptr %131 to i32
  %133 = call i32 @llvm.read_register.i32(metadata !0) #18
  %134 = inttoptr i32 %133 to ptr
  %135 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %134) #12, !srcloc !14
  %136 = add i32 %135, %132
  %137 = inttoptr i32 %136 to ptr
  %138 = load i32, ptr %137, align 4
  %139 = add i32 %138, 1
  store i32 %139, ptr %137, align 4
  call fastcc void @local_bh_enable()
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #18
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_send_unicast_reply(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tcp_send_reset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_csk_route_req(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ip_options_echo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcp_make_synack(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_build_and_send_pkt(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_checksum_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tcp_bad_csum(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_pfree(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__inet_lookup_listener(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_policy_check(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sk_defer_free_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tcp_destroy_sock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_csk_clear_xmit_timers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tcp4_proc_init_net(ptr nocapture noundef readonly %0) #7 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.8, i16 noundef zeroext 292, ptr noundef %3, ptr noundef nonnull @tcp4_seq_ops, i32 noundef 32, ptr noundef nonnull @tcp4_seq_afinfo) #18
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, i32 -12, i32 0
  ret i32 %6
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tcp4_proc_exit_net(ptr nocapture noundef readonly %0) #15 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.8, ptr noundef %3) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tcp4_seq_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 149
  %6 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 4
  store i32 %5, ptr %6, align 8
  %7 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.9) #18
  br label %168

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %13 = load volatile i8, ptr %12, align 2
  %14 = icmp eq i8 %13, 6
  br i1 %14, label %15, label %40

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.tcp_iter_state, ptr %11, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.inet_timewait_sock, ptr %1, i32 0, i32 8, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = load volatile i32, ptr @jiffies, align 64
  %21 = sub i32 %19, %20
  %22 = load i32, ptr %1, align 8
  %23 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 2
  %26 = load i16, ptr %25, align 4
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #18
  %28 = getelementptr inbounds %struct.inet_timewait_sock, ptr %1, i32 0, i32 4
  %29 = load i16, ptr %28, align 2
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #18
  %31 = zext i16 %30 to i32
  %32 = zext i16 %27 to i32
  %33 = getelementptr inbounds %struct.inet_timewait_sock, ptr %1, i32 0, i32 2
  %34 = load volatile i8, ptr %33, align 4
  %35 = zext i8 %34 to i32
  %36 = tail call i32 @llvm.smax.i32(i32 %21, i32 0) #18
  %37 = tail call i32 @jiffies_to_clock_t(i32 noundef %36) #18
  %38 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %39 = load volatile i32, ptr %38, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %17, i32 noundef %24, i32 noundef %31, i32 noundef %22, i32 noundef %32, i32 noundef %35, i32 noundef 0, i32 noundef 0, i32 noundef 3, i32 noundef %37, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %39, ptr noundef %1) #18
  br label %168

40:                                               ; preds = %9
  %41 = load volatile i8, ptr %12, align 2
  %42 = icmp eq i8 %41, 12
  %43 = getelementptr inbounds %struct.tcp_iter_state, ptr %11, i32 0, i32 6
  %44 = load i32, ptr %43, align 4
  br i1 %42, label %45, label %72

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.request_sock, ptr %1, i32 0, i32 6, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = load volatile i32, ptr @jiffies, align 64
  %49 = sub i32 %47, %48
  %50 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 2
  %53 = getelementptr inbounds %struct.anon.5, ptr %52, i32 0, i32 1
  %54 = load i16, ptr %53, align 2
  %55 = zext i16 %54 to i32
  %56 = load i32, ptr %1, align 8
  %57 = load i16, ptr %52, align 4
  %58 = tail call i16 @llvm.bswap.i16(i16 %57) #18
  %59 = zext i16 %58 to i32
  %60 = tail call i32 @llvm.smax.i32(i32 %49, i32 0) #18
  %61 = tail call i32 @jiffies_to_clock_t(i32 noundef %60) #18
  %62 = getelementptr inbounds %struct.request_sock, ptr %1, i32 0, i32 4
  %63 = load i8, ptr %62, align 1
  %64 = lshr i8 %63, 1
  %65 = zext i8 %64 to i32
  %66 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %67 = load ptr, ptr %66, align 8
  %68 = tail call i32 @sock_i_uid(ptr noundef %67) #18
  %69 = icmp eq i32 %68, -1
  %70 = load i32, ptr @overflowuid, align 4
  %71 = select i1 %69, i32 %70, i32 %68
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %44, i32 noundef %51, i32 noundef %55, i32 noundef %56, i32 noundef %59, i32 noundef 3, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef %61, i32 noundef %65, i32 noundef %71, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1) #18
  br label %168

72:                                               ; preds = %40
  %73 = load i32, ptr %1, align 8
  %74 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 2
  %77 = load i16, ptr %76, align 4
  %78 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 6
  %79 = load i16, ptr %78, align 8
  %80 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 19
  %81 = load i8, ptr %80, align 2
  switch i8 %81, label %88 [
    i8 1, label %82
    i8 6, label %82
    i8 5, label %82
    i8 3, label %85
  ]

82:                                               ; preds = %72, %72, %72
  %83 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 3
  %84 = load i32, ptr %83, align 8
  br label %97

85:                                               ; preds = %72
  %86 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 3
  %87 = load i32, ptr %86, align 8
  br label %97

88:                                               ; preds = %72
  %89 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 32, i32 0, i32 1
  %90 = load volatile ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 32, i32 1
  %94 = load i32, ptr %93, align 8
  br label %97

95:                                               ; preds = %88
  %96 = load volatile i32, ptr @jiffies, align 64
  br label %97

97:                                               ; preds = %95, %92, %85, %82
  %98 = phi i32 [ %84, %82 ], [ %87, %85 ], [ %94, %92 ], [ %96, %95 ]
  %99 = phi i32 [ 1, %82 ], [ 4, %85 ], [ 2, %92 ], [ 0, %95 ]
  %100 = load volatile i8, ptr %12, align 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !53
  %101 = icmp eq i8 %100, 10
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 53
  %104 = load volatile i32, ptr %103, align 4
  br label %112

105:                                              ; preds = %97
  %106 = getelementptr inbounds %struct.tcp_sock, ptr %1, i32 0, i32 7
  %107 = load volatile i32, ptr %106, align 8
  %108 = getelementptr inbounds %struct.tcp_sock, ptr %1, i32 0, i32 8
  %109 = load volatile i32, ptr %108, align 4
  %110 = sub i32 %107, %109
  %111 = tail call i32 @llvm.smax.i32(i32 %110, i32 0) #18
  br label %112

112:                                              ; preds = %105, %102
  %113 = phi i32 [ %104, %102 ], [ %111, %105 ]
  %114 = getelementptr inbounds %struct.tcp_sock, ptr %1, i32 0, i32 80
  %115 = load volatile i32, ptr %114, align 4
  %116 = getelementptr inbounds %struct.tcp_sock, ptr %1, i32 0, i32 16
  %117 = load i32, ptr %116, align 4
  %118 = load volatile i32, ptr @jiffies, align 64
  %119 = sub i32 %98, %118
  %120 = tail call i32 @llvm.smax.i32(i32 %119, i32 0) #18
  %121 = tail call i32 @jiffies_to_clock_t(i32 noundef %120) #18
  %122 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 18
  %123 = load i8, ptr %122, align 1
  %124 = tail call i32 @sock_i_uid(ptr noundef %1) #18
  %125 = load i32, ptr @overflowuid, align 4
  %126 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 22
  %127 = load i8, ptr %126, align 1
  %128 = tail call i32 @sock_i_ino(ptr noundef %1) #18
  %129 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %130 = load volatile i32, ptr %129, align 4
  %131 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 6
  %132 = load i32, ptr %131, align 4
  %133 = tail call i32 @jiffies_to_clock_t(i32 noundef %132) #18
  %134 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 24, i32 4
  %135 = load i32, ptr %134, align 4
  %136 = tail call i32 @jiffies_to_clock_t(i32 noundef %135) #18
  %137 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 24, i32 1
  %138 = load i8, ptr %137, align 1
  %139 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 24, i32 2
  %140 = load i8, ptr %139, align 2
  %141 = getelementptr inbounds %struct.tcp_sock, ptr %1, i32 0, i32 63
  %142 = load i32, ptr %141, align 8
  br i1 %101, label %143, label %146

143:                                              ; preds = %112
  %144 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 1, i32 7, i32 4
  %145 = load i32, ptr %144, align 4
  br label %151

146:                                              ; preds = %112
  %147 = getelementptr inbounds %struct.tcp_sock, ptr %1, i32 0, i32 62
  %148 = load i32, ptr %147, align 4
  %149 = icmp ugt i32 %148, 2147483646
  %150 = select i1 %149, i32 -1, i32 %148
  br label %151

151:                                              ; preds = %146, %143
  %152 = phi i32 [ %145, %143 ], [ %150, %146 ]
  %153 = icmp ugt i8 %140, 2
  %154 = icmp eq i32 %124, -1
  %155 = select i1 %154, i32 %125, i32 %124
  %156 = zext i8 %100 to i32
  %157 = zext i8 %138 to i32
  %158 = shl nuw nsw i32 %157, 1
  %159 = zext i1 %153 to i32
  %160 = or i32 %158, %159
  %161 = zext i8 %127 to i32
  %162 = zext i8 %123 to i32
  %163 = sub i32 %115, %117
  %164 = tail call i16 @llvm.bswap.i16(i16 %77) #18
  %165 = zext i16 %164 to i32
  %166 = tail call i16 @llvm.bswap.i16(i16 %79) #18
  %167 = zext i16 %166 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %44, i32 noundef %75, i32 noundef %167, i32 noundef %73, i32 noundef %165, i32 noundef %156, i32 noundef %163, i32 noundef %113, i32 noundef %99, i32 noundef %121, i32 noundef %162, i32 noundef %155, i32 noundef %161, i32 noundef %128, i32 noundef %130, ptr noundef %1, i32 noundef %133, i32 noundef %136, i32 noundef %160, i32 noundef %142, i32 noundef %152) #18
  br label %168

168:                                              ; preds = %151, %45, %15, %8
  tail call void @seq_pad(ptr noundef %0, i8 noundef zeroext 10) #18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_pad(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_clock_t(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_uid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_ino(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_init_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_twsk_destructor(ptr noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tcp_sk_init(ptr noundef %0) #7 section ".init.text" {
  %2 = alloca ptr, align 4
  %3 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #20
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 17
  store ptr %3, ptr %4, align 4
  %5 = icmp eq ptr %3, null
  br i1 %5, label %94, label %6

6:                                                ; preds = %1
  %7 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #22
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %14, %6
  %11 = phi i32 [ %26, %14 ], [ %7, %6 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  store ptr null, ptr %2, align 4, !annotation !34
  %12 = call i32 @inet_ctl_sock_create(ptr noundef nonnull %2, i16 noundef zeroext 2, i16 noundef zeroext 3, i8 noundef zeroext 6, ptr noundef %0) #18
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %93

14:                                               ; preds = %10
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 13
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, 512
  store i32 %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.inet_sock, ptr %15, i32 0, i32 11
  store i8 2, ptr %19, align 1
  %20 = load ptr, ptr %4, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %21
  %25 = inttoptr i32 %24 to ptr
  store ptr %15, ptr %25, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  %26 = call i32 @cpumask_next(i32 noundef %11, ptr noundef nonnull @__cpu_possible_mask) #22
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %10, label %29

29:                                               ; preds = %14, %6
  %30 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 29
  store i8 2, ptr %30, align 8
  %31 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 30
  store i8 1, ptr %31, align 1
  %32 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 46
  store i32 1024, ptr %32, align 4
  %33 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 47
  store i32 48, ptr %33, align 32
  %34 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 48
  store i32 8, ptr %34, align 4
  %35 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 49
  store i32 600, ptr %35, align 8
  %36 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 45
  store i32 48, ptr %36, align 8
  %37 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 50
  store i32 720000, ptr %37, align 4
  %38 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 52
  store i8 9, ptr %38, align 4
  %39 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 51
  store i32 7500, ptr %39, align 16
  %40 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 53
  store i8 6, ptr %40, align 1
  %41 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 54
  store i8 5, ptr %41, align 2
  %42 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 55
  store i8 1, ptr %42, align 1
  %43 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 57
  store i32 3, ptr %43, align 4
  %44 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 58
  store i8 3, ptr %44, align 64
  %45 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 59
  store i8 15, ptr %45, align 1
  %46 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 60
  store i8 0, ptr %46, align 2
  %47 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 62
  store i32 6000, ptr %47, align 4
  %48 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 63
  store i32 -1, ptr %48, align 8
  %49 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 61
  store i8 2, ptr %49, align 1
  %50 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 82
  store i8 1, ptr %50, align 4
  %51 = load i32, ptr getelementptr inbounds (%struct.inet_hashinfo, ptr @tcp_hashinfo, i32 0, i32 2), align 8
  %52 = add i32 %51, 1
  %53 = sdiv i32 %52, 2
  %54 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 0, i32 3
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 0, i32 2
  store ptr @tcp_hashinfo, ptr %55, align 64
  %56 = sdiv i32 %52, 128
  %57 = call i32 @llvm.smax.i32(i32 %56, i32 128)
  %58 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 100
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 64
  store i8 1, ptr %59, align 4
  %60 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 65
  store i8 1, ptr %60, align 1
  %61 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 66
  store i8 1, ptr %61, align 2
  %62 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 67
  store i8 3, ptr %62, align 1
  %63 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 68
  store i8 1, ptr %63, align 16
  %64 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 70
  store i8 1, ptr %64, align 2
  %65 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 71
  store i8 1, ptr %65, align 1
  %66 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 76
  store i32 300, ptr %66, align 8
  %67 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 78
  store i8 1, ptr %67, align 32
  %68 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 79
  store i8 31, ptr %68, align 1
  %69 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 77
  store i32 1, ptr %69, align 4
  %70 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 80
  store i8 2, ptr %70, align 2
  %71 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 83
  store i8 1, ptr %71, align 1
  %72 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 84
  store i8 3, ptr %72, align 2
  %73 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 86
  store i32 1048576, ptr %73, align 8
  %74 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 87
  store i32 1000, ptr %74, align 4
  %75 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 89
  store i8 2, ptr %75, align 4
  %76 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 88
  store i32 300, ptr %76, align 16
  %77 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 90
  store i8 1, ptr %77, align 1
  %78 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 93
  store i32 50, ptr %78, align 8
  %79 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 94
  store i32 200, ptr %79, align 4
  %80 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 95
  store i32 120, ptr %80, align 64
  %81 = icmp eq ptr %0, @init_net
  br i1 %81, label %85, label %82

82:                                               ; preds = %29
  %83 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 97
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 16 dereferenceable(12) %83, ptr noundef align 16 dereferenceable(12) getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 97), i32 12, i1 false)
  %84 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 96
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %84, ptr noundef align 4 dereferenceable(12) getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 96), i32 12, i1 false)
  br label %85

85:                                               ; preds = %82, %29
  %86 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 98
  store i32 1000000, ptr %86, align 4
  %87 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 99
  store i32 100000, ptr %87, align 32
  %88 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 92
  store i8 44, ptr %88, align 1
  %89 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 101
  store i32 1, ptr %89, align 8
  %90 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 104
  store i32 0, ptr %90, align 4
  %91 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 105
  store volatile i32 0, ptr %91, align 4
  %92 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 102
  store ptr @tcp_reno, ptr %92, align 4
  br label %94

93:                                               ; preds = %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  call void @tcp_sk_exit(ptr noundef %0)
  br label %94

94:                                               ; preds = %93, %85, %1
  %95 = phi i32 [ %12, %93 ], [ 0, %85 ], [ -12, %1 ]
  ret i32 %95
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tcp_sk_exit(ptr nocapture noundef readonly %0) #15 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 102
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %3, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  tail call void @module_put(ptr noundef %7) #18
  br label %8

8:                                                ; preds = %5, %1
  %9 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #22
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 17
  br label %14

14:                                               ; preds = %29, %12
  %15 = phi i32 [ %10, %12 ], [ %30, %29 ]
  %16 = phi i32 [ %9, %12 ], [ %31, %29 ]
  %17 = load ptr, ptr %13, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %18
  %22 = inttoptr i32 %21 to ptr
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 71
  %27 = load ptr, ptr %26, align 8
  tail call void @sock_release(ptr noundef %27) #18
  %28 = load i32, ptr @nr_cpu_ids, align 4
  br label %29

29:                                               ; preds = %25, %14
  %30 = phi i32 [ %15, %14 ], [ %28, %25 ]
  %31 = tail call i32 @cpumask_next(i32 noundef %16, ptr noundef nonnull @__cpu_possible_mask) #22
  %32 = icmp ult i32 %31, %30
  br i1 %32, label %14, label %33

33:                                               ; preds = %29, %8
  %34 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 17
  %35 = load ptr, ptr %34, align 4
  tail call void @free_percpu(ptr noundef %35) #18
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tcp_sk_exit_batch(ptr noundef readonly %0) #15 section ".ref.text" {
  tail call void @inet_twsk_purge(ptr noundef nonnull @tcp_hashinfo, i32 noundef 2) #18
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %9, label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %6 = getelementptr i8, ptr %5, i32 -36
  tail call void @tcp_fastopen_ctx_destroy(ptr noundef %6) #18
  %7 = load ptr, ptr %5, align 4
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %9, label %4

9:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_ctl_sock_create(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_twsk_purge(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_fastopen_ctx_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { argmemonly nofree nounwind willreturn writeonly }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { argmemonly nofree nounwind readonly willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind readnone }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { cold noreturn nounwind }
attributes #22 = { nounwind readonly willreturn }

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
!10 = !{i64 726324, i64 2148216295, i64 2148216321, i64 2148216368, i64 2148216390, i64 2148216418, i64 2148216438}
!11 = !{i64 2148229168, i64 2148229200, i64 2148229229, i64 2148229263, i64 2148229294, i64 2148229317}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2148687845}
!14 = !{i64 650702}
!15 = !{i64 2149482009}
!16 = !{i64 2149482310}
!17 = !{i64 2148227710, i64 2148227736, i64 2148227765, i64 2148227799, i64 2148227830, i64 2148227853}
!18 = !{i64 2148329390}
!19 = !{i64 2148231525, i64 2148231557, i64 2148231586, i64 2148231620, i64 2148231651, i64 2148231674}
!20 = !{i64 2149094122}
!21 = !{i64 590780, i64 590807, i64 590829, i64 590857}
!22 = !{i64 591188, i64 591215, i64 591248, i64 591269, i64 591296, i64 591322}
!23 = !{i64 2149026134}
!24 = !{i64 2149021958}
!25 = !{i64 2149022033, i64 2149022060, i64 2149022107, i64 2149022129, i64 2149022157, i64 2149022177}
!26 = !{i64 2149049137}
!27 = !{i64 5605689, i64 5605730, i64 5605816}
!28 = !{i64 5604587}
!29 = !{i64 590493, i64 590520}
!30 = !{i64 2157571723}
!31 = !{i64 2157571877}
!32 = !{i64 2157809759}
!33 = !{i64 2157825568}
!34 = !{!"auto-init"}
!35 = !{i64 2149144489}
!36 = !{i64 2149144706}
!37 = !{i64 2148227217}
!38 = !{i64 712893, i64 712918, i64 712940, i64 712956, i64 712968, i64 712988, i64 713012, i64 713028, i64 713040}
!39 = !{i64 2148227343}
!40 = !{i64 2158083060}
!41 = !{i64 632002, i64 632063}
!42 = !{i64 635019}
!43 = !{i64 2157678232}
!44 = !{i64 2157678374}
!45 = !{i64 2153523533, i64 2153524021, i64 2153523570, i64 2153523626, i64 2153523660, i64 2153523684, i64 2153523725, i64 2153523746, i64 2153523774, i64 2153523808}
!46 = !{i8 0, i8 2}
!47 = !{i64 2158042263}
!48 = !{i64 2157607436}
!49 = !{i64 2157607584}
!50 = !{i64 2158098404, i64 2158098889, i64 2158098441, i64 2158098497, i64 2158098531, i64 2158098555, i64 2158098596, i64 2158098617, i64 2158098645, i64 2158098679}
!51 = !{i64 2157898627}
!52 = !{i64 2157914436}
!53 = !{i64 2155459312}
