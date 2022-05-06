; ModuleID = '/llk/IR/net/ipv4/tcp_input.c_pt.bc'
source_filename = "../net/ipv4/tcp_input.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_enter_quickack_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_enter_quickack_mode\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_enter_quickack_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_initialize_rcv_mss:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_initialize_rcv_mss\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_initialize_rcv_mss:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_enter_cwr:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_enter_cwr\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_enter_cwr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_simple_retransmit:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_simple_retransmit\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_simple_retransmit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_parse_options:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_parse_options\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_parse_options:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_rcv_established:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_rcv_established\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_rcv_established:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_rcv_state_process:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_rcv_state_process\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_rcv_state_process:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_reqsk_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_reqsk_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_inet_reqsk_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_get_syncookie_mss:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_get_syncookie_mss\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_get_syncookie_mss:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_conn_request:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_conn_request\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_conn_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.129, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.129 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.183, %struct.anon.184, %struct.anon.185, i32, ptr, ptr, ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.181, %struct.anon.182, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.170, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.171, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.172, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.166, [0 x i32], %union.anon.167, i16, i16, %union.anon.168, %struct.refcount_struct, [0 x i32], %union.anon.169 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.115 }
%union.anon.115 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.166 = type { i32 }
%union.anon.167 = type { %struct.hlist_node }
%union.anon.168 = type { i32 }
%union.anon.169 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.170 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.171 = type { ptr }
%union.anon.172 = type { ptr }
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
%struct.flowi = type { %union.anon.124 }
%union.anon.124 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.181 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.182 = type { i32, i32, i32, i32 }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.183 = type { i32, i32, i64 }
%struct.anon.184 = type { i32, i32, i64 }
%struct.anon.185 = type { i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.netdevice_tracker = type {}
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
%struct.tcp_congestion_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.list_head, i32, i32, ptr, ptr, [40 x i8] }
%struct.rate_sample = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%struct.tcp_request_sock = type { %struct.inet_request_sock, ptr, i64, i8, i8, i32, i32, i32, i32, i32, i32, i8 }
%struct.inet_request_sock = type { %struct.request_sock, i16, i32, %union.anon.194 }
%union.anon.194 = type { %struct.anon.195 }
%struct.anon.195 = type { ptr, ptr }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.tcp_fastopen_cookie = type { [2 x i64], i8, i8 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.165, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.165 = type { ptr }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.164, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.162 }
%union.anon.4 = type { ptr }
%union.anon.162 = type { i64 }
%union.anon.164 = type { ptr }
%struct.inet_connection_sock_af_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, ptr, ptr, ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ack_sample = type { i32, i32, i32 }
%struct.tcp_sacktag_state = type { i64, i64, i32, i32, i32, i32, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [40 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }
%struct.request_sock_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.2 = type { i16, i16 }
%struct.tcp_request_sock_ops = type { i16, ptr, ptr, ptr, ptr }
%struct.saved_syn = type { i32, i32, i32, [0 x i8] }
%struct.sk_buff_list = type { ptr, ptr }
%struct.tcp_sack_block_wire = type { i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.41, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.41 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.120 = type { ptr }
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

@sysctl_tcp_max_orphans = dso_local local_unnamed_addr global i32 8192, section ".data..read_mostly", align 4
@__kstrtab_tcp_enter_quickack_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_enter_quickack_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_enter_quickack_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_enter_quickack_mode to i32), ptr @__kstrtab_tcp_enter_quickack_mode, ptr @__kstrtabns_tcp_enter_quickack_mode }, section "___ksymtab+tcp_enter_quickack_mode", align 4
@__kstrtab_tcp_initialize_rcv_mss = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_initialize_rcv_mss = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_initialize_rcv_mss = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_initialize_rcv_mss to i32), ptr @__kstrtab_tcp_initialize_rcv_mss, ptr @__kstrtabns_tcp_initialize_rcv_mss }, section "___ksymtab+tcp_initialize_rcv_mss", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@tcp_cwnd_reduction.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [21 x i8] c"net/ipv4/tcp_input.c\00", align 1
@__kstrtab_tcp_enter_cwr = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_enter_cwr = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_enter_cwr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_enter_cwr to i32), ptr @__kstrtab_tcp_enter_cwr, ptr @__kstrtabns_tcp_enter_cwr }, section "___ksymtab+tcp_enter_cwr", align 4
@__kstrtab_tcp_simple_retransmit = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_simple_retransmit = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_simple_retransmit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_simple_retransmit to i32), ptr @__kstrtab_tcp_simple_retransmit, ptr @__kstrtabns_tcp_simple_retransmit }, section "___ksymtab+tcp_simple_retransmit", align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"\016TCP: %s: Illegal window scaling value %d > %u received\0A\00", align 1
@__func__.tcp_parse_options = private unnamed_addr constant [18 x i8] c"tcp_parse_options\00", align 1
@__kstrtab_tcp_parse_options = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_parse_options = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_parse_options = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_parse_options to i32), ptr @__kstrtab_tcp_parse_options, ptr @__kstrtabns_tcp_parse_options }, section "___ksymtab+tcp_parse_options", align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"\013TCP: %s: Impossible, sk->sk_state=%d\0A\00", align 1
@__func__.tcp_fin = private unnamed_addr constant [8 x i8] c"tcp_fin\00", align 1
@tcp_send_rcvq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_tcp_rcv_established = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_rcv_established = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_rcv_established = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_rcv_established to i32), ptr @__kstrtab_tcp_rcv_established, ptr @__kstrtabns_tcp_rcv_established }, section "___ksymtab+tcp_rcv_established", align 4
@tcp_rcv_state_process.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_tcp_rcv_state_process = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_rcv_state_process = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_rcv_state_process = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_rcv_state_process to i32), ptr @__kstrtab_tcp_rcv_state_process, ptr @__kstrtabns_tcp_rcv_state_process }, section "___ksymtab+tcp_rcv_state_process", align 4
@__kstrtab_inet_reqsk_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_reqsk_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_reqsk_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_reqsk_alloc to i32), ptr @__kstrtab_inet_reqsk_alloc, ptr @__kstrtabns_inet_reqsk_alloc }, section "___ksymtab+inet_reqsk_alloc", align 4
@__kstrtab_tcp_get_syncookie_mss = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_get_syncookie_mss = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_get_syncookie_mss = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_get_syncookie_mss to i32), ptr @__kstrtab_tcp_get_syncookie_mss, ptr @__kstrtabns_tcp_get_syncookie_mss }, section "___ksymtab_gpl+tcp_get_syncookie_mss", align 4
@__kstrtab_tcp_conn_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_conn_request = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_conn_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_conn_request to i32), ptr @__kstrtab_tcp_conn_request, ptr @__kstrtabns_tcp_conn_request }, section "___ksymtab+tcp_conn_request", align 4
@__tracepoint_tcp_rcv_space_adjust = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@init_net = external dso_local global %struct.net, align 64
@__tracepoint_tcp_receive_reset = external dso_local global %struct.tracepoint, align 4
@tcp_memory_pressure = external dso_local global i32, align 4
@__tracepoint_tcp_probe = external dso_local global %struct.tracepoint, align 4
@tcp_shifted_skb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tcp_clean_rtx_queue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tcp_gro_dev_warn.__once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.11 = private unnamed_addr constant [87 x i8] c"\014TCP: %s: Driver has suspect GRO implementation, TCP performance may be compromised.\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"Unknown driver\00", align 1
@__tracepoint_tcp_bad_csum = external dso_local global %struct.tracepoint, align 4
@__const.tcp_rcv_synsent_state_process.foc = private unnamed_addr constant { [2 x i64], i8, i8, [6 x i8] } { [2 x i64] zeroinitializer, i8 -1, i8 0, [6 x i8] zeroinitializer }, align 8
@tcp_send_challenge_ack.challenge_timestamp = internal unnamed_addr global i32 0, align 4
@tcp_send_challenge_ack.challenge_count = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"Dropping request\00", align 1
@.str.15 = private unnamed_addr constant [72 x i8] c"\016TCP: %s: Possible SYN flooding on port %d. %s.  Check SNMP counters.\0A\00", align 1
@reqsk_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"include/net/request_sock.h\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_inet_reqsk_alloc, ptr @__ksymtab_tcp_conn_request, ptr @__ksymtab_tcp_enter_cwr, ptr @__ksymtab_tcp_enter_quickack_mode, ptr @__ksymtab_tcp_get_syncookie_mss, ptr @__ksymtab_tcp_initialize_rcv_mss, ptr @__ksymtab_tcp_parse_options, ptr @__ksymtab_tcp_rcv_established, ptr @__ksymtab_tcp_rcv_state_process, ptr @__ksymtab_tcp_simple_retransmit], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @tcp_enter_quickack_mode(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 79
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 8
  %6 = load i16, ptr %5, align 2
  %7 = zext i16 %6 to i32
  %8 = shl nuw nsw i32 %7, 1
  %9 = udiv i32 %4, %8
  %10 = icmp ugt i32 %8, %4
  %11 = select i1 %10, i32 2, i32 %9
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %1) #16
  %13 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp ugt i32 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = trunc i32 %12 to i8
  store i8 %18, ptr %13, align 1
  br label %19

19:                                               ; preds = %17, %2
  %20 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 2
  store i8 0, ptr %20, align 2
  %21 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 4
  store i32 4, ptr %21, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @tcp_initialize_rcv_mss(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 32
  %3 = load i16, ptr %2, align 8
  %4 = zext i16 %3 to i32
  %5 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 %4)
  %8 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 79
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 1
  %11 = tail call i32 @llvm.umin.i32(i32 %7, i32 %10)
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 536)
  %13 = tail call i32 @llvm.umax.i32(i32 %12, i32 88)
  %14 = trunc i32 %13 to i16
  %15 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 8
  store i16 %14, ptr %15, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_rcv_space_adjust(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tcp_rcv_space_adjust, i32 0, i32 1), align 4
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
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !9
  %16 = tail call i32 @__traceiter_tcp_rcv_space_adjust(ptr noundef null, ptr noundef %0) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !10
  br label %17

17:                                               ; preds = %15, %4, %1
  tail call void @tcp_mstamp_refresh(ptr noundef %0) #16
  %18 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 112
  %21 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 112, i32 2
  %22 = load i64, ptr %21, align 8
  %23 = sub i64 %19, %22
  %24 = tail call i64 @llvm.smax.i64(i64 %23, i64 0) #16
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 111
  %27 = load i32, ptr %26, align 8
  %28 = lshr i32 %27, 3
  %29 = icmp ugt i32 %28, %25
  %30 = icmp eq i32 %27, 0
  %31 = or i1 %30, %29
  br i1 %31, label %115, label %32

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 8
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 112, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = sub i32 %34, %36
  %38 = load i32, ptr %20, align 8
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %114

40:                                               ; preds = %32
  %41 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 83), align 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %113, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 43
  %45 = load i8, ptr %44, align 8
  %46 = and i8 %45, 32
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %113

48:                                               ; preds = %43
  %49 = zext i32 %37 to i64
  %50 = shl nuw nsw i64 %49, 1
  %51 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 32
  %52 = load i16, ptr %51, align 8
  %53 = zext i16 %52 to i32
  %54 = shl nuw nsw i32 %53, 4
  %55 = zext i32 %54 to i64
  %56 = add nuw nsw i64 %50, %55
  %57 = sub i32 %37, %38
  %58 = zext i32 %57 to i64
  %59 = mul i64 %56, %58
  %60 = icmp ult i64 %59, 4294967296
  br i1 %60, label %61, label %65, !prof !11

61:                                               ; preds = %48
  %62 = trunc i64 %59 to i32
  %63 = udiv i32 %62, %38
  %64 = zext i32 %63 to i64
  br label %68

65:                                               ; preds = %48
  %66 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %38, i64 %59) #17, !srcloc !12
  %67 = extractvalue { i64, i64 } %66, 1
  br label %68

68:                                               ; preds = %65, %61
  %69 = phi i64 [ %64, %61 ], [ %67, %65 ]
  %70 = shl i64 %69, 1
  %71 = add nuw nsw i32 %53, 768
  %72 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 77), align 4
  %73 = icmp slt i32 %72, 1
  %74 = sub i32 0, %72
  br label %75

75:                                               ; preds = %75, %68
  %76 = phi i32 [ %71, %68 ], [ %82, %75 ]
  %77 = ashr i32 %76, %74
  %78 = ashr i32 %76, %72
  %79 = sub i32 %76, %78
  %80 = select i1 %73, i32 %77, i32 %79
  %81 = icmp slt i32 %80, %53
  %82 = add i32 %76, 128
  br i1 %81, label %75, label %83

83:                                               ; preds = %75
  %84 = add i64 %70, %56
  %85 = icmp ult i64 %84, 4294967296
  br i1 %85, label %86, label %90, !prof !11

86:                                               ; preds = %83
  %87 = trunc i64 %84 to i32
  %88 = udiv i32 %87, %53
  %89 = zext i32 %88 to i64
  br label %93

90:                                               ; preds = %83
  %91 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %53, i64 %84) #17, !srcloc !12
  %92 = extractvalue { i64, i64 } %91, 1
  br label %93

93:                                               ; preds = %90, %86
  %94 = phi i64 [ %89, %86 ], [ %92, %90 ]
  %95 = sext i32 %76 to i64
  %96 = mul i64 %94, %95
  %97 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 97, i32 2), align 8
  %98 = sext i32 %97 to i64
  %99 = tail call i64 @llvm.umin.i64(i64 %96, i64 %98)
  %100 = trunc i64 %99 to i32
  %101 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 15
  %102 = load i32, ptr %101, align 4
  %103 = icmp slt i32 %102, %100
  br i1 %103, label %104, label %113

104:                                              ; preds = %93
  store volatile i32 %100, ptr %101, align 4
  %105 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 77), align 4
  %106 = icmp slt i32 %105, 1
  %107 = sub i32 0, %105
  %108 = ashr i32 %100, %107
  %109 = ashr i32 %100, %105
  %110 = sub i32 %100, %109
  %111 = select i1 %106, i32 %108, i32 %110
  %112 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 29
  store i32 %111, ptr %112, align 8
  br label %113

113:                                              ; preds = %104, %93, %43, %40
  store i32 %37, ptr %20, align 8
  br label %114

114:                                              ; preds = %113, %32
  store i32 %34, ptr %35, align 4
  store i64 %19, ptr %21, align 8
  br label %115

115:                                              ; preds = %114, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_mstamp_refresh(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @tcp_init_cwnd(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, -4
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr i32, ptr %8, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %4, %2
  br label %13

13:                                               ; preds = %12, %4
  %14 = phi i32 [ 10, %12 ], [ %10, %4 ]
  %15 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 65
  %16 = load i32, ptr %15, align 8
  %17 = tail call i32 @llvm.umin.i32(i32 %14, i32 %16)
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_mark_skb_lost(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 13
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %70

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 88
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 52
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 83
  %16 = load i32, ptr %15, align 8
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %26, label %25

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 3
  %22 = load i32, ptr %21, align 8
  %23 = sub i32 %20, %22
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %12
  store ptr %1, ptr %9, align 4
  br label %26

26:                                               ; preds = %25, %18, %12
  %27 = and i32 %5, 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %54, label %29

29:                                               ; preds = %26
  %30 = and i32 %5, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %70, label %32

32:                                               ; preds = %29
  %33 = load i8, ptr %3, align 1
  %34 = and i8 %33, -3
  store i8 %34, ptr %3, align 1
  %35 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %36 = load i16, ptr %35, align 8
  %37 = zext i16 %36 to i32
  %38 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 52
  %39 = load i32, ptr %38, align 8
  %40 = sub i32 %39, %37
  store i32 %40, ptr %38, align 8
  %41 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %42 = load i16, ptr %35, align 8
  %43 = zext i16 %42 to i32
  %44 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %45 = getelementptr [126 x i32], ptr %44, i32 0, i32 34
  %46 = ptrtoint ptr %45 to i32
  %47 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %48 = inttoptr i32 %47 to ptr
  %49 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %48) #13, !srcloc !14
  %50 = add i32 %49, %46
  %51 = inttoptr i32 %50 to ptr
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, %43
  store i32 %53, ptr %51, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %41) #16, !srcloc !15
  br label %63

54:                                               ; preds = %26
  %55 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %56 = load i16, ptr %55, align 8
  %57 = zext i16 %56 to i32
  %58 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 83
  %59 = load i32, ptr %58, align 8
  %60 = add i32 %59, %57
  store i32 %60, ptr %58, align 8
  %61 = load i8, ptr %3, align 1
  %62 = or i8 %61, 4
  store i8 %62, ptr %3, align 1
  br label %63

63:                                               ; preds = %54, %32
  %64 = phi ptr [ %35, %32 ], [ %55, %54 ]
  %65 = load i16, ptr %64, align 8
  %66 = zext i16 %65 to i32
  %67 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 73
  %68 = load i32, ptr %67, align 8
  %69 = add i32 %68, %66
  store i32 %69, ptr %67, align 8
  br label %70

70:                                               ; preds = %63, %29, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_skb_shift(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = add i32 %6, %3
  %8 = icmp ugt i32 %7, 524279
  br i1 %8, label %17, label %9, !prof !16

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 8
  %11 = load i16, ptr %10, align 8
  %12 = zext i16 %11 to i32
  %13 = add i32 %12, %2
  %14 = icmp sgt i32 %13, 65535
  br i1 %14, label %17, label %15, !prof !16

15:                                               ; preds = %9
  %16 = tail call i32 @skb_shift(ptr noundef %0, ptr noundef %1, i32 noundef %3) #16
  br label %17

17:                                               ; preds = %15, %9, %4
  %18 = phi i32 [ %16, %15 ], [ 0, %4 ], [ 0, %9 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_shift(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @tcp_clear_retrans(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 52
  store i32 0, ptr %2, align 8
  %3 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 83
  store i32 0, ptr %3, align 8
  %4 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 99
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 100
  store i32 -1, ptr %5, align 8
  %6 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  store i32 0, ptr %6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_enter_loss(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 31
  %5 = icmp ult i8 %4, 3
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %7 = tail call ptr @rb_first(ptr noundef %6) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 13
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %9
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %16 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %17 = getelementptr [126 x i32], ptr %16, i32 0, i32 26
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %20 = inttoptr i32 %19 to ptr
  %21 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %20) #13, !srcloc !14
  %22 = add i32 %21, %18
  %23 = inttoptr i32 %22 to ptr
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #16, !srcloc !15
  %26 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %28 = load i16, ptr %27, align 4
  %29 = or i16 %28, 32
  store i16 %29, ptr %27, align 4
  br label %38

30:                                               ; preds = %9, %1
  %31 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %32 = load i24, ptr %31, align 4
  %33 = and i24 %32, 112
  %34 = icmp eq i24 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  store i32 0, ptr %36, align 4
  br label %37

37:                                               ; preds = %35, %30
  br i1 %8, label %59, label %38

38:                                               ; preds = %37, %14
  %39 = phi i1 [ true, %14 ], [ false, %37 ]
  br label %40

40:                                               ; preds = %56, %38
  %41 = phi ptr [ %57, %56 ], [ %7, %38 ]
  br i1 %39, label %42, label %46

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 3, i32 13
  %44 = load i8, ptr %43, align 1
  %45 = and i8 %44, -2
  store i8 %45, ptr %43, align 1
  br label %55

46:                                               ; preds = %40
  %47 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 68), align 16
  %48 = and i8 %47, 1
  %49 = icmp eq i8 %48, 0
  %50 = icmp eq ptr %41, %7
  %51 = select i1 %49, i1 true, i1 %50
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = tail call i32 @tcp_rack_skb_timeout(ptr noundef %0, ptr noundef nonnull %41, i32 noundef 0) #16
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52, %46, %42
  tail call void @tcp_mark_skb_lost(ptr noundef %0, ptr noundef nonnull %41) #16
  br label %56

56:                                               ; preds = %55, %52
  %57 = tail call ptr @rb_next(ptr noundef nonnull %41) #16
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %40

59:                                               ; preds = %56, %37
  %60 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 83
  %63 = load i32, ptr %62, align 8
  %64 = add i32 %63, %61
  %65 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %66 = load i32, ptr %65, align 4
  %67 = icmp ugt i32 %64, %66
  br i1 %67, label %68, label %69, !prof !16

68:                                               ; preds = %59
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2131, i32 noundef 9, ptr noundef null) #16
  br label %69

69:                                               ; preds = %68, %59
  %70 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 87
  store ptr null, ptr %70, align 8
  %71 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 88
  store ptr null, ptr %71, align 4
  %72 = load i8, ptr %2, align 4
  %73 = and i8 %72, 30
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %89, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 97
  %79 = load i32, ptr %78, align 4
  %80 = sub i32 %77, %79
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %75
  %83 = and i8 %72, 31
  %84 = icmp eq i8 %83, 4
  br i1 %84, label %85, label %125

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 18
  %87 = load i8, ptr %86, align 1
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %125

89:                                               ; preds = %85, %75, %69
  %90 = and i8 %72, 31
  %91 = zext i8 %90 to i32
  %92 = shl nuw i32 1, %91
  %93 = and i32 %92, 12
  %94 = icmp eq i32 %93, 0
  %95 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %98 = load i32, ptr %97, align 8
  %99 = lshr i32 %98, 1
  %100 = lshr i32 %98, 2
  %101 = add nuw i32 %99, %100
  %102 = tail call i32 @llvm.umax.i32(i32 %96, i32 %101) #16
  %103 = select i1 %94, i32 %102, i32 %96
  %104 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 96
  store i32 %103, ptr %104, align 8
  %105 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 68
  store i32 %98, ptr %105, align 4
  %106 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %107 = load ptr, ptr %106, align 4
  %108 = load ptr, ptr %107, align 64
  %109 = tail call i32 %108(ptr noundef %0) #16
  store i32 %109, ptr %95, align 4
  %110 = load ptr, ptr %106, align 4
  %111 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %110, i32 0, i32 3
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %89
  tail call void %112(ptr noundef %0, i32 noundef 3) #16
  br label %115

115:                                              ; preds = %114, %89
  %116 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %117 = load i32, ptr %116, align 4
  %118 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 99
  store i32 %117, ptr %118, align 4
  %119 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 52
  %120 = load i32, ptr %119, align 8
  %121 = icmp eq i32 %120, 0
  %122 = select i1 %121, i32 -1, i32 %120
  %123 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 100
  store i32 %122, ptr %123, align 8
  %124 = load i8, ptr %2, align 4
  br label %125

125:                                              ; preds = %115, %85, %82
  %126 = phi i8 [ %124, %115 ], [ %72, %85 ], [ %72, %82 ]
  %127 = load i32, ptr %65, align 4
  %128 = load i32, ptr %60, align 4
  %129 = load i32, ptr %62, align 8
  %130 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 52
  %131 = load i32, ptr %130, align 8
  %132 = add i32 %127, 1
  %133 = add i32 %128, %129
  %134 = sub i32 %132, %133
  %135 = add i32 %134, %131
  %136 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  store i32 %135, ptr %136, align 8
  %137 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 64
  store i32 0, ptr %137, align 4
  %138 = load volatile i32, ptr @jiffies, align 64
  %139 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 67
  store i32 %138, ptr %139, align 8
  %140 = and i8 %126, 30
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %125
  %143 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 57), align 4
  %144 = icmp ult i32 %128, %143
  br i1 %144, label %149, label %145

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 58
  %147 = load i32, ptr %146, align 8
  %148 = tail call i32 @llvm.umin.i32(i32 %147, i32 %143)
  store i32 %148, ptr %146, align 8
  br label %149

149:                                              ; preds = %145, %142, %125
  %150 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %151, i32 0, i32 2
  %153 = load ptr, ptr %152, align 8
  %154 = icmp eq ptr %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %149
  tail call void %153(ptr noundef %0, i8 noundef zeroext 4) #16
  %156 = load i8, ptr %2, align 4
  br label %157

157:                                              ; preds = %155, %149
  %158 = phi i8 [ %126, %149 ], [ %156, %155 ]
  %159 = and i8 %158, -32
  %160 = or i8 %159, 4
  store i8 %160, ptr %2, align 4
  %161 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %162 = load i32, ptr %161, align 4
  %163 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 97
  store i32 %162, ptr %163, align 4
  %164 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 56
  %165 = load i8, ptr %164, align 2
  %166 = and i8 %165, 1
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %157
  %169 = or i8 %165, 2
  store i8 %169, ptr %164, align 2
  br label %170

170:                                              ; preds = %168, %157
  %171 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 80), align 2
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %184, label %173

173:                                              ; preds = %170
  br i1 %5, label %178, label %174

174:                                              ; preds = %173
  %175 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 18
  %176 = load i8, ptr %175, align 1
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %184, label %178

178:                                              ; preds = %174, %173
  %179 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 25, i32 2
  %180 = load i32, ptr %179, align 8
  %181 = and i32 %180, 2147483647
  %182 = icmp eq i32 %181, 0
  %183 = select i1 %182, i16 -32768, i16 0
  br label %184

184:                                              ; preds = %178, %174, %170
  %185 = phi i16 [ 0, %174 ], [ 0, %170 ], [ %183, %178 ]
  %186 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %187 = load i16, ptr %186, align 4
  %188 = and i16 %187, 32767
  %189 = or i16 %188, %185
  store i16 %189, ptr %186, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_cwnd_reduction(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 83
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 52
  %14 = load i32, ptr %13, align 8
  %15 = sub i32 %6, %8
  %16 = add i32 %15, %10
  %17 = add i32 %16, %12
  %18 = sub i32 %17, %14
  %19 = icmp slt i32 %1, 1
  br i1 %19, label %87, label %20

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 68
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = load i1, ptr @tcp_cwnd_reduction.__already_done, align 1
  %25 = xor i1 %24, true
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %28, !prof !16

27:                                               ; preds = %20
  store i1 true, ptr @tcp_cwnd_reduction.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2615, i32 noundef 9, ptr noundef null) #16
  br label %28

28:                                               ; preds = %27, %20
  br i1 %23, label %87, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 69
  %31 = load i32, ptr %30, align 8
  %32 = add i32 %31, %1
  store i32 %32, ptr %30, align 8
  %33 = icmp slt i32 %18, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %29
  %35 = load i32, ptr %5, align 4
  %36 = zext i32 %35 to i64
  %37 = zext i32 %32 to i64
  %38 = mul nuw i64 %36, %37
  %39 = load i32, ptr %21, align 4
  %40 = zext i32 %39 to i64
  %41 = add nsw i64 %40, -1
  %42 = add i64 %41, %38
  %43 = icmp ult i64 %42, 4294967296
  br i1 %43, label %44, label %47, !prof !11

44:                                               ; preds = %34
  %45 = trunc i64 %42 to i32
  %46 = udiv i32 %45, %39
  br label %51

47:                                               ; preds = %34
  %48 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %39, i64 %42) #17, !srcloc !12
  %49 = extractvalue { i64, i64 } %48, 1
  %50 = trunc i64 %49 to i32
  br label %51

51:                                               ; preds = %47, %44
  %52 = phi i32 [ %46, %44 ], [ %50, %47 ]
  %53 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 70
  %54 = load i32, ptr %53, align 4
  %55 = sub i32 %52, %54
  br label %72

56:                                               ; preds = %29
  %57 = and i32 %3, 1024
  %58 = icmp eq i32 %57, 0
  %59 = icmp ne i32 %2, 0
  %60 = or i1 %59, %58
  br i1 %60, label %68, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 70
  %63 = load i32, ptr %62, align 4
  %64 = sub i32 %32, %63
  %65 = tail call i32 @llvm.smax.i32(i32 %64, i32 %1)
  %66 = add nuw i32 %65, 1
  %67 = tail call i32 @llvm.smin.i32(i32 %18, i32 %66)
  br label %72

68:                                               ; preds = %56
  %69 = tail call i32 @llvm.smin.i32(i32 %18, i32 %1)
  %70 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 70
  %71 = load i32, ptr %70, align 4
  br label %72

72:                                               ; preds = %68, %61, %51
  %73 = phi i32 [ %54, %51 ], [ %71, %68 ], [ %63, %61 ]
  %74 = phi i32 [ %55, %51 ], [ %69, %68 ], [ %67, %61 ]
  %75 = icmp eq i32 %73, 0
  %76 = zext i1 %75 to i32
  %77 = tail call i32 @llvm.smax.i32(i32 %74, i32 %76)
  %78 = load i32, ptr %7, align 4
  %79 = load i32, ptr %9, align 4
  %80 = load i32, ptr %11, align 8
  %81 = load i32, ptr %13, align 8
  %82 = add i32 %79, %80
  %83 = sub i32 %78, %82
  %84 = add i32 %83, %77
  %85 = add i32 %84, %81
  %86 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  store i32 %85, ptr %86, align 8
  br label %87

87:                                               ; preds = %72, %28, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_enter_cwr(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 96
  store i32 0, ptr %2, align 8
  %3 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 30
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %40

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 99
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 97
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 40
  store i32 0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 64
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 68
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 69
  store i32 0, ptr %17, align 8
  %18 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 70
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %20, align 64
  %22 = tail call i32 %21(ptr noundef %0) #16
  %23 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 56
  %25 = load i8, ptr %24, align 2
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %7
  %29 = or i8 %25, 2
  store i8 %29, ptr %24, align 2
  br label %30

30:                                               ; preds = %28, %7
  %31 = load ptr, ptr %19, align 4
  %32 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  tail call void %33(ptr noundef %0, i8 noundef zeroext 2) #16
  br label %36

36:                                               ; preds = %35, %30
  %37 = load i8, ptr %3, align 4
  %38 = and i8 %37, -32
  %39 = or i8 %38, 2
  store i8 %39, ptr %3, align 4
  br label %40

40:                                               ; preds = %36, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_simple_retransmit(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 39
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %8 = load volatile i8, ptr %7, align 2
  %9 = icmp eq i8 %8, 2
  br i1 %9, label %12, label %10

10:                                               ; preds = %6, %1
  %11 = tail call i32 @tcp_current_mss(ptr noundef %0) #16
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i32 [ %11, %10 ], [ -1, %6 ]
  %14 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %15 = tail call ptr @rb_first(ptr noundef %14) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %36, label %17

17:                                               ; preds = %33, %12
  %18 = phi ptr [ %34, %33 ], [ %15, %12 ]
  %19 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 8
  %20 = load i16, ptr %19, align 8
  %21 = icmp eq i16 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 5
  %24 = load i32, ptr %23, align 8
  br label %29

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 10
  %27 = load i16, ptr %26, align 2
  %28 = zext i16 %27 to i32
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i32 [ %24, %22 ], [ %28, %25 ]
  %31 = icmp sgt i32 %30, %13
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  tail call void @tcp_mark_skb_lost(ptr noundef %0, ptr noundef nonnull %18)
  br label %33

33:                                               ; preds = %32, %29
  %34 = tail call ptr @rb_next(ptr noundef nonnull %18) #16
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %17

36:                                               ; preds = %33, %12
  %37 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 87
  store ptr null, ptr %37, align 8
  %38 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 83
  %39 = load i32, ptr %38, align 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %105, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %43 = load i24, ptr %42, align 4
  %44 = and i24 %43, 112
  %45 = icmp eq i24 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %50 = load i32, ptr %49, align 4
  br label %61

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %53 = load i32, ptr %52, align 4
  %54 = tail call i32 @llvm.umin.i32(i32 %39, i32 %53) #16
  %55 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, %54
  %58 = icmp ugt i32 %57, %53
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = sub i32 %53, %54
  store i32 %60, ptr %55, align 4
  br label %61

61:                                               ; preds = %59, %51, %46
  %62 = phi i32 [ %50, %46 ], [ %53, %59 ], [ %53, %51 ]
  %63 = phi i32 [ %48, %46 ], [ %60, %59 ], [ %56, %51 ]
  %64 = add i32 %63, %39
  %65 = icmp ugt i32 %64, %62
  br i1 %65, label %66, label %67, !prof !16

66:                                               ; preds = %61
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2764, i32 noundef 9, ptr noundef null) #16
  br label %67

67:                                               ; preds = %66, %61
  %68 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %69 = load i8, ptr %68, align 4
  %70 = and i8 %69, 31
  %71 = icmp eq i8 %70, 4
  br i1 %71, label %104, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 97
  store i32 %74, ptr %75, align 4
  %76 = zext i8 %70 to i32
  %77 = shl nuw i32 1, %76
  %78 = and i32 %77, 12
  %79 = icmp eq i32 %78, 0
  %80 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  %81 = load i32, ptr %80, align 4
  br i1 %79, label %82, label %89

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %84 = load i32, ptr %83, align 8
  %85 = lshr i32 %84, 1
  %86 = lshr i32 %84, 2
  %87 = add nuw i32 %85, %86
  %88 = tail call i32 @llvm.umax.i32(i32 %81, i32 %87) #16
  br label %89

89:                                               ; preds = %82, %72
  %90 = phi i32 [ %88, %82 ], [ %81, %72 ]
  store i32 %90, ptr %80, align 4
  %91 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 96
  store i32 0, ptr %91, align 8
  %92 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 99
  store i32 0, ptr %92, align 4
  %93 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %95, align 8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %89
  tail call void %96(ptr noundef %0, i8 noundef zeroext 4) #16
  %99 = load i8, ptr %68, align 4
  br label %100

100:                                              ; preds = %98, %89
  %101 = phi i8 [ %69, %89 ], [ %99, %98 ]
  %102 = and i8 %101, -32
  %103 = or i8 %102, 4
  store i8 %103, ptr %68, align 4
  br label %104

104:                                              ; preds = %100, %67
  tail call void @tcp_xmit_retransmit_queue(ptr noundef %0) #16
  br label %105

105:                                              ; preds = %104, %36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_current_mss(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_xmit_retransmit_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_enter_recovery(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %4 = load i24, ptr %3, align 4
  %5 = and i24 %4, 112
  %6 = icmp eq i24 %5, 0
  %7 = select i1 %6, i32 24, i32 25
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %9 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %10 = getelementptr [126 x i32], ptr %9, i32 0, i32 %7
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #13, !srcloc !14
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #16, !srcloc !15
  %19 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 96
  store i32 0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 99
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 52
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 -1, i32 %24
  %27 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 100
  store i32 %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %29 = load i8, ptr %28, align 4
  %30 = and i8 %29, 31
  %31 = zext i8 %30 to i32
  %32 = shl nuw i32 1, %31
  %33 = and i32 %32, 12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %69

35:                                               ; preds = %2
  br i1 %1, label %36, label %39

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %38 = load i32, ptr %37, align 8
  br label %48

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 1
  %45 = lshr i32 %43, 2
  %46 = add nuw i32 %44, %45
  %47 = tail call i32 @llvm.umax.i32(i32 %41, i32 %46) #16
  store i32 %47, ptr %19, align 8
  br label %48

48:                                               ; preds = %39, %36
  %49 = phi i32 [ %38, %36 ], [ %43, %39 ]
  %50 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 97
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 40
  store i32 0, ptr %53, align 8
  %54 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 64
  store i32 0, ptr %54, align 4
  %55 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 68
  store i32 %49, ptr %55, align 4
  %56 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 69
  store i32 0, ptr %56, align 8
  %57 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 70
  store i32 0, ptr %57, align 4
  %58 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %59, align 64
  %61 = tail call i32 %60(ptr noundef %0) #16
  %62 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 56
  %64 = load i8, ptr %63, align 2
  %65 = and i8 %64, 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %48
  %68 = or i8 %64, 2
  store i8 %68, ptr %63, align 2
  br label %69

69:                                               ; preds = %67, %48, %2
  %70 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %71, i32 0, i32 2
  %73 = load ptr, ptr %72, align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  tail call void %73(ptr noundef %0, i8 noundef zeroext 3) #16
  br label %76

76:                                               ; preds = %75, %69
  %77 = load i8, ptr %28, align 4
  %78 = and i8 %77, -32
  %79 = or i8 %78, 3
  store i8 %79, ptr %28, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_synack_rtt_meas(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = alloca %struct.rate_sample, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #16
  %4 = icmp eq ptr %1, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.request_sock, ptr %1, i32 0, i32 3
  %7 = load i8, ptr %6, align 2
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tcp_request_sock, ptr %1, i32 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = tail call i64 @ktime_get() #16
  %15 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %14, i32 0) #17, !srcloc !17
  %16 = extractvalue { i64, i32 } %15, 0
  %17 = extractvalue { i64, i32 } %15, 1
  %18 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %14, i64 %16, i32 %17) #17, !srcloc !18
  %19 = extractvalue { i64, i32 } %18, 0
  %20 = lshr i64 %19, 9
  %21 = load i64, ptr %10, align 8
  %22 = sub i64 %20, %21
  %23 = tail call i64 @llvm.smax.i64(i64 %22, i64 0) #16
  %24 = trunc i64 %23 to i32
  br label %25

25:                                               ; preds = %13, %9, %5, %2
  %26 = phi i32 [ -1, %5 ], [ %24, %13 ], [ -1, %9 ], [ -1, %2 ]
  %27 = call fastcc zeroext i1 @tcp_ack_update_rtt(ptr noundef %0, i32 noundef 16, i32 noundef %26, i32 noundef -1, i32 noundef %26, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #16
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tcp_ack_update_rtt(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5) unnamed_addr #2 {
  %7 = icmp slt i32 %2, 0
  %8 = select i1 %7, i32 %3, i32 %2
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %40

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %12 = load i24, ptr %11, align 4
  %13 = and i24 %12, 1
  %14 = icmp eq i24 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  %19 = and i32 %1, 20
  %20 = icmp eq i32 %19, 0
  %21 = or i1 %20, %18
  br i1 %21, label %34, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  %24 = load i64, ptr %23, align 8
  %25 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %24, i32 0) #17, !srcloc !17
  %26 = extractvalue { i64, i32 } %25, 0
  %27 = extractvalue { i64, i32 } %25, 1
  %28 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %24, i64 %26, i32 %27) #17, !srcloc !18
  %29 = extractvalue { i64, i32 } %28, 0
  %30 = lshr i64 %29, 9
  %31 = trunc i64 %30 to i32
  %32 = sub i32 %31, %17
  %33 = icmp ult i32 %32, 2147483
  br i1 %33, label %36, label %34

34:                                               ; preds = %22, %15, %10
  %35 = getelementptr inbounds %struct.rate_sample, ptr %5, i32 0, i32 8
  store i32 %4, ptr %35, align 4
  br label %185

36:                                               ; preds = %22
  %37 = icmp eq i32 %17, %31
  %38 = mul nuw nsw i32 %32, 1000
  %39 = select i1 %37, i32 1000, i32 %38
  br label %40

40:                                               ; preds = %36, %6
  %41 = phi i32 [ %39, %36 ], [ %4, %6 ]
  %42 = phi i32 [ %39, %36 ], [ %8, %6 ]
  %43 = getelementptr inbounds %struct.rate_sample, ptr %5, i32 0, i32 8
  store i32 %41, ptr %43, align 4
  %44 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 88), align 16
  %45 = mul i32 %44, 100
  %46 = and i32 %1, 65536
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 50, i32 0, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = icmp ult i32 %50, %41
  br i1 %51, label %61, label %52

52:                                               ; preds = %48, %40
  %53 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 50
  %54 = load volatile i32, ptr @jiffies, align 64
  %55 = icmp eq i32 %41, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = tail call i32 @jiffies_to_usecs(i32 noundef 1) #16
  br label %58

58:                                               ; preds = %56, %52
  %59 = phi i32 [ %57, %56 ], [ %41, %52 ]
  %60 = tail call i32 @minmax_running_min(ptr noundef %53, i32 noundef %45, i32 noundef %54, i32 noundef %59) #16
  br label %61

61:                                               ; preds = %58, %48
  %62 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 45
  %63 = load i32, ptr %62, align 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %135, label %65

65:                                               ; preds = %61
  %66 = lshr i32 %63, 3
  %67 = sub nsw i32 %42, %66
  %68 = add i32 %67, %63
  %69 = icmp slt i32 %67, 0
  %70 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 46
  %71 = load i32, ptr %70, align 4
  %72 = lshr i32 %71, 2
  br i1 %69, label %73, label %79

73:                                               ; preds = %65
  %74 = add nsw i32 %72, %67
  %75 = sub nsw i32 0, %74
  %76 = icmp slt i32 %74, 0
  %77 = ashr i32 %75, 3
  %78 = select i1 %76, i32 %77, i32 %75
  br label %81

79:                                               ; preds = %65
  %80 = sub nsw i32 %67, %72
  br label %81

81:                                               ; preds = %79, %73
  %82 = phi i32 [ %80, %79 ], [ %78, %73 ]
  %83 = add i32 %82, %71
  store i32 %83, ptr %70, align 4
  %84 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 47
  %85 = load i32, ptr %84, align 8
  %86 = icmp ugt i32 %83, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  store i32 %83, ptr %84, align 8
  %88 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 48
  %89 = load i32, ptr %88, align 4
  %90 = icmp ugt i32 %83, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 %83, ptr %88, align 4
  br label %92

92:                                               ; preds = %91, %87, %81
  %93 = phi i32 [ %83, %87 ], [ %83, %91 ], [ %85, %81 ]
  %94 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 49
  %95 = load i32, ptr %94, align 8
  %96 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %97 = load i32, ptr %96, align 4
  %98 = sub i32 %95, %97
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %173

100:                                              ; preds = %92
  %101 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 48
  %102 = load i32, ptr %101, align 4
  %103 = icmp ugt i32 %102, %93
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = sub i32 %102, %93
  %106 = lshr i32 %105, 2
  %107 = sub i32 %102, %106
  store i32 %107, ptr %101, align 4
  br label %108

108:                                              ; preds = %104, %100
  %109 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %110 = load i32, ptr %109, align 4
  store i32 %110, ptr %94, align 8
  %111 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %112 = load volatile ptr, ptr %111, align 8
  %113 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 7
  %114 = load i32, ptr %113, align 8
  %115 = icmp eq ptr %112, null
  br i1 %115, label %128, label %116

116:                                              ; preds = %108
  %117 = getelementptr inbounds %struct.dst_entry, ptr %112, i32 0, i32 2
  %118 = load i32, ptr %117, align 4
  %119 = and i32 %118, -4
  %120 = inttoptr i32 %119 to ptr
  %121 = load i32, ptr %120, align 4
  %122 = and i32 %121, 8192
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %116
  %125 = getelementptr i32, ptr %120, i32 12
  %126 = load i32, ptr %125, align 4
  %127 = tail call i32 @__msecs_to_jiffies(i32 noundef %126) #16
  br label %128

128:                                              ; preds = %124, %116, %108
  %129 = phi i32 [ %114, %116 ], [ %114, %108 ], [ %127, %124 ]
  %130 = tail call i32 @jiffies_to_usecs(i32 noundef %129) #16
  store i32 %130, ptr %84, align 8
  %131 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 107
  %132 = load i8, ptr %131, align 4
  %133 = and i8 %132, 8
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %173, label %169

135:                                              ; preds = %61
  %136 = shl i32 %42, 3
  %137 = shl nuw i32 %42, 1
  %138 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 46
  store i32 %137, ptr %138, align 4
  %139 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %140 = load volatile ptr, ptr %139, align 8
  %141 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 7
  %142 = load i32, ptr %141, align 8
  %143 = icmp eq ptr %140, null
  br i1 %143, label %156, label %144

144:                                              ; preds = %135
  %145 = getelementptr inbounds %struct.dst_entry, ptr %140, i32 0, i32 2
  %146 = load i32, ptr %145, align 4
  %147 = and i32 %146, -4
  %148 = inttoptr i32 %147 to ptr
  %149 = load i32, ptr %148, align 4
  %150 = and i32 %149, 8192
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %144
  %153 = getelementptr i32, ptr %148, i32 12
  %154 = load i32, ptr %153, align 4
  %155 = tail call i32 @__msecs_to_jiffies(i32 noundef %154) #16
  br label %156

156:                                              ; preds = %152, %144, %135
  %157 = phi i32 [ %142, %144 ], [ %142, %135 ], [ %155, %152 ]
  %158 = tail call i32 @jiffies_to_usecs(i32 noundef %157) #16
  %159 = tail call i32 @llvm.umax.i32(i32 %137, i32 %158) #16
  %160 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 48
  store i32 %159, ptr %160, align 4
  %161 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 47
  store i32 %159, ptr %161, align 8
  %162 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %163 = load i32, ptr %162, align 4
  %164 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 49
  store i32 %163, ptr %164, align 8
  %165 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 107
  %166 = load i8, ptr %165, align 4
  %167 = and i8 %166, 8
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %156, %128
  %170 = phi i32 [ %68, %128 ], [ %136, %156 ]
  %171 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %172 = load volatile i8, ptr %171, align 2
  br label %173

173:                                              ; preds = %169, %156, %128, %92
  %174 = phi i32 [ %68, %92 ], [ %68, %128 ], [ %136, %156 ], [ %170, %169 ]
  %175 = icmp eq i32 %174, 0
  %176 = select i1 %175, i32 1, i32 %174
  store i32 %176, ptr %62, align 8
  %177 = lshr i32 %176, 3
  %178 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 48
  %179 = load i32, ptr %178, align 4
  %180 = add i32 %177, %179
  %181 = tail call i32 @__usecs_to_jiffies(i32 noundef %180) #16
  %182 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 6
  %183 = call i32 @llvm.umin.i32(i32 %181, i32 12000)
  store i32 %183, ptr %182, align 4
  %184 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 20
  store i8 0, ptr %184, align 1
  br label %185

185:                                              ; preds = %173, %34
  %186 = phi i1 [ false, %34 ], [ true, %173 ]
  ret i1 %186
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_rearm_rto(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 116
  %3 = load volatile ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %58

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 19
  br i1 %8, label %10, label %11

10:                                               ; preds = %5
  store i8 0, ptr %9, align 2
  br label %58

11:                                               ; preds = %5
  %12 = load i8, ptr %9, align 2
  %13 = icmp eq i8 %12, 6
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i8 %12, 5
  br i1 %17, label %18, label %40

18:                                               ; preds = %14, %11
  %19 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %20 = tail call ptr @rb_first(ptr noundef %19) #16
  %21 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 2
  %24 = load i64, ptr %23, align 8
  %25 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %24, i32 0) #17, !srcloc !17
  %26 = extractvalue { i64, i32 } %25, 0
  %27 = extractvalue { i64, i32 } %25, 1
  %28 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %24, i64 %26, i32 %27) #17, !srcloc !18
  %29 = tail call i32 @jiffies_to_usecs(i32 noundef %22) #16
  %30 = extractvalue { i64, i32 } %28, 0
  %31 = lshr i64 %30, 9
  %32 = zext i32 %29 to i64
  %33 = add nuw nsw i64 %31, %32
  %34 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  %35 = load i64, ptr %34, align 8
  %36 = sub i64 %33, %35
  %37 = trunc i64 %36 to i32
  %38 = tail call i32 @llvm.smax.i32(i32 %37, i32 1)
  %39 = tail call i32 @__usecs_to_jiffies(i32 noundef %38) #16
  br label %40

40:                                               ; preds = %18, %14
  %41 = phi i32 [ %16, %14 ], [ %39, %18 ]
  %42 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 42
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 43
  %45 = load i64, ptr %44, align 8
  %46 = sub i64 %43, %45
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = tail call i32 @nsecs_to_jiffies(i64 noundef %46) #16
  br label %50

50:                                               ; preds = %48, %40
  %51 = phi i32 [ %49, %48 ], [ 0, %40 ]
  %52 = add i32 %51, %41
  %53 = tail call i32 @llvm.umin.i32(i32 %52, i32 12000) #16
  store i8 1, ptr %9, align 2
  %54 = load volatile i32, ptr @jiffies, align 64
  %55 = add i32 %54, %53
  %56 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 3
  store i32 %55, ptr %56, align 8
  %57 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 4
  tail call void @sk_reset_timer(ptr noundef %0, ptr noundef %57, i32 noundef %55) #16
  br label %58

58:                                               ; preds = %50, %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @tcp_oow_rate_limited(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %21, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = getelementptr i8, ptr %12, i32 %15
  %17 = getelementptr inbounds %struct.tcphdr, ptr %16, i32 0, i32 4
  %18 = load i16, ptr %17, align 4
  %19 = and i16 %18, 512
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %47, label %21

21:                                               ; preds = %10, %4
  %22 = load i32, ptr %3, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %21
  %25 = load volatile i32, ptr @jiffies, align 64
  %26 = sub i32 %25, %22
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 93
  %30 = load i32, ptr %29, align 8
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %34 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr [126 x i32], ptr %35, i32 0, i32 %2
  %37 = ptrtoint ptr %36 to i32
  %38 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %39 = inttoptr i32 %38 to ptr
  %40 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %39) #13, !srcloc !14
  %41 = add i32 %40, %37
  %42 = inttoptr i32 %41 to ptr
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %33) #16, !srcloc !15
  br label %47

45:                                               ; preds = %28, %24, %21
  %46 = load volatile i32, ptr @jiffies, align 64
  store i32 %46, ptr %3, align 4
  br label %47

47:                                               ; preds = %45, %32, %10
  %48 = phi i1 [ false, %10 ], [ true, %32 ], [ false, %45 ]
  ret i1 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_parse_options(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr noundef writeonly %4) #2 {
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = getelementptr i8, ptr %7, i32 %10
  %12 = getelementptr inbounds %struct.tcphdr, ptr %11, i32 0, i32 4
  %13 = load i16, ptr %12, align 4
  %14 = lshr i16 %13, 2
  %15 = and i16 %14, 60
  %16 = getelementptr inbounds %struct.tcp_options_received, ptr %2, i32 0, i32 4
  %17 = load i24, ptr %16, align 4
  %18 = and i24 %17, -65538
  store i24 %18, ptr %16, align 4
  %19 = icmp ugt i16 %15, 20
  br i1 %19, label %20, label %206

20:                                               ; preds = %5
  %21 = zext i16 %15 to i32
  %22 = add nsw i32 %21, -20
  %23 = getelementptr %struct.tcphdr, ptr %11, i32 1
  %24 = icmp ne ptr %4, null
  %25 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %4, i32 0, i32 1
  %26 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %4, i32 0, i32 2
  %27 = ptrtoint ptr %11 to i32
  %28 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 13
  %29 = icmp ne i32 %3, 0
  %30 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 64
  %31 = getelementptr inbounds %struct.tcp_options_received, ptr %2, i32 0, i32 5
  %32 = icmp eq i32 %3, 0
  %33 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 66
  %34 = getelementptr inbounds %struct.tcp_options_received, ptr %2, i32 0, i32 2
  %35 = getelementptr inbounds %struct.tcp_options_received, ptr %2, i32 0, i32 3
  %36 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 65
  %37 = getelementptr inbounds %struct.tcp_options_received, ptr %2, i32 0, i32 6
  %38 = getelementptr inbounds %struct.tcp_options_received, ptr %2, i32 0, i32 7
  br label %39

39:                                               ; preds = %202, %20
  %40 = phi ptr [ %23, %20 ], [ %204, %202 ]
  %41 = phi i32 [ %22, %20 ], [ %203, %202 ]
  %42 = getelementptr i8, ptr %40, i32 1
  %43 = load i8, ptr %40, align 1
  switch i8 %43, label %46 [
    i8 0, label %206
    i8 1, label %44
  ]

44:                                               ; preds = %39
  %45 = add i32 %41, -1
  br label %202

46:                                               ; preds = %39
  %47 = icmp slt i32 %41, 2
  br i1 %47, label %206, label %48

48:                                               ; preds = %46
  %49 = getelementptr i8, ptr %40, i32 2
  %50 = load i8, ptr %42, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp ult i8 %50, 2
  %53 = icmp ult i32 %41, %51
  %54 = select i1 %52, i1 true, i1 %53
  br i1 %54, label %206, label %55

55:                                               ; preds = %48
  switch i8 %43, label %196 [
    i8 2, label %56
    i8 3, label %73
    i8 8, label %101
    i8 4, label %121
    i8 5, label %135
    i8 34, label %149
    i8 -2, label %168
  ]

56:                                               ; preds = %55
  %57 = icmp eq i8 %50, 4
  br i1 %57, label %58, label %199

58:                                               ; preds = %56
  %59 = load i16, ptr %12, align 4
  %60 = and i16 %59, 512
  %61 = icmp eq i16 %60, 0
  %62 = or i1 %29, %61
  br i1 %62, label %199, label %63

63:                                               ; preds = %58
  %64 = load i16, ptr %49, align 1
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %199, label %66

66:                                               ; preds = %63
  %67 = tail call i16 @llvm.bswap.i16(i16 %64) #16
  %68 = load i16, ptr %37, align 4
  %69 = icmp ne i16 %68, 0
  %70 = icmp ult i16 %68, %67
  %71 = select i1 %69, i1 %70, i1 false
  %72 = select i1 %71, i16 %68, i16 %67
  store i16 %72, ptr %38, align 2
  br label %199

73:                                               ; preds = %55
  %74 = icmp eq i8 %50, 3
  br i1 %74, label %75, label %199

75:                                               ; preds = %73
  %76 = load i16, ptr %12, align 4
  %77 = and i16 %76, 512
  %78 = icmp eq i16 %77, 0
  %79 = or i1 %29, %78
  br i1 %79, label %199, label %80

80:                                               ; preds = %75
  %81 = load i8, ptr %36, align 1
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %199, label %83

83:                                               ; preds = %80
  %84 = load i8, ptr %49, align 1
  %85 = load i24, ptr %16, align 4
  %86 = or i24 %85, 8
  store i24 %86, ptr %16, align 4
  %87 = zext i8 %84 to i32
  %88 = icmp ugt i8 %84, 14
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = tail call i32 @net_ratelimit() #16
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tcp_parse_options, i32 noundef %87, i32 noundef 14) #18
  br label %94

94:                                               ; preds = %92, %89, %83
  %95 = phi i8 [ %84, %83 ], [ 14, %92 ], [ 14, %89 ]
  %96 = load i24, ptr %16, align 4
  %97 = zext i8 %95 to i24
  %98 = shl nuw nsw i24 %97, 8
  %99 = and i24 %96, -3841
  %100 = or i24 %99, %98
  store i24 %100, ptr %16, align 4
  br label %199

101:                                              ; preds = %55
  %102 = icmp eq i8 %50, 10
  br i1 %102, label %103, label %199

103:                                              ; preds = %101
  br i1 %32, label %108, label %104

104:                                              ; preds = %103
  %105 = load i24, ptr %16, align 4
  %106 = and i24 %105, 2
  %107 = icmp eq i24 %106, 0
  br i1 %107, label %199, label %113

108:                                              ; preds = %103
  %109 = load i8, ptr %33, align 2
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %199, label %111

111:                                              ; preds = %108
  %112 = load i24, ptr %16, align 4
  br label %113

113:                                              ; preds = %111, %104
  %114 = phi i24 [ %112, %111 ], [ %105, %104 ]
  %115 = or i24 %114, 1
  store i24 %115, ptr %16, align 4
  %116 = load i32, ptr %49, align 1
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #16
  store i32 %117, ptr %34, align 4
  %118 = getelementptr i8, ptr %40, i32 6
  %119 = load i32, ptr %118, align 1
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #16
  store i32 %120, ptr %35, align 4
  br label %199

121:                                              ; preds = %55
  %122 = icmp eq i8 %50, 2
  br i1 %122, label %123, label %199

123:                                              ; preds = %121
  %124 = load i16, ptr %12, align 4
  %125 = and i16 %124, 512
  %126 = icmp eq i16 %125, 0
  %127 = or i1 %29, %126
  br i1 %127, label %199, label %128

128:                                              ; preds = %123
  %129 = load i8, ptr %30, align 4
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %199, label %131

131:                                              ; preds = %128
  %132 = load i24, ptr %16, align 4
  %133 = and i24 %132, -117
  %134 = or i24 %133, 16
  store i24 %134, ptr %16, align 4
  store i8 0, ptr %31, align 1
  br label %199

135:                                              ; preds = %55
  %136 = icmp ugt i8 %50, 9
  br i1 %136, label %137, label %199

137:                                              ; preds = %135
  %138 = add nuw nsw i32 %51, 6
  %139 = and i32 %138, 7
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %199

141:                                              ; preds = %137
  %142 = load i24, ptr %16, align 4
  %143 = and i24 %142, 112
  %144 = icmp eq i24 %143, 0
  br i1 %144, label %199, label %145

145:                                              ; preds = %141
  %146 = ptrtoint ptr %40 to i32
  %147 = sub i32 %146, %27
  %148 = trunc i32 %147 to i8
  store i8 %148, ptr %28, align 1
  br label %199

149:                                              ; preds = %55
  %150 = add nsw i32 %51, -2
  %151 = load i16, ptr %12, align 4
  %152 = and i16 %151, 512
  %153 = icmp ne i16 %152, 0
  %154 = and i1 %24, %153
  %155 = and i32 %51, 1
  %156 = icmp eq i32 %155, 0
  %157 = and i1 %156, %154
  br i1 %157, label %158, label %199

158:                                              ; preds = %149
  %159 = add nsw i32 %51, -6
  %160 = icmp ult i32 %159, 13
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %4, ptr align 1 %49, i32 %150, i1 false) #16
  br label %165

162:                                              ; preds = %158
  %163 = icmp ne i32 %150, 0
  %164 = sext i1 %163 to i32
  br label %165

165:                                              ; preds = %162, %161
  %166 = phi i32 [ %150, %161 ], [ %164, %162 ]
  %167 = trunc i32 %166 to i8
  store i8 %167, ptr %25, align 8
  store i8 0, ptr %26, align 1
  br label %199

168:                                              ; preds = %55
  %169 = icmp ugt i8 %50, 3
  br i1 %169, label %170, label %193

170:                                              ; preds = %168
  %171 = load i16, ptr %49, align 1
  %172 = icmp eq i16 %171, -30215
  br i1 %172, label %173, label %193

173:                                              ; preds = %170
  %174 = add nsw i32 %51, -4
  %175 = getelementptr i8, ptr %40, i32 4
  %176 = load i16, ptr %12, align 4
  %177 = and i16 %176, 512
  %178 = icmp ne i16 %177, 0
  %179 = and i1 %24, %178
  %180 = and i32 %51, 1
  %181 = icmp eq i32 %180, 0
  %182 = and i1 %181, %179
  br i1 %182, label %183, label %199

183:                                              ; preds = %173
  %184 = add nsw i32 %51, -8
  %185 = icmp ult i32 %184, 13
  br i1 %185, label %186, label %187

186:                                              ; preds = %183
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %4, ptr align 1 %175, i32 %174, i1 false) #16
  br label %190

187:                                              ; preds = %183
  %188 = icmp ne i32 %174, 0
  %189 = sext i1 %188 to i32
  br label %190

190:                                              ; preds = %187, %186
  %191 = phi i32 [ %174, %186 ], [ %189, %187 ]
  %192 = trunc i32 %191 to i8
  store i8 %192, ptr %25, align 8
  store i8 1, ptr %26, align 1
  br label %199

193:                                              ; preds = %170, %168
  %194 = load i24, ptr %16, align 4
  %195 = or i24 %194, 65536
  store i24 %195, ptr %16, align 4
  br label %199

196:                                              ; preds = %55
  %197 = load i24, ptr %16, align 4
  %198 = or i24 %197, 65536
  store i24 %198, ptr %16, align 4
  br label %199

199:                                              ; preds = %196, %193, %190, %173, %165, %149, %145, %141, %137, %135, %131, %128, %123, %121, %113, %108, %104, %101, %94, %80, %75, %73, %66, %63, %58, %56
  %200 = getelementptr i8, ptr %40, i32 %51
  %201 = sub nsw i32 %41, %51
  br label %202

202:                                              ; preds = %199, %44
  %203 = phi i32 [ %201, %199 ], [ %45, %44 ]
  %204 = phi ptr [ %200, %199 ], [ %42, %44 ]
  %205 = icmp sgt i32 %203, 0
  br i1 %205, label %39, label %206

206:                                              ; preds = %202, %48, %46, %39, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_reset(ptr noundef %0, ptr nocapture readnone %1) local_unnamed_addr #2 {
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tcp_receive_reset, i32 0, i32 1), align 4
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
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  %17 = tail call i32 @__traceiter_tcp_receive_reset(ptr noundef null, ptr noundef %0) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  br label %18

18:                                               ; preds = %16, %5, %2
  %19 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %20 = load volatile i8, ptr %19, align 2
  switch i8 %20, label %22 [
    i8 2, label %23
    i8 8, label %21
    i8 7, label %31
  ]

21:                                               ; preds = %18
  br label %23

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %22, %21, %18
  %24 = phi i32 [ 32, %21 ], [ 104, %22 ], [ 111, %18 ]
  %25 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  store i32 %24, ptr %25, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !21
  tail call void @tcp_write_queue_purge(ptr noundef %0) #16
  tail call void @tcp_done(ptr noundef %0) #16
  %26 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  tail call void @sk_error_report(ptr noundef %0) #16
  br label %31

31:                                               ; preds = %30, %23, %18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_write_queue_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_fin(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24
  %3 = load i8, ptr %2, align 4
  %4 = or i8 %3, 1
  store i8 %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 66
  %6 = load i8, ptr %5, align 2
  %7 = or i8 %6, 1
  store i8 %7, ptr %5, align 2
  %8 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, 2
  store i32 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %12 = load volatile i8, ptr %11, align 2
  switch i8 %12, label %17 [
    i8 3, label %13
    i8 1, label %13
    i8 8, label %21
    i8 11, label %21
    i8 9, label %21
    i8 4, label %15
    i8 5, label %16
  ]

13:                                               ; preds = %1, %1
  tail call void @tcp_set_state(ptr noundef %0, i32 noundef 8) #16
  %14 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 2
  store i8 3, ptr %14, align 2
  br label %21

15:                                               ; preds = %1
  tail call void @tcp_send_ack(ptr noundef %0) #16
  tail call void @tcp_set_state(ptr noundef %0, i32 noundef 11) #16
  br label %21

16:                                               ; preds = %1
  tail call void @tcp_send_ack(ptr noundef %0) #16
  tail call void @tcp_time_wait(ptr noundef %0, i32 noundef 6, i32 noundef 0) #16
  br label %21

17:                                               ; preds = %1
  %18 = load volatile i8, ptr %11, align 2
  %19 = zext i8 %18 to i32
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tcp_fin, i32 noundef %19) #18
  br label %21

21:                                               ; preds = %17, %16, %15, %13, %1, %1, %1
  %22 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 89
  %23 = tail call i32 @skb_rbtree_purge(ptr noundef %22) #16
  %24 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %25 = load i24, ptr %24, align 4
  %26 = and i24 %25, 112
  %27 = icmp eq i24 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = and i24 %25, -5
  store i24 %29, ptr %24, align 4
  %30 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 5
  store i8 0, ptr %30, align 1
  br label %31

31:                                               ; preds = %28, %21
  %32 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.proto, ptr %33, i32 0, i32 30
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %56, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  %41 = load i32, ptr %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %51, label %43, !prof !11

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %47 = load volatile i32, ptr %46, align 4
  %48 = add i32 %45, %47
  %49 = sub i32 %41, %48
  %50 = tail call i32 @llvm.smax.i32(i32 %49, i32 0) #16
  br label %51

51:                                               ; preds = %43, %37
  %52 = phi i32 [ %50, %43 ], [ 0, %37 ]
  %53 = sub i32 %39, %52
  %54 = icmp sgt i32 %53, 4095
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  tail call void @__sk_mem_reclaim(ptr noundef %0, i32 noundef %53) #16
  br label %56

56:                                               ; preds = %55, %51, %31
  %57 = load volatile i32, ptr %8, align 4
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 75
  %62 = load ptr, ptr %61, align 4
  tail call void %62(ptr noundef %0) #16
  %63 = load i8, ptr %5, align 2
  %64 = icmp eq i8 %63, 3
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load volatile i8, ptr %11, align 2
  %67 = icmp eq i8 %66, 7
  br i1 %67, label %68, label %76

68:                                               ; preds = %65, %60
  %69 = load volatile i32, ptr %8, align 4
  %70 = and i32 %69, 65536
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %84, label %72

72:                                               ; preds = %68
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %73 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  %74 = load volatile ptr, ptr %73, align 4
  %75 = tail call i32 @sock_wake_async(ptr noundef %74, i32 noundef 1, i32 noundef 6) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %84

76:                                               ; preds = %65
  %77 = load volatile i32, ptr %8, align 4
  %78 = and i32 %77, 65536
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %81 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  %82 = load volatile ptr, ptr %81, align 4
  %83 = tail call i32 @sock_wake_async(ptr noundef %82, i32 noundef 1, i32 noundef 1) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %84

84:                                               ; preds = %80, %76, %72, %68, %56
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_set_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_send_ack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_time_wait(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_rbtree_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_send_rcvq(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 -12, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  store i8 0, ptr %5, align 1, !annotation !24
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %70, label %7

7:                                                ; preds = %3
  %8 = icmp ugt i32 %2, 4096
  br i1 %8, label %9, label %15

9:                                                ; preds = %7
  %10 = lshr i32 %2, 12
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 17)
  %12 = shl nuw nsw i32 %11, 12
  %13 = and i32 %2, 4095
  %14 = or i32 %12, %13
  br label %15

15:                                               ; preds = %9, %7
  %16 = phi i32 [ %12, %9 ], [ 0, %7 ]
  %17 = phi i32 [ %14, %9 ], [ %2, %7 ]
  %18 = sub i32 %17, %16
  %19 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 41
  %20 = load i32, ptr %19, align 8
  %21 = call ptr @alloc_skb_with_frags(i32 noundef %18, i32 noundef %16, i32 noundef 3, ptr noundef nonnull %4, i32 noundef %20) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %68, label %23

23:                                               ; preds = %15
  %24 = call ptr @skb_put(ptr noundef nonnull %21, i32 noundef %18) #16
  %25 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 6
  store i32 %16, ptr %25, align 4
  %26 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 5
  store i32 %17, ptr %26, align 8
  %27 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 18
  %28 = load i32, ptr %27, align 8
  %29 = call fastcc i32 @tcp_try_rmem_schedule(ptr noundef %0, ptr noundef nonnull %21, i32 noundef %28)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %23
  %32 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %33 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %34 = getelementptr [126 x i32], ptr %33, i32 0, i32 117
  %35 = ptrtoint ptr %34 to i32
  %36 = call i32 @llvm.read_register.i32(metadata !0) #16
  %37 = inttoptr i32 %36 to ptr
  %38 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %37) #13, !srcloc !14
  %39 = add i32 %38, %35
  %40 = inttoptr i32 %39 to ptr
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %32) #16, !srcloc !15
  br label %67

43:                                               ; preds = %23
  %44 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %45 = call i32 @skb_copy_datagram_from_iter(ptr noundef nonnull %21, i32 noundef 0, ptr noundef %44, i32 noundef %17) #16
  store i32 %45, ptr %4, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %49 = load i32, ptr %48, align 8
  %50 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3
  store i32 %49, ptr %50, align 8
  %51 = add i32 %49, %17
  %52 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3, i32 4
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, -1
  %56 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3, i32 16
  store i32 %55, ptr %56, align 8
  %57 = call fastcc i32 @tcp_queue_rcv(ptr noundef %0, ptr noundef nonnull %21, ptr noundef nonnull %5)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %47
  %60 = load i8, ptr %5, align 1, !range !25
  %61 = icmp ne i8 %60, 0
  %62 = load i1, ptr @tcp_send_rcvq.__already_done, align 1
  %63 = xor i1 %62, true
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %65, label %66, !prof !16

65:                                               ; preds = %59
  store i1 true, ptr @tcp_send_rcvq.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4964, i32 noundef 9, ptr noundef null) #16
  br label %66

66:                                               ; preds = %65, %59
  call void @__kfree_skb(ptr noundef nonnull %21) #16
  br label %70

67:                                               ; preds = %43, %31
  call void @kfree_skb_reason(ptr noundef nonnull %21, i32 noundef 0) #16
  br label %68

68:                                               ; preds = %67, %15
  %69 = load i32, ptr %4, align 4
  br label %70

70:                                               ; preds = %68, %66, %47, %3
  %71 = phi i32 [ %69, %68 ], [ 0, %3 ], [ %17, %66 ], [ %17, %47 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_skb_with_frags(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tcp_try_rmem_schedule(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %5 = load volatile i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 15
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %5, %7
  br i1 %8, label %27, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.proto, ptr %11, i32 0, i32 30
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %258, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %17 = load i32, ptr %16, align 4
  %18 = icmp slt i32 %17, %2
  br i1 %18, label %19, label %258

19:                                               ; preds = %15
  %20 = tail call i32 @__sk_mem_schedule(ptr noundef %0, i32 noundef %2, i32 noundef 1) #16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %258

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %24 = load i8, ptr %23, align 2
  %25 = and i8 %24, 64
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %258

27:                                               ; preds = %22, %3
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %29 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %30 = getelementptr [126 x i32], ptr %29, i32 0, i32 5
  %31 = ptrtoint ptr %30 to i32
  %32 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %33 = inttoptr i32 %32 to ptr
  %34 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %33) #13, !srcloc !14
  %35 = add i32 %34, %31
  %36 = inttoptr i32 %35 to ptr
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %36, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %28) #16, !srcloc !15
  %39 = load volatile i32, ptr %4, align 4
  %40 = load i32, ptr %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %80, label %42

42:                                               ; preds = %27
  %43 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 1
  store i8 0, ptr %43, align 1
  %44 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 97, i32 2), align 8
  %45 = icmp slt i32 %40, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 43
  %48 = load i8, ptr %47, align 8
  %49 = and i8 %48, 32
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %46
  %52 = load volatile i32, ptr @tcp_memory_pressure, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.proto, ptr %56, i32 0, i32 30
  %58 = load ptr, ptr %57, align 4
  %59 = load volatile i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.proto, ptr %56, i32 0, i32 33
  %61 = load ptr, ptr %60, align 4
  %62 = load i32, ptr %61, align 4
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load volatile i32, ptr %4, align 4
  %66 = tail call i32 @llvm.smin.i32(i32 %65, i32 %44) #16
  store volatile i32 %66, ptr %6, align 4
  br label %67

67:                                               ; preds = %64, %54, %51, %46, %42
  %68 = phi i32 [ %66, %64 ], [ %40, %54 ], [ %40, %51 ], [ %40, %46 ], [ %40, %42 ]
  %69 = load volatile i32, ptr %4, align 4
  %70 = icmp sgt i32 %69, %68
  br i1 %70, label %71, label %113

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 29
  %73 = load i32, ptr %72, align 8
  %74 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 32
  %75 = load i16, ptr %74, align 8
  %76 = zext i16 %75 to i32
  %77 = shl nuw nsw i32 %76, 1
  %78 = tail call i32 @llvm.umin.i32(i32 %73, i32 %77) #16
  %79 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 30
  store i32 %78, ptr %79, align 4
  br label %113

80:                                               ; preds = %27
  %81 = load volatile i32, ptr @tcp_memory_pressure, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %113, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  %85 = load i32, ptr %84, align 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %94, label %87, !prof !11

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %89 = load i32, ptr %88, align 4
  %90 = load volatile i32, ptr %4, align 4
  %91 = add i32 %89, %90
  %92 = sub i32 %85, %91
  %93 = tail call i32 @llvm.smax.i32(i32 %92, i32 0) #16
  br label %94

94:                                               ; preds = %87, %83
  %95 = phi i32 [ %93, %87 ], [ 0, %83 ]
  %96 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 30
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 32
  %99 = load i16, ptr %98, align 8
  %100 = zext i16 %99 to i32
  %101 = shl nuw nsw i32 %100, 2
  %102 = tail call i32 @llvm.umin.i32(i32 %97, i32 %101) #16
  store i32 %102, ptr %96, align 4
  %103 = icmp eq i32 %95, 0
  br i1 %103, label %113, label %104

104:                                              ; preds = %94
  %105 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 77), align 4
  %106 = icmp slt i32 %105, 1
  %107 = sub i32 0, %105
  %108 = lshr i32 %95, %107
  %109 = lshr i32 %95, %105
  %110 = sub nsw i32 %95, %109
  %111 = select i1 %106, i32 %108, i32 %110
  %112 = tail call i32 @llvm.umax.i32(i32 %102, i32 %111) #16
  store i32 %112, ptr %96, align 4
  br label %113

113:                                              ; preds = %104, %94, %80, %71, %67
  %114 = phi i32 [ %40, %104 ], [ %40, %94 ], [ %68, %71 ], [ %68, %67 ], [ %40, %80 ]
  %115 = load volatile i32, ptr %4, align 4
  %116 = icmp sgt i32 %115, %114
  br i1 %116, label %117, label %237

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 89
  %119 = tail call ptr @rb_first(ptr noundef %118) #16
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %165, %117
  %122 = tail call ptr @rb_last(ptr noundef %118) #16
  %123 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 90
  store ptr %122, ptr %123, align 4
  br label %182

124:                                              ; preds = %165, %117
  %125 = phi i32 [ %166, %165 ], [ 0, %117 ]
  %126 = phi ptr [ %153, %165 ], [ %119, %117 ]
  %127 = getelementptr inbounds %struct.sk_buff, ptr %126, i32 0, i32 3
  %128 = load i32, ptr %127, align 8
  %129 = getelementptr inbounds %struct.sk_buff, ptr %126, i32 0, i32 3, i32 4
  %130 = load i32, ptr %129, align 4
  %131 = getelementptr inbounds %struct.sk_buff, ptr %126, i32 0, i32 18
  %132 = load i32, ptr %131, align 8
  %133 = tail call ptr @rb_next(ptr noundef nonnull %126) #16
  %134 = icmp eq ptr %133, null
  br i1 %134, label %149, label %135

135:                                              ; preds = %175, %124
  %136 = phi ptr [ %180, %175 ], [ %133, %124 ]
  %137 = phi i32 [ %171, %175 ], [ %132, %124 ]
  %138 = phi i32 [ %176, %175 ], [ %128, %124 ]
  %139 = phi i32 [ %179, %175 ], [ %130, %124 ]
  %140 = getelementptr inbounds %struct.sk_buff, ptr %136, i32 0, i32 3
  %141 = load i32, ptr %140, align 8
  %142 = sub i32 %139, %141
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %135
  %145 = getelementptr inbounds %struct.sk_buff, ptr %136, i32 0, i32 3, i32 4
  %146 = load i32, ptr %145, align 4
  %147 = sub i32 %146, %138
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %168

149:                                              ; preds = %175, %144, %135, %124
  %150 = phi i32 [ %130, %124 ], [ %139, %144 ], [ %139, %135 ], [ %179, %175 ]
  %151 = phi i32 [ %128, %124 ], [ %138, %144 ], [ %138, %135 ], [ %176, %175 ]
  %152 = phi i32 [ %132, %124 ], [ %137, %144 ], [ %137, %135 ], [ %171, %175 ]
  %153 = phi ptr [ null, %124 ], [ %136, %144 ], [ %136, %135 ], [ null, %175 ]
  %154 = load i32, ptr %131, align 8
  %155 = icmp ne i32 %152, %154
  %156 = sub i32 %150, %151
  %157 = icmp ugt i32 %156, 3839
  %158 = select i1 %155, i1 true, i1 %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %149
  tail call fastcc void @tcp_collapse(ptr noundef %0, ptr noundef null, ptr noundef %118, ptr noundef nonnull %126, ptr noundef %153, i32 noundef %151, i32 noundef %150) #16
  br label %165

160:                                              ; preds = %149
  %161 = add i32 %152, %125
  %162 = load i32, ptr %6, align 4
  %163 = ashr i32 %162, 3
  %164 = icmp ugt i32 %161, %163
  br i1 %164, label %182, label %165

165:                                              ; preds = %160, %159
  %166 = phi i32 [ %125, %159 ], [ %161, %160 ]
  %167 = icmp eq ptr %153, null
  br i1 %167, label %121, label %124

168:                                              ; preds = %144
  %169 = getelementptr inbounds %struct.sk_buff, ptr %136, i32 0, i32 18
  %170 = load i32, ptr %169, align 8
  %171 = add i32 %170, %137
  %172 = sub i32 %141, %138
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %175, !prof !16

174:                                              ; preds = %168
  br label %175

175:                                              ; preds = %174, %168
  %176 = phi i32 [ %141, %174 ], [ %138, %168 ]
  %177 = sub i32 %139, %146
  %178 = icmp slt i32 %177, 0
  %179 = select i1 %178, i32 %146, i32 %139
  %180 = tail call ptr @rb_next(ptr noundef nonnull %136) #16
  %181 = icmp eq ptr %180, null
  br i1 %181, label %149, label %135

182:                                              ; preds = %160, %121
  %183 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  %184 = load ptr, ptr %183, align 4
  %185 = icmp eq ptr %184, %183
  br i1 %185, label %191, label %186

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 8
  %188 = load i32, ptr %187, align 4
  %189 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %190 = load i32, ptr %189, align 8
  tail call fastcc void @tcp_collapse(ptr noundef %0, ptr noundef %183, ptr noundef null, ptr noundef %184, ptr noundef null, i32 noundef %188, i32 noundef %190) #16
  br label %191

191:                                              ; preds = %186, %182
  %192 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %193 = load ptr, ptr %192, align 8
  %194 = getelementptr inbounds %struct.proto, ptr %193, i32 0, i32 30
  %195 = load ptr, ptr %194, align 4
  %196 = icmp eq ptr %195, null
  br i1 %196, label %215, label %197

197:                                              ; preds = %191
  %198 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %199 = load i32, ptr %198, align 4
  %200 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  %201 = load i32, ptr %200, align 8
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %210, label %203, !prof !11

203:                                              ; preds = %197
  %204 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %205 = load i32, ptr %204, align 4
  %206 = load volatile i32, ptr %4, align 4
  %207 = add i32 %205, %206
  %208 = sub i32 %201, %207
  %209 = tail call i32 @llvm.smax.i32(i32 %208, i32 0) #16
  br label %210

210:                                              ; preds = %203, %197
  %211 = phi i32 [ %209, %203 ], [ 0, %197 ]
  %212 = sub i32 %199, %211
  %213 = icmp sgt i32 %212, 4095
  br i1 %213, label %214, label %215

214:                                              ; preds = %210
  tail call void @__sk_mem_reclaim(ptr noundef %0, i32 noundef %212) #16
  br label %215

215:                                              ; preds = %214, %210, %191
  %216 = load volatile i32, ptr %4, align 4
  %217 = load i32, ptr %6, align 4
  %218 = icmp sgt i32 %216, %217
  br i1 %218, label %219, label %237

219:                                              ; preds = %215
  %220 = tail call fastcc zeroext i1 @tcp_prune_ofo_queue(ptr noundef %0) #16
  %221 = load volatile i32, ptr %4, align 4
  %222 = load i32, ptr %6, align 4
  %223 = icmp sgt i32 %221, %222
  br i1 %223, label %224, label %237

224:                                              ; preds = %219
  %225 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %226 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %227 = getelementptr [126 x i32], ptr %226, i32 0, i32 6
  %228 = ptrtoint ptr %227 to i32
  %229 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %230 = inttoptr i32 %229 to ptr
  %231 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %230) #13, !srcloc !14
  %232 = add i32 %231, %228
  %233 = inttoptr i32 %232 to ptr
  %234 = load i32, ptr %233, align 4
  %235 = add i32 %234, 1
  store i32 %235, ptr %233, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %225) #16, !srcloc !15
  %236 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 3
  store i32 0, ptr %236, align 4
  br label %258

237:                                              ; preds = %219, %215, %113
  %238 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %239 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %240 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  br label %241

241:                                              ; preds = %256, %237
  %242 = load ptr, ptr %240, align 8
  %243 = getelementptr inbounds %struct.proto, ptr %242, i32 0, i32 30
  %244 = load ptr, ptr %243, align 4
  %245 = icmp eq ptr %244, null
  br i1 %245, label %258, label %246

246:                                              ; preds = %241
  %247 = load i32, ptr %238, align 4
  %248 = icmp slt i32 %247, %2
  br i1 %248, label %249, label %258

249:                                              ; preds = %246
  %250 = tail call i32 @__sk_mem_schedule(ptr noundef %0, i32 noundef %2, i32 noundef 1) #16
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %249
  %253 = load i8, ptr %239, align 2
  %254 = and i8 %253, 64
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %252
  %257 = tail call fastcc zeroext i1 @tcp_prune_ofo_queue(ptr noundef %0)
  br i1 %257, label %241, label %258

258:                                              ; preds = %256, %252, %249, %246, %241, %224, %22, %19, %15, %9
  %259 = phi i32 [ 0, %22 ], [ -1, %224 ], [ 0, %9 ], [ 0, %19 ], [ 0, %15 ], [ 0, %246 ], [ 0, %249 ], [ 0, %241 ], [ 0, %252 ], [ -1, %256 ]
  ret i32 %259
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_from_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tcp_queue_rcv(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  %5 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 1
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %4
  %8 = icmp eq ptr %6, null
  %9 = or i1 %7, %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call fastcc zeroext i1 @tcp_try_coalesce(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2)
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi i1 [ false, %3 ], [ %11, %10 ]
  %14 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %17 = load i32, ptr %16, align 8
  %18 = sub i32 %15, %17
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 4
  %21 = load i64, ptr %20, align 8
  %22 = add i64 %21, %19
  store i64 %22, ptr %20, align 8
  store volatile i32 %15, ptr %16, align 8
  br i1 %13, label %54, label %23

23:                                               ; preds = %12
  %24 = load ptr, ptr %5, align 4
  store volatile ptr %4, ptr %1, align 8
  %25 = getelementptr inbounds %struct.anon.43, ptr %1, i32 0, i32 1
  store volatile ptr %24, ptr %25, align 4
  store volatile ptr %1, ptr %5, align 4
  store volatile ptr %1, ptr %24, align 4
  %26 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 1
  store volatile i32 %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  tail call void %30(ptr noundef %1) #16
  br label %38

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37, !prof !11

37:                                               ; preds = %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #16, !srcloc !26
  unreachable

38:                                               ; preds = %33, %32
  %39 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  store ptr %0, ptr %39, align 4
  store ptr @sock_rfree, ptr %29, align 4
  %40 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %41 = load i32, ptr %40, align 8
  %42 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %42) #16, !srcloc !27
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %42, ptr %42, i32 %41, ptr elementtype(i32) %42) #16, !srcloc !28
  %44 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.proto, ptr %45, i32 0, i32 30
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %38
  %50 = load i32, ptr %40, align 8
  %51 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %52 = load i32, ptr %51, align 4
  %53 = sub i32 %52, %50
  store i32 %53, ptr %51, align 4
  br label %54

54:                                               ; preds = %49, %38, %12
  %55 = zext i1 %13 to i32
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfree_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_data_ready(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %5 = load volatile i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 8
  %7 = load volatile i32, ptr %6, align 4
  %8 = sub i32 %5, %7
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %35, label %10

10:                                               ; preds = %1
  %11 = icmp slt i32 %8, %3
  br i1 %11, label %12, label %40

12:                                               ; preds = %10
  %13 = load volatile i32, ptr @tcp_memory_pressure, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 15
  %17 = load volatile i32, ptr %16, align 4
  %18 = ashr i32 %17, 3
  %19 = sub i32 %17, %18
  %20 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %21 = load volatile i32, ptr %20, align 4
  %22 = icmp sgt i32 %21, %19
  br i1 %22, label %40, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 9
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 79
  %27 = load i32, ptr %26, align 8
  %28 = sub i32 %25, %5
  %29 = add i32 %28, %27
  %30 = tail call i32 @llvm.smax.i32(i32 %29, i32 0) #16
  %31 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 8
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = icmp ugt i32 %30, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %23, %1
  %36 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35, %23, %15, %12, %10
  %41 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 76
  %42 = load ptr, ptr %41, align 8
  tail call void %42(ptr noundef %0) #16
  br label %43

43:                                               ; preds = %40, %35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_rbtree_insert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %7 = load i32, ptr %6, align 8
  br label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %3, %5 ], [ %17, %8 ]
  %10 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 8
  %12 = sub i32 %7, %11
  %13 = icmp slt i32 %12, 0
  %14 = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 2
  %15 = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 1
  %16 = select i1 %13, ptr %14, ptr %15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8

19:                                               ; preds = %8
  %20 = ptrtoint ptr %9 to i32
  br label %21

21:                                               ; preds = %19, %2
  %22 = phi i32 [ %20, %19 ], [ 0, %2 ]
  %23 = phi ptr [ %16, %19 ], [ %0, %2 ]
  store i32 %22, ptr %1, align 4
  %24 = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 1
  store ptr null, ptr %24, align 4
  %25 = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 2
  store ptr null, ptr %25, align 4
  store ptr %1, ptr %23, align 4
  tail call void @rb_insert_color(ptr noundef %1, ptr noundef %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_rcv_established(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tcp_probe, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = tail call ptr @llvm.thread.pointer() #16
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
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  %22 = tail call i32 @__traceiter_tcp_probe(ptr noundef null, ptr noundef %0, ptr noundef %1) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !30
  br label %23

23:                                               ; preds = %21, %10, %2
  tail call void @tcp_mstamp_refresh(ptr noundef %0) #16
  %24 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 1
  %25 = load volatile ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %32, !prof !16

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 11
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  tail call void %31(ptr noundef %0, ptr noundef %1) #16
  br label %32

32:                                               ; preds = %27, %23
  %33 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %34 = load i24, ptr %33, align 4
  %35 = and i24 %34, -2
  store i24 %35, ptr %33, align 4
  %36 = getelementptr [5 x i32], ptr %5, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, -2064
  %39 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %38, %40
  %42 = trunc i32 %37 to i16
  br i1 %41, label %43, label %209

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %45 = load i32, ptr %44, align 8
  %46 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %47 = load i32, ptr %46, align 8
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %209

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  %53 = load i32, ptr %52, align 8
  %54 = sub i32 %51, %53
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %209, label %56

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 1
  %58 = load i16, ptr %57, align 8
  %59 = zext i16 %58 to i32
  %60 = icmp eq i16 %58, 32
  br i1 %60, label %61, label %88

61:                                               ; preds = %56
  %62 = getelementptr %struct.tcphdr, ptr %5, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 168296705
  br i1 %64, label %65, label %209

65:                                               ; preds = %61
  %66 = or i24 %34, 1
  store i24 %66, ptr %33, align 4
  %67 = getelementptr %struct.tcphdr, ptr %5, i32 1, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #16
  %70 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 2
  store i32 %69, ptr %70, align 4
  %71 = getelementptr %struct.tcphdr, ptr %5, i32 1, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %65
  %75 = tail call i32 @llvm.bswap.i32(i32 %72) #16
  %76 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 22
  %77 = load i32, ptr %76, align 4
  %78 = sub i32 %75, %77
  br label %79

79:                                               ; preds = %74, %65
  %80 = phi i32 [ %78, %74 ], [ 0, %65 ]
  %81 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 3
  store i32 %80, ptr %81, align 4
  %82 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = sub i32 %69, %83
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i16, ptr %36, align 4
  br label %209

88:                                               ; preds = %79, %56
  %89 = icmp ugt i32 %7, %59
  br i1 %89, label %121, label %90

90:                                               ; preds = %88
  %91 = icmp eq i32 %7, %59
  br i1 %91, label %92, label %109

92:                                               ; preds = %90
  br i1 %60, label %93, label %104

93:                                               ; preds = %92
  %94 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 9
  %95 = load i32, ptr %94, align 8
  %96 = icmp eq i32 %45, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61
  %99 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 2
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 1
  store i32 %100, ptr %101, align 4
  %102 = tail call i64 @ktime_get_seconds() #16
  %103 = trunc i64 %102 to i32
  store i32 %103, ptr %98, align 4
  br label %104

104:                                              ; preds = %97, %93, %92
  %105 = tail call fastcc i32 @tcp_ack(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  tail call void @__kfree_skb(ptr noundef %1) #16
  tail call fastcc void @tcp_data_snd_check(ptr noundef %0)
  %106 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 3
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 110
  store i32 %107, ptr %108, align 4
  br label %346

109:                                              ; preds = %90
  %110 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %111 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %112 = getelementptr [16 x i32], ptr %111, i32 0, i32 13
  %113 = ptrtoint ptr %112 to i32
  %114 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %115 = inttoptr i32 %114 to ptr
  %116 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %115) #13, !srcloc !14
  %117 = add i32 %116, %113
  %118 = inttoptr i32 %117 to ptr
  %119 = load i32, ptr %118, align 4
  %120 = add i32 %119, 1
  store i32 %120, ptr %118, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %110) #16, !srcloc !15
  br label %336

121:                                              ; preds = %88
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #16
  store i8 0, ptr %3, align 1
  %122 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %123 = load i16, ptr %122, align 8
  %124 = lshr i16 %123, 5
  %125 = and i16 %124, 3
  %126 = icmp ne i16 %125, 1
  %127 = icmp sgt i16 %123, -1
  %128 = select i1 %126, i1 %127, i1 false
  br i1 %128, label %129, label %146

129:                                              ; preds = %121
  %130 = icmp eq i16 %125, 3
  br i1 %130, label %131, label %143

131:                                              ; preds = %129
  %132 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %133 = load i16, ptr %132, align 4
  %134 = zext i16 %133 to i32
  %135 = load ptr, ptr %4, align 4
  %136 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %137 = load ptr, ptr %136, align 8
  %138 = ptrtoint ptr %135 to i32
  %139 = ptrtoint ptr %137 to i32
  %140 = sub i32 %134, %138
  %141 = add i32 %140, %139
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %131, %129
  %144 = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %1) #16
  %145 = icmp eq i16 %144, 0
  br i1 %145, label %146, label %208

146:                                              ; preds = %143, %131, %121
  %147 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %148 = load i32, ptr %147, align 8
  %149 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %150 = load i32, ptr %149, align 4
  %151 = icmp sgt i32 %148, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #16
  br label %248

153:                                              ; preds = %146
  br i1 %60, label %154, label %166

154:                                              ; preds = %153
  %155 = load i32, ptr %46, align 8
  %156 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 9
  %157 = load i32, ptr %156, align 8
  %158 = icmp eq i32 %155, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61
  %161 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 2
  %162 = load i32, ptr %161, align 4
  %163 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 1
  store i32 %162, ptr %163, align 4
  %164 = tail call i64 @ktime_get_seconds() #16
  %165 = trunc i64 %164 to i32
  store i32 %165, ptr %160, align 4
  br label %166

166:                                              ; preds = %159, %154, %153
  tail call fastcc void @tcp_rcv_rtt_measure_ts(ptr noundef %0, ptr noundef %1)
  %167 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %168 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %169 = getelementptr [126 x i32], ptr %168, i32 0, i32 21
  %170 = ptrtoint ptr %169 to i32
  %171 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %172 = inttoptr i32 %171 to ptr
  %173 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %172) #13, !srcloc !14
  %174 = add i32 %173, %170
  %175 = inttoptr i32 %174 to ptr
  %176 = load i32, ptr %175, align 4
  %177 = add i32 %176, 1
  store i32 %177, ptr %175, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %167) #16, !srcloc !15
  %178 = load i32, ptr %6, align 8
  %179 = sub i32 %178, %59
  store i32 %179, ptr %6, align 8
  %180 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %181 = load i32, ptr %180, align 4
  %182 = icmp ult i32 %179, %181
  br i1 %182, label %183, label %184, !prof !16

183:                                              ; preds = %166
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #16, !srcloc !31
  unreachable

184:                                              ; preds = %166
  %185 = load ptr, ptr %4, align 4
  %186 = getelementptr i8, ptr %185, i32 %59
  store ptr %186, ptr %4, align 4
  %187 = call fastcc i32 @tcp_queue_rcv(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  call fastcc void @tcp_event_data_recv(ptr noundef %0, ptr noundef %1)
  %188 = load i32, ptr %52, align 8
  %189 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %190 = load i32, ptr %189, align 4
  %191 = icmp eq i32 %188, %190
  br i1 %191, label %198, label %192

192:                                              ; preds = %184
  %193 = call fastcc i32 @tcp_ack(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  call fastcc void @tcp_data_snd_check(ptr noundef %0)
  %194 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24
  %195 = load i8, ptr %194, align 4
  %196 = and i8 %195, 1
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %202, label %201

198:                                              ; preds = %184
  %199 = load i32, ptr %44, align 8
  %200 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 25
  store i32 %199, ptr %200, align 8
  br label %201

201:                                              ; preds = %198, %192
  call fastcc void @__tcp_ack_snd_check(ptr noundef %0, i32 noundef 0)
  br label %202

202:                                              ; preds = %201, %192
  %203 = icmp eq i32 %187, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %202
  %205 = load i8, ptr %3, align 1, !range !25
  %206 = icmp ne i8 %205, 0
  call void @kfree_skb_partial(ptr noundef %1, i1 noundef zeroext %206) #16
  br label %207

207:                                              ; preds = %204, %202
  call void @tcp_data_ready(ptr noundef %0)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #16
  br label %346

208:                                              ; preds = %143
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #16
  br label %297

209:                                              ; preds = %86, %61, %49, %43, %32
  %210 = phi i16 [ %87, %86 ], [ %42, %61 ], [ %42, %32 ], [ %42, %43 ], [ %42, %49 ]
  %211 = lshr i16 %210, 2
  %212 = and i16 %211, 60
  %213 = zext i16 %212 to i32
  %214 = icmp ult i32 %7, %213
  br i1 %214, label %297, label %215

215:                                              ; preds = %209
  %216 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %217 = load i16, ptr %216, align 8
  %218 = lshr i16 %217, 5
  %219 = and i16 %218, 3
  %220 = icmp ne i16 %219, 1
  %221 = icmp sgt i16 %217, -1
  %222 = select i1 %220, i1 %221, i1 false
  br i1 %222, label %223, label %242

223:                                              ; preds = %215
  %224 = icmp eq i16 %219, 3
  br i1 %224, label %225, label %237

225:                                              ; preds = %223
  %226 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %227 = load i16, ptr %226, align 4
  %228 = zext i16 %227 to i32
  %229 = load ptr, ptr %4, align 4
  %230 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %231 = load ptr, ptr %230, align 8
  %232 = ptrtoint ptr %229 to i32
  %233 = ptrtoint ptr %231 to i32
  %234 = sub i32 %228, %232
  %235 = add i32 %234, %233
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %225, %223
  %238 = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %1) #16
  %239 = icmp eq i16 %238, 0
  br i1 %239, label %240, label %297

240:                                              ; preds = %237
  %241 = load i16, ptr %36, align 4
  br label %242

242:                                              ; preds = %240, %225, %215
  %243 = phi i16 [ %241, %240 ], [ %210, %215 ], [ %210, %225 ]
  %244 = and i16 %243, 5632
  %245 = icmp eq i16 %244, 0
  br i1 %245, label %336, label %246

246:                                              ; preds = %242
  %247 = tail call fastcc zeroext i1 @tcp_validate_incoming(ptr noundef %0, ptr noundef %1, ptr noundef %5, i32 noundef 1)
  br i1 %247, label %248, label %346

248:                                              ; preds = %246, %152
  %249 = tail call fastcc i32 @tcp_ack(ptr noundef %0, ptr noundef %1, i32 noundef 16640)
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %336, label %251

251:                                              ; preds = %248
  %252 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 3
  %253 = load i32, ptr %252, align 4
  %254 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 110
  %255 = load i32, ptr %254, align 4
  %256 = icmp eq i32 %253, %255
  br i1 %256, label %291, label %257

257:                                              ; preds = %251
  store i32 %253, ptr %254, align 4
  %258 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %259 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %260 = load i32, ptr %259, align 4
  %261 = load i32, ptr %258, align 8
  %262 = sub i32 %260, %261
  %263 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 8
  %264 = load i16, ptr %263, align 2
  %265 = zext i16 %264 to i32
  %266 = icmp ult i32 %262, %265
  br i1 %266, label %291, label %267

267:                                              ; preds = %257
  %268 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  %269 = load i64, ptr %268, align 8
  %270 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %269, i32 0) #17, !srcloc !17
  %271 = extractvalue { i64, i32 } %270, 0
  %272 = extractvalue { i64, i32 } %270, 1
  %273 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %269, i64 %271, i32 %272) #17, !srcloc !18
  %274 = extractvalue { i64, i32 } %273, 0
  %275 = lshr i64 %274, 9
  %276 = trunc i64 %275 to i32
  %277 = sub i32 %276, %253
  %278 = icmp ult i32 %277, 2147483
  br i1 %278, label %279, label %291, !prof !11

279:                                              ; preds = %267
  %280 = icmp eq i32 %253, %276
  %281 = mul nuw nsw i32 %277, 1000
  %282 = select i1 %280, i32 1000, i32 %281
  %283 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 111
  %284 = load i32, ptr %283, align 8
  %285 = icmp eq i32 %284, 0
  %286 = lshr i32 %284, 3
  %287 = add i32 %284, %282
  %288 = sub i32 %287, %286
  %289 = shl i32 %282, 3
  %290 = select i1 %285, i32 %289, i32 %288
  store i32 %290, ptr %283, align 8
  br label %291

291:                                              ; preds = %279, %267, %257, %251
  tail call fastcc void @tcp_urg(ptr noundef %0, ptr noundef %1, ptr noundef %5)
  tail call fastcc void @tcp_data_queue(ptr noundef %0, ptr noundef %1)
  tail call fastcc void @tcp_data_snd_check(ptr noundef %0)
  %292 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24
  %293 = load i8, ptr %292, align 4
  %294 = and i8 %293, 1
  %295 = icmp eq i8 %294, 0
  br i1 %295, label %346, label %296

296:                                              ; preds = %291
  tail call fastcc void @__tcp_ack_snd_check(ptr noundef %0, i32 noundef 1) #16
  br label %346

297:                                              ; preds = %237, %209, %208
  %298 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tcp_bad_csum, i32 0, i32 1), align 4
  %299 = icmp sgt i32 %298, 0
  br i1 %299, label %300, label %313

300:                                              ; preds = %297
  %301 = tail call ptr @llvm.thread.pointer() #16
  %302 = getelementptr inbounds %struct.thread_info, ptr %301, i32 0, i32 2
  %303 = load i32, ptr %302, align 8
  %304 = lshr i32 %303, 5
  %305 = getelementptr i32, ptr @__cpu_online_mask, i32 %304
  %306 = load volatile i32, ptr %305, align 4
  %307 = and i32 %303, 31
  %308 = shl nuw i32 1, %307
  %309 = and i32 %308, %306
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %313, label %311

311:                                              ; preds = %300
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !32
  %312 = tail call i32 @__traceiter_tcp_bad_csum(ptr noundef null, ptr noundef %1) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !33
  br label %313

313:                                              ; preds = %311, %300, %297
  %314 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %315 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %316 = getelementptr [16 x i32], ptr %315, i32 0, i32 15
  %317 = ptrtoint ptr %316 to i32
  %318 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %319 = inttoptr i32 %318 to ptr
  %320 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %319) #13, !srcloc !14
  %321 = add i32 %320, %317
  %322 = inttoptr i32 %321 to ptr
  %323 = load i32, ptr %322, align 4
  %324 = add i32 %323, 1
  store i32 %324, ptr %322, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %314) #16, !srcloc !15
  %325 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %326 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %327 = getelementptr [16 x i32], ptr %326, i32 0, i32 13
  %328 = ptrtoint ptr %327 to i32
  %329 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %330 = inttoptr i32 %329 to ptr
  %331 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %330) #13, !srcloc !14
  %332 = add i32 %331, %328
  %333 = inttoptr i32 %332 to ptr
  %334 = load i32, ptr %333, align 4
  %335 = add i32 %334, 1
  store i32 %335, ptr %333, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %325) #16, !srcloc !15
  br label %336

336:                                              ; preds = %313, %248, %242, %109
  %337 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %338 = load ptr, ptr %337, align 4
  %339 = getelementptr inbounds %struct.skb_shared_info, ptr %338, i32 0, i32 5
  %340 = load i16, ptr %339, align 2
  %341 = icmp eq i16 %340, 0
  %342 = select i1 %341, i16 1, i16 %340
  %343 = zext i16 %342 to i32
  %344 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %344) #16, !srcloc !27
  %345 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %344, ptr %344, i32 %343, ptr elementtype(i32) %344) #16, !srcloc !28
  tail call void @__kfree_skb(ptr noundef %1) #16
  br label %346

346:                                              ; preds = %336, %296, %291, %246, %207, %104
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tcp_ack(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca %struct.ack_sample, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcp_sacktag_state, align 8
  %7 = alloca %struct.rate_sample, align 8
  %8 = alloca i32, align 4
  store i32 %2, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #16
  %9 = getelementptr inbounds i8, ptr %6, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %9, i8 0, i32 32, i1 false), !annotation !24
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i32 56, i1 false)
  %10 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %13 = load i16, ptr %12, align 4
  %14 = and i16 %13, 32
  %15 = icmp ne i16 %14, 0
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 71
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 73
  %25 = load i32, ptr %24, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store i32 0, ptr %8, align 4
  store i64 0, ptr %6, align 8
  %26 = getelementptr inbounds %struct.tcp_sacktag_state, ptr %6, i32 0, i32 6
  store ptr %7, ptr %26, align 8
  %27 = getelementptr inbounds %struct.tcp_sacktag_state, ptr %6, i32 0, i32 3
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %29 = load ptr, ptr %28, align 8
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %29) #16, !srcloc !34
  %30 = sub i32 %19, %11
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 27
  %34 = load i32, ptr %33, align 8
  %35 = add i32 %30, %34
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %1147

37:                                               ; preds = %32
  %38 = load i32, ptr %5, align 4
  %39 = and i32 %38, 32768
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %1204

41:                                               ; preds = %37
  call fastcc void @tcp_send_challenge_ack(ptr noundef %0)
  br label %1204

42:                                               ; preds = %3
  %43 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %44 = load i32, ptr %43, align 4
  %45 = sub i32 %44, %19
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %1204, label %47

47:                                               ; preds = %42
  %48 = sub i32 %11, %19
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, ptr %5, align 4
  %52 = or i32 %51, 1024
  store i32 %52, ptr %5, align 4
  %53 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 18
  store i8 0, ptr %53, align 1
  br label %54

54:                                               ; preds = %50, %47
  %55 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %56 = load i24, ptr %55, align 4
  %57 = and i24 %56, 112
  %58 = icmp eq i24 %57, 0
  %59 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  %60 = load i32, ptr %59, align 4
  br i1 %58, label %69, label %61

61:                                               ; preds = %54
  %62 = icmp eq i32 %60, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 94
  %65 = load ptr, ptr %64, align 8
  %66 = icmp eq ptr %65, null
  %67 = getelementptr inbounds %struct.sk_buff, ptr %65, i32 0, i32 3
  %68 = select i1 %66, ptr %43, ptr %67
  br label %69

69:                                               ; preds = %63, %61, %54
  %70 = phi i32 [ 0, %61 ], [ %60, %63 ], [ %60, %54 ]
  %71 = phi ptr [ %10, %61 ], [ %68, %63 ], [ %10, %54 ]
  %72 = load i32, ptr %71, align 4
  %73 = load i32, ptr %20, align 4
  %74 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  %75 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 83
  %76 = load i32, ptr %75, align 8
  %77 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 52
  %78 = load i32, ptr %77, align 8
  %79 = add i32 %70, %76
  %80 = sub i32 %73, %79
  %81 = add i32 %80, %78
  %82 = getelementptr inbounds %struct.rate_sample, ptr %7, i32 0, i32 11
  store i32 %81, ptr %82, align 8
  %83 = load i32, ptr %5, align 4
  %84 = and i32 %83, 16384
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %117, label %86

86:                                               ; preds = %69
  %87 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61
  %88 = and i24 %56, 1
  %89 = icmp eq i24 %88, 0
  br i1 %89, label %117, label %90

90:                                               ; preds = %86
  %91 = load i32, ptr %16, align 8
  %92 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 9
  %93 = load i32, ptr %92, align 8
  %94 = sub i32 %93, %91
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %117, label %96

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 2
  %100 = load i32, ptr %99, align 4
  %101 = sub i32 %98, %100
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %96
  %104 = call i64 @ktime_get_seconds() #16
  %105 = trunc i64 %104 to i32
  %106 = load i32, ptr %87, align 4
  %107 = sub i32 -2073600, %106
  %108 = add i32 %107, %105
  %109 = icmp sgt i32 %108, -1
  br i1 %109, label %113, label %110, !prof !16

110:                                              ; preds = %103
  %111 = load i32, ptr %97, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110, %103, %96
  %114 = load i32, ptr %99, align 4
  store i32 %114, ptr %97, align 4
  %115 = call i64 @ktime_get_seconds() #16
  %116 = trunc i64 %115 to i32
  store i32 %116, ptr %87, align 4
  br label %117

117:                                              ; preds = %113, %110, %90, %86, %69
  %118 = load i32, ptr %5, align 4
  %119 = and i32 %118, 1280
  %120 = icmp eq i32 %119, 1024
  br i1 %120, label %121, label %148

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 25
  store i32 %17, ptr %122, align 8
  %123 = load i32, ptr %10, align 4
  %124 = sub i32 %19, %123
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 14
  %127 = load i64, ptr %126, align 8
  %128 = add i64 %127, %125
  store i64 %128, ptr %126, align 8
  store i32 %19, ptr %10, align 4
  %129 = or i32 %118, 2
  store i32 %129, ptr %5, align 4
  %130 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %131, i32 0, i32 4
  %133 = load ptr, ptr %132, align 16
  %134 = icmp eq ptr %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %121
  call void %133(ptr noundef %0, i32 noundef 2) #16
  br label %136

136:                                              ; preds = %135, %121
  %137 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %138 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %139 = getelementptr [126 x i32], ptr %138, i32 0, i32 23
  %140 = ptrtoint ptr %139 to i32
  %141 = call i32 @llvm.read_register.i32(metadata !0) #16
  %142 = inttoptr i32 %141 to ptr
  %143 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %142) #13, !srcloc !14
  %144 = add i32 %143, %140
  %145 = inttoptr i32 %144 to ptr
  %146 = load i32, ptr %145, align 4
  %147 = add i32 %146, 1
  store i32 %147, ptr %145, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %137) #16, !srcloc !15
  br label %331

148:                                              ; preds = %117
  %149 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %150 = load i32, ptr %149, align 4
  %151 = icmp eq i32 %17, %150
  br i1 %151, label %154, label %152

152:                                              ; preds = %148
  %153 = or i32 %118, 1
  store i32 %153, ptr %5, align 4
  br label %166

154:                                              ; preds = %148
  %155 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %156 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %157 = getelementptr [126 x i32], ptr %156, i32 0, i32 22
  %158 = ptrtoint ptr %157 to i32
  %159 = call i32 @llvm.read_register.i32(metadata !0) #16
  %160 = inttoptr i32 %159 to ptr
  %161 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %160) #13, !srcloc !14
  %162 = add i32 %161, %158
  %163 = inttoptr i32 %162 to ptr
  %164 = load i32, ptr %163, align 4
  %165 = add i32 %164, 1
  store i32 %165, ptr %163, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %155) #16, !srcloc !15
  br label %166

166:                                              ; preds = %154, %152
  %167 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %168 = load ptr, ptr %167, align 8
  %169 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %170 = load i16, ptr %169, align 2
  %171 = zext i16 %170 to i32
  %172 = getelementptr i8, ptr %168, i32 %171
  %173 = getelementptr inbounds %struct.tcphdr, ptr %172, i32 0, i32 5
  %174 = load i16, ptr %173, align 2
  %175 = call i16 @llvm.bswap.i16(i16 %174) #16
  %176 = zext i16 %175 to i32
  %177 = getelementptr inbounds %struct.tcphdr, ptr %172, i32 0, i32 4
  %178 = load i16, ptr %177, align 4
  %179 = and i16 %178, 512
  %180 = icmp eq i16 %179, 0
  br i1 %180, label %181, label %187, !prof !11

181:                                              ; preds = %166
  %182 = load i24, ptr %55, align 4
  %183 = zext i24 %182 to i32
  %184 = lshr i32 %183, 8
  %185 = and i32 %184, 15
  %186 = shl nuw nsw i32 %176, %185
  br label %187

187:                                              ; preds = %181, %166
  %188 = phi i32 [ %186, %181 ], [ %176, %166 ]
  %189 = load i32, ptr %10, align 4
  %190 = sub i32 %189, %19
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %203, label %192

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 25
  %194 = load i32, ptr %193, align 8
  %195 = sub i32 %194, %17
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %203, label %197

197:                                              ; preds = %192
  %198 = icmp eq i32 %194, %17
  br i1 %198, label %199, label %274

199:                                              ; preds = %197
  %200 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 26
  %201 = load i32, ptr %200, align 4
  %202 = icmp ult i32 %201, %188
  br i1 %202, label %203, label %274

203:                                              ; preds = %199, %192, %187
  %204 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 25
  store i32 %17, ptr %204, align 8
  %205 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 26
  %206 = load i32, ptr %205, align 4
  %207 = icmp eq i32 %206, %188
  br i1 %207, label %274, label %208

208:                                              ; preds = %203
  store i32 %188, ptr %205, align 4
  %209 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 3
  store i32 0, ptr %209, align 4
  %210 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 89
  %211 = load volatile ptr, ptr %210, align 8
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %240

213:                                              ; preds = %208
  %214 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 79
  %215 = load i32, ptr %214, align 8
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %240, label %217

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %219 = load volatile i32, ptr %218, align 4
  %220 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 15
  %221 = load i32, ptr %220, align 4
  %222 = icmp slt i32 %219, %221
  br i1 %222, label %223, label %240

223:                                              ; preds = %217
  %224 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 55
  %225 = load i16, ptr %224, align 4
  %226 = icmp eq i16 %225, 0
  br i1 %226, label %227, label %240

227:                                              ; preds = %223
  %228 = load i24, ptr %55, align 4
  %229 = zext i24 %228 to i32
  %230 = lshr i32 %229, 8
  %231 = and i32 %230, 15
  %232 = lshr i32 %188, %231
  %233 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 1
  %234 = load i16, ptr %233, align 8
  %235 = zext i16 %234 to i32
  %236 = shl i32 %235, 26
  %237 = or i32 %236, %232
  %238 = or i32 %237, 1048576
  %239 = call i32 @llvm.bswap.i32(i32 %238) #16
  store i32 %239, ptr %209, align 4
  br label %240

240:                                              ; preds = %227, %223, %217, %213, %208
  %241 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %242 = load i32, ptr %241, align 4
  %243 = load i32, ptr %43, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %266, label %245

245:                                              ; preds = %240
  %246 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %247 = load ptr, ptr %246, align 4
  %248 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 70), align 2
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %266, label %250

250:                                              ; preds = %245
  %251 = load i32, ptr %20, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %266

253:                                              ; preds = %250
  %254 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %247, i32 0, i32 7
  %255 = load ptr, ptr %254, align 4
  %256 = icmp eq ptr %255, null
  br i1 %256, label %257, label %266

257:                                              ; preds = %253
  %258 = load volatile i32, ptr @jiffies, align 64
  %259 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 19
  %260 = load i32, ptr %259, align 8
  %261 = sub i32 %258, %260
  %262 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 6
  %263 = load i32, ptr %262, align 4
  %264 = icmp ugt i32 %261, %263
  br i1 %264, label %265, label %266

265:                                              ; preds = %257
  call void @tcp_cwnd_restart(ptr noundef %0, i32 noundef %261) #16
  br label %266

266:                                              ; preds = %265, %257, %253, %250, %245, %240
  %267 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 27
  %268 = load i32, ptr %267, align 8
  %269 = icmp ugt i32 %188, %268
  br i1 %269, label %270, label %274

270:                                              ; preds = %266
  store i32 %188, ptr %267, align 8
  %271 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 9
  %272 = load i32, ptr %271, align 8
  %273 = call i32 @tcp_sync_mss(ptr noundef %0, i32 noundef %272) #16
  br label %274

274:                                              ; preds = %270, %266, %203, %199, %197
  %275 = phi i32 [ 2, %270 ], [ 2, %266 ], [ 2, %203 ], [ 0, %199 ], [ 0, %197 ]
  %276 = load i32, ptr %10, align 4
  %277 = sub i32 %19, %276
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 14
  %280 = load i64, ptr %279, align 8
  %281 = add i64 %280, %278
  store i64 %281, ptr %279, align 8
  store i32 %19, ptr %10, align 4
  %282 = load i32, ptr %5, align 4
  %283 = or i32 %282, %275
  store i32 %283, ptr %5, align 4
  %284 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 13
  %285 = load i8, ptr %284, align 1
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %291, label %287

287:                                              ; preds = %274
  %288 = call fastcc i32 @tcp_sacktag_write_queue(ptr noundef %0, ptr noundef %1, i32 noundef %11, ptr noundef nonnull %6)
  %289 = load i32, ptr %5, align 4
  %290 = or i32 %289, %288
  store i32 %290, ptr %5, align 4
  br label %291

291:                                              ; preds = %287, %274
  %292 = phi i32 [ %290, %287 ], [ %283, %274 ]
  %293 = load ptr, ptr %167, align 8
  %294 = load i16, ptr %169, align 2
  %295 = zext i16 %294 to i32
  %296 = getelementptr i8, ptr %293, i32 %295
  %297 = getelementptr inbounds %struct.tcphdr, ptr %296, i32 0, i32 4
  %298 = load i16, ptr %297, align 4
  %299 = and i16 %298, 16896
  %300 = icmp eq i16 %299, 16384
  br i1 %300, label %301, label %308

301:                                              ; preds = %291
  %302 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 56
  %303 = load i8, ptr %302, align 2
  %304 = and i8 %303, 1
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %308, label %306

306:                                              ; preds = %301
  %307 = or i32 %292, 64
  store i32 %307, ptr %5, align 4
  br label %308

308:                                              ; preds = %306, %301, %291
  %309 = phi i32 [ %307, %306 ], [ %292, %291 ], [ %292, %301 ]
  %310 = phi i32 [ 5, %306 ], [ 1, %291 ], [ 1, %301 ]
  %311 = load i32, ptr %27, align 4
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %322, label %313

313:                                              ; preds = %308
  %314 = and i32 %309, 64
  %315 = icmp eq i32 %314, 0
  %316 = load i32, ptr %22, align 8
  %317 = add i32 %316, %311
  store i32 %317, ptr %22, align 8
  br i1 %315, label %322, label %318

318:                                              ; preds = %313
  %319 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 72
  %320 = load i32, ptr %319, align 4
  %321 = add i32 %320, %311
  store i32 %321, ptr %319, align 4
  br label %322

322:                                              ; preds = %318, %313, %308
  %323 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %324 = load ptr, ptr %323, align 4
  %325 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %324, i32 0, i32 4
  %326 = load ptr, ptr %325, align 16
  %327 = icmp eq ptr %326, null
  br i1 %327, label %331, label %328

328:                                              ; preds = %322
  %329 = and i32 %309, 2
  %330 = or i32 %329, %310
  call void %326(ptr noundef %0, i32 noundef %330) #16
  br label %331

331:                                              ; preds = %328, %322, %136
  %332 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %333 = load ptr, ptr %332, align 8
  %334 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %335 = load i16, ptr %334, align 2
  %336 = zext i16 %335 to i32
  %337 = getelementptr i8, ptr %333, i32 %336
  %338 = getelementptr inbounds %struct.tcphdr, ptr %337, i32 0, i32 4
  %339 = load i16, ptr %338, align 4
  %340 = icmp sgt i16 %339, -1
  br i1 %340, label %353, label %341

341:                                              ; preds = %331
  %342 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 56
  %343 = load i8, ptr %342, align 2
  %344 = and i8 %343, -5
  store i8 %344, ptr %342, align 2
  %345 = load i32, ptr %16, align 8
  %346 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %347 = load i32, ptr %346, align 4
  %348 = icmp eq i32 %345, %347
  br i1 %348, label %353, label %349

349:                                              ; preds = %341
  %350 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24
  %351 = load i8, ptr %350, align 4
  %352 = or i8 %351, 16
  store i8 %352, ptr %350, align 4
  br label %353

353:                                              ; preds = %349, %341, %331
  %354 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 52
  store i32 0, ptr %354, align 8
  %355 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 22
  store i8 0, ptr %355, align 1
  %356 = load volatile i32, ptr @jiffies, align 64
  %357 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 18
  store i32 %356, ptr %357, align 4
  %358 = icmp eq i32 %21, 0
  %359 = load i32, ptr %5, align 4
  br i1 %358, label %1061, label %360

360:                                              ; preds = %353
  %361 = and i32 %359, 64
  %362 = icmp eq i32 %361, 0
  %363 = load i32, ptr %74, align 4
  %364 = load i32, ptr %43, align 4
  %365 = call ptr @rb_first(ptr noundef %28) #16
  %366 = icmp eq ptr %365, null
  br i1 %366, label %568, label %367

367:                                              ; preds = %360
  %368 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 97
  %369 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 72
  %370 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 3
  %371 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 98
  %372 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 88
  %373 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 87
  %374 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 94
  %375 = load ptr, ptr %26, align 8
  br label %376

376:                                              ; preds = %566, %367
  %377 = phi i64 [ 0, %367 ], [ %511, %566 ]
  %378 = phi i64 [ 0, %367 ], [ %512, %566 ]
  %379 = phi i32 [ %364, %367 ], [ %513, %566 ]
  %380 = phi ptr [ %365, %367 ], [ %554, %566 ]
  %381 = phi i32 [ 0, %367 ], [ %523, %566 ]
  %382 = phi i32 [ 0, %367 ], [ %533, %566 ]
  %383 = getelementptr inbounds %struct.sk_buff, ptr %380, i32 0, i32 3
  %384 = load i32, ptr %383, align 8
  %385 = getelementptr inbounds %struct.sk_buff, ptr %380, i32 0, i32 3, i32 13
  %386 = load i8, ptr %385, align 1
  %387 = load i32, ptr %10, align 4
  %388 = getelementptr inbounds %struct.sk_buff, ptr %380, i32 0, i32 3, i32 4
  %389 = load i32, ptr %388, align 4
  %390 = sub i32 %387, %389
  %391 = icmp slt i32 %390, 0
  %392 = getelementptr inbounds %struct.sk_buff, ptr %380, i32 0, i32 3, i32 8
  %393 = load i16, ptr %392, align 8
  %394 = zext i16 %393 to i32
  br i1 %391, label %395, label %418

395:                                              ; preds = %376
  %396 = icmp ne i16 %393, 1
  %397 = sub i32 %384, %387
  %398 = icmp slt i32 %397, 0
  %399 = select i1 %396, i1 %398, i1 false
  br i1 %399, label %400, label %574

400:                                              ; preds = %395
  %401 = sub i32 %387, %384
  %402 = call i32 @tcp_trim_head(ptr noundef %0, ptr noundef nonnull %380, i32 noundef %401) #16
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %404, label %574

404:                                              ; preds = %400
  %405 = load i16, ptr %392, align 8
  %406 = zext i16 %405 to i32
  %407 = sub nsw i32 %394, %406
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %574, label %409

409:                                              ; preds = %404
  %410 = icmp eq i16 %405, 0
  br i1 %410, label %411, label %412, !prof !16

411:                                              ; preds = %409
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/tcp_input.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3190, 0\0A.popsection", ""() #16, !srcloc !35
  unreachable

412:                                              ; preds = %409
  %413 = load i32, ptr %383, align 8
  %414 = load i32, ptr %388, align 4
  %415 = sub i32 %413, %414
  %416 = icmp slt i32 %415, 0
  br i1 %416, label %418, label %417, !prof !11

417:                                              ; preds = %412
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/tcp_input.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3191, 0\0A.popsection", ""() #16, !srcloc !36
  unreachable

418:                                              ; preds = %412, %376
  %419 = phi i32 [ %414, %412 ], [ %389, %376 ]
  %420 = phi i32 [ %407, %412 ], [ %394, %376 ]
  %421 = zext i8 %386 to i32
  %422 = and i32 %421, 146
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %430, label %424, !prof !11

424:                                              ; preds = %418
  %425 = and i32 %421, 2
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %460, label %427

427:                                              ; preds = %424
  %428 = load i32, ptr %77, align 8
  %429 = sub i32 %428, %420
  store i32 %429, ptr %77, align 8
  br label %460

430:                                              ; preds = %418
  %431 = and i32 %421, 1
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %433, label %464

433:                                              ; preds = %430
  %434 = getelementptr inbounds %struct.sk_buff, ptr %380, i32 0, i32 2
  %435 = load i64, ptr %434, align 8
  %436 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %435, i32 0) #17, !srcloc !17
  %437 = extractvalue { i64, i32 } %436, 0
  %438 = extractvalue { i64, i32 } %436, 1
  %439 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %435, i64 %437, i32 %438) #17, !srcloc !18
  %440 = extractvalue { i64, i32 } %439, 0
  %441 = lshr i64 %440, 9
  %442 = icmp ult i64 %440, 512
  %443 = load i1, ptr @tcp_clean_rtx_queue.__already_done, align 1
  %444 = xor i1 %443, true
  %445 = select i1 %442, i1 %444, i1 false
  br i1 %445, label %446, label %448, !prof !16

446:                                              ; preds = %433
  store i1 true, ptr @tcp_clean_rtx_queue.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3265, i32 noundef 9, ptr noundef null) #16
  %447 = load i32, ptr %388, align 4
  br label %448

448:                                              ; preds = %446, %433
  %449 = phi i32 [ %447, %446 ], [ %419, %433 ]
  %450 = icmp eq i64 %377, 0
  %451 = select i1 %450, i64 %441, i64 %377
  %452 = sub i32 %384, %379
  %453 = icmp slt i32 %452, 0
  %454 = select i1 %453, i32 %384, i32 %379
  %455 = load i32, ptr %368, align 4
  %456 = sub i32 %455, %449
  %457 = icmp slt i32 %456, 0
  %458 = or i32 %382, 512
  %459 = select i1 %457, i32 %382, i32 %458
  br label %468

460:                                              ; preds = %427, %424
  %461 = or i32 %382, 8
  %462 = and i32 %421, 1
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %468, label %464

464:                                              ; preds = %460, %430
  %465 = phi i32 [ %461, %460 ], [ %382, %430 ]
  %466 = load i32, ptr %74, align 4
  %467 = sub i32 %466, %420
  store i32 %467, ptr %74, align 4
  br label %510

468:                                              ; preds = %460, %448
  %469 = phi i64 [ %451, %448 ], [ %377, %460 ]
  %470 = phi i64 [ %441, %448 ], [ %378, %460 ]
  %471 = phi i32 [ %454, %448 ], [ %379, %460 ]
  %472 = phi i32 [ %459, %448 ], [ %461, %460 ]
  %473 = load i24, ptr %55, align 4
  %474 = and i24 %473, 112
  %475 = icmp eq i24 %474, 0
  br i1 %475, label %510, label %476

476:                                              ; preds = %468
  %477 = load i32, ptr %22, align 8
  %478 = add i32 %477, %420
  store i32 %478, ptr %22, align 8
  br i1 %362, label %482, label %479

479:                                              ; preds = %476
  %480 = load i32, ptr %369, align 4
  %481 = add i32 %480, %420
  store i32 %481, ptr %369, align 4
  br label %482

482:                                              ; preds = %479, %476
  %483 = load i8, ptr %385, align 1
  %484 = and i8 %483, -110
  %485 = icmp eq i8 %484, 0
  %486 = getelementptr inbounds %struct.sk_buff, ptr %380, i32 0, i32 2
  %487 = load i64, ptr %486, align 8
  br i1 %485, label %502, label %488

488:                                              ; preds = %482
  %489 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %487) #17, !srcloc !37
  %490 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %487, i64 %489, i32 0) #17, !srcloc !18
  %491 = and i24 %473, 1
  %492 = icmp eq i24 %491, 0
  br i1 %492, label %502, label %493

493:                                              ; preds = %488
  %494 = extractvalue { i64, i32 } %490, 0
  %495 = lshr i64 %494, 18
  %496 = trunc i64 %495 to i32
  %497 = load i32, ptr %370, align 4
  %498 = icmp ne i32 %497, 0
  %499 = sub i32 %497, %496
  %500 = icmp slt i32 %499, 0
  %501 = select i1 %498, i1 %500, i1 false
  br i1 %501, label %510, label %502

502:                                              ; preds = %493, %488, %482
  %503 = load i32, ptr %388, align 4
  %504 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %487, i32 0) #17, !srcloc !17
  %505 = extractvalue { i64, i32 } %504, 0
  %506 = extractvalue { i64, i32 } %504, 1
  %507 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %487, i64 %505, i32 %506) #17, !srcloc !18
  %508 = extractvalue { i64, i32 } %507, 0
  %509 = lshr i64 %508, 9
  call void @tcp_rack_advance(ptr noundef %0, i8 noundef zeroext %386, i32 noundef %503, i64 noundef %509) #16
  br label %510

510:                                              ; preds = %502, %493, %468, %464
  %511 = phi i64 [ %469, %493 ], [ %469, %468 ], [ %469, %502 ], [ %377, %464 ]
  %512 = phi i64 [ %470, %493 ], [ %470, %468 ], [ %470, %502 ], [ %378, %464 ]
  %513 = phi i32 [ %471, %493 ], [ %471, %468 ], [ %471, %502 ], [ %379, %464 ]
  %514 = phi i32 [ %472, %493 ], [ %472, %468 ], [ %472, %502 ], [ %465, %464 ]
  %515 = and i32 %421, 4
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %520, label %517

517:                                              ; preds = %510
  %518 = load i32, ptr %75, align 8
  %519 = sub i32 %518, %420
  store i32 %519, ptr %75, align 8
  br label %520

520:                                              ; preds = %517, %510
  %521 = load i32, ptr %20, align 4
  %522 = sub i32 %521, %420
  store i32 %522, ptr %20, align 4
  %523 = add i32 %420, %381
  call void @tcp_rate_skb_delivered(ptr noundef %0, ptr noundef nonnull %380, ptr noundef %375) #16
  %524 = getelementptr inbounds %struct.sk_buff, ptr %380, i32 0, i32 3, i32 12
  %525 = load i8, ptr %524, align 4
  %526 = and i8 %525, 2
  %527 = icmp eq i8 %526, 0
  br i1 %527, label %528, label %530, !prof !11

528:                                              ; preds = %520
  %529 = or i32 %514, 4
  br label %532

530:                                              ; preds = %520
  %531 = or i32 %514, 16
  store i32 0, ptr %371, align 8
  br label %532

532:                                              ; preds = %530, %528
  %533 = phi i32 [ %529, %528 ], [ %531, %530 ]
  br i1 %391, label %574, label %534

534:                                              ; preds = %532
  %535 = getelementptr inbounds %struct.sk_buff, ptr %380, i32 0, i32 3, i32 15
  %536 = load i8, ptr %535, align 1
  %537 = and i8 %536, 1
  %538 = icmp eq i8 %537, 0
  br i1 %538, label %553, label %539, !prof !11

539:                                              ; preds = %534
  %540 = getelementptr inbounds %struct.sk_buff, ptr %380, i32 0, i32 15
  %541 = load ptr, ptr %540, align 4
  %542 = getelementptr inbounds %struct.skb_shared_info, ptr %541, i32 0, i32 9
  %543 = load i32, ptr %542, align 4
  %544 = sub i32 %543, %11
  %545 = icmp slt i32 %544, 0
  br i1 %545, label %553, label %546

546:                                              ; preds = %539
  %547 = load i32, ptr %10, align 4
  %548 = sub i32 %543, %547
  %549 = icmp slt i32 %548, 0
  br i1 %549, label %550, label %553

550:                                              ; preds = %546
  %551 = getelementptr inbounds %struct.sk_buff, ptr %380, i32 0, i32 4
  %552 = load i32, ptr %551, align 8
  store i32 0, ptr %551, align 8
  call void @__skb_tstamp_tx(ptr noundef nonnull %380, ptr noundef %1, ptr noundef null, ptr noundef %0, i32 noundef 2) #16
  store i32 %552, ptr %551, align 8
  br label %553

553:                                              ; preds = %550, %546, %539, %534
  %554 = call ptr @rb_next(ptr noundef nonnull %380) #16
  %555 = load ptr, ptr %372, align 4
  %556 = icmp eq ptr %380, %555
  br i1 %556, label %557, label %558, !prof !16

557:                                              ; preds = %553
  store ptr null, ptr %372, align 4
  br label %558

558:                                              ; preds = %557, %553
  %559 = load ptr, ptr %373, align 8
  %560 = icmp eq ptr %380, %559
  br i1 %560, label %561, label %562, !prof !16

561:                                              ; preds = %558
  store ptr null, ptr %373, align 8
  br label %562

562:                                              ; preds = %561, %558
  %563 = load ptr, ptr %374, align 8
  %564 = icmp eq ptr %563, %380
  br i1 %564, label %565, label %566

565:                                              ; preds = %562
  store ptr %554, ptr %374, align 8
  br label %566

566:                                              ; preds = %565, %562
  call fastcc void @tcp_rtx_queue_unlink_and_free(ptr noundef nonnull %380, ptr noundef %0) #16
  %567 = icmp eq ptr %554, null
  br i1 %567, label %568, label %376

568:                                              ; preds = %566, %360
  %569 = phi i32 [ 0, %360 ], [ %533, %566 ]
  %570 = phi i32 [ 0, %360 ], [ %523, %566 ]
  %571 = phi i32 [ %364, %360 ], [ %513, %566 ]
  %572 = phi i64 [ 0, %360 ], [ %512, %566 ]
  %573 = phi i64 [ 0, %360 ], [ %511, %566 ]
  call void @tcp_chrono_stop(ptr noundef %0, i32 noundef 1) #16
  br label %574

574:                                              ; preds = %568, %532, %404, %400, %395
  %575 = phi ptr [ null, %568 ], [ %380, %395 ], [ %380, %400 ], [ %380, %404 ], [ %380, %532 ]
  %576 = phi i1 [ true, %568 ], [ false, %395 ], [ false, %400 ], [ false, %404 ], [ false, %532 ]
  %577 = phi i64 [ %573, %568 ], [ %511, %532 ], [ %377, %404 ], [ %377, %400 ], [ %377, %395 ]
  %578 = phi i64 [ %572, %568 ], [ %512, %532 ], [ %378, %404 ], [ %378, %400 ], [ %378, %395 ]
  %579 = phi i32 [ %571, %568 ], [ %513, %532 ], [ %379, %404 ], [ %379, %400 ], [ %379, %395 ]
  %580 = phi i1 [ false, %568 ], [ true, %532 ], [ false, %404 ], [ false, %400 ], [ false, %395 ]
  %581 = phi i32 [ %570, %568 ], [ %523, %532 ], [ %381, %404 ], [ %381, %400 ], [ %381, %395 ]
  %582 = phi i32 [ %569, %568 ], [ %533, %532 ], [ %382, %404 ], [ %382, %400 ], [ %382, %395 ]
  %583 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 60
  %584 = load i32, ptr %583, align 8
  %585 = load i32, ptr %10, align 4
  %586 = sub i32 %585, %11
  %587 = sub i32 %584, %11
  %588 = icmp ult i32 %586, %587
  br i1 %588, label %590, label %589, !prof !16

589:                                              ; preds = %574
  store i32 %585, ptr %583, align 8
  br label %590

590:                                              ; preds = %589, %574
  br i1 %576, label %616, label %591

591:                                              ; preds = %590
  %592 = getelementptr inbounds %struct.sk_buff, ptr %575, i32 0, i32 3, i32 15
  %593 = load i8, ptr %592, align 1
  %594 = and i8 %593, 1
  %595 = icmp eq i8 %594, 0
  br i1 %595, label %609, label %596, !prof !11

596:                                              ; preds = %591
  %597 = getelementptr inbounds %struct.sk_buff, ptr %575, i32 0, i32 15
  %598 = load ptr, ptr %597, align 4
  %599 = getelementptr inbounds %struct.skb_shared_info, ptr %598, i32 0, i32 9
  %600 = load i32, ptr %599, align 4
  %601 = sub i32 %600, %11
  %602 = icmp sgt i32 %601, -1
  %603 = sub i32 %600, %585
  %604 = icmp slt i32 %603, 0
  %605 = select i1 %602, i1 %604, i1 false
  br i1 %605, label %606, label %609

606:                                              ; preds = %596
  %607 = getelementptr inbounds %struct.sk_buff, ptr %575, i32 0, i32 4
  %608 = load i32, ptr %607, align 8
  store i32 0, ptr %607, align 8
  call void @__skb_tstamp_tx(ptr noundef nonnull %575, ptr noundef %1, ptr noundef null, ptr noundef %0, i32 noundef 2) #16
  store i32 %608, ptr %607, align 8
  br label %609

609:                                              ; preds = %606, %596, %591
  %610 = getelementptr inbounds %struct.sk_buff, ptr %575, i32 0, i32 3, i32 13
  %611 = load i8, ptr %610, align 1
  %612 = and i8 %611, 1
  %613 = zext i8 %612 to i32
  %614 = shl nuw nsw i32 %613, 13
  %615 = or i32 %614, %582
  br label %616

616:                                              ; preds = %609, %590
  %617 = phi i32 [ %582, %590 ], [ %615, %609 ]
  %618 = icmp ne i64 %577, 0
  %619 = and i32 %617, 8
  %620 = icmp eq i32 %619, 0
  %621 = select i1 %618, i1 %620, i1 false
  br i1 %621, label %622, label %653, !prof !38

622:                                              ; preds = %616
  %623 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  %624 = load i64, ptr %623, align 8
  %625 = sub i64 %624, %577
  %626 = call i64 @llvm.smax.i64(i64 %625, i64 0) #16
  %627 = trunc i64 %626 to i32
  %628 = sub i64 %624, %578
  %629 = call i64 @llvm.smax.i64(i64 %628, i64 0) #16
  %630 = trunc i64 %629 to i32
  %631 = icmp ne i32 %581, 1
  %632 = icmp ne i32 %363, 0
  %633 = or i1 %580, %631
  %634 = select i1 %633, i1 true, i1 %632
  br i1 %634, label %653, label %635

635:                                              ; preds = %622
  %636 = load i32, ptr %10, align 4
  %637 = sub i32 %636, %11
  %638 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  %639 = load i32, ptr %638, align 4
  %640 = icmp ult i32 %637, %639
  br i1 %640, label %641, label %653

641:                                              ; preds = %635
  %642 = load ptr, ptr %26, align 8
  %643 = getelementptr inbounds %struct.rate_sample, ptr %642, i32 0, i32 1
  %644 = load i32, ptr %643, align 8
  %645 = add i32 %644, 1
  %646 = load i32, ptr %22, align 8
  %647 = icmp eq i32 %645, %646
  %648 = and i32 %617, 2160
  %649 = icmp eq i32 %648, 0
  %650 = select i1 %647, i1 %649, i1 false
  %651 = or i32 %617, 65536
  %652 = select i1 %650, i32 %651, i32 %617
  br label %653

653:                                              ; preds = %641, %635, %622, %616
  %654 = phi i32 [ %617, %635 ], [ %617, %622 ], [ %617, %616 ], [ %652, %641 ]
  %655 = phi i32 [ %630, %635 ], [ %630, %622 ], [ -1, %616 ], [ %630, %641 ]
  %656 = phi i32 [ %627, %635 ], [ %627, %622 ], [ -1, %616 ], [ %627, %641 ]
  %657 = load i64, ptr %6, align 8
  %658 = icmp eq i64 %657, 0
  br i1 %658, label %670, label %659

659:                                              ; preds = %653
  %660 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  %661 = load i64, ptr %660, align 8
  %662 = sub i64 %661, %657
  %663 = call i64 @llvm.smax.i64(i64 %662, i64 0) #16
  %664 = trunc i64 %663 to i32
  %665 = getelementptr inbounds %struct.tcp_sacktag_state, ptr %6, i32 0, i32 1
  %666 = load i64, ptr %665, align 8
  %667 = sub i64 %661, %666
  %668 = call i64 @llvm.smax.i64(i64 %667, i64 0) #16
  %669 = trunc i64 %668 to i32
  br label %670

670:                                              ; preds = %659, %653
  %671 = phi i32 [ %669, %659 ], [ %655, %653 ]
  %672 = phi i32 [ %664, %659 ], [ -1, %653 ]
  %673 = load ptr, ptr %26, align 8
  %674 = call fastcc zeroext i1 @tcp_ack_update_rtt(ptr noundef %0, i32 noundef %654, i32 noundef %656, i32 noundef %672, i32 noundef %671, ptr noundef %673) #16
  %675 = and i32 %654, 20
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %807, label %677

677:                                              ; preds = %670
  %678 = or i32 %654, 4096
  %679 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 25, i32 2
  %680 = load i32, ptr %679, align 8
  %681 = and i32 %680, 2147483647
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %690, label %683

683:                                              ; preds = %677
  %684 = load i32, ptr %10, align 4
  %685 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 113, i32 1
  %686 = load i32, ptr %685, align 4
  %687 = sub i32 %684, %686
  %688 = icmp sgt i32 %687, -1
  br i1 %688, label %689, label %690, !prof !16

689:                                              ; preds = %683
  call fastcc void @tcp_mtup_probe_success(ptr noundef %0) #16
  br label %690

690:                                              ; preds = %689, %683, %677
  %691 = load i24, ptr %55, align 4
  %692 = and i24 %691, 112
  %693 = icmp eq i24 %692, 0
  br i1 %693, label %694, label %752

694:                                              ; preds = %690
  %695 = icmp sgt i32 %581, 0
  %696 = load i32, ptr %74, align 4
  br i1 %695, label %697, label %709

697:                                              ; preds = %694
  %698 = sub i32 %581, %696
  %699 = call i32 @llvm.smax.i32(i32 %698, i32 1) #16
  %700 = load i32, ptr %22, align 8
  %701 = add i32 %700, %699
  store i32 %701, ptr %22, align 8
  br i1 %362, label %706, label %702

702:                                              ; preds = %697
  %703 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 72
  %704 = load i32, ptr %703, align 4
  %705 = add i32 %704, %699
  store i32 %705, ptr %703, align 4
  br label %706

706:                                              ; preds = %702, %697
  %707 = add nsw i32 %581, -1
  %708 = call i32 @llvm.usub.sat.i32(i32 %696, i32 %707) #16
  store i32 %708, ptr %74, align 4
  br label %709

709:                                              ; preds = %706, %694
  %710 = phi i32 [ %696, %694 ], [ %708, %706 ]
  %711 = load i32, ptr %75, align 8
  %712 = call i32 @llvm.umax.i32(i32 %711, i32 1) #16
  %713 = load i32, ptr %20, align 4
  %714 = call i32 @llvm.umin.i32(i32 %712, i32 %713) #16
  %715 = add i32 %714, %710
  %716 = icmp ugt i32 %715, %713
  br i1 %716, label %717, label %740

717:                                              ; preds = %709
  %718 = sub i32 %713, %714
  store i32 %718, ptr %74, align 4
  %719 = add i32 %713, %581
  %720 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 76), align 8
  %721 = call i32 @llvm.umin.i32(i32 %719, i32 %720) #16
  %722 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 58
  store i32 %721, ptr %722, align 8
  %723 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 59
  %724 = load i32, ptr %723, align 4
  %725 = add i32 %724, 1
  store i32 %725, ptr %723, align 4
  %726 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %727 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %728 = getelementptr [126 x i32], ptr %727, i32 0, i32 28
  %729 = ptrtoint ptr %728 to i32
  %730 = call i32 @llvm.read_register.i32(metadata !0) #16
  %731 = inttoptr i32 %730 to ptr
  %732 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %731) #13, !srcloc !14
  %733 = add i32 %732, %729
  %734 = inttoptr i32 %733 to ptr
  %735 = load i32, ptr %734, align 4
  %736 = add i32 %735, 1
  store i32 %736, ptr %734, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %726) #16, !srcloc !15
  %737 = load i32, ptr %74, align 4
  %738 = load i32, ptr %75, align 8
  %739 = load i32, ptr %20, align 4
  br label %740

740:                                              ; preds = %717, %709
  %741 = phi i32 [ %713, %709 ], [ %739, %717 ]
  %742 = phi i32 [ %711, %709 ], [ %738, %717 ]
  %743 = phi i32 [ %710, %709 ], [ %737, %717 ]
  %744 = add i32 %743, %742
  %745 = icmp ugt i32 %744, %741
  br i1 %745, label %746, label %747, !prof !16

746:                                              ; preds = %740
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2072, i32 noundef 9, ptr noundef null) #16
  br label %747

747:                                              ; preds = %746, %740
  %748 = and i32 %654, 8
  %749 = icmp eq i32 %748, 0
  %750 = and i32 %678, -513
  %751 = select i1 %749, i32 %678, i32 %750
  br label %829

752:                                              ; preds = %690
  %753 = sub i32 %579, %72
  %754 = icmp slt i32 %753, 0
  br i1 %754, label %755, label %800

755:                                              ; preds = %752
  %756 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  %757 = load i32, ptr %756, align 4
  %758 = load i32, ptr %74, align 4
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %766, label %760

760:                                              ; preds = %755
  %761 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 94
  %762 = load ptr, ptr %761, align 8
  %763 = icmp eq ptr %762, null
  %764 = getelementptr inbounds %struct.sk_buff, ptr %762, i32 0, i32 3
  %765 = select i1 %763, ptr %43, ptr %764
  br label %766

766:                                              ; preds = %760, %755
  %767 = phi ptr [ %10, %755 ], [ %765, %760 ]
  %768 = load i32, ptr %767, align 4
  %769 = sub i32 %579, %768
  %770 = icmp slt i32 %769, 0
  br i1 %770, label %771, label %800

771:                                              ; preds = %766
  %772 = sub i32 %768, %579
  %773 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 58
  %774 = load i32, ptr %773, align 8
  %775 = mul i32 %774, %757
  %776 = icmp ugt i32 %772, %775
  %777 = icmp ne i32 %757, 0
  %778 = and i1 %777, %776
  br i1 %778, label %779, label %785

779:                                              ; preds = %771
  %780 = add i32 %757, -1
  %781 = add i32 %780, %772
  %782 = udiv i32 %781, %757
  %783 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 76), align 8
  %784 = call i32 @llvm.umin.i32(i32 %782, i32 %783) #16
  store i32 %784, ptr %773, align 8
  br label %785

785:                                              ; preds = %779, %771
  %786 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 59
  %787 = load i32, ptr %786, align 4
  %788 = add i32 %787, 1
  store i32 %788, ptr %786, align 4
  %789 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %790 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %791 = getelementptr [126 x i32], ptr %790, i32 0, i32 27
  %792 = ptrtoint ptr %791 to i32
  %793 = call i32 @llvm.read_register.i32(metadata !0) #16
  %794 = inttoptr i32 %793 to ptr
  %795 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %794) #13, !srcloc !14
  %796 = add i32 %795, %792
  %797 = inttoptr i32 %796 to ptr
  %798 = load i32, ptr %797, align 4
  %799 = add i32 %798, 1
  store i32 %799, ptr %797, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %789) #16, !srcloc !15
  br label %800

800:                                              ; preds = %785, %766, %752
  %801 = load i32, ptr %74, align 4
  %802 = sub i32 %363, %801
  %803 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 95
  %804 = load i32, ptr %803, align 4
  %805 = call i32 @llvm.smin.i32(i32 %804, i32 %802) #16
  %806 = sub i32 %804, %805
  store i32 %806, ptr %803, align 4
  br label %829

807:                                              ; preds = %670
  %808 = xor i1 %576, true
  %809 = icmp sgt i32 %672, -1
  %810 = and i1 %809, %674
  %811 = select i1 %808, i1 %810, i1 false
  br i1 %811, label %812, label %829

812:                                              ; preds = %807
  %813 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  %814 = load i64, ptr %813, align 8
  %815 = getelementptr inbounds %struct.sk_buff, ptr %575, i32 0, i32 2
  %816 = load i64, ptr %815, align 8
  %817 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %816, i32 0) #17, !srcloc !17
  %818 = extractvalue { i64, i32 } %817, 0
  %819 = extractvalue { i64, i32 } %817, 1
  %820 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %816, i64 %818, i32 %819) #17, !srcloc !18
  %821 = extractvalue { i64, i32 } %820, 0
  %822 = lshr i64 %821, 9
  %823 = sub i64 %814, %822
  %824 = call i64 @llvm.smax.i64(i64 %823, i64 0) #16
  %825 = trunc i64 %824 to i32
  %826 = icmp ugt i32 %672, %825
  %827 = or i32 %654, 4096
  %828 = select i1 %826, i32 %827, i32 %654
  br label %829

829:                                              ; preds = %812, %807, %800, %747
  %830 = phi i32 [ %678, %800 ], [ %654, %807 ], [ %751, %747 ], [ %828, %812 ]
  %831 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %832 = load ptr, ptr %831, align 4
  %833 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %832, i32 0, i32 5
  %834 = load ptr, ptr %833, align 4
  %835 = icmp eq ptr %834, null
  br i1 %835, label %848, label %836

836:                                              ; preds = %829
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  store i32 %581, ptr %4, align 4
  %837 = getelementptr inbounds %struct.ack_sample, ptr %4, i32 0, i32 1
  %838 = getelementptr inbounds %struct.rate_sample, ptr %673, i32 0, i32 8
  %839 = load i32, ptr %838, align 4
  store i32 %839, ptr %837, align 4
  %840 = getelementptr inbounds %struct.ack_sample, ptr %4, i32 0, i32 2
  %841 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  %842 = load i32, ptr %841, align 4
  %843 = load i32, ptr %22, align 8
  %844 = getelementptr inbounds %struct.rate_sample, ptr %673, i32 0, i32 1
  %845 = load i32, ptr %844, align 8
  %846 = sub i32 %843, %845
  %847 = mul i32 %846, %842
  store i32 %847, ptr %840, align 4
  call void %834(ptr noundef %0, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  br label %848

848:                                              ; preds = %836, %829
  %849 = load i32, ptr %74, align 4
  %850 = icmp slt i32 %849, 0
  br i1 %850, label %851, label %852, !prof !16

851:                                              ; preds = %848
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3400, i32 noundef 9, ptr noundef null) #16
  br label %852

852:                                              ; preds = %851, %848
  %853 = load i32, ptr %75, align 8
  %854 = icmp slt i32 %853, 0
  br i1 %854, label %855, label %856, !prof !16

855:                                              ; preds = %852
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3401, i32 noundef 9, ptr noundef null) #16
  br label %856

856:                                              ; preds = %855, %852
  %857 = load i32, ptr %77, align 8
  %858 = icmp slt i32 %857, 0
  br i1 %858, label %859, label %860, !prof !16

859:                                              ; preds = %856
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3402, i32 noundef 9, ptr noundef null) #16
  br label %860

860:                                              ; preds = %859, %856
  %861 = load i32, ptr %20, align 4
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %863, label %879

863:                                              ; preds = %860
  %864 = load i24, ptr %55, align 4
  %865 = and i24 %864, 112
  %866 = icmp eq i24 %865, 0
  br i1 %866, label %879, label %867

867:                                              ; preds = %863
  %868 = load i32, ptr %75, align 8
  %869 = icmp eq i32 %868, 0
  br i1 %869, label %871, label %870

870:                                              ; preds = %867
  store i32 0, ptr %75, align 8
  br label %871

871:                                              ; preds = %870, %867
  %872 = load i32, ptr %74, align 4
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %875, label %874

874:                                              ; preds = %871
  store i32 0, ptr %74, align 4
  br label %875

875:                                              ; preds = %874, %871
  %876 = load i32, ptr %77, align 8
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %879, label %878

878:                                              ; preds = %875
  store i32 0, ptr %77, align 8
  br label %879

879:                                              ; preds = %878, %875, %863, %860
  %880 = load i32, ptr %5, align 4
  %881 = or i32 %880, %830
  store i32 %881, ptr %5, align 4
  call void @tcp_rack_update_reo_wnd(ptr noundef %0, ptr noundef nonnull %7) #16
  %882 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 40
  %883 = load i32, ptr %882, align 8
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %887, label %885

885:                                              ; preds = %879
  %886 = load i32, ptr %5, align 4
  call fastcc void @tcp_process_tlp_ack(ptr noundef %0, i32 noundef %19, i32 noundef %886)
  br label %887

887:                                              ; preds = %885, %879
  %888 = load i32, ptr %5, align 4
  %889 = and i32 %888, 23
  %890 = icmp ne i32 %889, 0
  %891 = and i32 %888, 2144
  %892 = icmp eq i32 %891, 0
  %893 = and i1 %890, %892
  br i1 %893, label %894, label %899

894:                                              ; preds = %887
  %895 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %896 = load i8, ptr %895, align 4
  %897 = and i8 %896, 31
  %898 = icmp eq i8 %897, 0
  br i1 %898, label %916, label %899

899:                                              ; preds = %894, %887
  %900 = and i32 %888, 1047
  %901 = icmp eq i32 %900, 0
  br i1 %901, label %902, label %913

902:                                              ; preds = %899
  %903 = and i32 %888, 1
  %904 = icmp eq i32 %903, 0
  br i1 %904, label %905, label %913

905:                                              ; preds = %902
  %906 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %907 = load ptr, ptr %906, align 4
  %908 = getelementptr inbounds %struct.skb_shared_info, ptr %907, i32 0, i32 5
  %909 = load i16, ptr %908, align 2
  %910 = icmp eq i16 %909, 0
  %911 = select i1 %910, i16 1, i16 %909
  %912 = zext i16 %911 to i32
  br label %913

913:                                              ; preds = %905, %902, %899
  %914 = phi i32 [ 0, %899 ], [ 1, %902 ], [ %912, %905 ]
  call fastcc void @tcp_fastretrans_alert(ptr noundef %0, i32 noundef %11, i32 noundef %914, ptr noundef nonnull %5, ptr noundef nonnull %8)
  %915 = load i32, ptr %5, align 4
  br label %916

916:                                              ; preds = %913, %894
  %917 = phi i32 [ %915, %913 ], [ %888, %894 ]
  %918 = and i32 %917, 4096
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %923, label %920

920:                                              ; preds = %916
  %921 = call zeroext i1 @tcp_schedule_loss_probe(ptr noundef %0, i1 noundef zeroext true) #16
  br i1 %921, label %923, label %922

922:                                              ; preds = %920
  call void @tcp_rearm_rto(ptr noundef %0) #16
  br label %923

923:                                              ; preds = %922, %920, %916
  %924 = load i32, ptr %5, align 4
  %925 = and i32 %924, 52
  %926 = icmp ne i32 %925, 0
  %927 = and i32 %924, 23
  %928 = icmp eq i32 %927, 0
  %929 = or i1 %926, %928
  br i1 %929, label %930, label %935

930:                                              ; preds = %923
  %931 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  %932 = load volatile i32, ptr %931, align 4
  %933 = icmp eq i32 %932, 0
  br i1 %933, label %934, label %935

934:                                              ; preds = %930
  store volatile i32 1, ptr %931, align 4
  br label %935

935:                                              ; preds = %934, %930, %923
  %936 = load i32, ptr %22, align 8
  %937 = sub i32 %936, %23
  %938 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %939 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %940 = getelementptr [126 x i32], ptr %939, i32 0, i32 113
  %941 = ptrtoint ptr %940 to i32
  %942 = call i32 @llvm.read_register.i32(metadata !0) #16
  %943 = inttoptr i32 %942 to ptr
  %944 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %943) #13, !srcloc !14
  %945 = add i32 %944, %941
  %946 = inttoptr i32 %945 to ptr
  %947 = load i32, ptr %946, align 4
  %948 = add i32 %947, %937
  store i32 %948, ptr %946, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %938) #16, !srcloc !15
  %949 = and i32 %924, 64
  %950 = icmp eq i32 %949, 0
  br i1 %950, label %963, label %951

951:                                              ; preds = %935
  %952 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %953 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %954 = getelementptr [126 x i32], ptr %953, i32 0, i32 114
  %955 = ptrtoint ptr %954 to i32
  %956 = call i32 @llvm.read_register.i32(metadata !0) #16
  %957 = inttoptr i32 %956 to ptr
  %958 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %957) #13, !srcloc !14
  %959 = add i32 %958, %955
  %960 = inttoptr i32 %959 to ptr
  %961 = load i32, ptr %960, align 4
  %962 = add i32 %961, %937
  store i32 %962, ptr %960, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %952) #16, !srcloc !15
  br label %963

963:                                              ; preds = %951, %935
  %964 = load i32, ptr %24, align 8
  %965 = sub i32 %964, %25
  %966 = load i32, ptr %5, align 4
  %967 = getelementptr inbounds %struct.rate_sample, ptr %7, i32 0, i32 14
  %968 = lshr i32 %966, 16
  %969 = trunc i32 %968 to i8
  %970 = and i8 %969, 1
  store i8 %970, ptr %967, align 2
  call void @tcp_rate_gen(ptr noundef %0, i32 noundef %937, i32 noundef %965, i1 noundef zeroext %15, ptr noundef %673) #16
  %971 = load i32, ptr %5, align 4
  %972 = load ptr, ptr %831, align 4
  %973 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %972, i32 0, i32 7
  %974 = load ptr, ptr %973, align 4
  %975 = icmp eq ptr %974, null
  br i1 %975, label %977, label %976

976:                                              ; preds = %963
  call void %974(ptr noundef %0, ptr noundef %673) #16
  br label %1041

977:                                              ; preds = %963
  %978 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %979 = load i8, ptr %978, align 4
  %980 = and i8 %979, 31
  %981 = zext i8 %980 to i32
  %982 = shl nuw i32 1, %981
  %983 = and i32 %982, 12
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %988, label %985

985:                                              ; preds = %977
  %986 = getelementptr inbounds %struct.rate_sample, ptr %673, i32 0, i32 9
  %987 = load i32, ptr %986, align 8
  call void @tcp_cwnd_reduction(ptr noundef %0, i32 noundef %937, i32 noundef %987, i32 noundef %971) #16
  br label %1001

988:                                              ; preds = %977
  %989 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 58
  %990 = load i32, ptr %989, align 8
  %991 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 57), align 4
  %992 = icmp ugt i32 %990, %991
  %993 = select i1 %992, i32 52, i32 4
  %994 = and i32 %993, %971
  %995 = icmp eq i32 %994, 0
  br i1 %995, label %1001, label %996

996:                                              ; preds = %988
  %997 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %972, i32 0, i32 1
  %998 = load ptr, ptr %997, align 4
  call void %998(ptr noundef %0, i32 noundef %19, i32 noundef %937) #16
  %999 = load volatile i32, ptr @jiffies, align 64
  %1000 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 67
  store i32 %999, ptr %1000, align 8
  br label %1001

1001:                                             ; preds = %996, %988, %985
  %1002 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  %1003 = load i32, ptr %1002, align 4
  %1004 = zext i32 %1003 to i64
  %1005 = mul nuw nsw i64 %1004, 80000
  %1006 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %1007 = load i32, ptr %1006, align 8
  %1008 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  %1009 = load i32, ptr %1008, align 4
  %1010 = lshr i32 %1009, 1
  %1011 = icmp ult i32 %1007, %1010
  %1012 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 94), align 4
  %1013 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 95), align 64
  %1014 = select i1 %1011, i32 %1012, i32 %1013
  %1015 = sext i32 %1014 to i64
  %1016 = mul i64 %1005, %1015
  %1017 = load i32, ptr %20, align 4
  %1018 = call i32 @llvm.umax.i32(i32 %1007, i32 %1017) #16
  %1019 = zext i32 %1018 to i64
  %1020 = mul i64 %1016, %1019
  %1021 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 45
  %1022 = load i32, ptr %1021, align 8
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1033, label %1024, !prof !16

1024:                                             ; preds = %1001
  %1025 = icmp ult i64 %1020, 4294967296
  br i1 %1025, label %1026, label %1030, !prof !11

1026:                                             ; preds = %1024
  %1027 = trunc i64 %1020 to i32
  %1028 = udiv i32 %1027, %1022
  %1029 = zext i32 %1028 to i64
  br label %1033

1030:                                             ; preds = %1024
  %1031 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1022, i64 %1020) #17, !srcloc !12
  %1032 = extractvalue { i64, i64 } %1031, 1
  br label %1033

1033:                                             ; preds = %1030, %1026, %1001
  %1034 = phi i64 [ %1020, %1001 ], [ %1029, %1026 ], [ %1032, %1030 ]
  %1035 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 36
  %1036 = load i32, ptr %1035, align 8
  %1037 = zext i32 %1036 to i64
  %1038 = call i64 @llvm.umin.i64(i64 %1034, i64 %1037) #16
  %1039 = trunc i64 %1038 to i32
  %1040 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 35
  store volatile i32 %1039, ptr %1040, align 4
  br label %1041

1041:                                             ; preds = %1033, %976
  %1042 = load i32, ptr %8, align 4
  %1043 = icmp eq i32 %1042, 0
  br i1 %1043, label %1204, label %1044

1044:                                             ; preds = %1041
  %1045 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %1046 = load volatile i8, ptr %1045, align 2
  %1047 = icmp eq i8 %1046, 2
  br i1 %1047, label %1204, label %1048

1048:                                             ; preds = %1044
  %1049 = icmp eq i32 %1042, 2
  br i1 %1049, label %1050, label %1060, !prof !16

1050:                                             ; preds = %1048
  %1051 = call i32 @tcp_current_mss(ptr noundef %0) #16
  call void @__tcp_push_pending_frames(ptr noundef %0, i32 noundef %1051, i32 noundef 1) #16
  %1052 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 97
  %1053 = load i32, ptr %1052, align 4
  %1054 = load i32, ptr %43, align 4
  %1055 = sub i32 %1053, %1054
  %1056 = icmp slt i32 %1055, 0
  br i1 %1056, label %1204, label %1057

1057:                                             ; preds = %1050
  %1058 = load i16, ptr %12, align 4
  %1059 = and i16 %1058, 32767
  store i16 %1059, ptr %12, align 4
  br label %1060

1060:                                             ; preds = %1057, %1048
  call void @tcp_xmit_retransmit_queue(ptr noundef %0) #16
  br label %1204

1061:                                             ; preds = %353
  %1062 = and i32 %359, 2048
  %1063 = icmp eq i32 %1062, 0
  br i1 %1063, label %1093, label %1064

1064:                                             ; preds = %1061
  call fastcc void @tcp_fastretrans_alert(ptr noundef %0, i32 noundef %11, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %8)
  %1065 = load i32, ptr %5, align 4
  %1066 = load i32, ptr %22, align 8
  %1067 = sub i32 %1066, %23
  %1068 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %1069 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %1070 = getelementptr [126 x i32], ptr %1069, i32 0, i32 113
  %1071 = ptrtoint ptr %1070 to i32
  %1072 = call i32 @llvm.read_register.i32(metadata !0) #16
  %1073 = inttoptr i32 %1072 to ptr
  %1074 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %1073) #13, !srcloc !14
  %1075 = add i32 %1074, %1071
  %1076 = inttoptr i32 %1075 to ptr
  %1077 = load i32, ptr %1076, align 4
  %1078 = add i32 %1077, %1067
  store i32 %1078, ptr %1076, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1068) #16, !srcloc !15
  %1079 = and i32 %1065, 64
  %1080 = icmp eq i32 %1079, 0
  br i1 %1080, label %1093, label %1081

1081:                                             ; preds = %1064
  %1082 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %1083 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %1084 = getelementptr [126 x i32], ptr %1083, i32 0, i32 114
  %1085 = ptrtoint ptr %1084 to i32
  %1086 = call i32 @llvm.read_register.i32(metadata !0) #16
  %1087 = inttoptr i32 %1086 to ptr
  %1088 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %1087) #13, !srcloc !14
  %1089 = add i32 %1088, %1085
  %1090 = inttoptr i32 %1089 to ptr
  %1091 = load i32, ptr %1090, align 4
  %1092 = add i32 %1091, %1067
  store i32 %1092, ptr %1090, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1082) #16, !srcloc !15
  br label %1093

1093:                                             ; preds = %1081, %1064, %1061
  %1094 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %1095 = load ptr, ptr %1094, align 4
  %1096 = icmp eq ptr %1095, %1094
  %1097 = icmp eq ptr %1095, null
  %1098 = or i1 %1096, %1097
  br i1 %1098, label %1141, label %1099

1099:                                             ; preds = %1093
  %1100 = load i32, ptr %10, align 4
  %1101 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 26
  %1102 = load i32, ptr %1101, align 4
  %1103 = add i32 %1102, %1100
  %1104 = getelementptr inbounds %struct.sk_buff, ptr %1095, i32 0, i32 3, i32 4
  %1105 = load i32, ptr %1104, align 4
  %1106 = sub i32 %1103, %1105
  %1107 = icmp slt i32 %1106, 0
  %1108 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 20
  br i1 %1107, label %1112, label %1109

1109:                                             ; preds = %1099
  store i8 0, ptr %1108, align 1
  %1110 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 26
  store i32 0, ptr %1110, align 8
  %1111 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 19
  store i8 0, ptr %1111, align 2
  br label %1141

1112:                                             ; preds = %1099
  %1113 = load i8, ptr %1108, align 1
  %1114 = call i8 @llvm.umin.i8(i8 %1113, i8 10) #16
  %1115 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 6
  %1116 = load i32, ptr %1115, align 4
  %1117 = call i32 @llvm.umax.i32(i32 %1116, i32 20) #16
  %1118 = zext i32 %1117 to i64
  %1119 = zext i8 %1114 to i64
  %1120 = shl nuw nsw i64 %1118, %1119
  %1121 = call i64 @llvm.umin.i64(i64 %1120, i64 12000) #16
  %1122 = trunc i64 %1121 to i32
  %1123 = call i32 @tcp_clamp_probe0_to_user_timeout(ptr noundef %0, i32 noundef %1122) #16
  %1124 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 42
  %1125 = load i64, ptr %1124, align 8
  %1126 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 43
  %1127 = load i64, ptr %1126, align 8
  %1128 = sub i64 %1125, %1127
  %1129 = icmp sgt i64 %1128, 0
  br i1 %1129, label %1130, label %1132

1130:                                             ; preds = %1112
  %1131 = call i32 @nsecs_to_jiffies(i64 noundef %1128) #16
  br label %1132

1132:                                             ; preds = %1130, %1112
  %1133 = phi i32 [ %1131, %1130 ], [ 0, %1112 ]
  %1134 = add i32 %1133, %1123
  %1135 = call i32 @llvm.umin.i32(i32 %1134, i32 12000) #16
  %1136 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 19
  store i8 3, ptr %1136, align 2
  %1137 = load volatile i32, ptr @jiffies, align 64
  %1138 = add i32 %1137, %1135
  %1139 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 3
  store i32 %1138, ptr %1139, align 8
  %1140 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 4
  call void @sk_reset_timer(ptr noundef %0, ptr noundef %1140, i32 noundef %1138) #16
  br label %1141

1141:                                             ; preds = %1132, %1109, %1093
  %1142 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 40
  %1143 = load i32, ptr %1142, align 8
  %1144 = icmp eq i32 %1143, 0
  br i1 %1144, label %1204, label %1145

1145:                                             ; preds = %1141
  %1146 = load i32, ptr %5, align 4
  call fastcc void @tcp_process_tlp_ack(ptr noundef %0, i32 noundef %19, i32 noundef %1146)
  br label %1204

1147:                                             ; preds = %32
  %1148 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 13
  %1149 = load i8, ptr %1148, align 1
  %1150 = icmp eq i8 %1149, 0
  br i1 %1150, label %1204, label %1151

1151:                                             ; preds = %1147
  %1152 = call fastcc i32 @tcp_sacktag_write_queue(ptr noundef %0, ptr noundef %1, i32 noundef %11, ptr noundef nonnull %6)
  %1153 = load i32, ptr %5, align 4
  %1154 = or i32 %1153, %1152
  store i32 %1154, ptr %5, align 4
  call fastcc void @tcp_fastretrans_alert(ptr noundef %0, i32 noundef %11, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %8)
  %1155 = load i32, ptr %5, align 4
  %1156 = load i32, ptr %22, align 8
  %1157 = sub i32 %1156, %23
  %1158 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %1159 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %1160 = getelementptr [126 x i32], ptr %1159, i32 0, i32 113
  %1161 = ptrtoint ptr %1160 to i32
  %1162 = call i32 @llvm.read_register.i32(metadata !0) #16
  %1163 = inttoptr i32 %1162 to ptr
  %1164 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %1163) #13, !srcloc !14
  %1165 = add i32 %1164, %1161
  %1166 = inttoptr i32 %1165 to ptr
  %1167 = load i32, ptr %1166, align 4
  %1168 = add i32 %1167, %1157
  store i32 %1168, ptr %1166, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1158) #16, !srcloc !15
  %1169 = and i32 %1155, 64
  %1170 = icmp eq i32 %1169, 0
  br i1 %1170, label %1183, label %1171

1171:                                             ; preds = %1151
  %1172 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %1173 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %1174 = getelementptr [126 x i32], ptr %1173, i32 0, i32 114
  %1175 = ptrtoint ptr %1174 to i32
  %1176 = call i32 @llvm.read_register.i32(metadata !0) #16
  %1177 = inttoptr i32 %1176 to ptr
  %1178 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %1177) #13, !srcloc !14
  %1179 = add i32 %1178, %1175
  %1180 = inttoptr i32 %1179 to ptr
  %1181 = load i32, ptr %1180, align 4
  %1182 = add i32 %1181, %1157
  store i32 %1182, ptr %1180, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1172) #16, !srcloc !15
  br label %1183

1183:                                             ; preds = %1171, %1151
  %1184 = load i32, ptr %8, align 4
  %1185 = icmp eq i32 %1184, 0
  br i1 %1185, label %1204, label %1186

1186:                                             ; preds = %1183
  %1187 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %1188 = load volatile i8, ptr %1187, align 2
  %1189 = icmp eq i8 %1188, 2
  br i1 %1189, label %1204, label %1190

1190:                                             ; preds = %1186
  %1191 = icmp eq i32 %1184, 2
  br i1 %1191, label %1192, label %1203, !prof !16

1192:                                             ; preds = %1190
  %1193 = call i32 @tcp_current_mss(ptr noundef %0) #16
  call void @__tcp_push_pending_frames(ptr noundef %0, i32 noundef %1193, i32 noundef 1) #16
  %1194 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 97
  %1195 = load i32, ptr %1194, align 4
  %1196 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %1197 = load i32, ptr %1196, align 4
  %1198 = sub i32 %1195, %1197
  %1199 = icmp slt i32 %1198, 0
  br i1 %1199, label %1204, label %1200

1200:                                             ; preds = %1192
  %1201 = load i16, ptr %12, align 4
  %1202 = and i16 %1201, 32767
  store i16 %1202, ptr %12, align 4
  br label %1203

1203:                                             ; preds = %1200, %1190
  call void @tcp_xmit_retransmit_queue(ptr noundef %0) #16
  br label %1204

1204:                                             ; preds = %1203, %1192, %1186, %1183, %1147, %1145, %1141, %1060, %1050, %1044, %1041, %42, %41, %37
  %1205 = phi i32 [ -1, %41 ], [ -1, %37 ], [ -1, %42 ], [ 1, %1145 ], [ 1, %1141 ], [ 0, %1147 ], [ 1, %1041 ], [ 1, %1044 ], [ 1, %1050 ], [ 1, %1060 ], [ 0, %1183 ], [ 0, %1186 ], [ 0, %1192 ], [ 0, %1203 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #16
  ret i32 %1205
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_data_snd_check(ptr noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  %5 = icmp eq ptr %3, null
  %6 = or i1 %4, %5
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @tcp_current_mss(ptr noundef %0) #16
  %9 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %10 = load i16, ptr %9, align 4
  %11 = lshr i16 %10, 8
  %12 = and i16 %11, 15
  %13 = zext i16 %12 to i32
  tail call void @__tcp_push_pending_frames(ptr noundef %0, i32 noundef %8, i32 noundef %13) #16
  br label %14

14:                                               ; preds = %7, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !39
  %15 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %119, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.socket, ptr %16, i32 0, i32 2
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %119, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 43
  %25 = load i8, ptr %24, align 8
  %26 = and i8 %25, 16
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %110

28:                                               ; preds = %23
  %29 = load volatile i32, ptr @tcp_memory_pressure, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %110, label %35, !prof !11

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %39 = load volatile i32, ptr %38, align 4
  %40 = add i32 %37, %39
  %41 = sub i32 %33, %40
  %42 = tail call i32 @llvm.smax.i32(i32 %41, i32 0) #16
  %43 = icmp ugt i32 %42, 4480
  br i1 %43, label %44, label %110

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 21
  store volatile i32 %42, ptr %45, align 8
  br label %110

46:                                               ; preds = %28
  %47 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.proto, ptr %48, i32 0, i32 30
  %50 = load ptr, ptr %49, align 4
  %51 = load volatile i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.proto, ptr %48, i32 0, i32 33
  %53 = load ptr, ptr %52, align 4
  %54 = load i32, ptr %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %110

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 83
  %62 = load i32, ptr %61, align 8
  %63 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 52
  %64 = load i32, ptr %63, align 8
  %65 = add i32 %60, %62
  %66 = sub i32 %58, %65
  %67 = add i32 %66, %64
  %68 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %69 = load i32, ptr %68, align 8
  %70 = icmp ult i32 %67, %69
  br i1 %70, label %71, label %110

71:                                               ; preds = %56
  %72 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 7
  %77 = load i16, ptr %76, align 2
  %78 = zext i16 %77 to i32
  %79 = tail call i32 @llvm.umax.i32(i32 %75, i32 %78) #16
  %80 = add i32 %79, 575
  %81 = icmp eq i32 %80, 0
  %82 = tail call i32 @llvm.ctlz.i32(i32 %80, i1 false) #16, !range !40
  %83 = sub nuw nsw i32 32, %82
  %84 = shl nuw i32 1, %83
  %85 = add nuw i32 %84, 192
  %86 = select i1 %81, i32 193, i32 %85
  %87 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 58
  %88 = load i32, ptr %87, align 8
  %89 = add i32 %88, 1
  %90 = tail call i32 @llvm.umax.i32(i32 %69, i32 %89) #16
  %91 = tail call i32 @llvm.umax.i32(i32 %90, i32 10) #16
  %92 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %73, i32 0, i32 9
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %71
  %96 = tail call i32 %93(ptr noundef %0) #16
  br label %97

97:                                               ; preds = %95, %71
  %98 = phi i32 [ %96, %95 ], [ 2, %71 ]
  %99 = mul i32 %91, %86
  %100 = mul i32 %99, %98
  %101 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 21
  %102 = load i32, ptr %101, align 8
  %103 = icmp slt i32 %102, %100
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 96, i32 2), align 4
  %106 = tail call i32 @llvm.smin.i32(i32 %100, i32 %105) #16
  store volatile i32 %106, ptr %101, align 8
  br label %107

107:                                              ; preds = %104, %97
  %108 = load volatile i32, ptr @jiffies, align 64
  %109 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 67
  store i32 %108, ptr %109, align 8
  br label %110

110:                                              ; preds = %107, %56, %46, %44, %35, %31, %23
  %111 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 77
  %112 = load ptr, ptr %111, align 4
  tail call void %112(ptr noundef %0) #16
  %113 = load ptr, ptr %15, align 8
  %114 = getelementptr inbounds %struct.socket, ptr %113, i32 0, i32 2
  %115 = load volatile i32, ptr %114, align 4
  %116 = and i32 %115, 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  tail call void @tcp_chrono_stop(ptr noundef %0, i32 noundef 3) #16
  br label %119

119:                                              ; preds = %118, %110, %18, %14
  ret void
}

; Function Attrs: argmemonly inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_rcv_rtt_measure_ts(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 110
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %42, label %8

8:                                                ; preds = %2
  store i32 %4, ptr %5, align 4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = load i32, ptr %9, align 8
  %13 = sub i32 %11, %12
  %14 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 8
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %42, label %18

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  %20 = load i64, ptr %19, align 8
  %21 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %20, i32 0) #17, !srcloc !17
  %22 = extractvalue { i64, i32 } %21, 0
  %23 = extractvalue { i64, i32 } %21, 1
  %24 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %20, i64 %22, i32 %23) #17, !srcloc !18
  %25 = extractvalue { i64, i32 } %24, 0
  %26 = lshr i64 %25, 9
  %27 = trunc i64 %26 to i32
  %28 = sub i32 %27, %4
  %29 = icmp ult i32 %28, 2147483
  br i1 %29, label %30, label %42, !prof !11

30:                                               ; preds = %18
  %31 = icmp eq i32 %4, %27
  %32 = mul nuw nsw i32 %28, 1000
  %33 = select i1 %31, i32 1000, i32 %32
  %34 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 111
  %35 = load i32, ptr %34, align 8
  %36 = icmp eq i32 %35, 0
  %37 = lshr i32 %35, 3
  %38 = add i32 %35, %33
  %39 = sub i32 %38, %37
  %40 = shl i32 %33, 3
  %41 = select i1 %36, i32 %40, i32 %39
  store i32 %41, ptr %34, align 8
  br label %42

42:                                               ; preds = %30, %18, %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_event_data_recv(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24
  %4 = load i8, ptr %3, align 4
  %5 = or i8 %4, 1
  store i8 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 7
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  store i16 0, ptr %6, align 4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.skb_shared_info, ptr %10, i32 0, i32 4
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = icmp eq i16 %12, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  br label %18

18:                                               ; preds = %15, %2
  %19 = phi i32 [ %17, %15 ], [ %13, %2 ]
  %20 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 8
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %33, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 32
  %26 = load i16, ptr %25, align 8
  %27 = zext i16 %26 to i32
  %28 = tail call i32 @llvm.umin.i32(i32 %19, i32 %27) #16
  %29 = trunc i32 %28 to i16
  store i16 %29, ptr %20, align 2
  %30 = add nuw nsw i32 %28, 40
  %31 = icmp ugt i32 %19, %30
  br i1 %31, label %32, label %67, !prof !16

32:                                               ; preds = %24
  tail call fastcc void @tcp_gro_dev_warn(ptr noundef %0, ptr noundef %1, i32 noundef %19) #16
  br label %67

33:                                               ; preds = %18
  %34 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %39 = load i16, ptr %38, align 2
  %40 = zext i16 %39 to i32
  %41 = getelementptr i8, ptr %37, i32 %40
  %42 = ptrtoint ptr %35 to i32
  %43 = ptrtoint ptr %41 to i32
  %44 = sub i32 %42, %43
  %45 = add i32 %44, %19
  %46 = icmp ugt i32 %45, 555
  br i1 %46, label %54, label %47

47:                                               ; preds = %33
  %48 = icmp ugt i32 %45, 107
  br i1 %48, label %49, label %62

49:                                               ; preds = %47
  %50 = getelementptr [5 x i32], ptr %41, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 11008
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49, %33
  %55 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 1
  %56 = load i16, ptr %55, align 8
  %57 = zext i16 %56 to i32
  %58 = sub i32 %45, %57
  %59 = trunc i32 %58 to i16
  store i16 %59, ptr %6, align 4
  %60 = icmp eq i32 %58, %8
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i16 %59, ptr %20, align 2
  br label %67

62:                                               ; preds = %54, %49, %47
  %63 = shl i8 %4, 1
  %64 = and i8 %63, 8
  %65 = or i8 %4, %64
  %66 = or i8 %65, 5
  store i8 %66, ptr %3, align 4
  br label %67

67:                                               ; preds = %62, %61, %32, %24
  %68 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 111, i32 2
  %69 = load i64, ptr %68, align 8
  %70 = icmp eq i64 %69, 0
  %71 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %72 = load i32, ptr %71, align 8
  br i1 %70, label %73, label %76

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  %75 = load i64, ptr %74, align 8
  br label %95

76:                                               ; preds = %67
  %77 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 111, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = sub i32 %72, %78
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %101, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  %83 = load i64, ptr %82, align 8
  %84 = sub i64 %83, %69
  %85 = tail call i64 @llvm.smax.i64(i64 %84, i64 0) #16
  %86 = trunc i64 %85 to i32
  %87 = icmp eq i32 %86, 0
  %88 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 111
  %89 = load i32, ptr %88, align 8
  %90 = icmp eq i32 %89, 0
  %91 = shl i32 %86, 3
  %92 = select i1 %87, i32 8, i32 %91
  %93 = tail call i32 @llvm.umin.i32(i32 %92, i32 %89) #16
  %94 = select i1 %90, i32 %92, i32 %93
  store i32 %94, ptr %88, align 8
  br label %95

95:                                               ; preds = %81, %73
  %96 = phi i64 [ %75, %73 ], [ %83, %81 ]
  %97 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 79
  %98 = load i32, ptr %97, align 8
  %99 = add i32 %98, %72
  %100 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 111, i32 1
  store i32 %99, ptr %100, align 4
  store i64 %96, ptr %68, align 8
  br label %101

101:                                              ; preds = %95, %76
  %102 = load volatile i32, ptr @jiffies, align 64
  %103 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 4
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %123

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 79
  %108 = load i32, ptr %107, align 8
  %109 = load i16, ptr %20, align 2
  %110 = zext i16 %109 to i32
  %111 = shl nuw nsw i32 %110, 1
  %112 = udiv i32 %108, %111
  %113 = icmp ugt i32 %111, %108
  %114 = tail call i32 @llvm.umin.i32(i32 %112, i32 16)
  %115 = select i1 %113, i32 2, i32 %114
  %116 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 1
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp ugt i32 %115, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %106
  %121 = trunc i32 %115 to i8
  store i8 %121, ptr %116, align 1
  br label %122

122:                                              ; preds = %120, %106
  store i32 4, ptr %103, align 4
  br label %184

123:                                              ; preds = %101
  %124 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 6
  %125 = load i32, ptr %124, align 4
  %126 = sub i32 %102, %125
  %127 = icmp ult i32 %126, 3
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = lshr i32 %104, 1
  %130 = add nuw i32 %129, 2
  store i32 %130, ptr %103, align 4
  br label %184

131:                                              ; preds = %123
  %132 = icmp ult i32 %126, %104
  br i1 %132, label %133, label %139

133:                                              ; preds = %131
  %134 = lshr i32 %104, 1
  %135 = add i32 %126, %134
  %136 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 6
  %137 = load i32, ptr %136, align 4
  %138 = tail call i32 @llvm.umin.i32(i32 %135, i32 %137)
  store i32 %138, ptr %103, align 4
  br label %184

139:                                              ; preds = %131
  %140 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 6
  %141 = load i32, ptr %140, align 4
  %142 = icmp ugt i32 %126, %141
  br i1 %142, label %143, label %184

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 79
  %145 = load i32, ptr %144, align 8
  %146 = load i16, ptr %20, align 2
  %147 = zext i16 %146 to i32
  %148 = shl nuw nsw i32 %147, 1
  %149 = udiv i32 %145, %148
  %150 = icmp ugt i32 %148, %145
  %151 = tail call i32 @llvm.umin.i32(i32 %149, i32 16)
  %152 = select i1 %150, i32 2, i32 %151
  %153 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 1
  %154 = load i8, ptr %153, align 1
  %155 = zext i8 %154 to i32
  %156 = icmp ugt i32 %152, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %143
  %158 = trunc i32 %152 to i8
  store i8 %158, ptr %153, align 1
  br label %159

159:                                              ; preds = %157, %143
  %160 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %161 = load ptr, ptr %160, align 8
  %162 = getelementptr inbounds %struct.proto, ptr %161, i32 0, i32 30
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %184, label %165

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %167 = load i32, ptr %166, align 4
  %168 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  %169 = load i32, ptr %168, align 8
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %179, label %171, !prof !11

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %173 = load i32, ptr %172, align 4
  %174 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %175 = load volatile i32, ptr %174, align 4
  %176 = add i32 %173, %175
  %177 = sub i32 %169, %176
  %178 = tail call i32 @llvm.smax.i32(i32 %177, i32 0) #16
  br label %179

179:                                              ; preds = %171, %165
  %180 = phi i32 [ %178, %171 ], [ 0, %165 ]
  %181 = sub i32 %167, %180
  %182 = icmp sgt i32 %181, 4095
  br i1 %182, label %183, label %184

183:                                              ; preds = %179
  tail call void @__sk_mem_reclaim(ptr noundef %0, i32 noundef %181) #16
  br label %184

184:                                              ; preds = %183, %179, %159, %139, %133, %128, %122
  %185 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 6
  store i32 %102, ptr %185, align 4
  tail call fastcc void @tcp_ecn_check_ce(ptr noundef %0, ptr noundef %1)
  %186 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %187 = load i32, ptr %186, align 8
  %188 = icmp ugt i32 %187, 127
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  tail call fastcc void @tcp_grow_window(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true)
  br label %190

190:                                              ; preds = %189, %184
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__tcp_ack_snd_check(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 9
  %6 = load i32, ptr %5, align 8
  %7 = sub i32 %4, %6
  %8 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 8
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = icmp ugt i32 %7, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 %4, %14
  %16 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %49, label %19

19:                                               ; preds = %12
  %20 = tail call i32 @__tcp_select_window(ptr noundef %0) #16
  %21 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 79
  %22 = load i32, ptr %21, align 8
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %19, %2
  %25 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %26 = load volatile ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.dst_entry, ptr %26, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, -4
  %32 = inttoptr i32 %31 to ptr
  %33 = getelementptr i32, ptr %32, i32 14
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %28, %24
  %37 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 1
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 2
  %42 = load i8, ptr %41, align 2
  %43 = icmp ult i8 %42, 3
  br i1 %43, label %49, label %44

44:                                               ; preds = %40, %36
  %45 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24
  %46 = load i8, ptr %45, align 4
  %47 = and i8 %46, 16
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %83, %62, %57, %44, %40, %28, %19, %12
  tail call void @tcp_send_ack(ptr noundef %0) #16
  br label %123

50:                                               ; preds = %44
  %51 = icmp eq i32 %1, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 89
  %54 = load volatile ptr, ptr %53, align 8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %50
  tail call void @tcp_send_delayed_ack(ptr noundef %0) #16
  br label %123

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %59 = load i24, ptr %58, align 4
  %60 = and i24 %59, 112
  %61 = icmp eq i24 %60, 0
  br i1 %61, label %49, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 33
  %64 = load i8, ptr %63, align 2
  %65 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 92), align 1
  %66 = icmp ult i8 %64, %65
  br i1 %66, label %67, label %49

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 21
  %69 = load i32, ptr %68, align 8
  %70 = load i32, ptr %3, align 8
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 34
  %74 = load i8, ptr %73, align 1
  br label %79

75:                                               ; preds = %67
  store i32 %70, ptr %68, align 8
  %76 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 34
  %77 = load i8, ptr %76, align 1
  %78 = and i8 %77, -4
  store i8 %78, ptr %76, align 1
  br label %79

79:                                               ; preds = %75, %72
  %80 = phi i8 [ %74, %72 ], [ %78, %75 ]
  %81 = and i8 %80, 3
  %82 = icmp eq i8 %81, 3
  br i1 %82, label %89, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 34
  %85 = add i8 %80, 1
  %86 = and i8 %85, 3
  %87 = and i8 %80, -4
  %88 = or i8 %86, %87
  store i8 %88, ptr %84, align 1
  br label %49

89:                                               ; preds = %79
  %90 = add nuw i8 %64, 1
  store i8 %90, ptr %63, align 2
  %91 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 86
  %92 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 86, i32 4
  %93 = load volatile i8, ptr %92, align 8
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %123

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 111
  %98 = load i32, ptr %97, align 8
  %99 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 45
  %100 = load i32, ptr %99, align 8
  %101 = icmp ne i32 %100, 0
  %102 = icmp ult i32 %100, %98
  %103 = select i1 %101, i1 %102, i1 false
  %104 = select i1 %103, i32 %100, i32 %98
  %105 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 98), align 4
  %106 = mul i32 %104, 125
  %107 = udiv i32 %106, 20
  %108 = tail call i32 @llvm.umin.i32(i32 %105, i32 %107)
  %109 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %109) #16, !srcloc !27
  %110 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %109, ptr %109, i32 1, ptr elementtype(i32) %109) #16, !srcloc !41
  %111 = extractvalue { i32, i32, i32 } %110, 0
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %117, label %113, !prof !16

113:                                              ; preds = %96
  %114 = add i32 %111, 1
  %115 = or i32 %114, %111
  %116 = icmp sgt i32 %115, -1
  br i1 %116, label %119, label %117, !prof !11

117:                                              ; preds = %113, %96
  %118 = phi i32 [ 2, %96 ], [ 1, %113 ]
  tail call void @refcount_warn_saturate(ptr noundef %109, i32 noundef %118) #16
  br label %119

119:                                              ; preds = %117, %113
  %120 = zext i32 %108 to i64
  %121 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 99), align 32
  %122 = zext i32 %121 to i64
  tail call void @hrtimer_start_range_ns(ptr noundef %91, i64 noundef %120, i64 noundef %122, i32 noundef 7) #16
  br label %123

123:                                              ; preds = %119, %89, %56, %49
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_partial(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tcp_validate_incoming(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.tcphdr, ptr %2, i32 0, i32 4
  %6 = load i16, ptr %5, align 4
  %7 = lshr i16 %6, 4
  %8 = and i16 %7, 15
  %9 = icmp eq i16 %8, 5
  br i1 %9, label %51, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61
  %12 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %13 = load i24, ptr %12, align 4
  %14 = and i24 %13, 2
  %15 = icmp ne i24 %14, 0
  %16 = icmp eq i16 %8, 8
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %39

18:                                               ; preds = %10
  %19 = getelementptr %struct.tcphdr, ptr %2, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 168296705
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = or i24 %13, 1
  store i24 %23, ptr %12, align 4
  %24 = getelementptr %struct.tcphdr, ptr %2, i32 1, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #16
  %27 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 2
  store i32 %26, ptr %27, align 4
  %28 = getelementptr %struct.tcphdr, ptr %2, i32 1, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %22
  %32 = tail call i32 @llvm.bswap.i32(i32 %29) #16
  %33 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 22
  %34 = load i32, ptr %33, align 4
  %35 = sub i32 %32, %34
  br label %36

36:                                               ; preds = %31, %22
  %37 = phi i32 [ %35, %31 ], [ 0, %22 ]
  %38 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 3
  store i32 %37, ptr %38, align 4
  br label %55

39:                                               ; preds = %18, %10
  tail call void @tcp_parse_options(ptr noundef nonnull @init_net, ptr noundef %1, ptr noundef %11, i32 noundef 1, ptr noundef null) #16
  %40 = load i24, ptr %12, align 4
  %41 = and i24 %40, 1
  %42 = icmp eq i24 %41, 0
  br i1 %42, label %182, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 22
  %49 = load i32, ptr %48, align 4
  %50 = sub i32 %45, %49
  store i32 %50, ptr %44, align 4
  br label %55

51:                                               ; preds = %4
  %52 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %53 = load i24, ptr %52, align 4
  %54 = and i24 %53, -2
  store i24 %54, ptr %52, align 4
  br label %182

55:                                               ; preds = %47, %43, %36
  %56 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = sub i32 %57, %59
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %182

62:                                               ; preds = %55
  %63 = tail call i64 @ktime_get_seconds() #16
  %64 = trunc i64 %63 to i32
  %65 = load i32, ptr %11, align 4
  %66 = sub i32 -2073600, %65
  %67 = add i32 %66, %64
  %68 = icmp sgt i32 %67, -1
  br i1 %68, label %182, label %69, !prof !16

69:                                               ; preds = %62
  %70 = load i32, ptr %56, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %182, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %76 = load i16, ptr %75, align 2
  %77 = zext i16 %76 to i32
  %78 = getelementptr i8, ptr %74, i32 %77
  %79 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %80 = load i32, ptr %79, align 8
  %81 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  %82 = load i32, ptr %81, align 8
  %83 = getelementptr inbounds %struct.tcphdr, ptr %78, i32 0, i32 4
  %84 = load i16, ptr %83, align 4
  %85 = and i16 %84, 4096
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %127, label %87

87:                                               ; preds = %72
  %88 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %80, %89
  br i1 %90, label %91, label %127

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %93 = load i32, ptr %92, align 8
  %94 = icmp eq i32 %80, %93
  br i1 %94, label %95, label %127

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, %82
  br i1 %98, label %99, label %127

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.tcphdr, ptr %78, i32 0, i32 5
  %101 = load i16, ptr %100, align 2
  %102 = tail call i16 @llvm.bswap.i16(i16 %101) #16
  %103 = zext i16 %102 to i32
  %104 = load i24, ptr %12, align 4
  %105 = zext i24 %104 to i32
  %106 = lshr i32 %105, 8
  %107 = and i32 %106, 15
  %108 = shl nuw nsw i32 %103, %107
  %109 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 25
  %110 = load i32, ptr %109, align 8
  %111 = sub i32 %110, %80
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %127, label %113

113:                                              ; preds = %99
  %114 = icmp eq i32 %110, %80
  br i1 %114, label %115, label %119

115:                                              ; preds = %113
  %116 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 26
  %117 = load i32, ptr %116, align 4
  %118 = icmp ult i32 %117, %108
  br i1 %118, label %127, label %119

119:                                              ; preds = %115, %113
  %120 = load i32, ptr %58, align 4
  %121 = sub i32 %70, %120
  %122 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 6
  %123 = load i32, ptr %122, align 4
  %124 = shl i32 %123, 10
  %125 = udiv i32 %124, 100
  %126 = icmp ugt i32 %121, %125
  br i1 %126, label %127, label %182

127:                                              ; preds = %119, %115, %99, %95, %91, %87, %72
  %128 = load i16, ptr %5, align 4
  %129 = and i16 %128, 1024
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %131, label %182

131:                                              ; preds = %127
  %132 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %133 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %134 = getelementptr [126 x i32], ptr %133, i32 0, i32 15
  %135 = ptrtoint ptr %134 to i32
  %136 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %137 = inttoptr i32 %136 to ptr
  %138 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %137) #13, !srcloc !14
  %139 = add i32 %138, %135
  %140 = inttoptr i32 %139 to ptr
  %141 = load i32, ptr %140, align 4
  %142 = add i32 %141, 1
  store i32 %142, ptr %140, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %132) #16, !srcloc !15
  %143 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 20
  %144 = load i32, ptr %79, align 8
  %145 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq i32 %144, %146
  br i1 %147, label %157, label %148

148:                                              ; preds = %131
  %149 = load ptr, ptr %73, align 8
  %150 = load i16, ptr %75, align 2
  %151 = zext i16 %150 to i32
  %152 = getelementptr i8, ptr %149, i32 %151
  %153 = getelementptr inbounds %struct.tcphdr, ptr %152, i32 0, i32 4
  %154 = load i16, ptr %153, align 4
  %155 = and i16 %154, 512
  %156 = icmp eq i16 %155, 0
  br i1 %156, label %181, label %157

157:                                              ; preds = %148, %131
  %158 = load i32, ptr %143, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %167, label %160

160:                                              ; preds = %157
  %161 = load volatile i32, ptr @jiffies, align 64
  %162 = sub i32 %161, %158
  %163 = icmp sgt i32 %162, -1
  %164 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 93), align 8
  %165 = icmp slt i32 %162, %164
  %166 = select i1 %163, i1 %165, i1 false
  br i1 %166, label %169, label %167

167:                                              ; preds = %160, %157
  %168 = load volatile i32, ptr @jiffies, align 64
  store i32 %168, ptr %143, align 4
  br label %181

169:                                              ; preds = %160
  %170 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %171 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %172 = getelementptr [126 x i32], ptr %171, i32 0, i32 104
  %173 = ptrtoint ptr %172 to i32
  %174 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %175 = inttoptr i32 %174 to ptr
  %176 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %175) #13, !srcloc !14
  %177 = add i32 %176, %173
  %178 = inttoptr i32 %177 to ptr
  %179 = load i32, ptr %178, align 4
  %180 = add i32 %179, 1
  store i32 %180, ptr %178, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %170) #16, !srcloc !15
  br label %350

181:                                              ; preds = %167, %148
  tail call fastcc void @tcp_send_dupack(ptr noundef %0, ptr noundef %1)
  br label %350

182:                                              ; preds = %127, %119, %69, %62, %55, %51, %39
  %183 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %184 = load i32, ptr %183, align 8
  %185 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %186 = load i32, ptr %185, align 4
  %187 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 9
  %188 = load i32, ptr %187, align 8
  %189 = sub i32 %186, %188
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %202, label %191

191:                                              ; preds = %182
  %192 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %193 = load i32, ptr %192, align 8
  %194 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 79
  %195 = load i32, ptr %194, align 8
  %196 = sub i32 %188, %193
  %197 = add i32 %196, %195
  %198 = tail call i32 @llvm.smax.i32(i32 %197, i32 0) #16
  %199 = sub i32 %193, %184
  %200 = add i32 %199, %198
  %201 = icmp sgt i32 %200, -1
  br i1 %201, label %261, label %202

202:                                              ; preds = %191, %182
  %203 = load i16, ptr %5, align 4
  %204 = and i16 %203, 1024
  %205 = icmp eq i16 %204, 0
  br i1 %205, label %206, label %248

206:                                              ; preds = %202
  %207 = and i16 %203, 512
  %208 = icmp eq i16 %207, 0
  br i1 %208, label %209, label %324

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 20
  %211 = icmp eq i32 %184, %186
  br i1 %211, label %223, label %212

212:                                              ; preds = %209
  %213 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %214 = load ptr, ptr %213, align 8
  %215 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %216 = load i16, ptr %215, align 2
  %217 = zext i16 %216 to i32
  %218 = getelementptr i8, ptr %214, i32 %217
  %219 = getelementptr inbounds %struct.tcphdr, ptr %218, i32 0, i32 4
  %220 = load i16, ptr %219, align 4
  %221 = and i16 %220, 512
  %222 = icmp eq i16 %221, 0
  br i1 %222, label %247, label %223

223:                                              ; preds = %212, %209
  %224 = load i32, ptr %210, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %233, label %226

226:                                              ; preds = %223
  %227 = load volatile i32, ptr @jiffies, align 64
  %228 = sub i32 %227, %224
  %229 = icmp sgt i32 %228, -1
  %230 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 93), align 8
  %231 = icmp slt i32 %228, %230
  %232 = select i1 %229, i1 %231, i1 false
  br i1 %232, label %235, label %233

233:                                              ; preds = %226, %223
  %234 = load volatile i32, ptr @jiffies, align 64
  store i32 %234, ptr %210, align 4
  br label %247

235:                                              ; preds = %226
  %236 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %237 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %238 = getelementptr [126 x i32], ptr %237, i32 0, i32 105
  %239 = ptrtoint ptr %238 to i32
  %240 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %241 = inttoptr i32 %240 to ptr
  %242 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %241) #13, !srcloc !14
  %243 = add i32 %242, %239
  %244 = inttoptr i32 %243 to ptr
  %245 = load i32, ptr %244, align 4
  %246 = add i32 %245, 1
  store i32 %246, ptr %244, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %236) #16, !srcloc !15
  br label %350

247:                                              ; preds = %233, %212
  tail call fastcc void @tcp_send_dupack(ptr noundef %0, ptr noundef %1)
  br label %350

248:                                              ; preds = %202
  %249 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %250 = load i32, ptr %249, align 8
  %251 = add i32 %250, -1
  %252 = icmp eq i32 %184, %251
  br i1 %252, label %253, label %350

253:                                              ; preds = %248
  %254 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %255 = load volatile i8, ptr %254, align 2
  %256 = zext i8 %255 to i32
  %257 = shl nuw i32 1, %256
  %258 = and i32 %257, 2816
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %350, label %260

260:                                              ; preds = %253
  tail call void @tcp_reset(ptr noundef %0, ptr undef)
  br label %350

261:                                              ; preds = %191
  %262 = load i16, ptr %5, align 4
  %263 = and i16 %262, 1024
  %264 = icmp eq i16 %263, 0
  br i1 %264, label %321, label %265

265:                                              ; preds = %261
  %266 = icmp eq i32 %193, %184
  br i1 %266, label %305, label %267

267:                                              ; preds = %265
  %268 = add i32 %193, -1
  %269 = icmp eq i32 %184, %268
  br i1 %269, label %270, label %277

270:                                              ; preds = %267
  %271 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %272 = load volatile i8, ptr %271, align 2
  %273 = zext i8 %272 to i32
  %274 = shl nuw i32 1, %273
  %275 = and i32 %274, 2816
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %305

277:                                              ; preds = %270, %267
  %278 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %279 = load i24, ptr %278, align 4
  %280 = and i24 %279, 112
  %281 = icmp eq i24 %280, 0
  br i1 %281, label %306, label %282

282:                                              ; preds = %277
  %283 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 5
  %284 = load i8, ptr %283, align 1
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %306, label %286

286:                                              ; preds = %282
  %287 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 92
  %288 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 92, i32 0, i32 1
  %289 = load i32, ptr %288, align 4
  %290 = zext i8 %284 to i32
  %291 = icmp eq i8 %284, 1
  br i1 %291, label %302, label %292

292:                                              ; preds = %292, %286
  %293 = phi i32 [ %299, %292 ], [ %289, %286 ]
  %294 = phi i32 [ %300, %292 ], [ 1, %286 ]
  %295 = getelementptr %struct.tcp_sack_block, ptr %287, i32 %294, i32 1
  %296 = load i32, ptr %295, align 4
  %297 = sub i32 %293, %296
  %298 = icmp slt i32 %297, 0
  %299 = select i1 %298, i32 %296, i32 %293
  %300 = add nuw nsw i32 %294, 1
  %301 = icmp eq i32 %300, %290
  br i1 %301, label %302, label %292

302:                                              ; preds = %292, %286
  %303 = phi i32 [ %289, %286 ], [ %299, %292 ]
  %304 = icmp eq i32 %184, %303
  br i1 %304, label %305, label %306

305:                                              ; preds = %302, %270, %265
  tail call void @tcp_reset(ptr noundef %0, ptr undef)
  br label %350

306:                                              ; preds = %302, %282, %277
  %307 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 39
  %308 = load i8, ptr %307, align 1
  %309 = and i8 %308, 8
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %320, label %311

311:                                              ; preds = %306
  %312 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 6
  %313 = load i32, ptr %312, align 4
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %320

315:                                              ; preds = %311
  %316 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %317 = load volatile i8, ptr %316, align 2
  %318 = icmp eq i8 %317, 1
  br i1 %318, label %319, label %320

319:                                              ; preds = %315
  tail call void @tcp_fastopen_active_disable(ptr noundef %0) #16
  br label %320

320:                                              ; preds = %319, %315, %311, %306
  tail call fastcc void @tcp_send_challenge_ack(ptr noundef %0)
  br label %350

321:                                              ; preds = %261
  %322 = and i16 %262, 512
  %323 = icmp eq i16 %322, 0
  br i1 %323, label %360, label %324

324:                                              ; preds = %321, %206
  %325 = icmp eq i32 %3, 0
  br i1 %325, label %338, label %326

326:                                              ; preds = %324
  %327 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %328 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %329 = getelementptr [16 x i32], ptr %328, i32 0, i32 13
  %330 = ptrtoint ptr %329 to i32
  %331 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %332 = inttoptr i32 %331 to ptr
  %333 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %332) #13, !srcloc !14
  %334 = add i32 %333, %330
  %335 = inttoptr i32 %334 to ptr
  %336 = load i32, ptr %335, align 4
  %337 = add i32 %336, 1
  store i32 %337, ptr %335, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %327) #16, !srcloc !15
  br label %338

338:                                              ; preds = %326, %324
  %339 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %340 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %341 = getelementptr [126 x i32], ptr %340, i32 0, i32 83
  %342 = ptrtoint ptr %341 to i32
  %343 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %344 = inttoptr i32 %343 to ptr
  %345 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %344) #13, !srcloc !14
  %346 = add i32 %345, %342
  %347 = inttoptr i32 %346 to ptr
  %348 = load i32, ptr %347, align 4
  %349 = add i32 %348, 1
  store i32 %349, ptr %347, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %339) #16, !srcloc !15
  tail call fastcc void @tcp_send_challenge_ack(ptr noundef %0)
  br label %350

350:                                              ; preds = %338, %320, %305, %260, %253, %248, %247, %235, %181, %169
  %351 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %352 = load ptr, ptr %351, align 4
  %353 = getelementptr inbounds %struct.skb_shared_info, ptr %352, i32 0, i32 5
  %354 = load i16, ptr %353, align 2
  %355 = icmp eq i16 %354, 0
  %356 = select i1 %355, i16 1, i16 %354
  %357 = zext i16 %356 to i32
  %358 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %358) #16, !srcloc !27
  %359 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %358, ptr %358, i32 %357, ptr elementtype(i32) %358) #16, !srcloc !28
  tail call void @__kfree_skb(ptr noundef %1) #16
  br label %360

360:                                              ; preds = %350, %321
  %361 = phi i1 [ false, %350 ], [ true, %321 ]
  ret i1 %361
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_urg(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.tcphdr, ptr %2, i32 0, i32 4
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 8192
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %10, label %9, !prof !11

9:                                                ; preds = %3
  tail call fastcc void @tcp_check_urg(ptr noundef %0, ptr noundef %2)
  br label %10

10:                                               ; preds = %9, %3
  %11 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 55
  %12 = load i16, ptr %11, align 4
  %13 = icmp eq i16 %12, 512
  br i1 %13, label %14, label %49, !prof !16

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 103
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.tcphdr, ptr %2, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = load i16, ptr %5, align 4
  %21 = lshr i16 %20, 2
  %22 = and i16 %21, 60
  %23 = zext i16 %22 to i32
  %24 = lshr i16 %20, 9
  %25 = and i16 %24, 1
  %26 = zext i16 %25 to i32
  %27 = add i32 %16, %23
  %28 = add i32 %19, %26
  %29 = sub i32 %27, %28
  %30 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %31 = load i32, ptr %30, align 8
  %32 = icmp ult i32 %29, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #16
  store i8 0, ptr %4, align 1, !annotation !24
  %34 = call i32 @skb_copy_bits(ptr noundef %1, i32 noundef %29, ptr noundef nonnull %4, i32 noundef 1) #16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/tcp_input.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5621, 0\0A.popsection", ""() #16, !srcloc !42
  unreachable

37:                                               ; preds = %33
  %38 = load i8, ptr %4, align 1
  %39 = zext i8 %38 to i16
  %40 = or i16 %39, 256
  store volatile i16 %40, ptr %11, align 4
  %41 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 76
  %47 = load ptr, ptr %46, align 8
  call void %47(ptr noundef %0) #16
  br label %48

48:                                               ; preds = %45, %37
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  br label %49

49:                                               ; preds = %48, %14, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_data_queue(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  store i8 0, ptr %5, align 1, !annotation !24
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  tail call void @__kfree_skb(ptr noundef %1) #16
  br label %1151

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = and i32 %14, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = and i32 %14, -2
  %21 = inttoptr i32 %20 to ptr
  tail call void @dst_release(ptr noundef %21) #16
  br label %22

22:                                               ; preds = %19, %16
  store i32 0, ptr %13, align 8
  br label %23

23:                                               ; preds = %22, %12
  %24 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %27 = load i16, ptr %26, align 2
  %28 = zext i16 %27 to i32
  %29 = getelementptr i8, ptr %25, i32 %28
  %30 = getelementptr inbounds %struct.tcphdr, ptr %29, i32 0, i32 4
  %31 = load i16, ptr %30, align 4
  %32 = lshr i16 %31, 2
  %33 = and i16 %32, 60
  %34 = zext i16 %33 to i32
  %35 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %36 = load i32, ptr %35, align 8
  %37 = sub i32 %36, %34
  store i32 %37, ptr %35, align 8
  %38 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = icmp ult i32 %37, %39
  br i1 %40, label %41, label %42, !prof !16

41:                                               ; preds = %23
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #16, !srcloc !31
  unreachable

42:                                               ; preds = %23
  %43 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %44, i32 %34
  store ptr %45, ptr %43, align 4
  %46 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %47 = load i24, ptr %46, align 4
  %48 = and i24 %47, -5
  store i24 %48, ptr %46, align 4
  %49 = load i32, ptr %6, align 8
  %50 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %51 = load i32, ptr %50, align 8
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %364

53:                                               ; preds = %42
  %54 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 9
  %55 = load i32, ptr %54, align 8
  %56 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 79
  %57 = load i32, ptr %56, align 8
  %58 = sub i32 %55, %49
  %59 = add i32 %58, %57
  %60 = icmp slt i32 %59, 1
  br i1 %60, label %61, label %73

61:                                               ; preds = %53
  %62 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %63 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %64 = getelementptr [126 x i32], ptr %63, i32 0, i32 116
  %65 = ptrtoint ptr %64 to i32
  %66 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %67 = inttoptr i32 %66 to ptr
  %68 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %67) #13, !srcloc !14
  %69 = add i32 %68, %65
  %70 = inttoptr i32 %69 to ptr
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, 1
  store i32 %72, ptr %70, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %62) #16, !srcloc !15
  br label %430

73:                                               ; preds = %502, %53
  %74 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  %75 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  %78 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %79 = load i32, ptr %78, align 8
  br i1 %77, label %80, label %81

80:                                               ; preds = %73
  tail call void @sk_forced_mem_schedule(ptr noundef %0, i32 noundef %79) #16
  br label %98

81:                                               ; preds = %73
  %82 = tail call fastcc i32 @tcp_try_rmem_schedule(ptr noundef %0, ptr noundef %1, i32 noundef %79)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %98, label %84

84:                                               ; preds = %81
  %85 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %86 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %87 = getelementptr [126 x i32], ptr %86, i32 0, i32 117
  %88 = ptrtoint ptr %87 to i32
  %89 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %90 = inttoptr i32 %89 to ptr
  %91 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %90) #13, !srcloc !14
  %92 = add i32 %91, %88
  %93 = inttoptr i32 %92 to ptr
  %94 = load i32, ptr %93, align 4
  %95 = add i32 %94, 1
  store i32 %95, ptr %93, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %85) #16, !srcloc !15
  %96 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 76
  %97 = load ptr, ptr %96, align 8
  tail call void %97(ptr noundef %0) #16
  br label %453

98:                                               ; preds = %81, %80
  %99 = call fastcc i32 @tcp_queue_rcv(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5)
  %100 = load i32, ptr %35, align 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  call fastcc void @tcp_event_data_recv(ptr noundef %0, ptr noundef %1)
  br label %103

103:                                              ; preds = %102, %98
  %104 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %105 = load i8, ptr %104, align 4
  %106 = and i8 %105, 1
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %103
  call void @tcp_fin(ptr noundef %0)
  br label %109

109:                                              ; preds = %108, %103
  %110 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 89
  %111 = load volatile ptr, ptr %110, align 8
  %112 = icmp eq ptr %111, null
  br i1 %112, label %230, label %113

113:                                              ; preds = %109
  %114 = load i32, ptr %50, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #16
  store i8 0, ptr %4, align 1, !annotation !24
  %115 = call ptr @rb_first(ptr noundef %110) #16
  %116 = icmp eq ptr %115, null
  br i1 %116, label %223, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 91
  %119 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 91, i32 0, i32 1
  %120 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 1
  %121 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 4
  br label %122

122:                                              ; preds = %190, %117
  %123 = phi i32 [ %114, %117 ], [ %182, %190 ]
  %124 = phi ptr [ %115, %117 ], [ %183, %190 ]
  %125 = load i32, ptr %50, align 8
  %126 = getelementptr inbounds %struct.sk_buff, ptr %124, i32 0, i32 3
  %127 = load i32, ptr %126, align 8
  %128 = sub i32 %125, %127
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %223, label %130

130:                                              ; preds = %122
  %131 = sub i32 %127, %123
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %181

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.sk_buff, ptr %124, i32 0, i32 3, i32 4
  %135 = load i32, ptr %134, align 4
  %136 = sub i32 %135, %123
  %137 = icmp slt i32 %136, 0
  %138 = select i1 %137, i32 %135, i32 %123
  %139 = load i24, ptr %46, align 4
  %140 = and i24 %139, 4
  %141 = icmp eq i24 %140, 0
  br i1 %141, label %142, label %165

142:                                              ; preds = %133
  %143 = and i24 %139, 112
  %144 = icmp eq i24 %143, 0
  %145 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 78), align 32
  %146 = icmp eq i8 %145, 0
  %147 = select i1 %144, i1 true, i1 %146
  br i1 %147, label %181, label %148

148:                                              ; preds = %142
  %149 = sub i32 %127, %125
  %150 = icmp slt i32 %149, 0
  %151 = select i1 %150, i32 46, i32 47
  %152 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %153 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %154 = getelementptr [126 x i32], ptr %153, i32 0, i32 %151
  %155 = ptrtoint ptr %154 to i32
  %156 = call i32 @llvm.read_register.i32(metadata !0) #16
  %157 = inttoptr i32 %156 to ptr
  %158 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %157) #13, !srcloc !14
  %159 = add i32 %158, %155
  %160 = inttoptr i32 %159 to ptr
  %161 = load i32, ptr %160, align 4
  %162 = add i32 %161, 1
  store i32 %162, ptr %160, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %152) #16, !srcloc !15
  %163 = load i24, ptr %46, align 4
  %164 = or i24 %163, 4
  store i24 %164, ptr %46, align 4
  store i32 %127, ptr %118, align 8
  br label %180

165:                                              ; preds = %133
  %166 = load i32, ptr %119, align 4
  %167 = sub i32 %166, %127
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %181, label %169

169:                                              ; preds = %165
  %170 = load i32, ptr %118, align 4
  %171 = sub i32 %123, %170
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %181, label %173

173:                                              ; preds = %169
  %174 = sub i32 %127, %170
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  store i32 %127, ptr %118, align 4
  br label %177

177:                                              ; preds = %176, %173
  %178 = sub i32 %166, %123
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %177, %148
  store i32 %123, ptr %119, align 4
  br label %181

181:                                              ; preds = %180, %177, %169, %165, %142, %130
  %182 = phi i32 [ %123, %130 ], [ %138, %142 ], [ %138, %165 ], [ %138, %169 ], [ %138, %177 ], [ %138, %180 ]
  %183 = call ptr @rb_next(ptr noundef nonnull %124) #16
  call void @rb_erase(ptr noundef nonnull %124, ptr noundef %110) #16
  %184 = load i32, ptr %50, align 8
  %185 = getelementptr inbounds %struct.sk_buff, ptr %124, i32 0, i32 3, i32 4
  %186 = load i32, ptr %185, align 4
  %187 = sub i32 %184, %186
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %192, label %189, !prof !11

189:                                              ; preds = %181
  call fastcc void @tcp_drop(ptr noundef %0, ptr noundef nonnull %124) #16
  br label %190

190:                                              ; preds = %221, %189
  %191 = icmp eq ptr %183, null
  br i1 %191, label %223, label %122

192:                                              ; preds = %181
  %193 = load volatile ptr, ptr %120, align 4
  %194 = icmp eq ptr %193, %74
  %195 = icmp eq ptr %193, null
  %196 = or i1 %194, %195
  br i1 %196, label %201, label %197

197:                                              ; preds = %192
  %198 = call fastcc zeroext i1 @tcp_try_coalesce(ptr noundef %0, ptr noundef nonnull %193, ptr noundef nonnull %124, ptr noundef nonnull %4) #16
  %199 = load i32, ptr %185, align 4
  %200 = load i32, ptr %50, align 8
  br label %201

201:                                              ; preds = %197, %192
  %202 = phi i32 [ %184, %192 ], [ %200, %197 ]
  %203 = phi i32 [ %186, %192 ], [ %199, %197 ]
  %204 = phi i1 [ false, %192 ], [ %198, %197 ]
  %205 = sub i32 %203, %202
  %206 = zext i32 %205 to i64
  %207 = load i64, ptr %121, align 8
  %208 = add i64 %207, %206
  store i64 %208, ptr %121, align 8
  store volatile i32 %203, ptr %50, align 8
  %209 = getelementptr inbounds %struct.sk_buff, ptr %124, i32 0, i32 3, i32 12
  %210 = load i8, ptr %209, align 4
  %211 = and i8 %210, 1
  %212 = icmp eq i8 %211, 0
  br i1 %204, label %218, label %213

213:                                              ; preds = %201
  %214 = load ptr, ptr %120, align 4
  store volatile ptr %74, ptr %124, align 8
  %215 = getelementptr inbounds %struct.anon.43, ptr %124, i32 0, i32 1
  store volatile ptr %214, ptr %215, align 4
  store volatile ptr %124, ptr %120, align 4
  store volatile ptr %124, ptr %214, align 4
  %216 = load i32, ptr %75, align 4
  %217 = add i32 %216, 1
  store volatile i32 %217, ptr %75, align 4
  br label %221

218:                                              ; preds = %201
  %219 = load i8, ptr %4, align 1, !range !25
  %220 = icmp ne i8 %219, 0
  call void @kfree_skb_partial(ptr noundef nonnull %124, i1 noundef zeroext %220) #16
  br label %221

221:                                              ; preds = %218, %213
  br i1 %212, label %190, label %222, !prof !11

222:                                              ; preds = %221
  call void @tcp_fin(ptr noundef %0) #16
  br label %223

223:                                              ; preds = %222, %190, %122, %113
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  %224 = load volatile ptr, ptr %110, align 8
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %230

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24
  %228 = load i8, ptr %227, align 4
  %229 = or i8 %228, 16
  store i8 %229, ptr %227, align 4
  br label %230

230:                                              ; preds = %226, %223, %109
  %231 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 5
  %232 = load i8, ptr %231, align 1
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %281, label %234

234:                                              ; preds = %230
  %235 = load volatile ptr, ptr %110, align 8
  %236 = icmp eq ptr %235, null
  br i1 %236, label %279, label %237

237:                                              ; preds = %234
  %238 = zext i8 %232 to i32
  %239 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 92
  br label %240

240:                                              ; preds = %270, %237
  %241 = phi ptr [ %239, %237 ], [ %271, %270 ]
  %242 = phi i32 [ %238, %237 ], [ %247, %270 ]
  %243 = phi i32 [ 0, %237 ], [ %245, %270 ]
  %244 = getelementptr inbounds %struct.tcp_sack_block, ptr %241, i32 0, i32 1
  %245 = add nuw nsw i32 %243, 1
  br label %246

246:                                              ; preds = %267, %240
  %247 = phi i32 [ %242, %240 ], [ %268, %267 ]
  %248 = load i32, ptr %50, align 8
  %249 = load i32, ptr %241, align 4
  %250 = sub i32 %248, %249
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %270, label %252

252:                                              ; preds = %246
  %253 = load i32, ptr %244, align 4
  %254 = sub i32 %248, %253
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %257, !prof !16

256:                                              ; preds = %252
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4603, i32 noundef 9, ptr noundef null) #16
  br label %257

257:                                              ; preds = %256, %252
  %258 = icmp slt i32 %245, %247
  br i1 %258, label %259, label %267

259:                                              ; preds = %259, %257
  %260 = phi i32 [ %265, %259 ], [ %245, %257 ]
  %261 = phi i32 [ %260, %259 ], [ %243, %257 ]
  %262 = getelementptr %struct.tcp_sock, ptr %0, i32 0, i32 92, i32 %261
  %263 = getelementptr %struct.tcp_sock, ptr %0, i32 0, i32 92, i32 %260
  %264 = load i64, ptr %263, align 8
  store i64 %264, ptr %262, align 8
  %265 = add nuw nsw i32 %260, 1
  %266 = icmp slt i32 %265, %247
  br i1 %266, label %259, label %267

267:                                              ; preds = %259, %257
  %268 = add nsw i32 %247, -1
  %269 = icmp slt i32 %243, %268
  br i1 %269, label %246, label %273

270:                                              ; preds = %246
  %271 = getelementptr %struct.tcp_sack_block, ptr %241, i32 1
  %272 = icmp slt i32 %245, %247
  br i1 %272, label %240, label %276

273:                                              ; preds = %267
  %274 = add nsw i32 %242, -1
  %275 = call i32 @llvm.smin.i32(i32 %243, i32 %274) #16
  br label %276

276:                                              ; preds = %273, %270
  %277 = phi i32 [ %275, %273 ], [ %247, %270 ]
  %278 = trunc i32 %277 to i8
  br label %279

279:                                              ; preds = %276, %234
  %280 = phi i8 [ %278, %276 ], [ 0, %234 ]
  store i8 %280, ptr %231, align 1
  br label %281

281:                                              ; preds = %279, %230
  %282 = load volatile ptr, ptr %110, align 8
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %314

284:                                              ; preds = %281
  %285 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 79
  %286 = load i32, ptr %285, align 8
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %314, label %288

288:                                              ; preds = %284
  %289 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %290 = load volatile i32, ptr %289, align 4
  %291 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 15
  %292 = load i32, ptr %291, align 4
  %293 = icmp slt i32 %290, %292
  br i1 %293, label %294, label %314

294:                                              ; preds = %288
  %295 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 55
  %296 = load i16, ptr %295, align 4
  %297 = icmp eq i16 %296, 0
  br i1 %297, label %298, label %314

298:                                              ; preds = %294
  %299 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 26
  %300 = load i32, ptr %299, align 4
  %301 = load i24, ptr %46, align 4
  %302 = zext i24 %301 to i32
  %303 = lshr i32 %302, 8
  %304 = and i32 %303, 15
  %305 = lshr i32 %300, %304
  %306 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 1
  %307 = load i16, ptr %306, align 8
  %308 = zext i16 %307 to i32
  %309 = shl i32 %308, 26
  %310 = or i32 %309, %305
  %311 = or i32 %310, 1048576
  %312 = call i32 @llvm.bswap.i32(i32 %311) #16
  %313 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 3
  store i32 %312, ptr %313, align 4
  br label %314

314:                                              ; preds = %298, %294, %288, %284, %281
  %315 = icmp sgt i32 %99, 0
  br i1 %315, label %316, label %319

316:                                              ; preds = %314
  %317 = load i8, ptr %5, align 1, !range !25
  %318 = icmp ne i8 %317, 0
  call void @kfree_skb_partial(ptr noundef %1, i1 noundef zeroext %318) #16
  br label %319

319:                                              ; preds = %316, %314
  %320 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %321 = load volatile i32, ptr %320, align 4
  %322 = and i32 %321, 1
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %1151

324:                                              ; preds = %319
  %325 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 6
  %326 = load i32, ptr %325, align 4
  %327 = load volatile i32, ptr %50, align 8
  %328 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 8
  %329 = load volatile i32, ptr %328, align 4
  %330 = sub i32 %327, %329
  %331 = icmp slt i32 %330, 1
  br i1 %331, label %357, label %332

332:                                              ; preds = %324
  %333 = icmp slt i32 %330, %326
  br i1 %333, label %334, label %361

334:                                              ; preds = %332
  %335 = load volatile i32, ptr @tcp_memory_pressure, align 4
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %361

337:                                              ; preds = %334
  %338 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 15
  %339 = load volatile i32, ptr %338, align 4
  %340 = ashr i32 %339, 3
  %341 = sub i32 %339, %340
  %342 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %343 = load volatile i32, ptr %342, align 4
  %344 = icmp sgt i32 %343, %341
  br i1 %344, label %361, label %345

345:                                              ; preds = %337
  %346 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 9
  %347 = load i32, ptr %346, align 8
  %348 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 79
  %349 = load i32, ptr %348, align 8
  %350 = sub i32 %347, %327
  %351 = add i32 %350, %349
  %352 = call i32 @llvm.smax.i32(i32 %351, i32 0) #16
  %353 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 8
  %354 = load i16, ptr %353, align 2
  %355 = zext i16 %354 to i32
  %356 = icmp ugt i32 %352, %355
  br i1 %356, label %357, label %361

357:                                              ; preds = %345, %324
  %358 = load volatile i32, ptr %320, align 4
  %359 = and i32 %358, 2
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %1151, label %361

361:                                              ; preds = %357, %345, %337, %334, %332
  %362 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 76
  %363 = load ptr, ptr %362, align 8
  call void %363(ptr noundef %0) #16
  br label %1151

364:                                              ; preds = %42
  %365 = load i32, ptr %8, align 4
  %366 = sub i32 %51, %365
  %367 = icmp slt i32 %366, 0
  br i1 %367, label %463, label %368

368:                                              ; preds = %364
  %369 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 91
  %370 = load i32, ptr %369, align 8
  %371 = icmp eq i32 %49, %370
  br i1 %371, label %372, label %391

372:                                              ; preds = %368
  %373 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 42
  %374 = load i32, ptr %373, align 4
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %391, label %376

376:                                              ; preds = %372
  %377 = tail call i32 @prandom_u32() #16
  %378 = icmp eq i32 %377, 0
  %379 = select i1 %378, i32 1, i32 %377
  store volatile i32 %379, ptr %373, align 4
  %380 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %381 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %382 = getelementptr [126 x i32], ptr %381, i32 0, i32 121
  %383 = ptrtoint ptr %382 to i32
  %384 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %385 = inttoptr i32 %384 to ptr
  %386 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %385) #13, !srcloc !14
  %387 = add i32 %386, %383
  %388 = inttoptr i32 %387 to ptr
  %389 = load i32, ptr %388, align 4
  %390 = add i32 %389, 1
  store i32 %390, ptr %388, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %380) #16, !srcloc !15
  br label %391

391:                                              ; preds = %376, %372, %368
  %392 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %393 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %394 = getelementptr [126 x i32], ptr %393, i32 0, i32 18
  %395 = ptrtoint ptr %394 to i32
  %396 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %397 = inttoptr i32 %396 to ptr
  %398 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %397) #13, !srcloc !14
  %399 = add i32 %398, %395
  %400 = inttoptr i32 %399 to ptr
  %401 = load i32, ptr %400, align 4
  %402 = add i32 %401, 1
  store i32 %402, ptr %400, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %392) #16, !srcloc !15
  %403 = load i24, ptr %46, align 4
  %404 = and i24 %403, 112
  %405 = icmp eq i24 %404, 0
  %406 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 78), align 32
  %407 = icmp eq i8 %406, 0
  %408 = select i1 %405, i1 true, i1 %407
  br i1 %408, label %430, label %409

409:                                              ; preds = %391
  %410 = load i32, ptr %8, align 4
  %411 = load i32, ptr %6, align 8
  %412 = load i32, ptr %50, align 8
  %413 = sub i32 %411, %412
  %414 = icmp slt i32 %413, 0
  %415 = select i1 %414, i32 46, i32 47
  %416 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %417 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %418 = getelementptr [126 x i32], ptr %417, i32 0, i32 %415
  %419 = ptrtoint ptr %418 to i32
  %420 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %421 = inttoptr i32 %420 to ptr
  %422 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %421) #13, !srcloc !14
  %423 = add i32 %422, %419
  %424 = inttoptr i32 %423 to ptr
  %425 = load i32, ptr %424, align 4
  %426 = add i32 %425, 1
  store i32 %426, ptr %424, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %416) #16, !srcloc !15
  %427 = load i24, ptr %46, align 4
  %428 = or i24 %427, 4
  store i24 %428, ptr %46, align 4
  store i32 %411, ptr %369, align 8
  %429 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 91, i32 0, i32 1
  store i32 %410, ptr %429, align 4
  br label %430

430:                                              ; preds = %509, %463, %409, %391, %61
  %431 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 79
  %432 = load i32, ptr %431, align 8
  %433 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 8
  %434 = load i16, ptr %433, align 2
  %435 = zext i16 %434 to i32
  %436 = shl nuw nsw i32 %435, 1
  %437 = udiv i32 %432, %436
  %438 = icmp ugt i32 %436, %432
  %439 = tail call i32 @llvm.umin.i32(i32 %437, i32 16)
  %440 = select i1 %438, i32 2, i32 %439
  %441 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 1
  %442 = load i8, ptr %441, align 1
  %443 = zext i8 %442 to i32
  %444 = icmp ugt i32 %440, %443
  br i1 %444, label %445, label %447

445:                                              ; preds = %430
  %446 = trunc i32 %440 to i8
  store i8 %446, ptr %441, align 1
  br label %447

447:                                              ; preds = %445, %430
  %448 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 2
  store i8 0, ptr %448, align 2
  %449 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 4
  store i32 4, ptr %449, align 4
  %450 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24
  %451 = load i8, ptr %450, align 4
  %452 = or i8 %451, 1
  store i8 %452, ptr %450, align 4
  br label %453

453:                                              ; preds = %447, %84
  %454 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %455 = load ptr, ptr %454, align 4
  %456 = getelementptr inbounds %struct.skb_shared_info, ptr %455, i32 0, i32 5
  %457 = load i16, ptr %456, align 2
  %458 = icmp eq i16 %457, 0
  %459 = select i1 %458, i16 1, i16 %457
  %460 = zext i16 %459 to i32
  %461 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %461) #16, !srcloc !27
  %462 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %461, ptr %461, i32 %460, ptr elementtype(i32) %461) #16, !srcloc !28
  tail call void @__kfree_skb(ptr noundef %1) #16
  br label %1151

463:                                              ; preds = %364
  %464 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 9
  %465 = load i32, ptr %464, align 8
  %466 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 79
  %467 = load i32, ptr %466, align 8
  %468 = sub i32 %465, %51
  %469 = add i32 %468, %467
  %470 = tail call i32 @llvm.smax.i32(i32 %469, i32 0) #16
  %471 = add i32 %51, %470
  %472 = sub i32 %49, %471
  %473 = icmp slt i32 %472, 0
  br i1 %473, label %474, label %430

474:                                              ; preds = %463
  %475 = sub i32 %49, %51
  %476 = icmp slt i32 %475, 0
  br i1 %476, label %477, label %521

477:                                              ; preds = %474
  %478 = and i24 %47, 112
  %479 = icmp eq i24 %478, 0
  %480 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 78), align 32
  %481 = icmp eq i8 %480, 0
  %482 = select i1 %479, i1 true, i1 %481
  br i1 %482, label %502, label %483

483:                                              ; preds = %477
  %484 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %485 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %486 = getelementptr [126 x i32], ptr %485, i32 0, i32 46
  %487 = ptrtoint ptr %486 to i32
  %488 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %489 = inttoptr i32 %488 to ptr
  %490 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %489) #13, !srcloc !14
  %491 = add i32 %490, %487
  %492 = inttoptr i32 %491 to ptr
  %493 = load i32, ptr %492, align 4
  %494 = add i32 %493, 1
  store i32 %494, ptr %492, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %484) #16, !srcloc !15
  %495 = load i24, ptr %46, align 4
  %496 = or i24 %495, 4
  store i24 %496, ptr %46, align 4
  %497 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 91
  store i32 %49, ptr %497, align 8
  %498 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 91, i32 0, i32 1
  store i32 %51, ptr %498, align 4
  %499 = load i32, ptr %464, align 8
  %500 = load i32, ptr %466, align 8
  %501 = load i32, ptr %50, align 8
  br label %502

502:                                              ; preds = %483, %477
  %503 = phi i32 [ %51, %477 ], [ %501, %483 ]
  %504 = phi i32 [ %467, %477 ], [ %500, %483 ]
  %505 = phi i32 [ %465, %477 ], [ %499, %483 ]
  %506 = add i32 %504, %505
  %507 = sub i32 %506, %503
  %508 = icmp slt i32 %507, 1
  br i1 %508, label %509, label %73

509:                                              ; preds = %502
  %510 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %511 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %512 = getelementptr [126 x i32], ptr %511, i32 0, i32 116
  %513 = ptrtoint ptr %512 to i32
  %514 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %515 = inttoptr i32 %514 to ptr
  %516 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %515) #13, !srcloc !14
  %517 = add i32 %516, %513
  %518 = inttoptr i32 %517 to ptr
  %519 = load i32, ptr %518, align 4
  %520 = add i32 %519, 1
  store i32 %520, ptr %518, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %510) #16, !srcloc !15
  br label %430

521:                                              ; preds = %474
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #16
  store i8 0, ptr %3, align 1, !annotation !24
  tail call fastcc void @tcp_ecn_check_ce(ptr noundef %0, ptr noundef %1) #16
  %522 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %523 = load i32, ptr %522, align 8
  %524 = tail call fastcc i32 @tcp_try_rmem_schedule(ptr noundef %0, ptr noundef %1, i32 noundef %523) #16
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %540, label %526, !prof !11

526:                                              ; preds = %521
  %527 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %528 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %529 = getelementptr [126 x i32], ptr %528, i32 0, i32 80
  %530 = ptrtoint ptr %529 to i32
  %531 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %532 = inttoptr i32 %531 to ptr
  %533 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %532) #13, !srcloc !14
  %534 = add i32 %533, %530
  %535 = inttoptr i32 %534 to ptr
  %536 = load i32, ptr %535, align 4
  %537 = add i32 %536, 1
  store i32 %537, ptr %535, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %527) #16, !srcloc !15
  %538 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 76
  %539 = load ptr, ptr %538, align 8
  tail call void %539(ptr noundef %0) #16
  tail call fastcc void @tcp_drop(ptr noundef %0, ptr noundef %1) #16
  br label %1150

540:                                              ; preds = %521
  %541 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 3
  store i32 0, ptr %541, align 4
  %542 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24
  %543 = load i8, ptr %542, align 4
  %544 = or i8 %543, 1
  store i8 %544, ptr %542, align 4
  %545 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %546 = load ptr, ptr %545, align 4
  %547 = getelementptr inbounds %struct.skb_shared_info, ptr %546, i32 0, i32 5
  %548 = load i16, ptr %547, align 2
  %549 = icmp eq i16 %548, 0
  %550 = select i1 %549, i16 1, i16 %548
  %551 = zext i16 %550 to i32
  %552 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 109
  %553 = load i32, ptr %552, align 8
  %554 = add i32 %553, %551
  store i32 %554, ptr %552, align 8
  %555 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %556 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %557 = getelementptr [126 x i32], ptr %556, i32 0, i32 79
  %558 = ptrtoint ptr %557 to i32
  %559 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %560 = inttoptr i32 %559 to ptr
  %561 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %560) #13, !srcloc !14
  %562 = add i32 %561, %558
  %563 = inttoptr i32 %562 to ptr
  %564 = load i32, ptr %563, align 4
  %565 = add i32 %564, 1
  store i32 %565, ptr %563, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %555) #16, !srcloc !15
  %566 = load i32, ptr %6, align 8
  %567 = load i32, ptr %8, align 4
  %568 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 89
  %569 = load volatile ptr, ptr %568, align 8
  %570 = icmp eq ptr %569, null
  br i1 %570, label %571, label %583

571:                                              ; preds = %540
  %572 = load i24, ptr %46, align 4
  %573 = and i24 %572, 112
  %574 = icmp eq i24 %573, 0
  br i1 %574, label %579, label %575

575:                                              ; preds = %571
  %576 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 5
  store i8 1, ptr %576, align 1
  %577 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 92
  store i32 %566, ptr %577, align 8
  %578 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 92, i32 0, i32 1
  store i32 %567, ptr %578, align 4
  br label %579

579:                                              ; preds = %575, %571
  store i32 0, ptr %1, align 4
  %580 = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 1
  store ptr null, ptr %580, align 4
  %581 = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 2
  store ptr null, ptr %581, align 4
  store ptr %1, ptr %568, align 4
  tail call void @rb_insert_color(ptr noundef %1, ptr noundef %568) #16
  %582 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 90
  store ptr %1, ptr %582, align 4
  br label %1116

583:                                              ; preds = %540
  %584 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 90
  %585 = load ptr, ptr %584, align 4
  %586 = call fastcc zeroext i1 @tcp_try_coalesce(ptr noundef %0, ptr noundef %585, ptr noundef %1, ptr noundef nonnull %3) #16
  br i1 %586, label %587, label %612

587:                                              ; preds = %786, %583
  %588 = phi ptr [ %585, %583 ], [ %627, %786 ]
  %589 = getelementptr inbounds %struct.sk_buff, ptr %588, i32 0, i32 15
  %590 = load ptr, ptr %589, align 4
  %591 = getelementptr inbounds %struct.skb_shared_info, ptr %590, i32 0, i32 5
  %592 = load i16, ptr %591, align 2
  %593 = icmp eq i16 %592, 0
  %594 = select i1 %593, i16 1, i16 %592
  %595 = zext i16 %594 to i32
  %596 = load ptr, ptr %545, align 4
  %597 = getelementptr inbounds %struct.skb_shared_info, ptr %596, i32 0, i32 5
  %598 = load i16, ptr %597, align 2
  %599 = icmp eq i16 %598, 0
  %600 = select i1 %599, i16 1, i16 %598
  %601 = zext i16 %600 to i32
  %602 = add nuw nsw i32 %601, %595
  %603 = call i32 @llvm.umin.i32(i32 %602, i32 65535) #16
  %604 = trunc i32 %603 to i16
  store i16 %604, ptr %591, align 2
  %605 = load i24, ptr %46, align 4
  %606 = and i24 %605, 112
  %607 = icmp eq i24 %606, 0
  br i1 %607, label %609, label %608

608:                                              ; preds = %587
  call fastcc void @tcp_grow_window(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true) #16
  br label %609

609:                                              ; preds = %608, %587
  %610 = load i8, ptr %3, align 1, !range !25
  %611 = icmp ne i8 %610, 0
  call void @kfree_skb_partial(ptr noundef %1, i1 noundef zeroext %611) #16
  br label %927

612:                                              ; preds = %583
  %613 = load ptr, ptr %584, align 4
  %614 = getelementptr inbounds %struct.sk_buff, ptr %613, i32 0, i32 3, i32 4
  %615 = load i32, ptr %614, align 4
  %616 = sub i32 %566, %615
  %617 = icmp slt i32 %616, 0
  br i1 %617, label %618, label %624

618:                                              ; preds = %612
  %619 = load ptr, ptr %568, align 4
  %620 = icmp eq ptr %619, null
  br i1 %620, label %790, label %621

621:                                              ; preds = %618
  %622 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 91
  %623 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 91, i32 0, i32 1
  br label %626

624:                                              ; preds = %612
  %625 = getelementptr inbounds %struct.rb_node, ptr %613, i32 0, i32 1
  br label %790

626:                                              ; preds = %634, %621
  %627 = phi ptr [ %619, %621 ], [ %636, %634 ]
  %628 = getelementptr inbounds %struct.sk_buff, ptr %627, i32 0, i32 3
  %629 = load i32, ptr %628, align 8
  %630 = sub i32 %566, %629
  %631 = icmp slt i32 %630, 0
  br i1 %631, label %632, label %638

632:                                              ; preds = %626
  %633 = getelementptr inbounds %struct.rb_node, ptr %627, i32 0, i32 2
  br label %634

634:                                              ; preds = %788, %632
  %635 = phi ptr [ %633, %632 ], [ %789, %788 ]
  %636 = load ptr, ptr %635, align 4
  %637 = icmp eq ptr %636, null
  br i1 %637, label %790, label %626

638:                                              ; preds = %626
  %639 = getelementptr inbounds %struct.sk_buff, ptr %627, i32 0, i32 3, i32 4
  %640 = load i32, ptr %639, align 4
  %641 = sub i32 %566, %640
  %642 = icmp slt i32 %641, 0
  br i1 %642, label %643, label %786

643:                                              ; preds = %638
  %644 = sub i32 %640, %567
  %645 = icmp slt i32 %644, 0
  br i1 %645, label %690, label %646

646:                                              ; preds = %643
  %647 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %648 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %649 = getelementptr [126 x i32], ptr %648, i32 0, i32 81
  %650 = ptrtoint ptr %649 to i32
  %651 = call i32 @llvm.read_register.i32(metadata !0) #16
  %652 = inttoptr i32 %651 to ptr
  %653 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %652) #13, !srcloc !14
  %654 = add i32 %653, %650
  %655 = inttoptr i32 %654 to ptr
  %656 = load i32, ptr %655, align 4
  %657 = add i32 %656, 1
  store i32 %657, ptr %655, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %647) #16, !srcloc !15
  %658 = load ptr, ptr %545, align 4
  %659 = getelementptr inbounds %struct.skb_shared_info, ptr %658, i32 0, i32 5
  %660 = load i16, ptr %659, align 2
  %661 = icmp eq i16 %660, 0
  %662 = select i1 %661, i16 1, i16 %660
  %663 = zext i16 %662 to i32
  %664 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %664) #16, !srcloc !27
  %665 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %664, ptr %664, i32 %663, ptr elementtype(i32) %664) #16, !srcloc !28
  call void @__kfree_skb(ptr noundef %1) #16
  %666 = load i24, ptr %46, align 4
  %667 = and i24 %666, 112
  %668 = icmp eq i24 %667, 0
  %669 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 78), align 32
  %670 = icmp eq i8 %669, 0
  %671 = select i1 %668, i1 true, i1 %670
  br i1 %671, label %927, label %672

672:                                              ; preds = %646
  %673 = load i32, ptr %50, align 8
  %674 = sub i32 %566, %673
  %675 = icmp slt i32 %674, 0
  %676 = select i1 %675, i32 46, i32 47
  %677 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %678 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %679 = getelementptr [126 x i32], ptr %678, i32 0, i32 %676
  %680 = ptrtoint ptr %679 to i32
  %681 = call i32 @llvm.read_register.i32(metadata !0) #16
  %682 = inttoptr i32 %681 to ptr
  %683 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %682) #13, !srcloc !14
  %684 = add i32 %683, %680
  %685 = inttoptr i32 %684 to ptr
  %686 = load i32, ptr %685, align 4
  %687 = add i32 %686, 1
  store i32 %687, ptr %685, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %677) #16, !srcloc !15
  %688 = load i24, ptr %46, align 4
  %689 = or i24 %688, 4
  store i24 %689, ptr %46, align 4
  store i32 %566, ptr %622, align 8
  store i32 %567, ptr %623, align 4
  br label %927

690:                                              ; preds = %643
  %691 = sub i32 %629, %566
  %692 = icmp slt i32 %691, 0
  br i1 %692, label %693, label %718

693:                                              ; preds = %690
  %694 = load i24, ptr %46, align 4
  %695 = and i24 %694, 112
  %696 = icmp eq i24 %695, 0
  %697 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 78), align 32
  %698 = icmp eq i8 %697, 0
  %699 = select i1 %696, i1 true, i1 %698
  br i1 %699, label %788, label %700

700:                                              ; preds = %693
  %701 = load i32, ptr %50, align 8
  %702 = sub i32 %566, %701
  %703 = icmp slt i32 %702, 0
  %704 = select i1 %703, i32 46, i32 47
  %705 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %706 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %707 = getelementptr [126 x i32], ptr %706, i32 0, i32 %704
  %708 = ptrtoint ptr %707 to i32
  %709 = call i32 @llvm.read_register.i32(metadata !0) #16
  %710 = inttoptr i32 %709 to ptr
  %711 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %710) #13, !srcloc !14
  %712 = add i32 %711, %708
  %713 = inttoptr i32 %712 to ptr
  %714 = load i32, ptr %713, align 4
  %715 = add i32 %714, 1
  store i32 %715, ptr %713, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %705) #16, !srcloc !15
  %716 = load i24, ptr %46, align 4
  %717 = or i24 %716, 4
  store i24 %717, ptr %46, align 4
  store i32 %566, ptr %622, align 8
  store i32 %640, ptr %623, align 4
  br label %788

718:                                              ; preds = %690
  %719 = getelementptr inbounds %struct.sk_buff, ptr %627, i32 0, i32 3, i32 4
  call void @rb_replace_node(ptr noundef nonnull %627, ptr noundef %1, ptr noundef %568) #16
  %720 = load i32, ptr %628, align 8
  %721 = load i32, ptr %719, align 4
  %722 = load i24, ptr %46, align 4
  %723 = and i24 %722, 4
  %724 = icmp eq i24 %723, 0
  br i1 %724, label %725, label %749

725:                                              ; preds = %718
  %726 = and i24 %722, 112
  %727 = icmp eq i24 %726, 0
  %728 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 78), align 32
  %729 = icmp eq i8 %728, 0
  %730 = select i1 %727, i1 true, i1 %729
  br i1 %730, label %765, label %731

731:                                              ; preds = %725
  %732 = load i32, ptr %50, align 8
  %733 = sub i32 %720, %732
  %734 = icmp slt i32 %733, 0
  %735 = select i1 %734, i32 46, i32 47
  %736 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %737 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %738 = getelementptr [126 x i32], ptr %737, i32 0, i32 %735
  %739 = ptrtoint ptr %738 to i32
  %740 = call i32 @llvm.read_register.i32(metadata !0) #16
  %741 = inttoptr i32 %740 to ptr
  %742 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %741) #13, !srcloc !14
  %743 = add i32 %742, %739
  %744 = inttoptr i32 %743 to ptr
  %745 = load i32, ptr %744, align 4
  %746 = add i32 %745, 1
  store i32 %746, ptr %744, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %736) #16, !srcloc !15
  %747 = load i24, ptr %46, align 4
  %748 = or i24 %747, 4
  store i24 %748, ptr %46, align 4
  store i32 %720, ptr %622, align 8
  br label %764

749:                                              ; preds = %718
  %750 = load i32, ptr %623, align 4
  %751 = sub i32 %750, %720
  %752 = icmp slt i32 %751, 0
  br i1 %752, label %765, label %753

753:                                              ; preds = %749
  %754 = load i32, ptr %622, align 4
  %755 = sub i32 %721, %754
  %756 = icmp slt i32 %755, 0
  br i1 %756, label %765, label %757

757:                                              ; preds = %753
  %758 = sub i32 %720, %754
  %759 = icmp slt i32 %758, 0
  br i1 %759, label %760, label %761

760:                                              ; preds = %757
  store i32 %720, ptr %622, align 4
  br label %761

761:                                              ; preds = %760, %757
  %762 = sub i32 %750, %721
  %763 = icmp slt i32 %762, 0
  br i1 %763, label %764, label %765

764:                                              ; preds = %761, %731
  store i32 %721, ptr %623, align 4
  br label %765

765:                                              ; preds = %764, %761, %753, %749, %725
  %766 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %767 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %768 = getelementptr [126 x i32], ptr %767, i32 0, i32 81
  %769 = ptrtoint ptr %768 to i32
  %770 = call i32 @llvm.read_register.i32(metadata !0) #16
  %771 = inttoptr i32 %770 to ptr
  %772 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %771) #13, !srcloc !14
  %773 = add i32 %772, %769
  %774 = inttoptr i32 %773 to ptr
  %775 = load i32, ptr %774, align 4
  %776 = add i32 %775, 1
  store i32 %776, ptr %774, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %766) #16, !srcloc !15
  %777 = getelementptr inbounds %struct.sk_buff, ptr %627, i32 0, i32 15
  %778 = load ptr, ptr %777, align 4
  %779 = getelementptr inbounds %struct.skb_shared_info, ptr %778, i32 0, i32 5
  %780 = load i16, ptr %779, align 2
  %781 = icmp eq i16 %780, 0
  %782 = select i1 %781, i16 1, i16 %780
  %783 = zext i16 %782 to i32
  %784 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %784) #16, !srcloc !27
  %785 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %784, ptr %784, i32 %783, ptr elementtype(i32) %784) #16, !srcloc !28
  call void @__kfree_skb(ptr noundef nonnull %627) #16
  br label %796

786:                                              ; preds = %638
  %787 = call fastcc zeroext i1 @tcp_try_coalesce(ptr noundef %0, ptr noundef nonnull %627, ptr noundef %1, ptr noundef nonnull %3) #16
  br i1 %787, label %587, label %788

788:                                              ; preds = %786, %700, %693
  %789 = getelementptr inbounds %struct.rb_node, ptr %627, i32 0, i32 1
  br label %634

790:                                              ; preds = %634, %624, %618
  %791 = phi ptr [ %613, %624 ], [ null, %618 ], [ %627, %634 ]
  %792 = phi ptr [ %625, %624 ], [ %568, %618 ], [ %635, %634 ]
  %793 = ptrtoint ptr %791 to i32
  store i32 %793, ptr %1, align 4
  %794 = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 1
  store ptr null, ptr %794, align 4
  %795 = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 2
  store ptr null, ptr %795, align 4
  store ptr %1, ptr %792, align 4
  call void @rb_insert_color(ptr noundef %1, ptr noundef %568) #16
  br label %796

796:                                              ; preds = %790, %765
  %797 = call ptr @rb_next(ptr noundef %1) #16
  %798 = icmp eq ptr %797, null
  br i1 %798, label %926, label %799

799:                                              ; preds = %796
  %800 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 91
  %801 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 91, i32 0, i32 1
  %802 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  br label %803

803:                                              ; preds = %904, %799
  %804 = phi ptr [ %797, %799 ], [ %924, %904 ]
  %805 = getelementptr inbounds %struct.sk_buff, ptr %804, i32 0, i32 3
  %806 = load i32, ptr %805, align 8
  %807 = sub i32 %806, %567
  %808 = icmp slt i32 %807, 0
  br i1 %808, label %809, label %927

809:                                              ; preds = %803
  %810 = getelementptr inbounds %struct.sk_buff, ptr %804, i32 0, i32 3, i32 4
  %811 = load i32, ptr %810, align 4
  %812 = sub i32 %567, %811
  %813 = icmp slt i32 %812, 0
  br i1 %813, label %814, label %858

814:                                              ; preds = %809
  %815 = load i24, ptr %46, align 4
  %816 = and i24 %815, 4
  %817 = icmp eq i24 %816, 0
  br i1 %817, label %818, label %842

818:                                              ; preds = %814
  %819 = and i24 %815, 112
  %820 = icmp eq i24 %819, 0
  %821 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 78), align 32
  %822 = icmp eq i8 %821, 0
  %823 = select i1 %820, i1 true, i1 %822
  br i1 %823, label %927, label %824

824:                                              ; preds = %818
  %825 = load i32, ptr %50, align 8
  %826 = sub i32 %806, %825
  %827 = icmp slt i32 %826, 0
  %828 = select i1 %827, i32 46, i32 47
  %829 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %830 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %831 = getelementptr [126 x i32], ptr %830, i32 0, i32 %828
  %832 = ptrtoint ptr %831 to i32
  %833 = call i32 @llvm.read_register.i32(metadata !0) #16
  %834 = inttoptr i32 %833 to ptr
  %835 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %834) #13, !srcloc !14
  %836 = add i32 %835, %832
  %837 = inttoptr i32 %836 to ptr
  %838 = load i32, ptr %837, align 4
  %839 = add i32 %838, 1
  store i32 %839, ptr %837, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %829) #16, !srcloc !15
  %840 = load i24, ptr %46, align 4
  %841 = or i24 %840, 4
  store i24 %841, ptr %46, align 4
  store i32 %806, ptr %800, align 8
  br label %857

842:                                              ; preds = %814
  %843 = load i32, ptr %801, align 4
  %844 = sub i32 %843, %806
  %845 = icmp slt i32 %844, 0
  br i1 %845, label %927, label %846

846:                                              ; preds = %842
  %847 = load i32, ptr %800, align 4
  %848 = sub i32 %567, %847
  %849 = icmp slt i32 %848, 0
  br i1 %849, label %927, label %850

850:                                              ; preds = %846
  %851 = sub i32 %806, %847
  %852 = icmp slt i32 %851, 0
  br i1 %852, label %853, label %854

853:                                              ; preds = %850
  store i32 %806, ptr %800, align 4
  br label %854

854:                                              ; preds = %853, %850
  %855 = sub i32 %843, %567
  %856 = icmp slt i32 %855, 0
  br i1 %856, label %857, label %927

857:                                              ; preds = %854, %824
  store i32 %567, ptr %801, align 4
  br label %927

858:                                              ; preds = %809
  call void @rb_erase(ptr noundef nonnull %804, ptr noundef %568) #16
  %859 = load i32, ptr %805, align 8
  %860 = load i32, ptr %810, align 4
  %861 = load i24, ptr %46, align 4
  %862 = and i24 %861, 4
  %863 = icmp eq i24 %862, 0
  br i1 %863, label %864, label %888

864:                                              ; preds = %858
  %865 = and i24 %861, 112
  %866 = icmp eq i24 %865, 0
  %867 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 78), align 32
  %868 = icmp eq i8 %867, 0
  %869 = select i1 %866, i1 true, i1 %868
  br i1 %869, label %904, label %870

870:                                              ; preds = %864
  %871 = load i32, ptr %50, align 8
  %872 = sub i32 %859, %871
  %873 = icmp slt i32 %872, 0
  %874 = select i1 %873, i32 46, i32 47
  %875 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %876 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %877 = getelementptr [126 x i32], ptr %876, i32 0, i32 %874
  %878 = ptrtoint ptr %877 to i32
  %879 = call i32 @llvm.read_register.i32(metadata !0) #16
  %880 = inttoptr i32 %879 to ptr
  %881 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %880) #13, !srcloc !14
  %882 = add i32 %881, %878
  %883 = inttoptr i32 %882 to ptr
  %884 = load i32, ptr %883, align 4
  %885 = add i32 %884, 1
  store i32 %885, ptr %883, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %875) #16, !srcloc !15
  %886 = load i24, ptr %46, align 4
  %887 = or i24 %886, 4
  store i24 %887, ptr %46, align 4
  store i32 %859, ptr %800, align 8
  br label %903

888:                                              ; preds = %858
  %889 = load i32, ptr %801, align 4
  %890 = sub i32 %889, %859
  %891 = icmp slt i32 %890, 0
  br i1 %891, label %904, label %892

892:                                              ; preds = %888
  %893 = load i32, ptr %800, align 4
  %894 = sub i32 %860, %893
  %895 = icmp slt i32 %894, 0
  br i1 %895, label %904, label %896

896:                                              ; preds = %892
  %897 = sub i32 %859, %893
  %898 = icmp slt i32 %897, 0
  br i1 %898, label %899, label %900

899:                                              ; preds = %896
  store i32 %859, ptr %800, align 4
  br label %900

900:                                              ; preds = %899, %896
  %901 = sub i32 %889, %860
  %902 = icmp slt i32 %901, 0
  br i1 %902, label %903, label %904

903:                                              ; preds = %900, %870
  store i32 %860, ptr %801, align 4
  br label %904

904:                                              ; preds = %903, %900, %892, %888, %864
  %905 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %906 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %907 = getelementptr [126 x i32], ptr %906, i32 0, i32 81
  %908 = ptrtoint ptr %907 to i32
  %909 = call i32 @llvm.read_register.i32(metadata !0) #16
  %910 = inttoptr i32 %909 to ptr
  %911 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %910) #13, !srcloc !14
  %912 = add i32 %911, %908
  %913 = inttoptr i32 %912 to ptr
  %914 = load i32, ptr %913, align 4
  %915 = add i32 %914, 1
  store i32 %915, ptr %913, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %905) #16, !srcloc !15
  %916 = getelementptr inbounds %struct.sk_buff, ptr %804, i32 0, i32 15
  %917 = load ptr, ptr %916, align 4
  %918 = getelementptr inbounds %struct.skb_shared_info, ptr %917, i32 0, i32 5
  %919 = load i16, ptr %918, align 2
  %920 = icmp eq i16 %919, 0
  %921 = select i1 %920, i16 1, i16 %919
  %922 = zext i16 %921 to i32
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %802) #16, !srcloc !27
  %923 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %802, ptr %802, i32 %922, ptr elementtype(i32) %802) #16, !srcloc !28
  call void @__kfree_skb(ptr noundef nonnull %804) #16
  %924 = call ptr @rb_next(ptr noundef %1) #16
  %925 = icmp eq ptr %924, null
  br i1 %925, label %926, label %803

926:                                              ; preds = %904, %796
  store ptr %1, ptr %584, align 4
  br label %927

927:                                              ; preds = %926, %857, %854, %846, %842, %818, %803, %672, %646, %609
  %928 = phi ptr [ null, %609 ], [ %1, %926 ], [ null, %646 ], [ null, %672 ], [ %1, %818 ], [ %1, %842 ], [ %1, %846 ], [ %1, %854 ], [ %1, %857 ], [ %1, %803 ]
  %929 = load i24, ptr %46, align 4
  %930 = and i24 %929, 112
  %931 = icmp eq i24 %930, 0
  br i1 %931, label %1116, label %932

932:                                              ; preds = %927
  %933 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 92
  %934 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 5
  %935 = load i8, ptr %934, align 1
  %936 = zext i8 %935 to i32
  %937 = icmp eq i8 %935, 0
  br i1 %937, label %1111, label %938

938:                                              ; preds = %932
  %939 = shl nuw nsw i32 %936, 3
  %940 = add nuw nsw i32 %939, 1544
  %941 = getelementptr i8, ptr %0, i32 %940
  br label %942

942:                                              ; preds = %1058, %938
  %943 = phi i32 [ %1059, %1058 ], [ 0, %938 ]
  %944 = phi ptr [ %1060, %1058 ], [ %933, %938 ]
  %945 = getelementptr inbounds %struct.tcp_sack_block, ptr %944, i32 0, i32 1
  %946 = load i32, ptr %945, align 4
  %947 = sub i32 %946, %566
  %948 = icmp slt i32 %947, 0
  br i1 %948, label %1058, label %949

949:                                              ; preds = %942
  %950 = load i32, ptr %944, align 4
  %951 = sub i32 %567, %950
  %952 = icmp slt i32 %951, 0
  br i1 %952, label %1058, label %953

953:                                              ; preds = %949
  %954 = getelementptr inbounds %struct.tcp_sack_block, ptr %944, i32 0, i32 1
  %955 = sub i32 %566, %950
  %956 = icmp slt i32 %955, 0
  br i1 %956, label %957, label %958

957:                                              ; preds = %953
  store i32 %566, ptr %944, align 4
  br label %958

958:                                              ; preds = %957, %953
  %959 = sub i32 %946, %567
  %960 = icmp slt i32 %959, 0
  br i1 %960, label %961, label %962

961:                                              ; preds = %958
  store i32 %567, ptr %954, align 4
  br label %962

962:                                              ; preds = %961, %958
  %963 = icmp ugt i32 %943, 1
  br i1 %963, label %964, label %993

964:                                              ; preds = %962
  %965 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 33
  %966 = load i8, ptr %965, align 2
  %967 = icmp eq i8 %966, 0
  br i1 %967, label %995, label %968

968:                                              ; preds = %964
  %969 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 86
  %970 = call i32 @hrtimer_try_to_cancel(ptr noundef %969) #16
  %971 = icmp eq i32 %970, 1
  br i1 %971, label %972, label %978

972:                                              ; preds = %968
  %973 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !43
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %973) #16, !srcloc !27
  %974 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %973, ptr %973, i32 1, ptr elementtype(i32) %973) #16, !srcloc !44
  %975 = extractvalue { i32, i32, i32 } %974, 0
  %976 = icmp slt i32 %975, 2
  br i1 %976, label %977, label %978, !prof !16

977:                                              ; preds = %972
  call void @refcount_warn_saturate(ptr noundef %973, i32 noundef 4) #16
  br label %978

978:                                              ; preds = %977, %972, %968
  %979 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %980 = load i8, ptr %965, align 2
  %981 = zext i8 %980 to i32
  %982 = add nsw i32 %981, -1
  %983 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %984 = getelementptr [126 x i32], ptr %983, i32 0, i32 115
  %985 = ptrtoint ptr %984 to i32
  %986 = call i32 @llvm.read_register.i32(metadata !0) #16
  %987 = inttoptr i32 %986 to ptr
  %988 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %987) #13, !srcloc !14
  %989 = add i32 %988, %985
  %990 = inttoptr i32 %989 to ptr
  %991 = load i32, ptr %990, align 4
  %992 = add i32 %982, %991
  store i32 %992, ptr %990, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %979) #16, !srcloc !15
  store i8 0, ptr %965, align 2
  call void @tcp_send_ack(ptr noundef %0) #16
  br label %995

993:                                              ; preds = %962
  %994 = icmp eq i32 %943, 0
  br i1 %994, label %1004, label %995

995:                                              ; preds = %993, %978, %964
  %996 = load i64, ptr %944, align 4
  br label %997

997:                                              ; preds = %997, %995
  %998 = phi i32 [ %1002, %997 ], [ %943, %995 ]
  %999 = phi ptr [ %1000, %997 ], [ %944, %995 ]
  %1000 = getelementptr %struct.tcp_sack_block, ptr %999, i32 -1
  %1001 = load i64, ptr %1000, align 4
  store i64 %1001, ptr %999, align 4
  store i64 %996, ptr %1000, align 4
  %1002 = add nsw i32 %998, -1
  %1003 = icmp sgt i32 %998, 1
  br i1 %1003, label %997, label %1004

1004:                                             ; preds = %997, %993
  %1005 = icmp ugt i8 %935, 1
  br i1 %1005, label %1006, label %1116

1006:                                             ; preds = %1004
  %1007 = load i8, ptr %934, align 1
  %1008 = icmp ugt i8 %1007, 1
  br i1 %1008, label %1009, label %1116

1009:                                             ; preds = %1006
  %1010 = getelementptr %struct.tcp_sock, ptr %0, i32 0, i32 92, i32 1
  %1011 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 92, i32 0, i32 1
  br label %1012

1012:                                             ; preds = %1053, %1009
  %1013 = phi i8 [ %1007, %1009 ], [ %1022, %1053 ]
  %1014 = phi ptr [ %1010, %1009 ], [ %1055, %1053 ]
  %1015 = phi i32 [ 1, %1009 ], [ %1054, %1053 ]
  %1016 = getelementptr inbounds %struct.tcp_sack_block, ptr %1014, i32 0, i32 1
  %1017 = trunc i32 %1015 to i8
  br label %1021

1018:                                             ; preds = %1044, %1040
  %1019 = phi i8 [ %1041, %1040 ], [ %1050, %1044 ]
  %1020 = icmp ugt i8 %1019, %1017
  br i1 %1020, label %1021, label %1116

1021:                                             ; preds = %1018, %1012
  %1022 = phi i8 [ %1013, %1012 ], [ %1019, %1018 ]
  %1023 = load i32, ptr %1014, align 4
  %1024 = load i32, ptr %1016, align 4
  %1025 = load i32, ptr %1011, align 4
  %1026 = sub i32 %1025, %1023
  %1027 = icmp slt i32 %1026, 0
  br i1 %1027, label %1053, label %1028

1028:                                             ; preds = %1021
  %1029 = load i32, ptr %933, align 4
  %1030 = sub i32 %1024, %1029
  %1031 = icmp slt i32 %1030, 0
  br i1 %1031, label %1053, label %1032

1032:                                             ; preds = %1028
  %1033 = sub i32 %1023, %1029
  %1034 = icmp slt i32 %1033, 0
  br i1 %1034, label %1035, label %1036

1035:                                             ; preds = %1032
  store i32 %1023, ptr %933, align 4
  br label %1036

1036:                                             ; preds = %1035, %1032
  %1037 = sub i32 %1025, %1024
  %1038 = icmp slt i32 %1037, 0
  br i1 %1038, label %1039, label %1040

1039:                                             ; preds = %1036
  store i32 %1024, ptr %1011, align 4
  br label %1040

1040:                                             ; preds = %1039, %1036
  %1041 = add i8 %1022, -1
  store i8 %1041, ptr %934, align 1
  %1042 = zext i8 %1041 to i32
  %1043 = icmp ult i32 %1015, %1042
  br i1 %1043, label %1044, label %1018

1044:                                             ; preds = %1044, %1040
  %1045 = phi i32 [ %1047, %1044 ], [ %1015, %1040 ]
  %1046 = getelementptr %struct.tcp_sack_block, ptr %933, i32 %1045
  %1047 = add nuw nsw i32 %1045, 1
  %1048 = getelementptr %struct.tcp_sack_block, ptr %933, i32 %1047
  %1049 = load i64, ptr %1048, align 4
  store i64 %1049, ptr %1046, align 4
  %1050 = load i8, ptr %934, align 1
  %1051 = zext i8 %1050 to i32
  %1052 = icmp ult i32 %1047, %1051
  br i1 %1052, label %1044, label %1018

1053:                                             ; preds = %1028, %1021
  %1054 = add nuw nsw i32 %1015, 1
  %1055 = getelementptr %struct.tcp_sack_block, ptr %1014, i32 1
  %1056 = zext i8 %1022 to i32
  %1057 = icmp ult i32 %1054, %1056
  br i1 %1057, label %1012, label %1116

1058:                                             ; preds = %949, %942
  %1059 = add nuw nsw i32 %943, 1
  %1060 = getelementptr %struct.tcp_sack_block, ptr %944, i32 1
  %1061 = icmp eq i32 %1059, %936
  br i1 %1061, label %1062, label %942

1062:                                             ; preds = %1058
  %1063 = icmp ugt i8 %935, 1
  br i1 %1063, label %1064, label %1100

1064:                                             ; preds = %1062
  %1065 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 33
  %1066 = load i8, ptr %1065, align 2
  %1067 = icmp eq i8 %1066, 0
  br i1 %1067, label %1093, label %1068

1068:                                             ; preds = %1064
  %1069 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 86
  %1070 = call i32 @hrtimer_try_to_cancel(ptr noundef %1069) #16
  %1071 = icmp eq i32 %1070, 1
  br i1 %1071, label %1072, label %1078

1072:                                             ; preds = %1068
  %1073 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !43
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1073) #16, !srcloc !27
  %1074 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1073, ptr %1073, i32 1, ptr elementtype(i32) %1073) #16, !srcloc !44
  %1075 = extractvalue { i32, i32, i32 } %1074, 0
  %1076 = icmp slt i32 %1075, 2
  br i1 %1076, label %1077, label %1078, !prof !16

1077:                                             ; preds = %1072
  call void @refcount_warn_saturate(ptr noundef %1073, i32 noundef 4) #16
  br label %1078

1078:                                             ; preds = %1077, %1072, %1068
  %1079 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %1080 = load i8, ptr %1065, align 2
  %1081 = zext i8 %1080 to i32
  %1082 = add nsw i32 %1081, -1
  %1083 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %1084 = getelementptr [126 x i32], ptr %1083, i32 0, i32 115
  %1085 = ptrtoint ptr %1084 to i32
  %1086 = call i32 @llvm.read_register.i32(metadata !0) #16
  %1087 = inttoptr i32 %1086 to ptr
  %1088 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %1087) #13, !srcloc !14
  %1089 = add i32 %1088, %1085
  %1090 = inttoptr i32 %1089 to ptr
  %1091 = load i32, ptr %1090, align 4
  %1092 = add i32 %1082, %1091
  store i32 %1092, ptr %1090, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1079) #16, !srcloc !15
  store i8 0, ptr %1065, align 2
  call void @tcp_send_ack(ptr noundef %0) #16
  br label %1093

1093:                                             ; preds = %1078, %1064
  %1094 = icmp ugt i8 %935, 3
  br i1 %1094, label %1095, label %1100

1095:                                             ; preds = %1093
  %1096 = add nsw i32 %936, -1
  %1097 = load i8, ptr %934, align 1
  %1098 = add i8 %1097, -1
  store i8 %1098, ptr %934, align 1
  %1099 = getelementptr %struct.tcp_sack_block, ptr %941, i32 -1
  br label %1100

1100:                                             ; preds = %1095, %1093, %1062
  %1101 = phi ptr [ %1099, %1095 ], [ %941, %1093 ], [ %941, %1062 ]
  %1102 = phi i32 [ %1096, %1095 ], [ %936, %1093 ], [ %936, %1062 ]
  %1103 = icmp sgt i32 %1102, 0
  br i1 %1103, label %1104, label %1111

1104:                                             ; preds = %1104, %1100
  %1105 = phi i32 [ %1109, %1104 ], [ %1102, %1100 ]
  %1106 = phi ptr [ %1107, %1104 ], [ %1101, %1100 ]
  %1107 = getelementptr %struct.tcp_sack_block, ptr %1106, i32 -1
  %1108 = load i64, ptr %1107, align 4
  store i64 %1108, ptr %1106, align 4
  %1109 = add nsw i32 %1105, -1
  %1110 = icmp ugt i32 %1105, 1
  br i1 %1110, label %1104, label %1111

1111:                                             ; preds = %1104, %1100, %932
  %1112 = phi ptr [ %933, %932 ], [ %1101, %1100 ], [ %1107, %1104 ]
  store i32 %566, ptr %1112, align 4
  %1113 = getelementptr inbounds %struct.tcp_sack_block, ptr %1112, i32 0, i32 1
  store i32 %567, ptr %1113, align 4
  %1114 = load i8, ptr %934, align 1
  %1115 = add i8 %1114, 1
  store i8 %1115, ptr %934, align 1
  br label %1116

1116:                                             ; preds = %1111, %1053, %1018, %1006, %1004, %927, %579
  %1117 = phi ptr [ %1, %579 ], [ %928, %927 ], [ %928, %1004 ], [ %928, %1006 ], [ %928, %1111 ], [ %928, %1018 ], [ %928, %1053 ]
  %1118 = icmp eq ptr %1117, null
  br i1 %1118, label %1150, label %1119

1119:                                             ; preds = %1116
  %1120 = load i24, ptr %46, align 4
  %1121 = and i24 %1120, 112
  %1122 = icmp eq i24 %1121, 0
  br i1 %1122, label %1124, label %1123

1123:                                             ; preds = %1119
  call fastcc void @tcp_grow_window(ptr noundef %0, ptr noundef nonnull %1117, i1 noundef zeroext false) #16
  br label %1124

1124:                                             ; preds = %1123, %1119
  call void @skb_condense(ptr noundef nonnull %1117) #16
  %1125 = getelementptr inbounds %struct.sk_buff, ptr %1117, i32 0, i32 4, i32 0, i32 1
  %1126 = load ptr, ptr %1125, align 4
  %1127 = icmp eq ptr %1126, null
  br i1 %1127, label %1129, label %1128

1128:                                             ; preds = %1124
  call void %1126(ptr noundef nonnull %1117) #16
  br label %1134

1129:                                             ; preds = %1124
  %1130 = getelementptr inbounds %struct.sk_buff, ptr %1117, i32 0, i32 1
  %1131 = load ptr, ptr %1130, align 4
  %1132 = icmp eq ptr %1131, null
  br i1 %1132, label %1134, label %1133, !prof !11

1133:                                             ; preds = %1129
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #16, !srcloc !26
  unreachable

1134:                                             ; preds = %1129, %1128
  %1135 = getelementptr inbounds %struct.sk_buff, ptr %1117, i32 0, i32 1
  store ptr %0, ptr %1135, align 4
  store ptr @sock_rfree, ptr %1125, align 4
  %1136 = getelementptr inbounds %struct.sk_buff, ptr %1117, i32 0, i32 18
  %1137 = load i32, ptr %1136, align 8
  %1138 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1138) #16, !srcloc !27
  %1139 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1138, ptr %1138, i32 %1137, ptr elementtype(i32) %1138) #16, !srcloc !28
  %1140 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %1141 = load ptr, ptr %1140, align 8
  %1142 = getelementptr inbounds %struct.proto, ptr %1141, i32 0, i32 30
  %1143 = load ptr, ptr %1142, align 4
  %1144 = icmp eq ptr %1143, null
  br i1 %1144, label %1150, label %1145

1145:                                             ; preds = %1134
  %1146 = load i32, ptr %1136, align 8
  %1147 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %1148 = load i32, ptr %1147, align 4
  %1149 = sub i32 %1148, %1146
  store i32 %1149, ptr %1147, align 4
  br label %1150

1150:                                             ; preds = %1145, %1134, %1116, %526
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #16
  br label %1151

1151:                                             ; preds = %1150, %453, %361, %357, %319, %11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_drop(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 5
  %6 = load i16, ptr %5, align 2
  %7 = icmp eq i16 %6, 0
  %8 = select i1 %7, i16 1, i16 %6
  %9 = zext i16 %8 to i32
  %10 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #16, !srcloc !27
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 %9, ptr elementtype(i32) %10) #16, !srcloc !28
  tail call void @__kfree_skb(ptr noundef %1) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_init_transfer(ptr noundef %0, i32 %1, ptr nocapture readnone %2) local_unnamed_addr #2 {
  tail call void @tcp_mtup_init(ptr noundef %0) #16
  %4 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0) #16
  tail call void @tcp_init_metrics(ptr noundef %0) #16
  %9 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 102
  %10 = load i32, ptr %9, align 8
  %11 = icmp ugt i32 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 99
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %12, %3
  %17 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %18 = load volatile ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.dst_entry, ptr %18, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, -4
  %24 = inttoptr i32 %23 to ptr
  %25 = getelementptr i32, ptr %24, i32 10
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20, %16
  br label %29

29:                                               ; preds = %28, %20
  %30 = phi i32 [ 10, %28 ], [ %26, %20 ]
  %31 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 65
  %32 = load i32, ptr %31, align 8
  %33 = tail call i32 @llvm.umin.i32(i32 %30, i32 %32) #16
  br label %34

34:                                               ; preds = %29, %12
  %35 = phi i32 [ %33, %29 ], [ 1, %12 ]
  %36 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  store i32 %35, ptr %36, align 8
  %37 = load volatile i32, ptr @jiffies, align 64
  %38 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 67
  store i32 %37, ptr %38, align 8
  %39 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %40 = load i8, ptr %39, align 4
  %41 = and i8 %40, 32
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  tail call void @tcp_init_congestion_control(ptr noundef %0) #16
  br label %44

44:                                               ; preds = %43, %34
  %45 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 79), align 1
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 43
  %48 = load i8, ptr %47, align 8
  %49 = and i8 %48, 16
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %89

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 7
  %57 = load i16, ptr %56, align 2
  %58 = zext i16 %57 to i32
  %59 = tail call i32 @llvm.umax.i32(i32 %55, i32 %58) #16
  %60 = add i32 %59, 575
  %61 = icmp eq i32 %60, 0
  %62 = tail call i32 @llvm.ctlz.i32(i32 %60, i1 false) #16, !range !40
  %63 = sub nuw nsw i32 32, %62
  %64 = shl nuw i32 1, %63
  %65 = add nuw i32 %64, 192
  %66 = select i1 %61, i32 193, i32 %65
  %67 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %68 = load i32, ptr %67, align 8
  %69 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 58
  %70 = load i32, ptr %69, align 8
  %71 = add i32 %70, 1
  %72 = tail call i32 @llvm.umax.i32(i32 %68, i32 %71) #16
  %73 = tail call i32 @llvm.umax.i32(i32 %72, i32 10) #16
  %74 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %53, i32 0, i32 9
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %51
  %78 = tail call i32 %75(ptr noundef %0) #16
  br label %79

79:                                               ; preds = %77, %51
  %80 = phi i32 [ %78, %77 ], [ 2, %51 ]
  %81 = mul i32 %73, %66
  %82 = mul i32 %81, %80
  %83 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 21
  %84 = load i32, ptr %83, align 8
  %85 = icmp slt i32 %84, %82
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 96, i32 2), align 4
  %88 = tail call i32 @llvm.smin.i32(i32 %82, i32 %87) #16
  store volatile i32 %88, ptr %83, align 8
  br label %89

89:                                               ; preds = %86, %79, %44
  tail call void @tcp_mstamp_refresh(ptr noundef %0) #16
  %90 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  %91 = load i64, ptr %90, align 8
  %92 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 112, i32 2
  store i64 %91, ptr %92, align 8
  %93 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 8
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 112, i32 1
  store i32 %94, ptr %95, align 4
  %96 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 15
  %97 = load volatile i32, ptr %96, align 4
  %98 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 77), align 4
  %99 = icmp slt i32 %98, 1
  %100 = sub i32 0, %98
  %101 = ashr i32 %97, %100
  %102 = ashr i32 %97, %98
  %103 = sub i32 %97, %102
  %104 = select i1 %99, i32 %101, i32 %103
  %105 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 29
  %106 = load i32, ptr %105, align 8
  %107 = icmp ult i32 %106, %104
  br i1 %107, label %120, label %108

108:                                              ; preds = %89
  store i32 %104, ptr %105, align 8
  %109 = icmp eq i8 %45, 0
  br i1 %109, label %137, label %110

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 32
  %112 = load i16, ptr %111, align 8
  %113 = zext i16 %112 to i32
  %114 = shl nuw nsw i32 %113, 2
  %115 = icmp sgt i32 %104, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %110
  %117 = ashr i32 %104, %46
  %118 = sub i32 %104, %117
  %119 = tail call i32 @llvm.smax.i32(i32 %118, i32 %114) #16
  store i32 %119, ptr %105, align 8
  br label %126

120:                                              ; preds = %89
  %121 = icmp eq i8 %45, 0
  br i1 %121, label %137, label %122

122:                                              ; preds = %120
  %123 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 32
  %124 = load i16, ptr %123, align 8
  %125 = zext i16 %124 to i32
  br label %126

126:                                              ; preds = %122, %116, %110
  %127 = phi i32 [ %125, %122 ], [ %113, %116 ], [ %113, %110 ]
  %128 = phi i32 [ %106, %122 ], [ %119, %116 ], [ %104, %110 ]
  %129 = shl nuw nsw i32 %127, 1
  %130 = icmp ugt i32 %128, %129
  %131 = add i32 %128, %127
  %132 = icmp ugt i32 %131, %104
  %133 = select i1 %130, i1 %132, i1 false
  br i1 %133, label %134, label %137

134:                                              ; preds = %126
  %135 = sub i32 %104, %127
  %136 = tail call i32 @llvm.smax.i32(i32 %129, i32 %135) #16
  store i32 %136, ptr %105, align 8
  br label %137

137:                                              ; preds = %134, %126, %120, %108
  %138 = phi i32 [ %104, %108 ], [ %136, %134 ], [ %128, %126 ], [ %106, %120 ]
  %139 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 112
  %140 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 30
  %141 = load i32, ptr %140, align 4
  %142 = tail call i32 @llvm.umin.i32(i32 %141, i32 %138) #16
  store i32 %142, ptr %140, align 4
  %143 = load volatile i32, ptr @jiffies, align 64
  store i32 %143, ptr %38, align 8
  %144 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 79
  %145 = load i32, ptr %144, align 8
  %146 = tail call i32 @llvm.umin.i32(i32 %142, i32 %145) #16
  %147 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 32
  %148 = load i16, ptr %147, align 8
  %149 = zext i16 %148 to i32
  %150 = mul nuw nsw i32 %149, 10
  %151 = tail call i32 @llvm.umin.i32(i32 %146, i32 %150) #16
  store i32 %151, ptr %139, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_mtup_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_init_metrics(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_init_congestion_control(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_finish_connect(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  tail call void @tcp_set_state(ptr noundef %0, i32 noundef 1) #16
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 6
  store i32 %3, ptr %4, align 4
  %5 = icmp eq ptr %1, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  tail call void %10(ptr noundef %0, ptr noundef nonnull %1) #16
  %11 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 14
  %12 = load volatile i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 10
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %17, label %16, !prof !11

16:                                               ; preds = %6
  store volatile i32 %14, ptr %11, align 8
  br label %17

17:                                               ; preds = %16, %6
  %18 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 9
  %19 = load i16, ptr %18, align 4
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = add i16 %19, -1
  %23 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 17
  %24 = load volatile i16, ptr %23, align 2
  %25 = icmp eq i16 %24, %22
  br i1 %25, label %27, label %26, !prof !11

26:                                               ; preds = %21
  store volatile i16 %22, ptr %23, align 2
  br label %27

27:                                               ; preds = %26, %21, %17, %2
  tail call void @tcp_init_transfer(ptr noundef %0, i32 undef, ptr undef)
  %28 = load volatile i32, ptr @jiffies, align 64
  %29 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 19
  store i32 %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 104
  %36 = load i32, ptr %35, align 8
  %37 = icmp eq i32 %36, 0
  %38 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 50), align 4
  %39 = select i1 %37, i32 %38, i32 %36
  tail call void @inet_csk_reset_keepalive_timer(ptr noundef %0, i32 noundef %39) #16
  br label %40

40:                                               ; preds = %34, %27
  %41 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %42 = load i24, ptr %41, align 4
  %43 = and i24 %42, 3840
  %44 = icmp eq i24 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 26
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 1
  %49 = load i16, ptr %48, align 8
  %50 = zext i16 %49 to i32
  %51 = shl i32 %50, 26
  %52 = or i32 %47, %51
  %53 = or i32 %52, 1048576
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #16
  br label %55

55:                                               ; preds = %45, %40
  %56 = phi i32 [ %54, %45 ], [ 0, %40 ]
  %57 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 3
  store i32 %56, ptr %57, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_csk_reset_keepalive_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_rcv_state_process(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.tcp_fastopen_cookie, align 8
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %12 = load volatile i8, ptr %11, align 2
  switch i8 %12, label %368 [
    i8 7, label %680
    i8 10, label %13
    i8 2, label %33
  ]

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.tcphdr, ptr %10, i32 0, i32 4
  %15 = load i16, ptr %14, align 4
  %16 = and i16 %15, 4096
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %690

18:                                               ; preds = %13
  %19 = and i16 %15, 1792
  %20 = icmp eq i16 %19, 512
  br i1 %20, label %21, label %680

21:                                               ; preds = %18
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %22 = tail call ptr @llvm.thread.pointer() #16
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %24 = load volatile i32, ptr %23, align 4
  %25 = add i32 %24, 512
  store volatile i32 %25, ptr %23, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !45
  %26 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 11
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %27, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %0, ptr noundef %1) #16
  %31 = icmp sgt i32 %30, -1
  tail call fastcc void @local_bh_enable()
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br i1 %31, label %32, label %690

32:                                               ; preds = %21
  tail call void @consume_skb(ptr noundef %1) #16
  br label %690

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %35 = load i24, ptr %34, align 4
  %36 = and i24 %35, -2
  store i24 %36, ptr %34, align 4
  tail call void @tcp_mstamp_refresh(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.tcp_rcv_synsent_state_process.foc, i32 24, i1 false) #16
  %37 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61
  %38 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 7
  %39 = load i16, ptr %38, align 2
  call void @tcp_parse_options(ptr noundef nonnull @init_net, ptr noundef %1, ptr noundef %37, i32 noundef 0, ptr noundef nonnull %3) #16
  %40 = load i24, ptr %34, align 4
  %41 = and i24 %40, 1
  %42 = icmp eq i24 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 22
  %49 = load i32, ptr %48, align 4
  %50 = sub i32 %45, %49
  store i32 %50, ptr %44, align 4
  br label %51

51:                                               ; preds = %47, %43, %33
  %52 = getelementptr inbounds %struct.tcphdr, ptr %10, i32 0, i32 4
  %53 = load i16, ptr %52, align 4
  %54 = and i16 %53, 4096
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %273, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %60 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  %61 = load i32, ptr %60, align 8
  %62 = sub i32 %58, %61
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %66 = load i32, ptr %65, align 4
  %67 = sub i32 %66, %61
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %64, %56
  %70 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 18
  %71 = load i8, ptr %70, align 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %362

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 19
  store i8 1, ptr %74, align 2
  %75 = load volatile i32, ptr @jiffies, align 64
  %76 = add i32 %75, 2
  %77 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 3
  store i32 %76, ptr %77, align 8
  %78 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 4
  call void @sk_reset_timer(ptr noundef %0, ptr noundef %78, i32 noundef %76) #16
  br label %362

79:                                               ; preds = %64
  br i1 %42, label %111, label %80

80:                                               ; preds = %79
  %81 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %111, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 98
  %86 = load i32, ptr %85, align 8
  %87 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  %88 = load i64, ptr %87, align 8
  %89 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %88, i32 0) #17, !srcloc !17
  %90 = extractvalue { i64, i32 } %89, 0
  %91 = extractvalue { i64, i32 } %89, 1
  %92 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %88, i64 %90, i32 %91) #17, !srcloc !18
  %93 = extractvalue { i64, i32 } %92, 0
  %94 = lshr i64 %93, 9
  %95 = trunc i64 %94 to i32
  %96 = sub i32 %95, %86
  %97 = sub i32 %82, %86
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %84
  %100 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %101 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %102 = getelementptr [126 x i32], ptr %101, i32 0, i32 14
  %103 = ptrtoint ptr %102 to i32
  %104 = call i32 @llvm.read_register.i32(metadata !0) #16
  %105 = inttoptr i32 %104 to ptr
  %106 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %105) #13, !srcloc !14
  %107 = add i32 %106, %103
  %108 = inttoptr i32 %107 to ptr
  %109 = load i32, ptr %108, align 4
  %110 = add i32 %109, 1
  store i32 %110, ptr %108, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %100) #16, !srcloc !15
  br label %362

111:                                              ; preds = %84, %80, %79
  %112 = and i16 %53, 1024
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  call void @tcp_reset(ptr noundef %0, ptr undef) #16
  br label %262

115:                                              ; preds = %111
  %116 = and i16 %53, 512
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %359, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 56
  %120 = load i8, ptr %119, align 2
  %121 = and i8 %120, 1
  %122 = icmp eq i8 %121, 0
  %123 = and i16 %53, -16384
  %124 = icmp eq i16 %123, 16384
  %125 = select i1 %122, i1 true, i1 %124
  br i1 %125, label %128, label %126

126:                                              ; preds = %118
  %127 = and i8 %120, -2
  store i8 %127, ptr %119, align 2
  br label %128

128:                                              ; preds = %126, %118
  %129 = load i32, ptr %59, align 8
  %130 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 25
  store i32 %129, ptr %130, align 8
  %131 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 98
  %132 = load i32, ptr %131, align 8
  %133 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 99
  %134 = load i32, ptr %133, align 4
  %135 = icmp eq i32 %134, 0
  %136 = icmp eq i32 %132, 0
  %137 = select i1 %135, i1 true, i1 %136
  %138 = select i1 %137, i1 true, i1 %42
  br i1 %138, label %144, label %139

139:                                              ; preds = %128
  %140 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 3
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %132, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  store i32 0, ptr %133, align 4
  br label %144

144:                                              ; preds = %143, %139, %128
  %145 = call fastcc i32 @tcp_ack(ptr noundef %0, ptr noundef %1, i32 noundef 256) #16
  %146 = load i32, ptr %59, align 8
  %147 = add i32 %146, 1
  %148 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  store volatile i32 %147, ptr %148, align 8
  %149 = load i32, ptr %59, align 8
  %150 = add i32 %149, 1
  %151 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 9
  store i32 %150, ptr %151, align 8
  %152 = getelementptr inbounds %struct.tcphdr, ptr %10, i32 0, i32 5
  %153 = load i16, ptr %152, align 2
  %154 = call i16 @llvm.bswap.i16(i16 %153) #16
  %155 = zext i16 %154 to i32
  %156 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 26
  store i32 %155, ptr %156, align 4
  %157 = load i24, ptr %34, align 4
  %158 = and i24 %157, 8
  %159 = icmp eq i24 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %144
  %161 = and i24 %157, -65281
  store i24 %161, ptr %34, align 4
  %162 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 29
  %163 = load i32, ptr %162, align 8
  %164 = call i32 @llvm.umin.i32(i32 %163, i32 65535) #16
  store i32 %164, ptr %162, align 8
  br label %165

165:                                              ; preds = %160, %144
  %166 = phi i24 [ %161, %160 ], [ %157, %144 ]
  %167 = and i24 %166, 1
  %168 = icmp eq i24 %167, 0
  br i1 %168, label %180, label %169

169:                                              ; preds = %165
  %170 = or i24 %166, 2
  store i24 %170, ptr %34, align 4
  %171 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 1
  store i16 32, ptr %171, align 8
  %172 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 32
  %173 = load i16, ptr %172, align 8
  %174 = add i16 %173, -12
  store i16 %174, ptr %172, align 8
  %175 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 2
  %176 = load i32, ptr %175, align 4
  %177 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 1
  store i32 %176, ptr %177, align 4
  %178 = call i64 @ktime_get_seconds() #16
  %179 = trunc i64 %178 to i32
  store i32 %179, ptr %37, align 4
  br label %182

180:                                              ; preds = %165
  %181 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 1
  store i16 20, ptr %181, align 8
  br label %182

182:                                              ; preds = %180, %169
  %183 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 9
  %184 = load i32, ptr %183, align 8
  %185 = call i32 @tcp_sync_mss(ptr noundef %0, i32 noundef %184) #16
  %186 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 32
  %187 = load i16, ptr %186, align 8
  %188 = zext i16 %187 to i32
  %189 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  %190 = load i32, ptr %189, align 4
  %191 = call i32 @llvm.umin.i32(i32 %190, i32 %188) #16
  %192 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 79
  %193 = load i32, ptr %192, align 8
  %194 = lshr i32 %193, 1
  %195 = call i32 @llvm.umin.i32(i32 %191, i32 %194) #16
  %196 = call i32 @llvm.umin.i32(i32 %195, i32 536) #16
  %197 = call i32 @llvm.umax.i32(i32 %196, i32 88) #16
  %198 = trunc i32 %197 to i16
  %199 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 8
  store i16 %198, ptr %199, align 2
  %200 = load i32, ptr %148, align 8
  %201 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 8
  store volatile i32 %200, ptr %201, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !46
  call void @tcp_finish_connect(ptr noundef %0, ptr noundef %1) #16
  %202 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 39
  %203 = load i8, ptr %202, align 1
  %204 = and i8 %203, 12
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %182
  %207 = call fastcc zeroext i1 @tcp_rcv_fastopen_synack(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #16
  br label %208

208:                                              ; preds = %206, %182
  %209 = phi i1 [ %207, %206 ], [ false, %182 ]
  %210 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %211 = load volatile i32, ptr %210, align 4
  %212 = and i32 %211, 1
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %224

214:                                              ; preds = %208
  %215 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 75
  %216 = load ptr, ptr %215, align 4
  call void %216(ptr noundef %0) #16
  %217 = load volatile i32, ptr %210, align 4
  %218 = and i32 %217, 65536
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %224, label %220

220:                                              ; preds = %214
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %221 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  %222 = load volatile ptr, ptr %221, align 4
  %223 = call i32 @sock_wake_async(ptr noundef %222, i32 noundef 0, i32 noundef 2) #16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %224

224:                                              ; preds = %220, %214, %208
  br i1 %209, label %367, label %225

225:                                              ; preds = %224
  %226 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 28
  %227 = load i32, ptr %226, align 8
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %237

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 1
  %231 = load i8, ptr %230, align 4
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 2
  %235 = load i8, ptr %234, align 2
  %236 = icmp ugt i8 %235, 2
  br i1 %236, label %237, label %272

237:                                              ; preds = %233, %229, %225
  %238 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24
  %239 = load i8, ptr %238, align 4
  %240 = load i32, ptr %192, align 8
  %241 = load i16, ptr %199, align 2
  %242 = zext i16 %241 to i32
  %243 = shl nuw nsw i32 %242, 1
  %244 = udiv i32 %240, %243
  %245 = icmp ugt i32 %243, %240
  %246 = call i32 @llvm.umin.i32(i32 %244, i32 16) #16
  %247 = select i1 %245, i32 2, i32 %246
  %248 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 1
  %249 = load i8, ptr %248, align 1
  %250 = zext i8 %249 to i32
  %251 = icmp ugt i32 %247, %250
  br i1 %251, label %252, label %254

252:                                              ; preds = %237
  %253 = trunc i32 %247 to i8
  store i8 %253, ptr %248, align 1
  br label %254

254:                                              ; preds = %252, %237
  %255 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 2
  store i8 0, ptr %255, align 2
  %256 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 4
  store i32 4, ptr %256, align 4
  %257 = or i8 %239, 3
  store i8 %257, ptr %238, align 4
  %258 = load volatile i32, ptr @jiffies, align 64
  %259 = add i32 %258, 20
  %260 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 5
  store i32 %259, ptr %260, align 4
  %261 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 5
  call void @sk_reset_timer(ptr noundef %0, ptr noundef %261, i32 noundef %259) #16
  br label %262

262:                                              ; preds = %359, %340, %254, %114
  %263 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %264 = load ptr, ptr %263, align 4
  %265 = getelementptr inbounds %struct.skb_shared_info, ptr %264, i32 0, i32 5
  %266 = load i16, ptr %265, align 2
  %267 = icmp eq i16 %266, 0
  %268 = select i1 %267, i16 1, i16 %266
  %269 = zext i16 %268 to i32
  %270 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %270) #16, !srcloc !27
  %271 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %270, ptr %270, i32 %269, ptr elementtype(i32) %270) #16, !srcloc !28
  call void @__kfree_skb(ptr noundef %1) #16
  br label %365

272:                                              ; preds = %233
  call void @tcp_send_ack(ptr noundef %0) #16
  br label %367

273:                                              ; preds = %51
  %274 = and i16 %53, 1024
  %275 = icmp eq i16 %274, 0
  br i1 %275, label %276, label %359

276:                                              ; preds = %273
  %277 = load i32, ptr %37, align 4
  %278 = icmp eq i32 %277, 0
  %279 = select i1 %278, i1 true, i1 %42
  br i1 %279, label %297, label %280

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 1
  %282 = load i32, ptr %281, align 4
  %283 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 2
  %284 = load i32, ptr %283, align 4
  %285 = sub i32 %282, %284
  %286 = icmp sgt i32 %285, 0
  br i1 %286, label %287, label %297

287:                                              ; preds = %280
  %288 = call i64 @ktime_get_seconds() #16
  %289 = trunc i64 %288 to i32
  %290 = load i32, ptr %37, align 4
  %291 = sub i32 -2073600, %290
  %292 = add i32 %291, %289
  %293 = icmp sgt i32 %292, -1
  br i1 %293, label %297, label %294, !prof !16

294:                                              ; preds = %287
  %295 = load i32, ptr %281, align 4
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %359

297:                                              ; preds = %294, %287, %280, %276
  %298 = load i16, ptr %52, align 4
  %299 = and i16 %298, 512
  %300 = icmp eq i16 %299, 0
  br i1 %300, label %359, label %301

301:                                              ; preds = %297
  call void @tcp_set_state(ptr noundef %0, i32 noundef 3) #16
  %302 = load i24, ptr %34, align 4
  %303 = and i24 %302, 1
  %304 = icmp eq i24 %303, 0
  br i1 %304, label %312, label %305

305:                                              ; preds = %301
  %306 = or i24 %302, 2
  store i24 %306, ptr %34, align 4
  %307 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 2
  %308 = load i32, ptr %307, align 4
  %309 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 1
  store i32 %308, ptr %309, align 4
  %310 = call i64 @ktime_get_seconds() #16
  %311 = trunc i64 %310 to i32
  store i32 %311, ptr %37, align 4
  br label %312

312:                                              ; preds = %305, %301
  %313 = phi i16 [ 32, %305 ], [ 20, %301 ]
  %314 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 1
  store i16 %313, ptr %314, align 8
  %315 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %316 = load i32, ptr %315, align 8
  %317 = add i32 %316, 1
  %318 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  store volatile i32 %317, ptr %318, align 8
  %319 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 8
  store volatile i32 %317, ptr %319, align 4
  %320 = load i32, ptr %315, align 8
  %321 = add i32 %320, 1
  %322 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 9
  store i32 %321, ptr %322, align 8
  %323 = getelementptr inbounds %struct.tcphdr, ptr %10, i32 0, i32 5
  %324 = load i16, ptr %323, align 2
  %325 = call i16 @llvm.bswap.i16(i16 %324) #16
  %326 = zext i16 %325 to i32
  %327 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 26
  store i32 %326, ptr %327, align 4
  %328 = load i32, ptr %315, align 8
  %329 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 25
  store i32 %328, ptr %329, align 8
  %330 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 27
  store i32 %326, ptr %330, align 8
  %331 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 56
  %332 = load i8, ptr %331, align 2
  %333 = and i8 %332, 1
  %334 = icmp eq i8 %333, 0
  br i1 %334, label %340, label %335

335:                                              ; preds = %312
  %336 = load i16, ptr %52, align 4
  %337 = icmp ugt i16 %336, -16385
  br i1 %337, label %340, label %338

338:                                              ; preds = %335
  %339 = and i8 %332, -2
  store i8 %339, ptr %331, align 2
  br label %340

340:                                              ; preds = %338, %335, %312
  call void @tcp_mtup_init(ptr noundef %0) #16
  %341 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 9
  %342 = load i32, ptr %341, align 8
  %343 = call i32 @tcp_sync_mss(ptr noundef %0, i32 noundef %342) #16
  %344 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 32
  %345 = load i16, ptr %344, align 8
  %346 = zext i16 %345 to i32
  %347 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  %348 = load i32, ptr %347, align 4
  %349 = call i32 @llvm.umin.i32(i32 %348, i32 %346) #16
  %350 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 79
  %351 = load i32, ptr %350, align 8
  %352 = lshr i32 %351, 1
  %353 = call i32 @llvm.umin.i32(i32 %349, i32 %352) #16
  %354 = call i32 @llvm.umin.i32(i32 %353, i32 536) #16
  %355 = call i32 @llvm.umax.i32(i32 %354, i32 88) #16
  %356 = trunc i32 %355 to i16
  %357 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 8
  store i16 %356, ptr %357, align 2
  %358 = call i32 @tcp_send_synack(ptr noundef %0) #16
  br label %262

359:                                              ; preds = %297, %294, %273, %115
  %360 = load i24, ptr %34, align 4
  %361 = and i24 %360, -3963
  store i24 %361, ptr %34, align 4
  store i16 %39, ptr %38, align 2
  br label %262

362:                                              ; preds = %99, %73, %69
  %363 = load i24, ptr %34, align 4
  %364 = and i24 %363, -3963
  store i24 %364, ptr %34, align 4
  store i16 %39, ptr %38, align 2
  br label %365

365:                                              ; preds = %362, %262
  %366 = phi i32 [ 0, %262 ], [ 1, %362 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  br label %690

367:                                              ; preds = %272, %224
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  call fastcc void @tcp_urg(ptr noundef %0, ptr noundef %1, ptr noundef %10)
  call void @__kfree_skb(ptr noundef %1) #16
  call fastcc void @tcp_data_snd_check(ptr noundef %0)
  br label %690

368:                                              ; preds = %2
  tail call void @tcp_mstamp_refresh(ptr noundef %0) #16
  %369 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %370 = load i24, ptr %369, align 4
  %371 = and i24 %370, -2
  store i24 %371, ptr %369, align 4
  %372 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 116
  %373 = load ptr, ptr %372, align 8
  %374 = icmp eq ptr %373, null
  br i1 %374, label %388, label %375

375:                                              ; preds = %368
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #16
  store i8 0, ptr %4, align 1, !annotation !24
  %376 = load volatile i8, ptr %11, align 2
  %377 = icmp eq i8 %376, 3
  br i1 %377, label %385, label %378

378:                                              ; preds = %375
  %379 = load volatile i8, ptr %11, align 2
  %380 = icmp ne i8 %379, 4
  %381 = load i1, ptr @tcp_rcv_state_process.__already_done, align 1
  %382 = xor i1 %381, true
  %383 = select i1 %380, i1 %382, i1 false
  br i1 %383, label %384, label %385, !prof !16

384:                                              ; preds = %378
  store i1 true, ptr @tcp_rcv_state_process.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 6441, i32 noundef 9, ptr noundef null) #16
  br label %385

385:                                              ; preds = %384, %378, %375
  %386 = call ptr @tcp_check_req(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %373, i1 noundef zeroext true, ptr noundef nonnull %4) #16
  %387 = icmp eq ptr %386, null
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  br i1 %387, label %680, label %388

388:                                              ; preds = %385, %368
  %389 = getelementptr inbounds %struct.tcphdr, ptr %10, i32 0, i32 4
  %390 = load i16, ptr %389, align 4
  %391 = and i16 %390, 5632
  %392 = icmp eq i16 %391, 0
  br i1 %392, label %680, label %393

393:                                              ; preds = %388
  %394 = call fastcc zeroext i1 @tcp_validate_incoming(ptr noundef %0, ptr noundef %1, ptr noundef %10, i32 noundef 0)
  br i1 %394, label %395, label %690

395:                                              ; preds = %393
  %396 = call fastcc i32 @tcp_ack(ptr noundef %0, ptr noundef %1, i32 noundef 49408)
  %397 = icmp sgt i32 %396, 0
  %398 = load volatile i8, ptr %11, align 2
  br i1 %397, label %402, label %399

399:                                              ; preds = %395
  %400 = icmp eq i8 %398, 3
  br i1 %400, label %690, label %401

401:                                              ; preds = %399
  call fastcc void @tcp_send_challenge_ack(ptr noundef %0)
  br label %680

402:                                              ; preds = %395
  switch i8 %398, label %626 [
    i8 3, label %403
    i8 4, label %512
    i8 11, label %612
    i8 9, label %619
  ]

403:                                              ; preds = %402
  %404 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 71
  %405 = load i32, ptr %404, align 8
  %406 = add i32 %405, 1
  store i32 %406, ptr %404, align 8
  %407 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 45
  %408 = load i32, ptr %407, align 8
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %410, label %411

410:                                              ; preds = %403
  call void @tcp_synack_rtt_meas(ptr noundef %0, ptr noundef %373)
  br label %411

411:                                              ; preds = %410, %403
  br i1 %374, label %413, label %412

412:                                              ; preds = %411
  call fastcc void @tcp_rcv_synrecv_state_fastopen(ptr noundef %0)
  br label %434

413:                                              ; preds = %411
  %414 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 98
  %415 = load i32, ptr %414, align 8
  %416 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 99
  %417 = load i32, ptr %416, align 4
  %418 = icmp ne i32 %417, 0
  %419 = icmp ne i32 %415, 0
  %420 = select i1 %418, i1 %419, i1 false
  br i1 %420, label %421, label %430

421:                                              ; preds = %413
  %422 = load i24, ptr %369, align 4
  %423 = and i24 %422, 1
  %424 = icmp eq i24 %423, 0
  br i1 %424, label %430, label %425

425:                                              ; preds = %421
  %426 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 3
  %427 = load i32, ptr %426, align 4
  %428 = icmp eq i32 %415, %427
  br i1 %428, label %429, label %430

429:                                              ; preds = %425
  store i32 0, ptr %416, align 4
  br label %430

430:                                              ; preds = %429, %425, %421, %413
  store i32 0, ptr %414, align 8
  call void @tcp_init_transfer(ptr noundef %0, i32 undef, ptr undef)
  %431 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %432 = load i32, ptr %431, align 8
  %433 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 8
  store volatile i32 %432, ptr %433, align 4
  br label %434

434:                                              ; preds = %430, %412
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !47
  call void @tcp_set_state(ptr noundef %0, i32 noundef 1) #16
  %435 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 75
  %436 = load ptr, ptr %435, align 4
  call void %436(ptr noundef %0) #16
  %437 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %438 = load ptr, ptr %437, align 8
  %439 = icmp eq ptr %438, null
  br i1 %439, label %449, label %440

440:                                              ; preds = %434
  %441 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %442 = load volatile i32, ptr %441, align 4
  %443 = and i32 %442, 65536
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %449, label %445

445:                                              ; preds = %440
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %446 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  %447 = load volatile ptr, ptr %446, align 4
  %448 = call i32 @sock_wake_async(ptr noundef %447, i32 noundef 0, i32 noundef 2) #16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %449

449:                                              ; preds = %445, %440, %434
  %450 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %451 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  %452 = load i32, ptr %451, align 8
  %453 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  store i32 %452, ptr %453, align 4
  %454 = getelementptr inbounds %struct.tcphdr, ptr %10, i32 0, i32 5
  %455 = load i16, ptr %454, align 2
  %456 = call i16 @llvm.bswap.i16(i16 %455)
  %457 = zext i16 %456 to i32
  %458 = load i24, ptr %369, align 4
  %459 = zext i24 %458 to i32
  %460 = lshr i32 %459, 8
  %461 = and i32 %460, 15
  %462 = shl nuw nsw i32 %457, %461
  %463 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 26
  store i32 %462, ptr %463, align 4
  %464 = load i32, ptr %450, align 8
  %465 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 25
  store i32 %464, ptr %465, align 8
  %466 = and i24 %458, 2
  %467 = icmp eq i24 %466, 0
  br i1 %467, label %472, label %468

468:                                              ; preds = %449
  %469 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 32
  %470 = load i16, ptr %469, align 8
  %471 = add i16 %470, -12
  store i16 %471, ptr %469, align 8
  br label %472

472:                                              ; preds = %468, %449
  %473 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %474 = load ptr, ptr %473, align 4
  %475 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %474, i32 0, i32 7
  %476 = load ptr, ptr %475, align 4
  %477 = icmp eq ptr %476, null
  br i1 %477, label %478, label %484

478:                                              ; preds = %472
  call fastcc void @tcp_update_pacing_rate(ptr noundef %0)
  %479 = load i32, ptr %463, align 4
  %480 = load i24, ptr %369, align 4
  %481 = zext i24 %480 to i32
  %482 = lshr i32 %481, 8
  %483 = and i32 %482, 15
  br label %484

484:                                              ; preds = %478, %472
  %485 = phi i32 [ %483, %478 ], [ %461, %472 ]
  %486 = phi i32 [ %479, %478 ], [ %462, %472 ]
  %487 = load volatile i32, ptr @jiffies, align 64
  %488 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 19
  store i32 %487, ptr %488, align 8
  %489 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 32
  %490 = load i16, ptr %489, align 8
  %491 = zext i16 %490 to i32
  %492 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  %493 = load i32, ptr %492, align 4
  %494 = call i32 @llvm.umin.i32(i32 %493, i32 %491) #16
  %495 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 79
  %496 = load i32, ptr %495, align 8
  %497 = lshr i32 %496, 1
  %498 = call i32 @llvm.umin.i32(i32 %494, i32 %497) #16
  %499 = call i32 @llvm.umin.i32(i32 %498, i32 536) #16
  %500 = call i32 @llvm.umax.i32(i32 %499, i32 88) #16
  %501 = trunc i32 %500 to i16
  %502 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 8
  store i16 %501, ptr %502, align 2
  %503 = lshr i32 %486, %485
  %504 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 1
  %505 = load i16, ptr %504, align 8
  %506 = zext i16 %505 to i32
  %507 = shl i32 %506, 26
  %508 = or i32 %507, %503
  %509 = or i32 %508, 1048576
  %510 = call i32 @llvm.bswap.i32(i32 %509) #16
  %511 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 3
  store i32 %510, ptr %511, align 4
  br label %626

512:                                              ; preds = %402
  br i1 %374, label %514, label %513

513:                                              ; preds = %512
  call fastcc void @tcp_rcv_synrecv_state_fastopen(ptr noundef %0)
  br label %514

514:                                              ; preds = %513, %512
  %515 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %516 = load i32, ptr %515, align 4
  %517 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %518 = load i32, ptr %517, align 4
  %519 = icmp eq i32 %516, %518
  br i1 %519, label %520, label %626

520:                                              ; preds = %514
  call void @tcp_set_state(ptr noundef %0, i32 noundef 5) #16
  %521 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 66
  %522 = load i8, ptr %521, align 2
  %523 = or i8 %522, 2
  store i8 %523, ptr %521, align 2
  %524 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  %525 = load volatile i32, ptr %524, align 4
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %527, label %528

527:                                              ; preds = %520
  store volatile i32 1, ptr %524, align 4
  br label %528

528:                                              ; preds = %527, %520
  %529 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %530 = load volatile i32, ptr %529, align 4
  %531 = and i32 %530, 1
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %533, label %536

533:                                              ; preds = %528
  %534 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 75
  %535 = load ptr, ptr %534, align 4
  call void %535(ptr noundef %0) #16
  br label %626

536:                                              ; preds = %528
  %537 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 106
  %538 = load i32, ptr %537, align 8
  %539 = icmp slt i32 %538, 0
  br i1 %539, label %540, label %552

540:                                              ; preds = %536
  call void @tcp_done(ptr noundef %0) #16
  %541 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %542 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %543 = getelementptr [126 x i32], ptr %542, i32 0, i32 50
  %544 = ptrtoint ptr %543 to i32
  %545 = call i32 @llvm.read_register.i32(metadata !0) #16
  %546 = inttoptr i32 %545 to ptr
  %547 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %546) #13, !srcloc !14
  %548 = add i32 %547, %544
  %549 = inttoptr i32 %548 to ptr
  %550 = load i32, ptr %549, align 4
  %551 = add i32 %550, 1
  store i32 %551, ptr %549, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %541) #16, !srcloc !15
  br label %690

552:                                              ; preds = %536
  %553 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %554 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %555 = load i32, ptr %554, align 4
  %556 = load i32, ptr %553, align 8
  %557 = icmp eq i32 %555, %556
  br i1 %557, label %589, label %558

558:                                              ; preds = %552
  %559 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %560 = load i32, ptr %559, align 8
  %561 = load i16, ptr %389, align 4
  %562 = lshr i16 %561, 8
  %563 = and i16 %562, 1
  %564 = zext i16 %563 to i32
  %565 = sub i32 %560, %555
  %566 = add i32 %565, %564
  %567 = icmp slt i32 %566, 0
  br i1 %567, label %568, label %589

568:                                              ; preds = %558
  %569 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 39
  %570 = load i8, ptr %569, align 1
  %571 = and i8 %570, 8
  %572 = icmp eq i8 %571, 0
  %573 = and i16 %561, 256
  %574 = icmp eq i16 %573, 0
  %575 = select i1 %572, i1 true, i1 %574
  br i1 %575, label %577, label %576

576:                                              ; preds = %568
  call void @tcp_fastopen_active_disable(ptr noundef %0) #16
  br label %577

577:                                              ; preds = %576, %568
  call void @tcp_done(ptr noundef %0) #16
  %578 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %579 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %580 = getelementptr [126 x i32], ptr %579, i32 0, i32 50
  %581 = ptrtoint ptr %580 to i32
  %582 = call i32 @llvm.read_register.i32(metadata !0) #16
  %583 = inttoptr i32 %582 to ptr
  %584 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %583) #13, !srcloc !14
  %585 = add i32 %584, %581
  %586 = inttoptr i32 %585 to ptr
  %587 = load i32, ptr %586, align 4
  %588 = add i32 %587, 1
  store i32 %588, ptr %586, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %578) #16, !srcloc !15
  br label %690

589:                                              ; preds = %558, %552
  %590 = icmp eq i32 %538, 0
  %591 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 62), align 4
  %592 = select i1 %590, i32 %591, i32 %538
  %593 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 6
  %594 = load i32, ptr %593, align 4
  %595 = shl i32 %594, 2
  %596 = ashr i32 %594, 1
  %597 = sub i32 %595, %596
  %598 = call i32 @llvm.smax.i32(i32 %592, i32 %597) #16
  %599 = icmp sgt i32 %598, 6000
  br i1 %599, label %600, label %602

600:                                              ; preds = %589
  %601 = add nsw i32 %598, -6000
  call void @inet_csk_reset_keepalive_timer(ptr noundef %0, i32 noundef %601) #16
  br label %626

602:                                              ; preds = %589
  %603 = load i16, ptr %389, align 4
  %604 = and i16 %603, 256
  %605 = icmp eq i16 %604, 0
  br i1 %605, label %606, label %610

606:                                              ; preds = %602
  %607 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 1
  %608 = load i32, ptr %607, align 4
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %611, label %610

610:                                              ; preds = %606, %602
  call void @inet_csk_reset_keepalive_timer(ptr noundef %0, i32 noundef %598) #16
  br label %626

611:                                              ; preds = %606
  call void @tcp_time_wait(ptr noundef %0, i32 noundef 5, i32 noundef %598) #16
  br label %680

612:                                              ; preds = %402
  %613 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %614 = load i32, ptr %613, align 4
  %615 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %616 = load i32, ptr %615, align 4
  %617 = icmp eq i32 %614, %616
  br i1 %617, label %618, label %626

618:                                              ; preds = %612
  call void @tcp_time_wait(ptr noundef %0, i32 noundef 6, i32 noundef 0) #16
  br label %680

619:                                              ; preds = %402
  %620 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %621 = load i32, ptr %620, align 4
  %622 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %623 = load i32, ptr %622, align 4
  %624 = icmp eq i32 %621, %623
  br i1 %624, label %625, label %626

625:                                              ; preds = %619
  call void @tcp_update_metrics(ptr noundef %0) #16
  call void @tcp_done(ptr noundef %0) #16
  br label %680

626:                                              ; preds = %619, %612, %610, %600, %533, %514, %484, %402
  call fastcc void @tcp_urg(ptr noundef %0, ptr noundef %1, ptr noundef %10)
  %627 = load volatile i8, ptr %11, align 2
  switch i8 %627, label %669 [
    i8 8, label %628
    i8 11, label %628
    i8 9, label %628
    i8 4, label %635
    i8 5, label %635
    i8 1, label %668
  ]

628:                                              ; preds = %626, %626, %626
  %629 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %630 = load i32, ptr %629, align 8
  %631 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %632 = load i32, ptr %631, align 8
  %633 = sub i32 %630, %632
  %634 = icmp slt i32 %633, 0
  br i1 %634, label %635, label %669

635:                                              ; preds = %628, %626, %626
  %636 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 66
  %637 = load i8, ptr %636, align 2
  %638 = and i8 %637, 1
  %639 = icmp eq i8 %638, 0
  br i1 %639, label %668, label %640

640:                                              ; preds = %635
  %641 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %642 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %643 = load i32, ptr %642, align 4
  %644 = load i32, ptr %641, align 8
  %645 = icmp eq i32 %643, %644
  br i1 %645, label %668, label %646

646:                                              ; preds = %640
  %647 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %648 = load i32, ptr %647, align 8
  %649 = load i16, ptr %389, align 4
  %650 = lshr i16 %649, 8
  %651 = and i16 %650, 1
  %652 = zext i16 %651 to i32
  %653 = sub i32 %648, %643
  %654 = add i32 %653, %652
  %655 = icmp slt i32 %654, 0
  br i1 %655, label %656, label %668

656:                                              ; preds = %646
  %657 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %658 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %659 = getelementptr [126 x i32], ptr %658, i32 0, i32 50
  %660 = ptrtoint ptr %659 to i32
  %661 = call i32 @llvm.read_register.i32(metadata !0) #16
  %662 = inttoptr i32 %661 to ptr
  %663 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %662) #13, !srcloc !14
  %664 = add i32 %663, %660
  %665 = inttoptr i32 %664 to ptr
  %666 = load i32, ptr %665, align 4
  %667 = add i32 %666, 1
  store i32 %667, ptr %665, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %657) #16, !srcloc !15
  call void @tcp_reset(ptr noundef %0, ptr undef)
  br label %690

668:                                              ; preds = %646, %640, %635, %626
  call fastcc void @tcp_data_queue(ptr noundef %0, ptr noundef %1)
  br label %669

669:                                              ; preds = %668, %628, %626
  %670 = phi i1 [ true, %626 ], [ false, %668 ], [ true, %628 ]
  %671 = load volatile i8, ptr %11, align 2
  %672 = icmp eq i8 %671, 7
  br i1 %672, label %679, label %673

673:                                              ; preds = %669
  call fastcc void @tcp_data_snd_check(ptr noundef %0)
  %674 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24
  %675 = load i8, ptr %674, align 4
  %676 = and i8 %675, 1
  %677 = icmp eq i8 %676, 0
  br i1 %677, label %679, label %678

678:                                              ; preds = %673
  call fastcc void @__tcp_ack_snd_check(ptr noundef %0, i32 noundef 1) #16
  br label %679

679:                                              ; preds = %678, %673, %669
  br i1 %670, label %680, label %690

680:                                              ; preds = %679, %625, %618, %611, %401, %388, %385, %18, %2
  %681 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %682 = load ptr, ptr %681, align 4
  %683 = getelementptr inbounds %struct.skb_shared_info, ptr %682, i32 0, i32 5
  %684 = load i16, ptr %683, align 2
  %685 = icmp eq i16 %684, 0
  %686 = select i1 %685, i16 1, i16 %684
  %687 = zext i16 %686 to i32
  %688 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %688) #16, !srcloc !27
  %689 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %688, ptr %688, i32 %687, ptr elementtype(i32) %688) #16, !srcloc !28
  call void @__kfree_skb(ptr noundef %1) #16
  br label %690

690:                                              ; preds = %680, %679, %656, %577, %540, %399, %393, %367, %365, %32, %21, %13
  %691 = phi i32 [ 1, %656 ], [ 0, %367 ], [ 0, %32 ], [ 1, %13 ], [ 1, %21 ], [ 0, %393 ], [ 1, %399 ], [ 0, %680 ], [ 0, %679 ], [ %366, %365 ], [ 1, %540 ], [ 1, %577 ]
  ret i32 %691
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #8 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcp_check_req(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_send_challenge_ack(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 20
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = load volatile i32, ptr @jiffies, align 64
  %7 = sub i32 %6, %3
  %8 = icmp sgt i32 %7, -1
  %9 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 93), align 8
  %10 = icmp slt i32 %7, %9
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %24

12:                                               ; preds = %5
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %14 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %15 = getelementptr [126 x i32], ptr %14, i32 0, i32 108
  %16 = ptrtoint ptr %15 to i32
  %17 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %18 = inttoptr i32 %17 to ptr
  %19 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %18) #13, !srcloc !14
  %20 = add i32 %19, %16
  %21 = inttoptr i32 %20 to ptr
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %13) #16, !srcloc !15
  br label %57

24:                                               ; preds = %5, %1
  %25 = load volatile i32, ptr @jiffies, align 64
  store i32 %25, ptr %2, align 4
  %26 = load volatile i32, ptr @jiffies, align 64
  %27 = udiv i32 %26, 100
  %28 = load i32, ptr @tcp_send_challenge_ack.challenge_timestamp, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %41, label %30

30:                                               ; preds = %24
  %31 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 87), align 4
  %32 = add i32 %31, 1
  %33 = lshr i32 %32, 1
  store i32 %27, ptr @tcp_send_challenge_ack.challenge_timestamp, align 4
  %34 = tail call i32 @prandom_u32() #16
  %35 = zext i32 %34 to i64
  %36 = zext i32 %31 to i64
  %37 = mul nuw i64 %35, %36
  %38 = lshr i64 %37, 32
  %39 = trunc i64 %38 to i32
  %40 = add i32 %33, %39
  store volatile i32 %40, ptr @tcp_send_challenge_ack.challenge_count, align 4
  br label %41

41:                                               ; preds = %30, %24
  %42 = load volatile i32, ptr @tcp_send_challenge_ack.challenge_count, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %41
  %45 = add i32 %42, -1
  store volatile i32 %45, ptr @tcp_send_challenge_ack.challenge_count, align 4
  %46 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %47 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %48 = getelementptr [126 x i32], ptr %47, i32 0, i32 82
  %49 = ptrtoint ptr %48 to i32
  %50 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %51 = inttoptr i32 %50 to ptr
  %52 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %51) #13, !srcloc !14
  %53 = add i32 %52, %49
  %54 = inttoptr i32 %53 to ptr
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %54, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %46) #16, !srcloc !15
  tail call void @tcp_send_ack(ptr noundef %0) #16
  br label %57

57:                                               ; preds = %44, %41, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_rcv_synrecv_state_fastopen(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 31
  %5 = icmp eq i8 %4, 4
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call fastcc zeroext i1 @tcp_try_undo_loss(ptr noundef %0, i1 noundef zeroext false)
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 98
  store i32 0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 18
  store i8 0, ptr %10, align 1
  %11 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 116
  %12 = load ptr, ptr %11, align 8
  tail call void @reqsk_fastopen_remove(ptr noundef %0, ptr noundef %12, i1 noundef zeroext false) #16
  tail call void @tcp_rearm_rto(ptr noundef %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_update_pacing_rate(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  %3 = load i32, ptr %2, align 4
  %4 = zext i32 %3 to i64
  %5 = mul nuw nsw i64 %4, 80000
  %6 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 1
  %11 = icmp ult i32 %7, %10
  %12 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 94), align 4
  %13 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 95), align 64
  %14 = select i1 %11, i32 %12, i32 %13
  %15 = sext i32 %14 to i64
  %16 = mul i64 %5, %15
  %17 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.umax.i32(i32 %7, i32 %18)
  %20 = zext i32 %19 to i64
  %21 = mul i64 %16, %20
  %22 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 45
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %34, label %25, !prof !16

25:                                               ; preds = %1
  %26 = icmp ult i64 %21, 4294967296
  br i1 %26, label %27, label %31, !prof !11

27:                                               ; preds = %25
  %28 = trunc i64 %21 to i32
  %29 = udiv i32 %28, %23
  %30 = zext i32 %29 to i64
  br label %34

31:                                               ; preds = %25
  %32 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %23, i64 %21) #17, !srcloc !12
  %33 = extractvalue { i64, i64 } %32, 1
  br label %34

34:                                               ; preds = %31, %27, %1
  %35 = phi i64 [ %21, %1 ], [ %30, %27 ], [ %33, %31 ]
  %36 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 36
  %37 = load i32, ptr %36, align 8
  %38 = zext i32 %37 to i64
  %39 = tail call i64 @llvm.umin.i64(i64 %35, i64 %38)
  %40 = trunc i64 %39 to i32
  %41 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 35
  store volatile i32 %40, ptr %41, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_fastopen_active_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_update_metrics(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @inet_reqsk_alloc(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #2 {
  %4 = getelementptr inbounds %struct.request_sock_ops, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %5, i32 noundef 10784) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %59, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 13
  store ptr null, ptr %9, align 8
  br i1 %2, label %10, label %37

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %12 = load volatile i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %24, %10
  %15 = phi i32 [ %22, %24 ], [ %12, %10 ]
  %16 = add i32 %15, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #16, !srcloc !27
  br label %17

17:                                               ; preds = %17, %14
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 %15, i32 %16, ptr elementtype(i32) %11) #16, !srcloc !48
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %17

21:                                               ; preds = %17
  %22 = extractvalue { i32, i32 } %18, 1
  %23 = icmp eq i32 %22, %15
  br i1 %23, label %26, label %24, !prof !11

24:                                               ; preds = %21
  %25 = icmp eq i32 %22, 0
  br i1 %25, label %26, label %14

26:                                               ; preds = %24, %21, %10
  %27 = phi i32 [ 0, %10 ], [ %15, %21 ], [ 0, %24 ]
  %28 = add i32 %27, 1
  %29 = or i32 %28, %27
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %32, label %31, !prof !11

31:                                               ; preds = %26
  tail call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 0) #16
  br label %32

32:                                               ; preds = %31, %26
  %33 = icmp eq i32 %27, 0
  br i1 %33, label %34, label %36, !prof !16

34:                                               ; preds = %32
  %35 = load ptr, ptr %4, align 4
  tail call void @kmem_cache_free(ptr noundef %35, ptr noundef nonnull %6) #16
  br label %59

36:                                               ; preds = %32
  store ptr %1, ptr %9, align 8
  br label %37

37:                                               ; preds = %36, %8
  %38 = getelementptr inbounds %struct.request_sock, ptr %6, i32 0, i32 7
  store ptr %0, ptr %38, align 8
  %39 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 8
  store ptr %40, ptr %41, align 8
  %42 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 15, i32 0, i32 1
  store ptr null, ptr %42, align 8
  %43 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 16
  store i16 -1, ptr %43, align 4
  %44 = getelementptr inbounds %struct.request_sock, ptr %6, i32 0, i32 9
  store ptr null, ptr %44, align 8
  %45 = getelementptr inbounds %struct.request_sock, ptr %6, i32 0, i32 4
  %46 = load i8, ptr %45, align 1
  %47 = and i8 %46, 1
  store i8 %47, ptr %45, align 1
  %48 = getelementptr inbounds %struct.request_sock, ptr %6, i32 0, i32 3
  store i8 0, ptr %48, align 2
  %49 = getelementptr inbounds %struct.request_sock, ptr %6, i32 0, i32 8
  store ptr null, ptr %49, align 4
  %50 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 19
  store volatile i32 0, ptr %50, align 4
  %51 = getelementptr inbounds %struct.inet_request_sock, ptr %6, i32 0, i32 3
  store ptr null, ptr %51, align 8
  %52 = getelementptr inbounds %struct.inet_request_sock, ptr %6, i32 0, i32 3, i32 0, i32 1
  store ptr null, ptr %52, align 4
  %53 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %53) #16, !srcloc !27
  %54 = tail call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr elementtype(i64) %53, ptr %53, i64 0) #16, !srcloc !49
  %55 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 4
  store volatile i8 12, ptr %55, align 2
  %56 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 3
  %57 = load i16, ptr %56, align 8
  %58 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 3
  store i16 %57, ptr %58, align 8
  br label %59

59:                                               ; preds = %37, %34, %3
  %60 = phi ptr [ %6, %37 ], [ null, %34 ], [ null, %3 ]
  ret ptr %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @tcp_get_syncookie_mss(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture readnone %3) #2 {
  %5 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 55), align 1
  %6 = icmp eq i8 %5, 2
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.inet_connection_sock, ptr %2, i32 0, i32 1, i32 3
  %9 = load volatile i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 54
  %11 = load i32, ptr %10, align 8
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %45, label %13

13:                                               ; preds = %7, %4
  %14 = getelementptr inbounds %struct.request_sock_ops, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %17 = getelementptr [126 x i32], ptr %16, i32 0, i32 75
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %20 = inttoptr i32 %19 to ptr
  %21 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %20) #13, !srcloc !14
  %22 = add i32 %21, %18
  %23 = inttoptr i32 %22 to ptr
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 4
  %26 = getelementptr inbounds %struct.inet_connection_sock, ptr %2, i32 0, i32 1, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp ne i32 %27, 0
  %29 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 55), align 1
  %30 = icmp eq i8 %29, 2
  %31 = select i1 %28, i1 true, i1 %30
  br i1 %31, label %45, label %32

32:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !50
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #16, !srcloc !27
  %33 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %26) #16, !srcloc !51
  %34 = extractvalue { i32, i32 } %33, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !52
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = tail call i32 @net_ratelimit() #16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 2
  %41 = getelementptr inbounds %struct.anon.2, ptr %40, i32 0, i32 1
  %42 = load i16, ptr %41, align 2
  %43 = zext i16 %42 to i32
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %15, i32 noundef %43, ptr noundef nonnull @.str.13) #18
  br label %45

45:                                               ; preds = %39, %36, %32, %13, %7
  ret i16 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_conn_request(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = alloca %struct.tcp_fastopen_cookie, align 8
  %6 = alloca %struct.tcp_options_received, align 4
  %7 = alloca %struct.flowi, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.tcp_rcv_synsent_state_process.foc, i32 24, i1 false)
  %8 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 8
  %9 = load i32, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 20, i1 false), !annotation !24
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %7) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %7, i8 0, i32 88, i1 false), !annotation !24
  %10 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 55), align 1
  %11 = icmp eq i8 %10, 2
  br i1 %11, label %20, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.inet_connection_sock, ptr %2, i32 0, i32 1, i32 3
  %14 = load volatile i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 54
  %16 = load i32, ptr %15, align 8
  %17 = icmp ult i32 %14, %16
  %18 = icmp ne i32 %9, 0
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %54, label %22

20:                                               ; preds = %4
  %21 = icmp eq i32 %9, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %20, %12
  %23 = getelementptr inbounds %struct.request_sock_ops, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %26 = getelementptr [126 x i32], ptr %25, i32 0, i32 75
  %27 = ptrtoint ptr %26 to i32
  %28 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %29 = inttoptr i32 %28 to ptr
  %30 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %29) #13, !srcloc !14
  %31 = add i32 %30, %27
  %32 = inttoptr i32 %31 to ptr
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 4
  %35 = getelementptr inbounds %struct.inet_connection_sock, ptr %2, i32 0, i32 1, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = icmp ne i32 %36, 0
  %38 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 55), align 1
  %39 = icmp eq i8 %38, 2
  %40 = select i1 %37, i1 true, i1 %39
  br i1 %40, label %407, label %41

41:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !50
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #16, !srcloc !27
  %42 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %35) #16, !srcloc !51
  %43 = extractvalue { i32, i32 } %42, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !52
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %407

45:                                               ; preds = %41
  %46 = tail call i32 @net_ratelimit() #16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %407, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 2
  %50 = getelementptr inbounds %struct.anon.2, ptr %49, i32 0, i32 1
  %51 = load i16, ptr %50, align 2
  %52 = zext i16 %51 to i32
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %24, i32 noundef %52, ptr noundef nonnull @.str.13) #18
  br label %407

54:                                               ; preds = %20, %12
  %55 = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 53
  %56 = load volatile i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 54
  %58 = load volatile i32, ptr %57, align 8
  %59 = icmp ugt i32 %56, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %62 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %63 = getelementptr [126 x i32], ptr %62, i32 0, i32 19
  %64 = ptrtoint ptr %63 to i32
  %65 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %66 = inttoptr i32 %65 to ptr
  %67 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %66) #13, !srcloc !14
  %68 = add i32 %67, %64
  %69 = inttoptr i32 %68 to ptr
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, 1
  store i32 %71, ptr %69, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %61) #16, !srcloc !15
  br label %407

72:                                               ; preds = %54
  %73 = tail call ptr @inet_reqsk_alloc(ptr noundef %0, ptr noundef %2, i1 noundef zeroext true)
  %74 = icmp eq ptr %73, null
  br i1 %74, label %407, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.request_sock, ptr %73, i32 0, i32 4
  %77 = load i8, ptr %76, align 1
  %78 = and i8 %77, -2
  store i8 %78, ptr %76, align 1
  %79 = getelementptr inbounds %struct.tcp_request_sock, ptr %73, i32 0, i32 1
  store ptr %1, ptr %79, align 8
  %80 = getelementptr inbounds %struct.tcp_request_sock, ptr %73, i32 0, i32 8
  store i32 0, ptr %80, align 8
  %81 = getelementptr inbounds %struct.tcp_options_received, ptr %6, i32 0, i32 4
  store i24 0, ptr %81, align 4
  %82 = load i16, ptr %1, align 4
  %83 = getelementptr inbounds %struct.tcp_options_received, ptr %6, i32 0, i32 7
  store i16 %82, ptr %83, align 2
  %84 = getelementptr inbounds %struct.tcp_sock, ptr %2, i32 0, i32 61, i32 6
  %85 = load i16, ptr %84, align 4
  %86 = getelementptr inbounds %struct.tcp_options_received, ptr %6, i32 0, i32 6
  store i16 %85, ptr %86, align 4
  call void @tcp_parse_options(ptr noundef nonnull @init_net, ptr noundef %3, ptr noundef nonnull %6, i32 noundef 0, ptr noundef nonnull %5)
  %87 = load i24, ptr %81, align 4
  %88 = shl i24 %87, 1
  %89 = and i24 %88, 2
  %90 = and i24 %87, -3
  %91 = or i24 %89, %90
  store i24 %91, ptr %81, align 4
  %92 = getelementptr inbounds %struct.sock_common, ptr %73, i32 0, i32 18
  store i32 0, ptr %92, align 8
  %93 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3
  %94 = load i32, ptr %93, align 8
  %95 = getelementptr inbounds %struct.tcp_request_sock, ptr %73, i32 0, i32 6
  store i32 %94, ptr %95, align 8
  %96 = load i32, ptr %93, align 8
  %97 = add i32 %96, 1
  %98 = getelementptr inbounds %struct.tcp_request_sock, ptr %73, i32 0, i32 10
  store i32 %97, ptr %98, align 8
  %99 = getelementptr inbounds %struct.tcp_request_sock, ptr %73, i32 0, i32 2
  store i64 0, ptr %99, align 8
  %100 = getelementptr inbounds %struct.tcp_request_sock, ptr %73, i32 0, i32 9
  store i32 0, ptr %100, align 4
  %101 = load i16, ptr %83, align 2
  %102 = getelementptr inbounds %struct.request_sock, ptr %73, i32 0, i32 2
  store i16 %101, ptr %102, align 4
  %103 = and i24 %87, 1
  %104 = icmp eq i24 %103, 0
  %105 = getelementptr inbounds %struct.tcp_options_received, ptr %6, i32 0, i32 2
  %106 = load i32, ptr %105, align 4
  %107 = select i1 %104, i32 0, i32 %106
  %108 = getelementptr inbounds %struct.request_sock, ptr %73, i32 0, i32 5
  store i32 %107, ptr %108, align 8
  %109 = trunc i24 %91 to i16
  %110 = getelementptr inbounds %struct.inet_request_sock, ptr %73, i32 0, i32 1
  %111 = load i16, ptr %110, align 8
  %112 = shl i16 %109, 7
  %113 = and i16 %112, 256
  %114 = and i16 %111, -7952
  %115 = shl i16 %109, 5
  %116 = and i16 %115, 512
  %117 = lshr i16 %109, 8
  %118 = and i16 %117, 15
  %119 = and i16 %112, 1024
  %120 = or i16 %116, %113
  %121 = or i16 %120, %118
  %122 = or i16 %121, %119
  %123 = or i16 %122, %114
  store i16 %123, ptr %110, align 8
  %124 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 16
  %125 = load ptr, ptr %124, align 8
  %126 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 13, i32 0, i32 17
  %127 = load i16, ptr %126, align 2
  %128 = zext i16 %127 to i32
  %129 = getelementptr i8, ptr %125, i32 %128
  %130 = load i16, ptr %129, align 4
  %131 = getelementptr inbounds %struct.sock_common, ptr %73, i32 0, i32 2
  store i16 %130, ptr %131, align 4
  %132 = load ptr, ptr %124, align 8
  %133 = load i16, ptr %126, align 2
  %134 = zext i16 %133 to i32
  %135 = getelementptr i8, ptr %132, i32 %134
  %136 = getelementptr inbounds %struct.tcphdr, ptr %135, i32 0, i32 1
  %137 = load i16, ptr %136, align 2
  %138 = call i16 @llvm.bswap.i16(i16 %137) #16
  %139 = getelementptr inbounds %struct.anon.2, ptr %131, i32 0, i32 1
  store i16 %138, ptr %139, align 2
  %140 = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 34
  %141 = load i32, ptr %140, align 8
  %142 = icmp eq i32 %141, 0
  %143 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 43), align 2
  %144 = icmp eq i8 %143, 0
  %145 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 13, i32 0, i32 11
  %146 = select i1 %144, ptr %140, ptr %145
  %147 = select i1 %142, ptr %146, ptr %140
  %148 = load i32, ptr %147, align 4
  %149 = getelementptr inbounds %struct.inet_request_sock, ptr %73, i32 0, i32 2
  store i32 %148, ptr %149, align 4
  %150 = getelementptr inbounds %struct.inet_sock, ptr %2, i32 0, i32 12
  %151 = load i16, ptr %150, align 8
  %152 = trunc i16 %151 to i8
  %153 = lshr i8 %152, 5
  %154 = and i8 %153, 1
  %155 = zext i8 %154 to i16
  %156 = shl nuw nsw i16 %155, 13
  %157 = and i16 %123, -14337
  %158 = or i16 %156, %157
  store i16 %158, ptr %110, align 8
  %159 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 6
  %160 = load i32, ptr %159, align 4
  %161 = getelementptr inbounds %struct.sock_common, ptr %73, i32 0, i32 6
  store i32 %160, ptr %161, align 4
  %162 = getelementptr inbounds %struct.tcp_request_sock_ops, ptr %1, i32 0, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = call ptr %163(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %7, ptr noundef nonnull %73) #16
  %165 = icmp eq ptr %164, null
  br i1 %165, label %384, label %166

166:                                              ; preds = %75
  %167 = icmp eq i24 %89, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %166
  %169 = getelementptr inbounds %struct.tcp_request_sock_ops, ptr %1, i32 0, i32 3
  %170 = load ptr, ptr %169, align 4
  %171 = call i32 %170(ptr noundef nonnull @init_net, ptr noundef %3) #16
  store i32 %171, ptr %80, align 8
  br label %172

172:                                              ; preds = %168, %166
  %173 = icmp eq i32 %9, 0
  br i1 %173, label %174, label %191

174:                                              ; preds = %172
  %175 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 55), align 1
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %187

177:                                              ; preds = %174
  %178 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 100), align 4
  %179 = getelementptr inbounds %struct.inet_connection_sock, ptr %2, i32 0, i32 1, i32 3
  %180 = load volatile i32, ptr %179, align 4
  %181 = sub i32 %178, %180
  %182 = ashr i32 %178, 2
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %177
  %185 = call zeroext i1 @tcp_peer_is_proven(ptr noundef nonnull %73, ptr noundef nonnull %164) #16
  br i1 %185, label %187, label %186

186:                                              ; preds = %184
  call void @dst_release(ptr noundef nonnull %164) #16
  br label %384

187:                                              ; preds = %184, %177, %174
  %188 = getelementptr inbounds %struct.tcp_request_sock_ops, ptr %1, i32 0, i32 2
  %189 = load ptr, ptr %188, align 4
  %190 = call i32 %189(ptr noundef %3) #16
  br label %191

191:                                              ; preds = %187, %172
  %192 = phi i32 [ %9, %172 ], [ %190, %187 ]
  %193 = load ptr, ptr %124, align 8
  %194 = load i16, ptr %126, align 2
  %195 = zext i16 %194 to i32
  %196 = getelementptr i8, ptr %193, i32 %195
  %197 = getelementptr inbounds %struct.tcphdr, ptr %196, i32 0, i32 4
  %198 = load i16, ptr %197, align 4
  %199 = icmp ugt i16 %198, -16385
  br i1 %199, label %200, label %237

200:                                              ; preds = %191
  %201 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 14
  %202 = load i8, ptr %201, align 2
  %203 = and i8 %202, 3
  %204 = icmp eq i8 %203, 0
  %205 = getelementptr inbounds %struct.dst_entry, ptr %164, i32 0, i32 2
  %206 = load i32, ptr %205, align 4
  %207 = and i32 %206, -4
  %208 = inttoptr i32 %207 to ptr
  %209 = getelementptr i32, ptr %208, i32 11
  %210 = load i32, ptr %209, align 4
  %211 = and i32 %210, -2147483647
  %212 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 29), align 8
  %213 = icmp ne i8 %212, 0
  %214 = icmp ne i32 %211, 0
  %215 = select i1 %213, i1 true, i1 %214
  br i1 %204, label %221, label %216

216:                                              ; preds = %200
  %217 = and i16 %198, 15
  %218 = icmp eq i16 %217, 0
  %219 = xor i1 %215, true
  %220 = select i1 %218, i1 true, i1 %219
  br i1 %220, label %222, label %234

221:                                              ; preds = %200
  br i1 %215, label %234, label %222

222:                                              ; preds = %221, %216
  %223 = getelementptr inbounds %struct.inet_connection_sock, ptr %2, i32 0, i32 10
  %224 = load ptr, ptr %223, align 4
  %225 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %224, i32 0, i32 15
  %226 = load i32, ptr %225, align 4
  %227 = and i32 %226, 2
  %228 = icmp eq i32 %227, 0
  %229 = icmp sgt i32 %211, -1
  %230 = select i1 %228, i1 %229, i1 false
  br i1 %230, label %231, label %234

231:                                              ; preds = %222
  %232 = getelementptr inbounds %struct.sock_common, ptr %73, i32 0, i32 4
  %233 = load volatile i8, ptr %232, align 2
  br label %237

234:                                              ; preds = %222, %221, %216
  %235 = load i16, ptr %110, align 8
  %236 = or i16 %235, 2048
  store i16 %236, ptr %110, align 8
  br label %237

237:                                              ; preds = %234, %231, %191
  %238 = getelementptr inbounds %struct.tcp_request_sock, ptr %73, i32 0, i32 7
  store i32 %192, ptr %238, align 4
  %239 = call i32 @prandom_u32() #16
  %240 = icmp eq i32 %239, 0
  %241 = select i1 %240, i32 1, i32 %239
  %242 = getelementptr inbounds %struct.tcp_request_sock, ptr %73, i32 0, i32 5
  store i32 %241, ptr %242, align 4
  %243 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 14
  %244 = load i8, ptr %243, align 2
  %245 = getelementptr inbounds %struct.tcp_request_sock, ptr %73, i32 0, i32 11
  store i8 %244, ptr %245, align 4
  call void @tcp_openreq_init_rwin(ptr noundef nonnull %73, ptr noundef %2, ptr noundef nonnull %164) #16
  %246 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 9
  %247 = load i16, ptr %246, align 4
  %248 = icmp eq i16 %247, 0
  br i1 %248, label %252, label %249

249:                                              ; preds = %237
  %250 = add i16 %247, -1
  %251 = getelementptr inbounds %struct.sock_common, ptr %73, i32 0, i32 17
  store volatile i16 %250, ptr %251, align 2
  br label %252

252:                                              ; preds = %249, %237
  %253 = getelementptr inbounds %struct.tcp_sock, ptr %2, i32 0, i32 39
  %254 = load i8, ptr %253, align 1
  %255 = and i8 %254, 3
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %304, label %257

257:                                              ; preds = %252
  %258 = load i16, ptr %126, align 2
  %259 = zext i16 %258 to i32
  %260 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 13, i32 0, i32 18
  %261 = load i16, ptr %260, align 4
  %262 = zext i16 %261 to i32
  %263 = sub nsw i32 %259, %262
  %264 = load ptr, ptr %124, align 8
  %265 = getelementptr i8, ptr %264, i32 %259
  %266 = getelementptr inbounds %struct.tcphdr, ptr %265, i32 0, i32 4
  %267 = load i16, ptr %266, align 4
  %268 = lshr i16 %267, 2
  %269 = and i16 %268, 60
  %270 = zext i16 %269 to i32
  %271 = add nsw i32 %263, %270
  %272 = icmp eq i8 %255, 2
  br i1 %272, label %273, label %279

273:                                              ; preds = %257
  %274 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 13, i32 0, i32 19
  %275 = load i16, ptr %274, align 2
  %276 = zext i16 %275 to i32
  %277 = sub nsw i32 %262, %276
  %278 = add nsw i32 %277, %271
  br label %279

279:                                              ; preds = %273, %257
  %280 = phi i32 [ %278, %273 ], [ %271, %257 ]
  %281 = phi i32 [ %277, %273 ], [ 0, %257 ]
  %282 = phi i32 [ %276, %273 ], [ %262, %257 ]
  %283 = call i32 @llvm.uadd.sat.i32(i32 %280, i32 12) #16
  %284 = call noalias align 64 ptr @__kmalloc(i32 noundef %283, i32 noundef 2592) #19
  %285 = icmp eq ptr %284, null
  br i1 %285, label %304, label %286

286:                                              ; preds = %279
  %287 = getelementptr i8, ptr %264, i32 %282
  store i32 %281, ptr %284, align 64
  %288 = load i16, ptr %126, align 2
  %289 = zext i16 %288 to i32
  %290 = load i16, ptr %260, align 4
  %291 = zext i16 %290 to i32
  %292 = sub nsw i32 %289, %291
  %293 = getelementptr inbounds %struct.saved_syn, ptr %284, i32 0, i32 1
  store i32 %292, ptr %293, align 4
  %294 = load ptr, ptr %124, align 8
  %295 = getelementptr i8, ptr %294, i32 %289
  %296 = getelementptr inbounds %struct.tcphdr, ptr %295, i32 0, i32 4
  %297 = load i16, ptr %296, align 4
  %298 = lshr i16 %297, 2
  %299 = and i16 %298, 60
  %300 = zext i16 %299 to i32
  %301 = getelementptr inbounds %struct.saved_syn, ptr %284, i32 0, i32 2
  store i32 %300, ptr %301, align 8
  %302 = getelementptr inbounds %struct.saved_syn, ptr %284, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %302, ptr align 1 %287, i32 %280, i1 false) #16
  %303 = getelementptr inbounds %struct.request_sock, ptr %73, i32 0, i32 9
  store ptr %284, ptr %303, align 8
  br label %304

304:                                              ; preds = %286, %279, %252
  %305 = call ptr @tcp_try_fastopen(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %73, ptr noundef nonnull %5, ptr noundef nonnull %164) #16
  %306 = icmp eq ptr %305, null
  br i1 %306, label %339, label %307

307:                                              ; preds = %304
  %308 = getelementptr inbounds %struct.tcp_request_sock_ops, ptr %1, i32 0, i32 4
  %309 = load ptr, ptr %308, align 4
  %310 = call i32 %309(ptr noundef nonnull %305, ptr noundef nonnull %164, ptr noundef nonnull %7, ptr noundef nonnull %73, ptr noundef nonnull %5, i32 noundef 1, ptr noundef %3) #16
  %311 = call ptr @inet_csk_reqsk_queue_add(ptr noundef %2, ptr noundef nonnull %73, ptr noundef nonnull %305) #16
  %312 = icmp eq ptr %311, null
  br i1 %312, label %313, label %325

313:                                              ; preds = %307
  call void @reqsk_fastopen_remove(ptr noundef nonnull %305, ptr noundef nonnull %73, i1 noundef zeroext false) #16
  %314 = getelementptr inbounds %struct.sock, ptr %305, i32 0, i32 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !53
  %315 = load i16, ptr %314, align 4
  %316 = add i16 %315, 1
  store i16 %316, ptr %314, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !54
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !55
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !56
  %317 = getelementptr inbounds %struct.sock_common, ptr %305, i32 0, i32 19
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !43
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %317) #16, !srcloc !27
  %318 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %317, ptr %317, i32 1, ptr elementtype(i32) %317) #16, !srcloc !44
  %319 = extractvalue { i32, i32, i32 } %318, 0
  %320 = icmp eq i32 %319, 1
  br i1 %320, label %324, label %321

321:                                              ; preds = %313
  %322 = icmp sgt i32 %319, 0
  br i1 %322, label %384, label %323, !prof !11

323:                                              ; preds = %321
  call void @refcount_warn_saturate(ptr noundef %317, i32 noundef 3) #16
  br label %384

324:                                              ; preds = %313
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !57
  call void @sk_free(ptr noundef nonnull %305) #16
  br label %384

325:                                              ; preds = %307
  %326 = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 76
  %327 = load ptr, ptr %326, align 8
  call void %327(ptr noundef %2) #16
  %328 = getelementptr inbounds %struct.sock, ptr %305, i32 0, i32 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !53
  %329 = load i16, ptr %328, align 4
  %330 = add i16 %329, 1
  store i16 %330, ptr %328, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !54
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !55
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !56
  %331 = getelementptr inbounds %struct.sock_common, ptr %305, i32 0, i32 19
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !43
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %331) #16, !srcloc !27
  %332 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %331, ptr %331, i32 1, ptr elementtype(i32) %331) #16, !srcloc !44
  %333 = extractvalue { i32, i32, i32 } %332, 0
  %334 = icmp eq i32 %333, 1
  br i1 %334, label %338, label %335

335:                                              ; preds = %325
  %336 = icmp sgt i32 %333, 0
  br i1 %336, label %346, label %337, !prof !11

337:                                              ; preds = %335
  call void @refcount_warn_saturate(ptr noundef %331, i32 noundef 3) #16
  br label %346

338:                                              ; preds = %325
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !57
  call void @sk_free(ptr noundef nonnull %305) #16
  br label %346

339:                                              ; preds = %304
  %340 = getelementptr inbounds %struct.tcp_request_sock, ptr %73, i32 0, i32 3
  store i8 0, ptr %340, align 8
  %341 = getelementptr inbounds %struct.sock_common, ptr %73, i32 0, i32 4
  %342 = load volatile i8, ptr %341, align 2
  call void @inet_csk_reqsk_queue_hash_add(ptr noundef %2, ptr noundef nonnull %73, i32 noundef 100) #16
  %343 = getelementptr inbounds %struct.tcp_request_sock_ops, ptr %1, i32 0, i32 4
  %344 = load ptr, ptr %343, align 4
  %345 = call i32 %344(ptr noundef %2, ptr noundef nonnull %164, ptr noundef nonnull %7, ptr noundef nonnull %73, ptr noundef nonnull %5, i32 noundef 0, ptr noundef %3) #16
  br label %346

346:                                              ; preds = %339, %338, %337, %335
  %347 = getelementptr inbounds %struct.sock_common, ptr %73, i32 0, i32 19
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !43
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %347) #16, !srcloc !27
  %348 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %347, ptr %347, i32 1, ptr elementtype(i32) %347) #16, !srcloc !44
  %349 = extractvalue { i32, i32, i32 } %348, 0
  %350 = icmp eq i32 %349, 1
  br i1 %350, label %354, label %351

351:                                              ; preds = %346
  %352 = icmp sgt i32 %349, 0
  br i1 %352, label %420, label %353, !prof !11

353:                                              ; preds = %351
  call void @refcount_warn_saturate(ptr noundef %347, i32 noundef 3) #16
  br label %420

354:                                              ; preds = %346
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !57
  %355 = load volatile i32, ptr %347, align 4
  %356 = icmp ne i32 %355, 0
  %357 = load i1, ptr @reqsk_free.__already_done, align 1
  %358 = xor i1 %357, true
  %359 = select i1 %356, i1 %358, i1 false
  br i1 %359, label %360, label %361, !prof !16

360:                                              ; preds = %354
  store i1 true, ptr @reqsk_free.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 126, i32 noundef 9, ptr noundef null) #16
  br label %361

361:                                              ; preds = %360, %354
  %362 = getelementptr inbounds %struct.request_sock, ptr %73, i32 0, i32 7
  %363 = load ptr, ptr %362, align 8
  %364 = getelementptr inbounds %struct.request_sock_ops, ptr %363, i32 0, i32 7
  %365 = load ptr, ptr %364, align 4
  call void %365(ptr noundef nonnull %73) #16
  %366 = getelementptr inbounds %struct.sock_common, ptr %73, i32 0, i32 13
  %367 = load ptr, ptr %366, align 8
  %368 = icmp eq ptr %367, null
  br i1 %368, label %378, label %369

369:                                              ; preds = %361
  %370 = getelementptr inbounds %struct.sock_common, ptr %367, i32 0, i32 19
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !43
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %370) #16, !srcloc !27
  %371 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %370, ptr %370, i32 1, ptr elementtype(i32) %370) #16, !srcloc !44
  %372 = extractvalue { i32, i32, i32 } %371, 0
  %373 = icmp eq i32 %372, 1
  br i1 %373, label %377, label %374

374:                                              ; preds = %369
  %375 = icmp sgt i32 %372, 0
  br i1 %375, label %378, label %376, !prof !11

376:                                              ; preds = %374
  call void @refcount_warn_saturate(ptr noundef %370, i32 noundef 3) #16
  br label %378

377:                                              ; preds = %369
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !57
  call void @sk_free(ptr noundef nonnull %367) #16
  br label %378

378:                                              ; preds = %377, %376, %374, %361
  %379 = getelementptr inbounds %struct.request_sock, ptr %73, i32 0, i32 9
  %380 = load ptr, ptr %379, align 8
  call void @kfree(ptr noundef %380) #16
  %381 = load ptr, ptr %362, align 8
  %382 = getelementptr inbounds %struct.request_sock_ops, ptr %381, i32 0, i32 2
  %383 = load ptr, ptr %382, align 4
  call void @kmem_cache_free(ptr noundef %383, ptr noundef nonnull %73) #16
  br label %420

384:                                              ; preds = %324, %323, %321, %186, %75
  %385 = getelementptr inbounds %struct.request_sock, ptr %73, i32 0, i32 7
  %386 = load ptr, ptr %385, align 8
  %387 = getelementptr inbounds %struct.request_sock_ops, ptr %386, i32 0, i32 7
  %388 = load ptr, ptr %387, align 4
  call void %388(ptr noundef nonnull %73) #16
  %389 = getelementptr inbounds %struct.sock_common, ptr %73, i32 0, i32 13
  %390 = load ptr, ptr %389, align 8
  %391 = icmp eq ptr %390, null
  br i1 %391, label %401, label %392

392:                                              ; preds = %384
  %393 = getelementptr inbounds %struct.sock_common, ptr %390, i32 0, i32 19
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !43
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %393) #16, !srcloc !27
  %394 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %393, ptr %393, i32 1, ptr elementtype(i32) %393) #16, !srcloc !44
  %395 = extractvalue { i32, i32, i32 } %394, 0
  %396 = icmp eq i32 %395, 1
  br i1 %396, label %400, label %397

397:                                              ; preds = %392
  %398 = icmp sgt i32 %395, 0
  br i1 %398, label %401, label %399, !prof !11

399:                                              ; preds = %397
  call void @refcount_warn_saturate(ptr noundef %393, i32 noundef 3) #16
  br label %401

400:                                              ; preds = %392
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !57
  call void @sk_free(ptr noundef nonnull %390) #16
  br label %401

401:                                              ; preds = %400, %399, %397, %384
  %402 = getelementptr inbounds %struct.request_sock, ptr %73, i32 0, i32 9
  %403 = load ptr, ptr %402, align 8
  call void @kfree(ptr noundef %403) #16
  %404 = load ptr, ptr %385, align 8
  %405 = getelementptr inbounds %struct.request_sock_ops, ptr %404, i32 0, i32 2
  %406 = load ptr, ptr %405, align 4
  call void @kmem_cache_free(ptr noundef %406, ptr noundef nonnull %73) #16
  br label %407

407:                                              ; preds = %401, %72, %60, %48, %45, %41, %22
  %408 = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 5
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %408) #16, !srcloc !27
  %409 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %408, ptr %408, i32 1, ptr elementtype(i32) %408) #16, !srcloc !28
  %410 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %411 = getelementptr [126 x i32], ptr %410, i32 0, i32 20
  %412 = ptrtoint ptr %411 to i32
  %413 = call i32 @llvm.read_register.i32(metadata !0) #16
  %414 = inttoptr i32 %413 to ptr
  %415 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %414) #13, !srcloc !14
  %416 = add i32 %415, %412
  %417 = inttoptr i32 %416 to ptr
  %418 = load i32, ptr %417, align 4
  %419 = add i32 %418, 1
  store i32 %419, ptr %417, align 4
  br label %420

420:                                              ; preds = %407, %378, %353, %351
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tcp_peer_is_proven(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_openreq_init_rwin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcp_try_fastopen(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_csk_reqsk_queue_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @reqsk_fastopen_remove(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_csk_reqsk_queue_hash_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tcp_rcv_space_adjust(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_rack_skb_timeout(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @minmax_running_min(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_reset_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsecs_to_jiffies(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tcp_receive_reset(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sk_mem_reclaim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_wake_async(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tcp_prune_ofo_queue(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 89
  %3 = load volatile ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %86, label %5

5:                                                ; preds = %1
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %7 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %8 = getelementptr [126 x i32], ptr %7, i32 0, i32 7
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #13, !srcloc !14
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #16, !srcloc !15
  %17 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 15
  %18 = load i32, ptr %17, align 4
  %19 = ashr i32 %18, 3
  %20 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 90
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  %23 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %24 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %25 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  %26 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %27 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  br label %28

28:                                               ; preds = %75, %5
  %29 = phi i32 [ %19, %5 ], [ %76, %75 ]
  %30 = phi ptr [ %21, %5 ], [ %31, %75 ]
  %31 = tail call ptr @rb_prev(ptr noundef %30) #16
  tail call void @rb_erase(ptr noundef %30, ptr noundef %2) #16
  %32 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 18
  %33 = load i32, ptr %32, align 8
  %34 = sub i32 %29, %33
  %35 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 15
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.skb_shared_info, ptr %36, i32 0, i32 5
  %38 = load i16, ptr %37, align 2
  %39 = icmp eq i16 %38, 0
  %40 = select i1 %39, i16 1, i16 %38
  %41 = zext i16 %40 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #16, !srcloc !27
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 %41, ptr elementtype(i32) %22) #16, !srcloc !28
  tail call void @__kfree_skb(ptr noundef %30) #16
  %43 = icmp eq ptr %31, null
  %44 = icmp slt i32 %34, 1
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %46, label %75

46:                                               ; preds = %28
  %47 = load ptr, ptr %23, align 8
  %48 = getelementptr inbounds %struct.proto, ptr %47, i32 0, i32 30
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %66, label %51

51:                                               ; preds = %46
  %52 = load i32, ptr %24, align 4
  %53 = load i32, ptr %25, align 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %61, label %55, !prof !11

55:                                               ; preds = %51
  %56 = load i32, ptr %26, align 4
  %57 = load volatile i32, ptr %27, align 4
  %58 = add i32 %56, %57
  %59 = sub i32 %53, %58
  %60 = tail call i32 @llvm.smax.i32(i32 %59, i32 0) #16
  br label %61

61:                                               ; preds = %55, %51
  %62 = phi i32 [ %60, %55 ], [ 0, %51 ]
  %63 = sub i32 %52, %62
  %64 = icmp sgt i32 %63, 4095
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  tail call void @__sk_mem_reclaim(ptr noundef %0, i32 noundef %63) #16
  br label %66

66:                                               ; preds = %65, %61, %46
  %67 = load volatile i32, ptr %27, align 4
  %68 = load i32, ptr %17, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = load volatile i32, ptr @tcp_memory_pressure, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70, %66
  %74 = ashr i32 %68, 3
  br label %75

75:                                               ; preds = %73, %28
  %76 = phi i32 [ %74, %73 ], [ %34, %28 ]
  br i1 %43, label %77, label %28

77:                                               ; preds = %75, %70
  %78 = phi ptr [ null, %75 ], [ %31, %70 ]
  store ptr %78, ptr %20, align 4
  %79 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %80 = load i24, ptr %79, align 4
  %81 = and i24 %80, 112
  %82 = icmp eq i24 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %77
  %84 = and i24 %80, -5
  store i24 %84, ptr %79, align 4
  %85 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 5
  store i8 0, ptr %85, align 1
  br label %86

86:                                               ; preds = %83, %77, %1
  %87 = xor i1 %4, true
  ret i1 %87
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sk_mem_schedule(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_collapse(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef readnone %4, i32 noundef %5, i32 noundef %6) unnamed_addr #2 {
  %8 = alloca %struct.sk_buff_head, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 0, i32 16, i1 false), !annotation !24
  %9 = icmp eq ptr %1, null
  %10 = getelementptr inbounds %struct.sk_buff_head, ptr %1, i32 0, i32 1
  br label %11

11:                                               ; preds = %43, %7
  %12 = phi ptr [ %3, %7 ], [ %44, %43 ]
  %13 = phi i32 [ %5, %7 ], [ %18, %43 ]
  %14 = icmp ne ptr %12, null
  %15 = icmp ne ptr %12, %4
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %251

17:                                               ; preds = %90, %11
  %18 = phi i32 [ %58, %90 ], [ %13, %11 ]
  %19 = phi ptr [ %59, %90 ], [ %12, %11 ]
  br i1 %9, label %20, label %26

20:                                               ; preds = %17
  %21 = tail call ptr @rb_next(ptr noundef nonnull %19) #16
  %22 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 %18, %23
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %57, label %41

26:                                               ; preds = %17
  %27 = load ptr, ptr %19, align 8
  %28 = icmp eq ptr %27, %1
  %29 = select i1 %28, ptr null, ptr %27
  %30 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = sub i32 %18, %31
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %57, label %34

34:                                               ; preds = %26
  %35 = load i32, ptr %10, align 4
  %36 = add i32 %35, -1
  store volatile i32 %36, ptr %10, align 4
  %37 = load ptr, ptr %19, align 8
  %38 = getelementptr inbounds %struct.anon.43, ptr %19, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  store ptr null, ptr %38, align 4
  store ptr null, ptr %19, align 8
  %40 = getelementptr inbounds %struct.anon.43, ptr %37, i32 0, i32 1
  store volatile ptr %39, ptr %40, align 4
  store volatile ptr %37, ptr %39, align 8
  br label %43

41:                                               ; preds = %20
  %42 = tail call ptr @rb_next(ptr noundef nonnull %19) #16
  tail call void @rb_erase(ptr noundef nonnull %19, ptr noundef %2) #16
  br label %43

43:                                               ; preds = %41, %34
  %44 = phi ptr [ %42, %41 ], [ %29, %34 ]
  tail call void @__kfree_skb(ptr noundef nonnull %19) #16
  %45 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %46 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %47 = getelementptr [126 x i32], ptr %46, i32 0, i32 45
  %48 = ptrtoint ptr %47 to i32
  %49 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %50 = inttoptr i32 %49 to ptr
  %51 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %50) #13, !srcloc !14
  %52 = add i32 %51, %48
  %53 = inttoptr i32 %52 to ptr
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %53, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %45) #16, !srcloc !15
  %56 = icmp eq ptr %44, null
  br i1 %56, label %251, label %11

57:                                               ; preds = %26, %20
  %58 = phi i32 [ %31, %26 ], [ %23, %20 ]
  %59 = phi ptr [ %29, %26 ], [ %21, %20 ]
  %60 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3
  %61 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3, i32 12
  %62 = load i8, ptr %61, align 4
  %63 = and i8 %62, 3
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 18
  %67 = load i32, ptr %66, align 8
  %68 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 77), align 4
  %69 = icmp slt i32 %68, 1
  %70 = sub i32 0, %68
  %71 = ashr i32 %67, %70
  %72 = ashr i32 %67, %68
  %73 = sub i32 %67, %72
  %74 = select i1 %69, i32 %71, i32 %73
  %75 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 5
  %76 = load i32, ptr %75, align 8
  %77 = icmp ugt i32 %74, %76
  br i1 %77, label %95, label %78

78:                                               ; preds = %65
  %79 = load i32, ptr %60, align 8
  %80 = sub i32 %79, %18
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %95, label %82

82:                                               ; preds = %78, %57
  %83 = icmp eq ptr %59, null
  %84 = icmp eq ptr %59, %4
  %85 = or i1 %83, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 3
  %88 = load i32, ptr %87, align 8
  %89 = icmp eq i32 %58, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86, %82
  %91 = icmp ne ptr %59, null
  %92 = icmp ne ptr %59, %4
  %93 = and i1 %91, %92
  br i1 %93, label %17, label %251

94:                                               ; preds = %86
  br i1 %64, label %95, label %251

95:                                               ; preds = %94, %78, %65
  store ptr %8, ptr %8, align 4
  %96 = getelementptr inbounds %struct.anon.66, ptr %8, i32 0, i32 1
  store ptr %8, ptr %96, align 4
  %97 = getelementptr inbounds %struct.sk_buff_head, ptr %8, i32 0, i32 1
  store i32 0, ptr %97, align 4
  %98 = sub i32 %18, %6
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %221

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %102 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %103 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %104 = select i1 %9, ptr %97, ptr %10
  br label %110

105:                                              ; preds = %218, %150
  %106 = phi ptr [ %112, %150 ], [ %219, %218 ]
  %107 = phi i32 [ %111, %150 ], [ %181, %218 ]
  %108 = sub i32 %107, %6
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %221

110:                                              ; preds = %105, %100
  %111 = phi i32 [ %18, %100 ], [ %107, %105 ]
  %112 = phi ptr [ %19, %100 ], [ %106, %105 ]
  %113 = sub i32 %6, %111
  %114 = call i32 @llvm.smin.i32(i32 %113, i32 3840)
  %115 = call ptr @__alloc_skb(i32 noundef %114, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #16
  %116 = icmp eq ptr %115, null
  br i1 %116, label %221, label %117

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.sk_buff, ptr %115, i32 0, i32 3
  %119 = getelementptr inbounds %struct.sk_buff, ptr %112, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(48) %118, ptr noundef align 8 dereferenceable(48) %119, i32 48, i1 false)
  %120 = getelementptr inbounds %struct.sk_buff, ptr %115, i32 0, i32 3, i32 4
  store i32 %111, ptr %120, align 4
  store i32 %111, ptr %118, align 8
  %121 = getelementptr inbounds %struct.sk_buff_list, ptr %112, i32 0, i32 1
  %122 = select i1 %9, ptr %96, ptr %121
  %123 = select i1 %9, ptr %8, ptr %112
  %124 = load ptr, ptr %122, align 4
  store volatile ptr %123, ptr %115, align 8
  %125 = getelementptr inbounds %struct.anon.43, ptr %115, i32 0, i32 1
  store volatile ptr %124, ptr %125, align 4
  store volatile ptr %115, ptr %122, align 4
  store volatile ptr %115, ptr %124, align 4
  %126 = load i32, ptr %104, align 4
  %127 = add i32 %126, 1
  store volatile i32 %127, ptr %104, align 4
  %128 = getelementptr inbounds %struct.sk_buff, ptr %115, i32 0, i32 4, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %117
  call void %129(ptr noundef nonnull %115) #16
  br label %137

132:                                              ; preds = %117
  %133 = getelementptr inbounds %struct.sk_buff, ptr %115, i32 0, i32 1
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %137, label %136, !prof !11

136:                                              ; preds = %132
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #16, !srcloc !26
  unreachable

137:                                              ; preds = %132, %131
  %138 = getelementptr inbounds %struct.sk_buff, ptr %115, i32 0, i32 1
  store ptr %0, ptr %138, align 4
  store ptr @sock_rfree, ptr %128, align 4
  %139 = getelementptr inbounds %struct.sk_buff, ptr %115, i32 0, i32 18
  %140 = load i32, ptr %139, align 8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %101) #16, !srcloc !27
  %141 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %101, ptr %101, i32 %140, ptr elementtype(i32) %101) #16, !srcloc !28
  %142 = load ptr, ptr %102, align 8
  %143 = getelementptr inbounds %struct.proto, ptr %142, i32 0, i32 30
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %150, label %146

146:                                              ; preds = %137
  %147 = load i32, ptr %139, align 8
  %148 = load i32, ptr %103, align 4
  %149 = sub i32 %148, %147
  store i32 %149, ptr %103, align 4
  br label %150

150:                                              ; preds = %146, %137
  %151 = icmp sgt i32 %113, 0
  br i1 %151, label %152, label %105

152:                                              ; preds = %218, %150
  %153 = phi i32 [ %181, %218 ], [ %111, %150 ]
  %154 = phi ptr [ %219, %218 ], [ %112, %150 ]
  %155 = phi i32 [ %180, %218 ], [ %114, %150 ]
  %156 = getelementptr inbounds %struct.sk_buff, ptr %154, i32 0, i32 3
  %157 = load i32, ptr %156, align 8
  %158 = sub i32 %153, %157
  %159 = getelementptr inbounds %struct.sk_buff, ptr %154, i32 0, i32 3, i32 4
  %160 = load i32, ptr %159, align 4
  %161 = sub i32 %160, %153
  %162 = icmp slt i32 %158, 0
  br i1 %162, label %163, label %164, !prof !16

163:                                              ; preds = %152
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/tcp_input.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5215, 0\0A.popsection", ""() #16, !srcloc !58
  unreachable

164:                                              ; preds = %152
  %165 = icmp sgt i32 %161, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %164
  %167 = call i32 @llvm.smin.i32(i32 %155, i32 %161)
  %168 = call ptr @skb_put(ptr noundef nonnull %115, i32 noundef %167) #16
  %169 = call i32 @skb_copy_bits(ptr noundef %154, i32 noundef %158, ptr noundef %168, i32 noundef %167) #16
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %166
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/tcp_input.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5219, 0\0A.popsection", ""() #16, !srcloc !59
  unreachable

172:                                              ; preds = %166
  %173 = load i32, ptr %120, align 4
  %174 = add i32 %173, %167
  store i32 %174, ptr %120, align 4
  %175 = sub nsw i32 %155, %167
  %176 = add i32 %167, %153
  %177 = load i32, ptr %159, align 4
  br label %178

178:                                              ; preds = %172, %164
  %179 = phi i32 [ %177, %172 ], [ %160, %164 ]
  %180 = phi i32 [ %175, %172 ], [ %155, %164 ]
  %181 = phi i32 [ %176, %172 ], [ %153, %164 ]
  %182 = sub i32 %181, %179
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %218, label %184

184:                                              ; preds = %178
  br i1 %9, label %195, label %185

185:                                              ; preds = %184
  %186 = load ptr, ptr %154, align 8
  %187 = icmp eq ptr %186, %1
  %188 = select i1 %187, ptr null, ptr %186
  %189 = load i32, ptr %10, align 4
  %190 = add i32 %189, -1
  store volatile i32 %190, ptr %10, align 4
  %191 = load ptr, ptr %154, align 8
  %192 = getelementptr inbounds %struct.anon.43, ptr %154, i32 0, i32 1
  %193 = load ptr, ptr %192, align 4
  store ptr null, ptr %192, align 4
  store ptr null, ptr %154, align 8
  %194 = getelementptr inbounds %struct.anon.43, ptr %191, i32 0, i32 1
  store volatile ptr %193, ptr %194, align 4
  store volatile ptr %191, ptr %193, align 8
  br label %197

195:                                              ; preds = %184
  %196 = call ptr @rb_next(ptr noundef %154) #16
  call void @rb_erase(ptr noundef %154, ptr noundef %2) #16
  br label %197

197:                                              ; preds = %195, %185
  %198 = phi ptr [ %196, %195 ], [ %188, %185 ]
  call void @__kfree_skb(ptr noundef %154) #16
  %199 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %200 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %201 = getelementptr [126 x i32], ptr %200, i32 0, i32 45
  %202 = ptrtoint ptr %201 to i32
  %203 = call i32 @llvm.read_register.i32(metadata !0) #16
  %204 = inttoptr i32 %203 to ptr
  %205 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %204) #13, !srcloc !14
  %206 = add i32 %205, %202
  %207 = inttoptr i32 %206 to ptr
  %208 = load i32, ptr %207, align 4
  %209 = add i32 %208, 1
  store i32 %209, ptr %207, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %199) #16, !srcloc !15
  %210 = icmp eq ptr %198, null
  %211 = icmp eq ptr %198, %4
  %212 = or i1 %210, %211
  br i1 %212, label %221, label %213

213:                                              ; preds = %197
  %214 = getelementptr inbounds %struct.sk_buff, ptr %198, i32 0, i32 3, i32 12
  %215 = load i8, ptr %214, align 4
  %216 = and i8 %215, 3
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %213, %178
  %219 = phi ptr [ %154, %178 ], [ %198, %213 ]
  %220 = icmp sgt i32 %180, 0
  br i1 %220, label %152, label %105

221:                                              ; preds = %213, %197, %110, %105, %95
  %222 = load ptr, ptr %8, align 4
  %223 = icmp eq ptr %222, %8
  br i1 %223, label %251, label %224

224:                                              ; preds = %245, %221
  %225 = phi ptr [ %226, %245 ], [ %222, %221 ]
  %226 = load ptr, ptr %225, align 8
  %227 = load ptr, ptr %2, align 4
  %228 = icmp eq ptr %227, null
  br i1 %228, label %245, label %229

229:                                              ; preds = %224
  %230 = getelementptr inbounds %struct.sk_buff, ptr %225, i32 0, i32 3
  %231 = load i32, ptr %230, align 8
  br label %232

232:                                              ; preds = %232, %229
  %233 = phi ptr [ %227, %229 ], [ %241, %232 ]
  %234 = getelementptr inbounds %struct.sk_buff, ptr %233, i32 0, i32 3
  %235 = load i32, ptr %234, align 8
  %236 = sub i32 %231, %235
  %237 = icmp slt i32 %236, 0
  %238 = getelementptr inbounds %struct.rb_node, ptr %233, i32 0, i32 2
  %239 = getelementptr inbounds %struct.rb_node, ptr %233, i32 0, i32 1
  %240 = select i1 %237, ptr %238, ptr %239
  %241 = load ptr, ptr %240, align 4
  %242 = icmp eq ptr %241, null
  br i1 %242, label %243, label %232

243:                                              ; preds = %232
  %244 = ptrtoint ptr %233 to i32
  br label %245

245:                                              ; preds = %243, %224
  %246 = phi i32 [ %244, %243 ], [ 0, %224 ]
  %247 = phi ptr [ %240, %243 ], [ %2, %224 ]
  store i32 %246, ptr %225, align 4
  %248 = getelementptr inbounds %struct.rb_node, ptr %225, i32 0, i32 1
  store ptr null, ptr %248, align 4
  %249 = getelementptr inbounds %struct.rb_node, ptr %225, i32 0, i32 2
  store ptr null, ptr %249, align 4
  store ptr %225, ptr %247, align 4
  call void @rb_insert_color(ptr noundef %225, ptr noundef %2) #16
  %250 = icmp eq ptr %226, %8
  br i1 %250, label %251, label %224

251:                                              ; preds = %245, %221, %94, %90, %43, %11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_last(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_rfree(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_prev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tcp_try_coalesce(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !24
  store i8 0, ptr %3, align 1
  %6 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %67

11:                                               ; preds = %4
  %12 = call zeroext i1 @skb_try_coalesce(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5) #16
  br i1 %12, label %13, label %67

13:                                               ; preds = %11
  %14 = load i32, ptr %5, align 4
  %15 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #16, !srcloc !27
  %16 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 %14, ptr elementtype(i32) %15) #16, !srcloc !28
  %17 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.proto, ptr %18, i32 0, i32 30
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %13
  %23 = load i32, ptr %5, align 4
  %24 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %25 = load i32, ptr %24, align 4
  %26 = sub i32 %25, %23
  store i32 %26, ptr %24, align 4
  br label %27

27:                                               ; preds = %22, %13
  %28 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %29 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %30 = getelementptr [126 x i32], ptr %29, i32 0, i32 77
  %31 = ptrtoint ptr %30 to i32
  %32 = call i32 @llvm.read_register.i32(metadata !0) #16
  %33 = inttoptr i32 %32 to ptr
  %34 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %33) #13, !srcloc !14
  %35 = add i32 %34, %31
  %36 = inttoptr i32 %35 to ptr
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %36, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %28) #16, !srcloc !15
  %39 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 4
  %40 = load i32, ptr %39, align 4
  store i32 %40, ptr %8, align 4
  %41 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 16
  %42 = load i32, ptr %41, align 8
  %43 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  store i32 %42, ptr %43, align 8
  %44 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 12
  %45 = load i8, ptr %44, align 4
  %46 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %47 = load i8, ptr %46, align 4
  %48 = or i8 %47, %45
  store i8 %48, ptr %46, align 4
  %49 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 15
  %50 = load i8, ptr %49, align 1
  %51 = and i8 %50, 4
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %67, label %53

53:                                               ; preds = %27
  %54 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 15
  %55 = load i8, ptr %54, align 1
  %56 = or i8 %55, 4
  store i8 %56, ptr %54, align 1
  %57 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 2
  %58 = load i64, ptr %57, align 8
  %59 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 2
  store i64 %58, ptr %59, align 8
  %60 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 15
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.skb_shared_info, ptr %61, i32 0, i32 7
  %63 = load i64, ptr %62, align 8
  %64 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.skb_shared_info, ptr %65, i32 0, i32 7
  store i64 %63, ptr %66, align 8
  br label %67

67:                                               ; preds = %53, %27, %11, %4
  %68 = phi i1 [ false, %4 ], [ false, %11 ], [ true, %53 ], [ true, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret i1 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_try_coalesce(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tcp_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_seconds() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tcp_sacktag_write_queue(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #2 {
  %5 = alloca [4 x %struct.tcp_sack_block], align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = getelementptr i8, ptr %7, i32 %10
  %12 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 13
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr i8, ptr %11, i32 %14
  %16 = getelementptr i8, ptr %15, i32 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !24
  %17 = getelementptr i8, ptr %15, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = add nsw i32 %19, -2
  %21 = ashr i32 %20, 3
  %22 = tail call i32 @llvm.smin.i32(i32 %21, i32 4)
  %23 = getelementptr inbounds %struct.tcp_sacktag_state, ptr %3, i32 0, i32 4
  store i32 0, ptr %23, align 8
  %24 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.tcp_sacktag_state, ptr %3, i32 0, i32 2
  store i32 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %32 = tail call ptr @rb_first(ptr noundef %31) #16
  %33 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 94
  store ptr %32, ptr %33, align 8
  br label %34

34:                                               ; preds = %30, %4
  %35 = load i32, ptr %16, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #16
  %37 = getelementptr inbounds %struct.tcp_sack_block_wire, ptr %16, i32 0, i32 1
  %38 = load i32, ptr %37, align 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #16
  %40 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  %41 = load i32, ptr %40, align 8
  %42 = sub i32 %36, %41
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %34
  %45 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %46 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %47 = getelementptr [126 x i32], ptr %46, i32 0, i32 48
  %48 = ptrtoint ptr %47 to i32
  %49 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %50 = inttoptr i32 %49 to ptr
  %51 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %50) #13, !srcloc !14
  %52 = add i32 %51, %48
  %53 = inttoptr i32 %52 to ptr
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %53, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %45) #16, !srcloc !15
  br label %82

56:                                               ; preds = %34
  %57 = icmp sgt i32 %22, 1
  br i1 %57, label %58, label %182

58:                                               ; preds = %56
  %59 = getelementptr %struct.tcp_sack_block_wire, ptr %16, i32 1
  %60 = getelementptr %struct.tcp_sack_block_wire, ptr %16, i32 1, i32 1
  %61 = load i32, ptr %60, align 1
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #16
  %63 = load i32, ptr %59, align 1
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #16
  %65 = sub i32 %62, %39
  %66 = icmp slt i32 %65, 0
  %67 = sub i32 %36, %64
  %68 = icmp slt i32 %67, 0
  %69 = select i1 %66, i1 true, i1 %68
  br i1 %69, label %182, label %70

70:                                               ; preds = %58
  %71 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %72 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %73 = getelementptr [126 x i32], ptr %72, i32 0, i32 49
  %74 = ptrtoint ptr %73 to i32
  %75 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %76 = inttoptr i32 %75 to ptr
  %77 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %76) #13, !srcloc !14
  %78 = add i32 %77, %74
  %79 = inttoptr i32 %78 to ptr
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %79, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %71) #16, !srcloc !15
  br label %82

82:                                               ; preds = %70, %44
  %83 = sub i32 %36, %39
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %142

85:                                               ; preds = %82
  %86 = sub i32 %39, %36
  %87 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 27
  %88 = load i32, ptr %87, align 8
  %89 = icmp ugt i32 %86, %88
  br i1 %89, label %142, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  %92 = load i32, ptr %91, align 4
  %93 = icmp ugt i32 %86, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = add i32 %86, -1
  %96 = add i32 %95, %92
  %97 = udiv i32 %96, %92
  br label %107

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 40
  %100 = load i32, ptr %99, align 8
  %101 = icmp ne i32 %100, 0
  %102 = icmp eq i32 %100, %39
  %103 = and i1 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load i32, ptr %23, align 8
  %106 = or i32 %105, 131072
  store i32 %106, ptr %23, align 8
  br label %107

107:                                              ; preds = %104, %98, %94
  %108 = phi i32 [ %97, %94 ], [ 1, %104 ], [ 1, %98 ]
  %109 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 15
  %110 = load i32, ptr %109, align 8
  %111 = add i32 %110, %108
  store i32 %111, ptr %109, align 8
  %112 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 102
  %113 = load i32, ptr %112, align 8
  %114 = icmp ugt i32 %111, %113
  br i1 %114, label %142, label %115

115:                                              ; preds = %107
  %116 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %117 = load i24, ptr %116, align 4
  %118 = trunc i24 %117 to i16
  %119 = and i16 %118, 48
  %120 = or i16 %119, 64
  %121 = zext i16 %120 to i24
  %122 = and i24 %117, -113
  %123 = or i24 %122, %121
  store i24 %123, ptr %116, align 4
  %124 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 59
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %115
  %128 = load i32, ptr %23, align 8
  %129 = and i32 %128, 131072
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 31, i32 5
  %133 = load i8, ptr %132, align 1
  %134 = or i8 %133, 32
  store i8 %134, ptr %132, align 1
  br label %135

135:                                              ; preds = %131, %127, %115
  %136 = load i32, ptr %23, align 8
  %137 = or i32 %136, 2048
  store i32 %137, ptr %23, align 8
  %138 = getelementptr inbounds %struct.tcp_sacktag_state, ptr %3, i32 0, i32 3
  %139 = load i32, ptr %138, align 4
  %140 = add i32 %139, %108
  store i32 %140, ptr %138, align 4
  %141 = icmp eq i32 %108, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %135, %107, %85, %82
  %143 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %144 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %145 = getelementptr [126 x i32], ptr %144, i32 0, i32 123
  %146 = ptrtoint ptr %145 to i32
  %147 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %148 = inttoptr i32 %147 to ptr
  %149 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %148) #13, !srcloc !14
  %150 = add i32 %149, %146
  %151 = inttoptr i32 %150 to ptr
  %152 = load i32, ptr %151, align 4
  %153 = add i32 %152, 1
  store i32 %153, ptr %151, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %143) #16, !srcloc !15
  br label %182

154:                                              ; preds = %135
  %155 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %156 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %157 = getelementptr [126 x i32], ptr %156, i32 0, i32 122
  %158 = ptrtoint ptr %157 to i32
  %159 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %160 = inttoptr i32 %159 to ptr
  %161 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %160) #13, !srcloc !14
  %162 = add i32 %161, %158
  %163 = inttoptr i32 %162 to ptr
  %164 = load i32, ptr %163, align 4
  %165 = add i32 %164, %108
  store i32 %165, ptr %163, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %155) #16, !srcloc !15
  %166 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 99
  %167 = load i32, ptr %166, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %182, label %169

169:                                              ; preds = %154
  %170 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 100
  %171 = load i32, ptr %170, align 8
  %172 = icmp sgt i32 %171, 0
  %173 = sub i32 %2, %39
  %174 = icmp sgt i32 %173, -1
  %175 = select i1 %172, i1 %174, i1 false
  %176 = sub i32 %167, %39
  %177 = icmp slt i32 %176, 0
  %178 = select i1 %175, i1 %177, i1 false
  br i1 %178, label %179, label %182

179:                                              ; preds = %169
  %180 = sub i32 %171, %108
  %181 = tail call i32 @llvm.smax.i32(i32 %180, i32 0) #16
  store i32 %181, ptr %170, align 8
  br label %182

182:                                              ; preds = %179, %169, %154, %142, %58, %56
  %183 = phi i1 [ false, %142 ], [ false, %58 ], [ false, %56 ], [ true, %179 ], [ true, %169 ], [ true, %154 ]
  %184 = load i32, ptr %40, align 8
  %185 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 27
  %186 = load i32, ptr %185, align 8
  %187 = sub i32 %184, %2
  %188 = add i32 %187, %186
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %672, label %190

190:                                              ; preds = %182
  %191 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %192 = load i32, ptr %191, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %645, label %194

194:                                              ; preds = %190
  %195 = icmp ugt i8 %18, 9
  br i1 %195, label %196, label %314

196:                                              ; preds = %194
  %197 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %198 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 99
  %199 = call i32 @llvm.smax.i32(i32 %22, i32 1)
  br label %203

200:                                              ; preds = %282
  %201 = add i32 %284, -1
  %202 = icmp sgt i32 %201, 0
  br i1 %202, label %290, label %314

203:                                              ; preds = %282, %196
  %204 = phi i32 [ 0, %196 ], [ %284, %282 ]
  %205 = phi i32 [ 0, %196 ], [ %285, %282 ]
  %206 = phi i32 [ 0, %196 ], [ %283, %282 ]
  %207 = icmp eq i32 %205, 0
  %208 = and i1 %183, %207
  %209 = getelementptr %struct.tcp_sack_block_wire, ptr %16, i32 %205
  %210 = load i32, ptr %209, align 1
  %211 = tail call i32 @llvm.bswap.i32(i32 %210) #16
  %212 = getelementptr [4 x %struct.tcp_sack_block], ptr %5, i32 0, i32 %204
  store i32 %211, ptr %212, align 4
  %213 = getelementptr inbounds %struct.tcp_sack_block_wire, ptr %209, i32 0, i32 1
  %214 = load i32, ptr %213, align 1
  %215 = tail call i32 @llvm.bswap.i32(i32 %214) #16
  %216 = getelementptr [4 x %struct.tcp_sack_block], ptr %5, i32 0, i32 %204, i32 1
  store i32 %215, ptr %216, align 4
  %217 = load i32, ptr %24, align 4
  %218 = sub i32 %217, %215
  %219 = icmp sgt i32 %218, -1
  %220 = sub i32 %211, %215
  %221 = icmp slt i32 %220, 0
  %222 = and i1 %221, %219
  %223 = sub i32 %211, %217
  %224 = icmp slt i32 %223, 0
  %225 = select i1 %222, i1 %224, i1 false
  br i1 %225, label %226, label %249

226:                                              ; preds = %203
  %227 = load i32, ptr %197, align 4
  %228 = sub i32 %227, %211
  %229 = icmp slt i32 %228, 0
  %230 = xor i1 %208, true
  %231 = or i1 %229, %230
  br i1 %231, label %248, label %232

232:                                              ; preds = %226
  %233 = load i32, ptr %198, align 4
  %234 = icmp eq i32 %233, 0
  %235 = sub i32 %227, %215
  %236 = icmp slt i32 %235, 0
  %237 = select i1 %234, i1 true, i1 %236
  br i1 %237, label %249, label %238

238:                                              ; preds = %232
  %239 = sub i32 %211, %233
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %275

241:                                              ; preds = %238
  %242 = sub i32 %233, %215
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %241
  %245 = load i32, ptr %185, align 8
  %246 = add i32 %245, %220
  %247 = icmp sgt i32 %246, -1
  br i1 %247, label %275, label %249

248:                                              ; preds = %226
  br i1 %229, label %275, label %249

249:                                              ; preds = %248, %244, %241, %232, %203
  br i1 %208, label %250, label %254

250:                                              ; preds = %249
  %251 = load i32, ptr %198, align 4
  %252 = icmp eq i32 %251, 0
  %253 = select i1 %252, i32 60, i32 59
  br label %261

254:                                              ; preds = %249
  %255 = load i32, ptr %40, align 8
  %256 = load i32, ptr %197, align 4
  %257 = icmp eq i32 %255, %256
  %258 = sub i32 %256, %215
  %259 = icmp slt i32 %258, 0
  %260 = select i1 %257, i1 true, i1 %259
  br i1 %260, label %261, label %282

261:                                              ; preds = %254, %250
  %262 = phi i32 [ %253, %250 ], [ 58, %254 ]
  %263 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %264 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %265 = getelementptr [126 x i32], ptr %264, i32 0, i32 %262
  %266 = ptrtoint ptr %265 to i32
  %267 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %268 = inttoptr i32 %267 to ptr
  %269 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %268) #13, !srcloc !14
  %270 = add i32 %269, %266
  %271 = inttoptr i32 %270 to ptr
  %272 = load i32, ptr %271, align 4
  %273 = add i32 %272, 1
  store i32 %273, ptr %271, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %263) #16, !srcloc !15
  %274 = select i1 %207, i32 -1, i32 %206
  br label %282

275:                                              ; preds = %248, %244, %238
  %276 = sub i32 %2, %215
  %277 = icmp slt i32 %276, 0
  br i1 %277, label %280, label %278

278:                                              ; preds = %275
  %279 = select i1 %207, i32 -1, i32 %206
  br label %282

280:                                              ; preds = %275
  %281 = add i32 %204, 1
  br label %282

282:                                              ; preds = %280, %278, %261, %254
  %283 = phi i32 [ %206, %280 ], [ %279, %278 ], [ %274, %261 ], [ %206, %254 ]
  %284 = phi i32 [ %281, %280 ], [ %204, %278 ], [ %204, %261 ], [ %204, %254 ]
  %285 = add nuw nsw i32 %205, 1
  %286 = icmp eq i32 %285, %199
  br i1 %286, label %200, label %203

287:                                              ; preds = %310
  %288 = add i32 %291, -1
  %289 = icmp sgt i32 %288, 0
  br i1 %289, label %290, label %314

290:                                              ; preds = %287, %200
  %291 = phi i32 [ %288, %287 ], [ %201, %200 ]
  %292 = phi i32 [ %312, %287 ], [ %283, %200 ]
  %293 = load i32, ptr %5, align 4
  br label %294

294:                                              ; preds = %310, %290
  %295 = phi i32 [ %311, %310 ], [ %293, %290 ]
  %296 = phi i32 [ %298, %310 ], [ 0, %290 ]
  %297 = phi i32 [ %312, %310 ], [ %292, %290 ]
  %298 = add nuw nsw i32 %296, 1
  %299 = getelementptr [4 x %struct.tcp_sack_block], ptr %5, i32 0, i32 %298
  %300 = load i32, ptr %299, align 4
  %301 = sub i32 %300, %295
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %303, label %310

303:                                              ; preds = %294
  %304 = getelementptr [4 x %struct.tcp_sack_block], ptr %5, i32 0, i32 %296
  %305 = load i64, ptr %304, align 4
  %306 = load i64, ptr %299, align 4
  store i64 %306, ptr %304, align 4
  store i64 %305, ptr %299, align 4
  %307 = icmp eq i32 %296, %297
  %308 = select i1 %307, i32 %298, i32 %297
  %309 = trunc i64 %305 to i32
  br label %310

310:                                              ; preds = %303, %294
  %311 = phi i32 [ %300, %294 ], [ %309, %303 ]
  %312 = phi i32 [ %297, %294 ], [ %308, %303 ]
  %313 = icmp eq i32 %298, %291
  br i1 %313, label %287, label %294

314:                                              ; preds = %287, %200, %194
  %315 = phi i32 [ %284, %200 ], [ 0, %194 ], [ %284, %287 ]
  %316 = phi i32 [ %283, %200 ], [ 0, %194 ], [ %312, %287 ]
  %317 = tail call i32 @tcp_current_mss(ptr noundef %0) #16
  %318 = getelementptr inbounds %struct.tcp_sacktag_state, ptr %3, i32 0, i32 5
  store i32 %317, ptr %318, align 4
  %319 = load i32, ptr %27, align 4
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %314
  %322 = getelementptr %struct.tcp_sock, ptr %0, i32 0, i32 94
  br label %338

323:                                              ; preds = %314
  %324 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 93
  %325 = getelementptr %struct.tcp_sock, ptr %0, i32 0, i32 94
  %326 = icmp ugt ptr %325, %324
  br i1 %326, label %327, label %338

327:                                              ; preds = %335, %323
  %328 = phi ptr [ %336, %335 ], [ %324, %323 ]
  %329 = load i32, ptr %328, align 4
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %338

331:                                              ; preds = %327
  %332 = getelementptr inbounds %struct.tcp_sack_block, ptr %328, i32 0, i32 1
  %333 = load i32, ptr %332, align 4
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %331
  %336 = getelementptr %struct.tcp_sack_block, ptr %328, i32 1
  %337 = icmp ugt ptr %325, %336
  br i1 %337, label %327, label %338

338:                                              ; preds = %335, %331, %327, %323, %321
  %339 = phi ptr [ %322, %321 ], [ %324, %323 ], [ %336, %335 ], [ %328, %327 ], [ %328, %331 ]
  %340 = icmp sgt i32 %315, 0
  br i1 %340, label %341, label %568

341:                                              ; preds = %338
  %342 = getelementptr %struct.tcp_sock, ptr %0, i32 0, i32 94
  %343 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %344 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  br label %345

345:                                              ; preds = %561, %341
  %346 = phi ptr [ %339, %341 ], [ %564, %561 ]
  %347 = phi ptr [ null, %341 ], [ %563, %561 ]
  %348 = phi i32 [ 0, %341 ], [ %562, %561 ]
  %349 = getelementptr [4 x %struct.tcp_sack_block], ptr %5, i32 0, i32 %348
  %350 = load i32, ptr %349, align 4
  %351 = getelementptr [4 x %struct.tcp_sack_block], ptr %5, i32 0, i32 %348, i32 1
  %352 = load i32, ptr %351, align 4
  %353 = icmp eq i32 %348, %316
  %354 = select i1 %183, i1 %353, i1 false
  %355 = add nsw i32 %348, 1
  %356 = icmp eq i32 %355, %316
  %357 = getelementptr [4 x %struct.tcp_sack_block], ptr %5, i32 0, i32 %355
  %358 = select i1 %183, i1 %356, i1 false
  %359 = select i1 %358, ptr %357, ptr null
  %360 = icmp ugt ptr %342, %346
  br i1 %360, label %361, label %510

361:                                              ; preds = %367, %345
  %362 = phi ptr [ %368, %367 ], [ %346, %345 ]
  %363 = getelementptr inbounds %struct.tcp_sack_block, ptr %362, i32 0, i32 1
  %364 = load i32, ptr %363, align 4
  %365 = sub i32 %350, %364
  %366 = icmp slt i32 %365, 0
  br i1 %366, label %370, label %367

367:                                              ; preds = %361
  %368 = getelementptr %struct.tcp_sack_block, ptr %362, i32 1
  %369 = icmp ugt ptr %342, %368
  br i1 %369, label %361, label %510

370:                                              ; preds = %361
  %371 = getelementptr inbounds %struct.tcp_sack_block, ptr %362, i32 0, i32 1
  br i1 %354, label %510, label %372

372:                                              ; preds = %370
  %373 = load i32, ptr %362, align 4
  %374 = sub i32 %373, %352
  %375 = icmp slt i32 %374, 0
  br i1 %375, label %376, label %510

376:                                              ; preds = %372
  %377 = sub i32 %350, %373
  %378 = icmp slt i32 %377, 0
  br i1 %378, label %379, label %412

379:                                              ; preds = %376
  %380 = icmp eq ptr %347, null
  br i1 %380, label %386, label %381

381:                                              ; preds = %379
  %382 = getelementptr inbounds %struct.sk_buff, ptr %347, i32 0, i32 3
  %383 = load i32, ptr %382, align 8
  %384 = sub i32 %350, %383
  %385 = icmp slt i32 %384, 0
  br i1 %385, label %408, label %386

386:                                              ; preds = %381, %379
  %387 = load ptr, ptr %343, align 4
  %388 = icmp eq ptr %387, null
  br i1 %388, label %408, label %389

389:                                              ; preds = %397, %386
  %390 = phi ptr [ %399, %397 ], [ %387, %386 ]
  %391 = getelementptr inbounds %struct.sk_buff, ptr %390, i32 0, i32 3
  %392 = load i32, ptr %391, align 8
  %393 = sub i32 %350, %392
  %394 = icmp slt i32 %393, 0
  br i1 %394, label %395, label %401

395:                                              ; preds = %389
  %396 = getelementptr inbounds %struct.rb_node, ptr %390, i32 0, i32 2
  br label %397

397:                                              ; preds = %406, %395
  %398 = phi ptr [ %396, %395 ], [ %407, %406 ]
  %399 = load ptr, ptr %398, align 4
  %400 = icmp eq ptr %399, null
  br i1 %400, label %408, label %389

401:                                              ; preds = %389
  %402 = getelementptr inbounds %struct.sk_buff, ptr %390, i32 0, i32 3, i32 4
  %403 = load i32, ptr %402, align 4
  %404 = sub i32 %350, %403
  %405 = icmp slt i32 %404, 0
  br i1 %405, label %408, label %406

406:                                              ; preds = %401
  %407 = getelementptr inbounds %struct.rb_node, ptr %390, i32 0, i32 1
  br label %397

408:                                              ; preds = %401, %397, %386, %381
  %409 = phi ptr [ %347, %381 ], [ null, %386 ], [ null, %397 ], [ %390, %401 ]
  %410 = call fastcc ptr @tcp_sacktag_walk(ptr noundef %409, ptr noundef %0, ptr noundef %359, ptr noundef %3, i32 noundef %350, i32 noundef %373, i1 noundef zeroext false)
  %411 = load i32, ptr %371, align 4
  br label %412

412:                                              ; preds = %408, %376
  %413 = phi i32 [ %411, %408 ], [ %364, %376 ]
  %414 = phi ptr [ %410, %408 ], [ %347, %376 ]
  %415 = sub i32 %413, %352
  %416 = icmp slt i32 %415, 0
  br i1 %416, label %417, label %561

417:                                              ; preds = %412
  %418 = icmp eq ptr %359, null
  br i1 %418, label %459, label %419

419:                                              ; preds = %417
  %420 = load i32, ptr %359, align 4
  %421 = sub i32 %420, %413
  %422 = icmp slt i32 %421, 0
  br i1 %422, label %423, label %459

423:                                              ; preds = %419
  %424 = icmp eq ptr %414, null
  br i1 %424, label %430, label %425

425:                                              ; preds = %423
  %426 = getelementptr inbounds %struct.sk_buff, ptr %414, i32 0, i32 3
  %427 = load i32, ptr %426, align 8
  %428 = sub i32 %420, %427
  %429 = icmp slt i32 %428, 0
  br i1 %429, label %452, label %430

430:                                              ; preds = %425, %423
  %431 = load ptr, ptr %343, align 4
  %432 = icmp eq ptr %431, null
  br i1 %432, label %452, label %433

433:                                              ; preds = %441, %430
  %434 = phi ptr [ %443, %441 ], [ %431, %430 ]
  %435 = getelementptr inbounds %struct.sk_buff, ptr %434, i32 0, i32 3
  %436 = load i32, ptr %435, align 8
  %437 = sub i32 %420, %436
  %438 = icmp slt i32 %437, 0
  br i1 %438, label %439, label %445

439:                                              ; preds = %433
  %440 = getelementptr inbounds %struct.rb_node, ptr %434, i32 0, i32 2
  br label %441

441:                                              ; preds = %450, %439
  %442 = phi ptr [ %440, %439 ], [ %451, %450 ]
  %443 = load ptr, ptr %442, align 4
  %444 = icmp eq ptr %443, null
  br i1 %444, label %452, label %433

445:                                              ; preds = %433
  %446 = getelementptr inbounds %struct.sk_buff, ptr %434, i32 0, i32 3, i32 4
  %447 = load i32, ptr %446, align 4
  %448 = sub i32 %420, %447
  %449 = icmp slt i32 %448, 0
  br i1 %449, label %452, label %450

450:                                              ; preds = %445
  %451 = getelementptr inbounds %struct.rb_node, ptr %434, i32 0, i32 1
  br label %441

452:                                              ; preds = %445, %441, %430, %425
  %453 = phi ptr [ %414, %425 ], [ null, %430 ], [ %434, %445 ], [ null, %441 ]
  %454 = getelementptr [4 x %struct.tcp_sack_block], ptr %5, i32 0, i32 %355, i32 1
  %455 = select i1 %183, i1 %356, i1 false
  %456 = select i1 %455, ptr %454, ptr inttoptr (i32 4 to ptr)
  %457 = load i32, ptr %456, align 4
  %458 = call fastcc ptr @tcp_sacktag_walk(ptr noundef %453, ptr noundef %0, ptr noundef null, ptr noundef %3, i32 noundef %420, i32 noundef %457, i1 noundef zeroext true) #16
  br label %459

459:                                              ; preds = %452, %419, %417
  %460 = phi ptr [ %414, %417 ], [ %458, %452 ], [ %414, %419 ]
  %461 = load i32, ptr %27, align 4
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %468, label %463

463:                                              ; preds = %459
  %464 = load ptr, ptr %342, align 8
  %465 = icmp eq ptr %464, null
  %466 = getelementptr inbounds %struct.sk_buff, ptr %464, i32 0, i32 3
  %467 = select i1 %465, ptr %24, ptr %466
  br label %468

468:                                              ; preds = %463, %459
  %469 = phi ptr [ %467, %463 ], [ %344, %459 ]
  %470 = load i32, ptr %469, align 4
  %471 = load i32, ptr %371, align 4
  %472 = icmp eq i32 %470, %471
  br i1 %472, label %473, label %478

473:                                              ; preds = %468
  %474 = load ptr, ptr %342, align 8
  %475 = icmp eq ptr %474, null
  br i1 %475, label %566, label %476

476:                                              ; preds = %473
  %477 = getelementptr %struct.tcp_sack_block, ptr %362, i32 1
  br label %557

478:                                              ; preds = %468
  %479 = icmp eq ptr %460, null
  br i1 %479, label %485, label %480

480:                                              ; preds = %478
  %481 = getelementptr inbounds %struct.sk_buff, ptr %460, i32 0, i32 3
  %482 = load i32, ptr %481, align 8
  %483 = sub i32 %471, %482
  %484 = icmp slt i32 %483, 0
  br i1 %484, label %507, label %485

485:                                              ; preds = %480, %478
  %486 = load ptr, ptr %343, align 4
  %487 = icmp eq ptr %486, null
  br i1 %487, label %507, label %488

488:                                              ; preds = %496, %485
  %489 = phi ptr [ %498, %496 ], [ %486, %485 ]
  %490 = getelementptr inbounds %struct.sk_buff, ptr %489, i32 0, i32 3
  %491 = load i32, ptr %490, align 8
  %492 = sub i32 %471, %491
  %493 = icmp slt i32 %492, 0
  br i1 %493, label %494, label %500

494:                                              ; preds = %488
  %495 = getelementptr inbounds %struct.rb_node, ptr %489, i32 0, i32 2
  br label %496

496:                                              ; preds = %505, %494
  %497 = phi ptr [ %495, %494 ], [ %506, %505 ]
  %498 = load ptr, ptr %497, align 4
  %499 = icmp eq ptr %498, null
  br i1 %499, label %507, label %488

500:                                              ; preds = %488
  %501 = getelementptr inbounds %struct.sk_buff, ptr %489, i32 0, i32 3, i32 4
  %502 = load i32, ptr %501, align 4
  %503 = sub i32 %471, %502
  %504 = icmp slt i32 %503, 0
  br i1 %504, label %507, label %505

505:                                              ; preds = %500
  %506 = getelementptr inbounds %struct.rb_node, ptr %489, i32 0, i32 1
  br label %496

507:                                              ; preds = %500, %496, %485, %480
  %508 = phi ptr [ %460, %480 ], [ null, %485 ], [ null, %496 ], [ %489, %500 ]
  %509 = getelementptr %struct.tcp_sack_block, ptr %362, i32 1
  br label %561

510:                                              ; preds = %372, %370, %367, %345
  %511 = phi ptr [ %362, %370 ], [ %362, %372 ], [ %346, %345 ], [ %368, %367 ]
  %512 = load i32, ptr %27, align 4
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %519, label %514

514:                                              ; preds = %510
  %515 = load ptr, ptr %342, align 8
  %516 = icmp eq ptr %515, null
  %517 = getelementptr inbounds %struct.sk_buff, ptr %515, i32 0, i32 3
  %518 = select i1 %516, ptr %24, ptr %517
  br label %519

519:                                              ; preds = %514, %510
  %520 = phi ptr [ %518, %514 ], [ %344, %510 ]
  %521 = load i32, ptr %520, align 4
  %522 = sub i32 %350, %521
  %523 = icmp slt i32 %522, 0
  br i1 %523, label %527, label %524

524:                                              ; preds = %519
  %525 = load ptr, ptr %342, align 8
  %526 = icmp eq ptr %525, null
  br i1 %526, label %566, label %529

527:                                              ; preds = %519
  %528 = icmp eq ptr %347, null
  br i1 %528, label %535, label %529

529:                                              ; preds = %527, %524
  %530 = phi ptr [ %347, %527 ], [ %525, %524 ]
  %531 = getelementptr inbounds %struct.sk_buff, ptr %530, i32 0, i32 3
  %532 = load i32, ptr %531, align 8
  %533 = sub i32 %350, %532
  %534 = icmp slt i32 %533, 0
  br i1 %534, label %557, label %535

535:                                              ; preds = %529, %527
  %536 = load ptr, ptr %343, align 4
  %537 = icmp eq ptr %536, null
  br i1 %537, label %557, label %538

538:                                              ; preds = %546, %535
  %539 = phi ptr [ %548, %546 ], [ %536, %535 ]
  %540 = getelementptr inbounds %struct.sk_buff, ptr %539, i32 0, i32 3
  %541 = load i32, ptr %540, align 8
  %542 = sub i32 %350, %541
  %543 = icmp slt i32 %542, 0
  br i1 %543, label %544, label %550

544:                                              ; preds = %538
  %545 = getelementptr inbounds %struct.rb_node, ptr %539, i32 0, i32 2
  br label %546

546:                                              ; preds = %555, %544
  %547 = phi ptr [ %545, %544 ], [ %556, %555 ]
  %548 = load ptr, ptr %547, align 4
  %549 = icmp eq ptr %548, null
  br i1 %549, label %557, label %538

550:                                              ; preds = %538
  %551 = getelementptr inbounds %struct.sk_buff, ptr %539, i32 0, i32 3, i32 4
  %552 = load i32, ptr %551, align 4
  %553 = sub i32 %350, %552
  %554 = icmp slt i32 %553, 0
  br i1 %554, label %557, label %555

555:                                              ; preds = %550
  %556 = getelementptr inbounds %struct.rb_node, ptr %539, i32 0, i32 1
  br label %546

557:                                              ; preds = %550, %546, %535, %529, %476
  %558 = phi ptr [ %474, %476 ], [ %530, %529 ], [ null, %535 ], [ null, %546 ], [ %539, %550 ]
  %559 = phi ptr [ %477, %476 ], [ %511, %529 ], [ %511, %535 ], [ %511, %546 ], [ %511, %550 ]
  %560 = call fastcc ptr @tcp_sacktag_walk(ptr noundef %558, ptr noundef %0, ptr noundef %359, ptr noundef %3, i32 noundef %350, i32 noundef %352, i1 noundef zeroext %354)
  br label %561

561:                                              ; preds = %557, %507, %412
  %562 = phi i32 [ %348, %507 ], [ %355, %412 ], [ %355, %557 ]
  %563 = phi ptr [ %508, %507 ], [ %414, %412 ], [ %560, %557 ]
  %564 = phi ptr [ %509, %507 ], [ %362, %412 ], [ %559, %557 ]
  %565 = icmp slt i32 %562, %315
  br i1 %565, label %345, label %566

566:                                              ; preds = %561, %524, %473
  %567 = icmp eq i32 %315, 4
  br i1 %567, label %574, label %568

568:                                              ; preds = %566, %338
  %569 = sub i32 4, %315
  %570 = getelementptr i8, ptr %0, i32 1576
  %571 = shl nuw i32 %569, 3
  call void @llvm.memset.p0.i32(ptr align 8 %570, i8 0, i32 %571, i1 false)
  %572 = shl i32 %569, 3
  %573 = add i32 %572, 1576
  br label %574

574:                                              ; preds = %568, %566
  %575 = phi i32 [ 4, %566 ], [ %315, %568 ]
  %576 = phi i32 [ 1576, %566 ], [ %573, %568 ]
  br i1 %340, label %577, label %580

577:                                              ; preds = %574
  %578 = getelementptr i8, ptr %0, i32 %576
  %579 = shl nuw i32 %575, 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %578, ptr nonnull align 4 %5, i32 %579, i1 false)
  br label %580

580:                                              ; preds = %577, %574
  %581 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %582 = load i8, ptr %581, align 4
  %583 = and i8 %582, 31
  %584 = icmp eq i8 %583, 4
  br i1 %584, label %585, label %589

585:                                              ; preds = %580
  %586 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 99
  %587 = load i32, ptr %586, align 4
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %637, label %589

589:                                              ; preds = %585, %580
  %590 = load i32, ptr %26, align 8
  %591 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  %592 = load i32, ptr %591, align 4
  %593 = load i32, ptr %27, align 4
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %595, label %597

595:                                              ; preds = %589
  %596 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  br label %603

597:                                              ; preds = %589
  %598 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 94
  %599 = load ptr, ptr %598, align 8
  %600 = icmp eq ptr %599, null
  %601 = getelementptr inbounds %struct.sk_buff, ptr %599, i32 0, i32 3
  %602 = select i1 %600, ptr %24, ptr %601
  br label %603

603:                                              ; preds = %597, %595
  %604 = phi ptr [ %596, %595 ], [ %602, %597 ]
  %605 = load i32, ptr %604, align 4
  %606 = sub i32 %590, %605
  %607 = icmp slt i32 %606, 0
  br i1 %607, label %608, label %637

608:                                              ; preds = %603
  %609 = sub i32 %605, %590
  %610 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 58
  %611 = load i32, ptr %610, align 8
  %612 = mul i32 %611, %592
  %613 = icmp ugt i32 %609, %612
  %614 = icmp ne i32 %592, 0
  %615 = and i1 %614, %613
  br i1 %615, label %616, label %622

616:                                              ; preds = %608
  %617 = add i32 %592, -1
  %618 = add i32 %617, %609
  %619 = udiv i32 %618, %592
  %620 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 76), align 8
  %621 = call i32 @llvm.umin.i32(i32 %619, i32 %620) #16
  store i32 %621, ptr %610, align 8
  br label %622

622:                                              ; preds = %616, %608
  %623 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 59
  %624 = load i32, ptr %623, align 4
  %625 = add i32 %624, 1
  store i32 %625, ptr %623, align 4
  %626 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %627 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %628 = getelementptr [126 x i32], ptr %627, i32 0, i32 27
  %629 = ptrtoint ptr %628 to i32
  %630 = call i32 @llvm.read_register.i32(metadata !0) #16
  %631 = inttoptr i32 %630 to ptr
  %632 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %631) #13, !srcloc !14
  %633 = add i32 %632, %629
  %634 = inttoptr i32 %633 to ptr
  %635 = load i32, ptr %634, align 4
  %636 = add i32 %635, 1
  store i32 %636, ptr %634, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %626) #16, !srcloc !15
  br label %637

637:                                              ; preds = %622, %603, %585
  %638 = load i32, ptr %27, align 4
  %639 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 83
  %640 = load i32, ptr %639, align 8
  %641 = add i32 %640, %638
  %642 = load i32, ptr %191, align 4
  %643 = icmp ugt i32 %641, %642
  br i1 %643, label %644, label %645, !prof !16

644:                                              ; preds = %637
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1992, i32 noundef 9, ptr noundef null) #16
  br label %645

645:                                              ; preds = %644, %637, %190
  %646 = load i32, ptr %27, align 4
  %647 = icmp slt i32 %646, 0
  br i1 %647, label %648, label %649, !prof !16

648:                                              ; preds = %645
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1996, i32 noundef 9, ptr noundef null) #16
  br label %649

649:                                              ; preds = %648, %645
  %650 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 83
  %651 = load i32, ptr %650, align 8
  %652 = icmp slt i32 %651, 0
  br i1 %652, label %653, label %654, !prof !16

653:                                              ; preds = %649
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1997, i32 noundef 9, ptr noundef null) #16
  br label %654

654:                                              ; preds = %653, %649
  %655 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 52
  %656 = load i32, ptr %655, align 8
  %657 = icmp slt i32 %656, 0
  br i1 %657, label %658, label %660, !prof !16

658:                                              ; preds = %654
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1998, i32 noundef 9, ptr noundef null) #16
  %659 = load i32, ptr %655, align 8
  br label %660

660:                                              ; preds = %658, %654
  %661 = phi i32 [ %659, %658 ], [ %656, %654 ]
  %662 = load i32, ptr %191, align 4
  %663 = load i32, ptr %27, align 4
  %664 = load i32, ptr %650, align 8
  %665 = add i32 %663, %664
  %666 = sub i32 %662, %665
  %667 = add i32 %666, %661
  %668 = icmp slt i32 %667, 0
  br i1 %668, label %669, label %670, !prof !16

669:                                              ; preds = %660
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1999, i32 noundef 9, ptr noundef null) #16
  br label %670

670:                                              ; preds = %669, %660
  %671 = load i32, ptr %23, align 8
  br label %672

672:                                              ; preds = %670, %182
  %673 = phi i32 [ %671, %670 ], [ 0, %182 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  ret i32 %673
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_rack_update_reo_wnd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_process_tlp_ack(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 40
  %5 = load i32, ptr %4, align 8
  %6 = sub i32 %1, %5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %124, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 34
  %10 = load i8, ptr %9, align 1
  %11 = and i8 %10, 4
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 0, ptr %4, align 8
  br label %124

14:                                               ; preds = %8
  %15 = and i32 %2, 131072
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i32 0, ptr %4, align 8
  br label %124

18:                                               ; preds = %14
  %19 = sub i32 %5, %1
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %120

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 97
  store i32 %23, ptr %24, align 4
  store i32 0, ptr %4, align 8
  %25 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 64
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 68
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 69
  store i32 0, ptr %29, align 8
  %30 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 70
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %32, align 64
  %34 = tail call i32 %33(ptr noundef %0) #16
  %35 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 56
  %37 = load i8, ptr %36, align 2
  %38 = and i8 %37, 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %21
  %41 = or i8 %37, 2
  store i8 %41, ptr %36, align 2
  br label %42

42:                                               ; preds = %40, %21
  %43 = load ptr, ptr %31, align 4
  %44 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  tail call void %45(ptr noundef %0, i8 noundef zeroext 2) #16
  %48 = load ptr, ptr %31, align 4
  br label %49

49:                                               ; preds = %47, %42
  %50 = phi ptr [ %43, %42 ], [ %48, %47 ]
  %51 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %52 = load i8, ptr %51, align 4
  %53 = and i8 %52, -32
  %54 = or i8 %53, 2
  store i8 %54, ptr %51, align 4
  %55 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %50, i32 0, i32 7
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %49
  %59 = load i32, ptr %35, align 4
  %60 = icmp ult i32 %59, 2147483647
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  store i32 %59, ptr %26, align 8
  %62 = load volatile i32, ptr @jiffies, align 64
  %63 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 67
  store i32 %62, ptr %63, align 8
  br label %64

64:                                               ; preds = %61, %58
  %65 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %50, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  tail call void %66(ptr noundef %0, i32 noundef 2) #16
  br label %69

69:                                               ; preds = %68, %64, %49
  %70 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 83
  %73 = load i32, ptr %72, align 8
  %74 = sub i32 0, %71
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 52
  %78 = load i32, ptr %77, align 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %82 = tail call ptr @rb_first(ptr noundef %81) #16
  %83 = icmp eq ptr %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.sk_buff, ptr %82, i32 0, i32 3, i32 13
  %86 = load i8, ptr %85, align 1
  %87 = icmp slt i8 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84, %76, %69
  br label %89

89:                                               ; preds = %88, %84, %80
  %90 = phi i32 [ 1, %88 ], [ 0, %84 ], [ 0, %80 ]
  %91 = load i8, ptr %51, align 4
  %92 = and i8 %91, 31
  %93 = zext i8 %92 to i32
  %94 = icmp eq i32 %90, %93
  br i1 %94, label %108, label %95

95:                                               ; preds = %89
  %96 = trunc i32 %90 to i8
  %97 = load ptr, ptr %31, align 4
  %98 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %97, i32 0, i32 2
  %99 = load ptr, ptr %98, align 8
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %95
  tail call void %99(ptr noundef %0, i8 noundef zeroext %96) #16
  %102 = load i8, ptr %51, align 4
  br label %103

103:                                              ; preds = %101, %95
  %104 = phi i8 [ %91, %95 ], [ %102, %101 ]
  %105 = and i8 %104, -32
  %106 = or i8 %105, %96
  store i8 %106, ptr %51, align 4
  %107 = load i32, ptr %22, align 4
  store i32 %107, ptr %24, align 4
  br label %108

108:                                              ; preds = %103, %89
  %109 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %110 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %111 = getelementptr [126 x i32], ptr %110, i32 0, i32 42
  %112 = ptrtoint ptr %111 to i32
  %113 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %114 = inttoptr i32 %113 to ptr
  %115 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %114) #13, !srcloc !14
  %116 = add i32 %115, %112
  %117 = inttoptr i32 %116 to ptr
  %118 = load i32, ptr %117, align 4
  %119 = add i32 %118, 1
  store i32 %119, ptr %117, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %109) #16, !srcloc !15
  br label %124

120:                                              ; preds = %18
  %121 = and i32 %2, 1079
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i32 0, ptr %4, align 8
  br label %124

124:                                              ; preds = %123, %120, %108, %17, %13, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_fastretrans_alert(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #2 {
  %6 = load i32, ptr %3, align 4
  %7 = and i32 %6, 64
  %8 = icmp ne i32 %7, 0
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %5
  %11 = and i32 %6, 32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 58
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 94
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  br label %31

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 3
  br label %31

31:                                               ; preds = %29, %27, %13
  %32 = phi ptr [ %28, %27 ], [ %30, %29 ], [ %14, %13 ]
  %33 = mul i32 %19, %17
  %34 = add i32 %33, %15
  %35 = load i32, ptr %32, align 4
  %36 = sub i32 %34, %35
  %37 = icmp slt i32 %36, 0
  br label %38

38:                                               ; preds = %31, %10, %5
  %39 = phi i1 [ true, %5 ], [ false, %10 ], [ %37, %31 ]
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store i32 0, ptr %45, align 4
  br label %49

49:                                               ; preds = %48, %44, %38
  br i1 %8, label %50, label %52

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 96
  store i32 0, ptr %51, align 8
  br label %52

52:                                               ; preds = %50, %49
  %53 = and i32 %6, 8192
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 45
  %57 = load i32, ptr %56, align 8
  %58 = lshr i32 %57, 4
  %59 = tail call i32 @__usecs_to_jiffies(i32 noundef %58) #16
  %60 = tail call i32 @llvm.umax.i32(i32 %59, i32 1) #16
  %61 = tail call i32 @llvm.umin.i32(i32 %60, i32 12000) #16
  %62 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 19
  store i8 1, ptr %62, align 2
  %63 = load volatile i32, ptr @jiffies, align 64
  %64 = add i32 %63, %61
  %65 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 3
  store i32 %64, ptr %65, align 8
  %66 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 4
  tail call void @sk_reset_timer(ptr noundef %0, ptr noundef %66, i32 noundef %64) #16
  br label %879

67:                                               ; preds = %52
  %68 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 83
  %71 = load i32, ptr %70, align 8
  %72 = add i32 %71, %69
  %73 = icmp ugt i32 %72, %42
  br i1 %73, label %74, label %75, !prof !16

74:                                               ; preds = %67
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2957, i32 noundef 9, ptr noundef null) #16
  br label %75

75:                                               ; preds = %74, %67
  %76 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %77 = load i8, ptr %76, align 4
  %78 = and i8 %77, 31
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 52
  %82 = load i32, ptr %81, align 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 39
  %86 = load i8, ptr %85, align 1
  %87 = and i8 %86, 4
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %90, !prof !16

89:                                               ; preds = %84
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2962, i32 noundef 9, ptr noundef null) #16
  br label %90

90:                                               ; preds = %89, %84, %80
  %91 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 98
  store i32 0, ptr %91, align 8
  br label %173

92:                                               ; preds = %75
  %93 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 97
  %96 = load i32, ptr %95, align 4
  %97 = sub i32 %94, %96
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %173, label %99

99:                                               ; preds = %92
  %100 = zext i8 %78 to i32
  switch i32 %100, label %173 [
    i32 2, label %101
    i32 3, label %138
  ]

101:                                              ; preds = %99
  %102 = icmp eq i32 %94, %96
  br i1 %102, label %173, label %103

103:                                              ; preds = %101
  %104 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %105, i32 0, i32 7
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %129

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  %111 = load i32, ptr %110, align 4
  %112 = icmp ult i32 %111, 2147483647
  br i1 %112, label %113, label %123

113:                                              ; preds = %109
  %114 = icmp eq i8 %78, 2
  br i1 %114, label %119, label %115

115:                                              ; preds = %113
  %116 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 99
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %115, %113
  %120 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  store i32 %111, ptr %120, align 8
  %121 = load volatile i32, ptr @jiffies, align 64
  %122 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 67
  store i32 %121, ptr %122, align 8
  br label %123

123:                                              ; preds = %119, %115, %109
  %124 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %105, i32 0, i32 3
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %129, label %127

127:                                              ; preds = %123
  tail call void %125(ptr noundef %0, i32 noundef 2) #16
  %128 = load ptr, ptr %104, align 4
  br label %129

129:                                              ; preds = %127, %123, %103
  %130 = phi ptr [ %105, %103 ], [ %105, %123 ], [ %128, %127 ]
  %131 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %130, i32 0, i32 2
  %132 = load ptr, ptr %131, align 8
  %133 = icmp eq ptr %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %129
  tail call void %132(ptr noundef %0, i8 noundef zeroext 0) #16
  br label %135

135:                                              ; preds = %134, %129
  %136 = load i8, ptr %76, align 4
  %137 = and i8 %136, -32
  store i8 %137, ptr %76, align 4
  br label %173

138:                                              ; preds = %99
  %139 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %140 = load i24, ptr %139, align 4
  %141 = and i24 %140, 112
  %142 = icmp eq i24 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  store i32 0, ptr %68, align 4
  br label %144

144:                                              ; preds = %143, %138
  %145 = tail call fastcc zeroext i1 @tcp_try_undo_recovery(ptr noundef %0)
  br i1 %145, label %879, label %146

146:                                              ; preds = %144
  %147 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %148, i32 0, i32 7
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %173

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  %154 = load i32, ptr %153, align 4
  %155 = icmp ult i32 %154, 2147483647
  br i1 %155, label %156, label %168

156:                                              ; preds = %152
  %157 = load i8, ptr %76, align 4
  %158 = and i8 %157, 31
  %159 = icmp eq i8 %158, 2
  br i1 %159, label %164, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 99
  %162 = load i32, ptr %161, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %160, %156
  %165 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  store i32 %154, ptr %165, align 8
  %166 = load volatile i32, ptr @jiffies, align 64
  %167 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 67
  store i32 %166, ptr %167, align 8
  br label %168

168:                                              ; preds = %164, %160, %152
  %169 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %148, i32 0, i32 3
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %173, label %172

172:                                              ; preds = %168
  tail call void %170(ptr noundef %0, i32 noundef 2) #16
  br label %173

173:                                              ; preds = %172, %168, %146, %135, %101, %99, %92, %90
  %174 = load i8, ptr %76, align 4
  %175 = and i8 %174, 31
  %176 = zext i8 %175 to i32
  switch i32 %176, label %625 [
    i32 3, label %177
    i32 4, label %515
  ]

177:                                              ; preds = %173
  %178 = and i32 %6, 1024
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %177
  %181 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %182 = load i24, ptr %181, align 4
  %183 = and i24 %182, 112
  %184 = icmp eq i24 %183, 0
  br i1 %184, label %185, label %378

185:                                              ; preds = %180
  tail call fastcc void @tcp_add_reno_sack(ptr noundef %0, i32 noundef %2, i1 noundef zeroext %8)
  br label %378

186:                                              ; preds = %177
  %187 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 99
  %188 = load i32, ptr %187, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %353, label %190

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 98
  %192 = load i32, ptr %191, align 8
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %353, label %194

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %196 = load i24, ptr %195, align 4
  %197 = and i24 %196, 1
  %198 = icmp eq i24 %197, 0
  br i1 %198, label %353, label %199

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 3
  %201 = load i32, ptr %200, align 4
  %202 = icmp ne i32 %201, 0
  %203 = sub i32 %201, %192
  %204 = icmp slt i32 %203, 0
  %205 = select i1 %202, i1 %204, i1 false
  br i1 %205, label %206, label %353

206:                                              ; preds = %199
  %207 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  %208 = load i32, ptr %207, align 4
  %209 = load i32, ptr %68, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %206
  %212 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  br label %221

213:                                              ; preds = %206
  %214 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 94
  %215 = load ptr, ptr %214, align 8
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %219

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  br label %221

219:                                              ; preds = %213
  %220 = getelementptr inbounds %struct.sk_buff, ptr %215, i32 0, i32 3
  br label %221

221:                                              ; preds = %219, %217, %211
  %222 = phi ptr [ %218, %217 ], [ %220, %219 ], [ %212, %211 ]
  %223 = load i32, ptr %222, align 4
  %224 = sub i32 %1, %223
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %255

226:                                              ; preds = %221
  %227 = sub i32 %223, %1
  %228 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 58
  %229 = load i32, ptr %228, align 8
  %230 = mul i32 %229, %208
  %231 = icmp ugt i32 %227, %230
  %232 = icmp ne i32 %208, 0
  %233 = and i1 %232, %231
  br i1 %233, label %234, label %240

234:                                              ; preds = %226
  %235 = add i32 %208, -1
  %236 = add i32 %235, %227
  %237 = udiv i32 %236, %208
  %238 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 76), align 8
  %239 = tail call i32 @llvm.umin.i32(i32 %237, i32 %238) #16
  store i32 %239, ptr %228, align 8
  br label %240

240:                                              ; preds = %234, %226
  %241 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 59
  %242 = load i32, ptr %241, align 4
  %243 = add i32 %242, 1
  store i32 %243, ptr %241, align 4
  %244 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %245 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %246 = getelementptr [126 x i32], ptr %245, i32 0, i32 29
  %247 = ptrtoint ptr %246 to i32
  %248 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %249 = inttoptr i32 %248 to ptr
  %250 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %249) #13, !srcloc !14
  %251 = add i32 %250, %247
  %252 = inttoptr i32 %251 to ptr
  %253 = load i32, ptr %252, align 4
  %254 = add i32 %253, 1
  store i32 %254, ptr %252, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %244) #16, !srcloc !15
  br label %255

255:                                              ; preds = %240, %221
  %256 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 52
  %257 = load i32, ptr %256, align 8
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %879

259:                                              ; preds = %255
  %260 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %261 = tail call ptr @rb_first(ptr noundef %260) #16
  %262 = icmp eq ptr %261, null
  br i1 %262, label %267, label %263

263:                                              ; preds = %259
  %264 = getelementptr inbounds %struct.sk_buff, ptr %261, i32 0, i32 3, i32 13
  %265 = load i8, ptr %264, align 1
  %266 = icmp slt i8 %265, 0
  br i1 %266, label %268, label %267

267:                                              ; preds = %263, %259
  store i32 0, ptr %191, align 8
  br label %268

268:                                              ; preds = %267, %263
  %269 = tail call ptr @rb_first(ptr noundef %260) #16
  %270 = icmp eq ptr %269, null
  br i1 %270, label %278, label %271

271:                                              ; preds = %271, %268
  %272 = phi ptr [ %276, %271 ], [ %269, %268 ]
  %273 = getelementptr inbounds %struct.sk_buff, ptr %272, i32 0, i32 3, i32 13
  %274 = load i8, ptr %273, align 1
  %275 = and i8 %274, -5
  store i8 %275, ptr %273, align 1
  %276 = tail call ptr @rb_next(ptr noundef nonnull %272) #16
  %277 = icmp eq ptr %276, null
  br i1 %277, label %278, label %271

278:                                              ; preds = %271, %268
  store i32 0, ptr %70, align 8
  %279 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 87
  store ptr null, ptr %279, align 8
  %280 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 88
  store ptr null, ptr %280, align 4
  %281 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 96
  %282 = load i32, ptr %281, align 8
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %299, label %284

284:                                              ; preds = %278
  %285 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %286 = load ptr, ptr %285, align 4
  %287 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %286, i32 0, i32 8
  %288 = load ptr, ptr %287, align 32
  %289 = tail call i32 %288(ptr noundef %0) #16
  %290 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  store i32 %289, ptr %290, align 8
  %291 = load i32, ptr %281, align 8
  %292 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  %293 = load i32, ptr %292, align 4
  %294 = icmp ugt i32 %291, %293
  br i1 %294, label %295, label %299

295:                                              ; preds = %284
  store i32 %291, ptr %292, align 4
  %296 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 56
  %297 = load i8, ptr %296, align 2
  %298 = and i8 %297, -3
  store i8 %298, ptr %296, align 2
  br label %299

299:                                              ; preds = %295, %284, %278
  %300 = load volatile i32, ptr @jiffies, align 64
  %301 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 67
  store i32 %300, ptr %301, align 8
  store i32 0, ptr %187, align 4
  %302 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 31, i32 5
  %303 = load i8, ptr %302, align 1
  %304 = or i8 %303, 64
  store i8 %304, ptr %302, align 1
  %305 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %306 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %307 = getelementptr [126 x i32], ptr %306, i32 0, i32 31
  %308 = ptrtoint ptr %307 to i32
  %309 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %310 = inttoptr i32 %309 to ptr
  %311 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %310) #13, !srcloc !14
  %312 = add i32 %311, %308
  %313 = inttoptr i32 %312 to ptr
  %314 = load i32, ptr %313, align 4
  %315 = add i32 %314, 1
  store i32 %315, ptr %313, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %305) #16, !srcloc !15
  %316 = load i32, ptr %68, align 4
  %317 = load i32, ptr %70, align 8
  %318 = sub i32 0, %316
  %319 = icmp eq i32 %317, %318
  br i1 %319, label %320, label %330

320:                                              ; preds = %299
  %321 = load i32, ptr %256, align 8
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %330

323:                                              ; preds = %320
  %324 = tail call ptr @rb_first(ptr noundef %260) #16
  %325 = icmp eq ptr %324, null
  br i1 %325, label %331, label %326

326:                                              ; preds = %323
  %327 = getelementptr inbounds %struct.sk_buff, ptr %324, i32 0, i32 3, i32 13
  %328 = load i8, ptr %327, align 1
  %329 = icmp slt i8 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %326, %320, %299
  br label %331

331:                                              ; preds = %330, %326, %323
  %332 = phi i32 [ 1, %330 ], [ 0, %326 ], [ 0, %323 ]
  %333 = load i8, ptr %76, align 4
  %334 = and i8 %333, 31
  %335 = zext i8 %334 to i32
  %336 = icmp eq i32 %332, %335
  br i1 %336, label %378, label %337

337:                                              ; preds = %331
  %338 = trunc i32 %332 to i8
  %339 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %340 = load ptr, ptr %339, align 4
  %341 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %340, i32 0, i32 2
  %342 = load ptr, ptr %341, align 8
  %343 = icmp eq ptr %342, null
  br i1 %343, label %346, label %344

344:                                              ; preds = %337
  tail call void %342(ptr noundef %0, i8 noundef zeroext %338) #16
  %345 = load i8, ptr %76, align 4
  br label %346

346:                                              ; preds = %344, %337
  %347 = phi i8 [ %333, %337 ], [ %345, %344 ]
  %348 = and i8 %347, -32
  %349 = or i8 %348, %338
  store i8 %349, ptr %76, align 4
  %350 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %351 = load i32, ptr %350, align 4
  %352 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 97
  store i32 %351, ptr %352, align 4
  br label %378

353:                                              ; preds = %199, %194, %190, %186
  %354 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %355 = load i32, ptr %354, align 4
  %356 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 58
  %357 = load i32, ptr %356, align 8
  %358 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  %359 = load i32, ptr %358, align 4
  %360 = load i32, ptr %68, align 4
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %370, label %362

362:                                              ; preds = %353
  %363 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 94
  %364 = load ptr, ptr %363, align 8
  %365 = icmp eq ptr %364, null
  br i1 %365, label %366, label %368

366:                                              ; preds = %362
  %367 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  br label %370

368:                                              ; preds = %362
  %369 = getelementptr inbounds %struct.sk_buff, ptr %364, i32 0, i32 3
  br label %370

370:                                              ; preds = %368, %366, %353
  %371 = phi ptr [ %367, %366 ], [ %369, %368 ], [ %354, %353 ]
  %372 = mul i32 %359, %357
  %373 = add i32 %372, %355
  %374 = load i32, ptr %371, align 4
  %375 = sub i32 %373, %374
  %376 = lshr i32 %375, 31
  %377 = trunc i32 %376 to i8
  br label %378

378:                                              ; preds = %370, %346, %331, %185, %180
  %379 = phi i8 [ %40, %185 ], [ %40, %180 ], [ %40, %346 ], [ %40, %331 ], [ %377, %370 ]
  %380 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 99
  %381 = load i32, ptr %380, align 4
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %468, label %383

383:                                              ; preds = %378
  %384 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 100
  %385 = load i32, ptr %384, align 8
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %468

387:                                              ; preds = %383
  %388 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 31, i32 5
  %389 = load i8, ptr %388, align 1
  %390 = and i8 %389, 31
  %391 = tail call i8 @llvm.umin.i8(i8 %390, i8 15) #16
  %392 = add nuw nsw i8 %391, 1
  %393 = and i8 %389, -32
  %394 = or i8 %392, %393
  store i8 %394, ptr %388, align 1
  %395 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 96
  %396 = load i32, ptr %395, align 8
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %413, label %398

398:                                              ; preds = %387
  %399 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %400 = load ptr, ptr %399, align 4
  %401 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %400, i32 0, i32 8
  %402 = load ptr, ptr %401, align 32
  %403 = tail call i32 %402(ptr noundef %0) #16
  %404 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  store i32 %403, ptr %404, align 8
  %405 = load i32, ptr %395, align 8
  %406 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  %407 = load i32, ptr %406, align 4
  %408 = icmp ugt i32 %405, %407
  br i1 %408, label %409, label %413

409:                                              ; preds = %398
  store i32 %405, ptr %406, align 4
  %410 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 56
  %411 = load i8, ptr %410, align 2
  %412 = and i8 %411, -3
  store i8 %412, ptr %410, align 2
  br label %413

413:                                              ; preds = %409, %398, %387
  %414 = load volatile i32, ptr @jiffies, align 64
  %415 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 67
  store i32 %414, ptr %415, align 8
  store i32 0, ptr %380, align 4
  %416 = load i8, ptr %388, align 1
  %417 = or i8 %416, 64
  store i8 %417, ptr %388, align 1
  %418 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %419 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %420 = getelementptr [126 x i32], ptr %419, i32 0, i32 32
  %421 = ptrtoint ptr %420 to i32
  %422 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %423 = inttoptr i32 %422 to ptr
  %424 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %423) #13, !srcloc !14
  %425 = add i32 %424, %421
  %426 = inttoptr i32 %425 to ptr
  %427 = load i32, ptr %426, align 4
  %428 = add i32 %427, 1
  store i32 %428, ptr %426, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %418) #16, !srcloc !15
  %429 = load i32, ptr %68, align 4
  %430 = load i32, ptr %70, align 8
  %431 = sub i32 0, %429
  %432 = icmp eq i32 %430, %431
  br i1 %432, label %433, label %445

433:                                              ; preds = %413
  %434 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 52
  %435 = load i32, ptr %434, align 8
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %445

437:                                              ; preds = %433
  %438 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %439 = tail call ptr @rb_first(ptr noundef %438) #16
  %440 = icmp eq ptr %439, null
  br i1 %440, label %446, label %441

441:                                              ; preds = %437
  %442 = getelementptr inbounds %struct.sk_buff, ptr %439, i32 0, i32 3, i32 13
  %443 = load i8, ptr %442, align 1
  %444 = icmp slt i8 %443, 0
  br i1 %444, label %445, label %446

445:                                              ; preds = %441, %433, %413
  br label %446

446:                                              ; preds = %445, %441, %437
  %447 = phi i32 [ 1, %445 ], [ 0, %441 ], [ 0, %437 ]
  %448 = load i8, ptr %76, align 4
  %449 = and i8 %448, 31
  %450 = zext i8 %449 to i32
  %451 = icmp eq i32 %447, %450
  br i1 %451, label %468, label %452

452:                                              ; preds = %446
  %453 = trunc i32 %447 to i8
  %454 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %455 = load ptr, ptr %454, align 4
  %456 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %455, i32 0, i32 2
  %457 = load ptr, ptr %456, align 8
  %458 = icmp eq ptr %457, null
  br i1 %458, label %461, label %459

459:                                              ; preds = %452
  tail call void %457(ptr noundef %0, i8 noundef zeroext %453) #16
  %460 = load i8, ptr %76, align 4
  br label %461

461:                                              ; preds = %459, %452
  %462 = phi i8 [ %448, %452 ], [ %460, %459 ]
  %463 = and i8 %462, -32
  %464 = or i8 %463, %453
  store i8 %464, ptr %76, align 4
  %465 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %466 = load i32, ptr %465, align 4
  %467 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 97
  store i32 %466, ptr %467, align 4
  br label %468

468:                                              ; preds = %461, %446, %383, %378
  %469 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %470 = load volatile ptr, ptr %469, align 8
  %471 = icmp eq ptr %470, null
  br i1 %471, label %498, label %472

472:                                              ; preds = %468
  %473 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %474 = load i24, ptr %473, align 4
  %475 = and i24 %474, 112
  %476 = icmp eq i24 %475, 0
  br i1 %476, label %477, label %481, !prof !16

477:                                              ; preds = %472
  %478 = load i32, ptr %3, align 4
  %479 = and i32 %478, 1024
  %480 = icmp ne i32 %479, 0
  tail call void @tcp_newreno_mark_lost(ptr noundef %0, i1 noundef zeroext %480) #16
  br label %498

481:                                              ; preds = %472
  %482 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 68), align 16
  %483 = and i8 %482, 1
  %484 = icmp eq i8 %483, 0
  br i1 %484, label %498, label %485

485:                                              ; preds = %481
  %486 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 52
  %487 = load i32, ptr %486, align 8
  %488 = tail call zeroext i1 @tcp_rack_mark_lost(ptr noundef %0) #16
  br i1 %488, label %489, label %492

489:                                              ; preds = %485
  %490 = load i32, ptr %3, align 4
  %491 = and i32 %490, -4097
  store i32 %491, ptr %3, align 4
  br label %492

492:                                              ; preds = %489, %485
  %493 = load i32, ptr %486, align 8
  %494 = icmp ugt i32 %487, %493
  br i1 %494, label %495, label %498

495:                                              ; preds = %492
  %496 = load i32, ptr %3, align 4
  %497 = or i32 %496, 128
  store i32 %497, ptr %3, align 4
  br label %498

498:                                              ; preds = %495, %492, %481, %477, %468
  %499 = load i8, ptr %76, align 4
  %500 = and i8 %499, 31
  %501 = icmp eq i8 %500, 3
  br i1 %501, label %856, label %502

502:                                              ; preds = %498
  %503 = load i32, ptr %70, align 8
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %505, label %853

505:                                              ; preds = %502
  %506 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 68), align 16
  %507 = and i8 %506, 1
  %508 = icmp eq i8 %507, 0
  br i1 %508, label %509, label %879

509:                                              ; preds = %505
  %510 = load i32, ptr %68, align 4
  %511 = add i32 %510, 1
  %512 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 58
  %513 = load i32, ptr %512, align 8
  %514 = icmp ugt i32 %511, %513
  br i1 %514, label %853, label %879

515:                                              ; preds = %173
  %516 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %517 = load i32, ptr %516, align 4
  %518 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 97
  %519 = load i32, ptr %518, align 4
  %520 = sub i32 %517, %519
  %521 = icmp slt i32 %520, 0
  %522 = and i32 %6, 1024
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %524, label %528

524:                                              ; preds = %515
  %525 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 116
  %526 = load volatile ptr, ptr %525, align 8
  %527 = icmp eq ptr %526, null
  br i1 %527, label %530, label %528

528:                                              ; preds = %524, %515
  %529 = tail call fastcc zeroext i1 @tcp_try_undo_loss(ptr noundef %0, i1 noundef zeroext false) #16
  br i1 %529, label %587, label %530

530:                                              ; preds = %528, %524
  %531 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %532 = load i16, ptr %531, align 4
  %533 = icmp sgt i16 %532, -1
  br i1 %533, label %567, label %534

534:                                              ; preds = %530
  %535 = and i32 %6, 512
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %539, label %537

537:                                              ; preds = %534
  %538 = tail call fastcc zeroext i1 @tcp_try_undo_loss(ptr noundef %0, i1 noundef zeroext true) #16
  br i1 %538, label %587, label %539

539:                                              ; preds = %537, %534
  %540 = load i32, ptr %518, align 4
  %541 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %542 = load i32, ptr %541, align 4
  %543 = sub i32 %540, %542
  %544 = icmp slt i32 %543, 0
  br i1 %544, label %545, label %549

545:                                              ; preds = %539
  %546 = and i32 %6, 32
  %547 = or i32 %546, %2
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %567, label %564

549:                                              ; preds = %539
  %550 = xor i1 %521, true
  %551 = select i1 %523, i1 true, i1 %550
  br i1 %551, label %567, label %552

552:                                              ; preds = %549
  store i32 %542, ptr %518, align 4
  %553 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %554 = load i32, ptr %553, align 4
  %555 = icmp eq i32 %554, %542
  br i1 %555, label %564, label %556

556:                                              ; preds = %552
  %557 = load i32, ptr %516, align 4
  %558 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 26
  %559 = load i32, ptr %558, align 4
  %560 = add i32 %557, %559
  %561 = sub i32 %542, %560
  %562 = icmp slt i32 %561, 0
  br i1 %562, label %563, label %564

563:                                              ; preds = %556
  store i32 2, ptr %4, align 4
  br label %587

564:                                              ; preds = %556, %552, %545
  %565 = load i16, ptr %531, align 4
  %566 = and i16 %565, 32767
  store i16 %566, ptr %531, align 4
  br label %567

567:                                              ; preds = %564, %549, %545, %530
  br i1 %521, label %570, label %568

568:                                              ; preds = %567
  %569 = tail call fastcc zeroext i1 @tcp_try_undo_recovery(ptr noundef %0) #16
  br label %587

570:                                              ; preds = %567
  %571 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %572 = load i24, ptr %571, align 4
  %573 = and i24 %572, 112
  %574 = icmp eq i24 %573, 0
  br i1 %574, label %575, label %586

575:                                              ; preds = %570
  %576 = load i32, ptr %518, align 4
  %577 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %578 = load i32, ptr %577, align 4
  %579 = sub i32 %576, %578
  %580 = icmp slt i32 %579, 0
  %581 = icmp ne i32 %2, 0
  %582 = and i1 %581, %580
  br i1 %582, label %583, label %584

583:                                              ; preds = %575
  tail call fastcc void @tcp_add_reno_sack(ptr noundef %0, i32 noundef %2, i1 noundef zeroext %8) #16
  br label %586

584:                                              ; preds = %575
  br i1 %523, label %586, label %585

585:                                              ; preds = %584
  store i32 0, ptr %68, align 4
  br label %586

586:                                              ; preds = %585, %584, %583, %570
  store i32 1, ptr %4, align 4
  br label %587

587:                                              ; preds = %586, %568, %563, %537, %528
  %588 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %589 = load volatile ptr, ptr %588, align 8
  %590 = icmp eq ptr %589, null
  br i1 %590, label %617, label %591

591:                                              ; preds = %587
  %592 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %593 = load i24, ptr %592, align 4
  %594 = and i24 %593, 112
  %595 = icmp eq i24 %594, 0
  br i1 %595, label %596, label %600, !prof !16

596:                                              ; preds = %591
  %597 = load i32, ptr %3, align 4
  %598 = and i32 %597, 1024
  %599 = icmp ne i32 %598, 0
  tail call void @tcp_newreno_mark_lost(ptr noundef %0, i1 noundef zeroext %599) #16
  br label %617

600:                                              ; preds = %591
  %601 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 68), align 16
  %602 = and i8 %601, 1
  %603 = icmp eq i8 %602, 0
  br i1 %603, label %617, label %604

604:                                              ; preds = %600
  %605 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 52
  %606 = load i32, ptr %605, align 8
  %607 = tail call zeroext i1 @tcp_rack_mark_lost(ptr noundef %0) #16
  br i1 %607, label %608, label %611

608:                                              ; preds = %604
  %609 = load i32, ptr %3, align 4
  %610 = and i32 %609, -4097
  store i32 %610, ptr %3, align 4
  br label %611

611:                                              ; preds = %608, %604
  %612 = load i32, ptr %605, align 8
  %613 = icmp ugt i32 %606, %612
  br i1 %613, label %614, label %617

614:                                              ; preds = %611
  %615 = load i32, ptr %3, align 4
  %616 = or i32 %615, 128
  store i32 %616, ptr %3, align 4
  br label %617

617:                                              ; preds = %614, %611, %600, %596, %587
  %618 = load i8, ptr %76, align 4
  %619 = and i8 %618, 31
  %620 = icmp eq i8 %619, 0
  br i1 %620, label %625, label %621

621:                                              ; preds = %617
  %622 = load i32, ptr %3, align 4
  %623 = and i32 %622, 128
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %879, label %625

625:                                              ; preds = %621, %617, %173
  %626 = phi i8 [ %618, %617 ], [ %618, %621 ], [ %174, %173 ]
  %627 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %628 = load i24, ptr %627, align 4
  %629 = and i24 %628, 112
  %630 = icmp eq i24 %629, 0
  br i1 %630, label %631, label %637

631:                                              ; preds = %625
  %632 = and i32 %6, 1024
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %635, label %634

634:                                              ; preds = %631
  store i32 0, ptr %68, align 4
  br label %635

635:                                              ; preds = %634, %631
  tail call fastcc void @tcp_add_reno_sack(ptr noundef %0, i32 noundef %2, i1 noundef zeroext %8)
  %636 = load i8, ptr %76, align 4
  br label %637

637:                                              ; preds = %635, %625
  %638 = phi i8 [ %636, %635 ], [ %626, %625 ]
  %639 = and i8 %638, 30
  %640 = icmp eq i8 %639, 0
  br i1 %640, label %641, label %691

641:                                              ; preds = %637
  %642 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 99
  %643 = load i32, ptr %642, align 4
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %691, label %645

645:                                              ; preds = %641
  %646 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 100
  %647 = load i32, ptr %646, align 8
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %649, label %691

649:                                              ; preds = %645
  %650 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 31, i32 5
  %651 = load i8, ptr %650, align 1
  %652 = and i8 %651, 31
  %653 = tail call i8 @llvm.umin.i8(i8 %652, i8 15) #16
  %654 = add nuw nsw i8 %653, 1
  %655 = and i8 %651, -32
  %656 = or i8 %654, %655
  store i8 %656, ptr %650, align 1
  %657 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 96
  %658 = load i32, ptr %657, align 8
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %675, label %660

660:                                              ; preds = %649
  %661 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %662 = load ptr, ptr %661, align 4
  %663 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %662, i32 0, i32 8
  %664 = load ptr, ptr %663, align 32
  %665 = tail call i32 %664(ptr noundef %0) #16
  %666 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  store i32 %665, ptr %666, align 8
  %667 = load i32, ptr %657, align 8
  %668 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  %669 = load i32, ptr %668, align 4
  %670 = icmp ugt i32 %667, %669
  br i1 %670, label %671, label %675

671:                                              ; preds = %660
  store i32 %667, ptr %668, align 4
  %672 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 56
  %673 = load i8, ptr %672, align 2
  %674 = and i8 %673, -3
  store i8 %674, ptr %672, align 2
  br label %675

675:                                              ; preds = %671, %660, %649
  %676 = load volatile i32, ptr @jiffies, align 64
  %677 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 67
  store i32 %676, ptr %677, align 8
  store i32 0, ptr %642, align 4
  %678 = load i8, ptr %650, align 1
  %679 = or i8 %678, 64
  store i8 %679, ptr %650, align 1
  %680 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %681 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %682 = getelementptr [126 x i32], ptr %681, i32 0, i32 32
  %683 = ptrtoint ptr %682 to i32
  %684 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %685 = inttoptr i32 %684 to ptr
  %686 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %685) #13, !srcloc !14
  %687 = add i32 %686, %683
  %688 = inttoptr i32 %687 to ptr
  %689 = load i32, ptr %688, align 4
  %690 = add i32 %689, 1
  store i32 %690, ptr %688, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %680) #16, !srcloc !15
  br label %691

691:                                              ; preds = %675, %645, %641, %637
  %692 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %693 = load volatile ptr, ptr %692, align 8
  %694 = icmp eq ptr %693, null
  br i1 %694, label %720, label %695

695:                                              ; preds = %691
  %696 = load i24, ptr %627, align 4
  %697 = and i24 %696, 112
  %698 = icmp eq i24 %697, 0
  br i1 %698, label %699, label %703, !prof !16

699:                                              ; preds = %695
  %700 = load i32, ptr %3, align 4
  %701 = and i32 %700, 1024
  %702 = icmp ne i32 %701, 0
  tail call void @tcp_newreno_mark_lost(ptr noundef %0, i1 noundef zeroext %702) #16
  br label %720

703:                                              ; preds = %695
  %704 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 68), align 16
  %705 = and i8 %704, 1
  %706 = icmp eq i8 %705, 0
  br i1 %706, label %720, label %707

707:                                              ; preds = %703
  %708 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 52
  %709 = load i32, ptr %708, align 8
  %710 = tail call zeroext i1 @tcp_rack_mark_lost(ptr noundef %0) #16
  br i1 %710, label %711, label %714

711:                                              ; preds = %707
  %712 = load i32, ptr %3, align 4
  %713 = and i32 %712, -4097
  store i32 %713, ptr %3, align 4
  br label %714

714:                                              ; preds = %711, %707
  %715 = load i32, ptr %708, align 8
  %716 = icmp ugt i32 %709, %715
  br i1 %716, label %717, label %720

717:                                              ; preds = %714
  %718 = load i32, ptr %3, align 4
  %719 = or i32 %718, 128
  store i32 %719, ptr %3, align 4
  br label %720

720:                                              ; preds = %717, %714, %703, %699, %691
  %721 = load i32, ptr %70, align 8
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %723, label %834

723:                                              ; preds = %720
  %724 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 68), align 16
  %725 = and i8 %724, 1
  %726 = icmp eq i8 %725, 0
  %727 = load i32, ptr %68, align 4
  br i1 %726, label %728, label %733

728:                                              ; preds = %723
  %729 = add i32 %727, 1
  %730 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 58
  %731 = load i32, ptr %730, align 8
  %732 = icmp ugt i32 %729, %731
  br i1 %732, label %834, label %733

733:                                              ; preds = %728, %723
  %734 = load i32, ptr %41, align 4
  %735 = icmp ugt i32 %727, %734
  br i1 %735, label %736, label %737, !prof !16

736:                                              ; preds = %733
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2683, i32 noundef 9, ptr noundef null) #16
  br label %737

737:                                              ; preds = %736, %733
  %738 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 52
  %739 = load i32, ptr %738, align 8
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %741, label %750

741:                                              ; preds = %737
  %742 = tail call ptr @rb_first(ptr noundef %692) #16
  %743 = icmp eq ptr %742, null
  br i1 %743, label %748, label %744

744:                                              ; preds = %741
  %745 = getelementptr inbounds %struct.sk_buff, ptr %742, i32 0, i32 3, i32 13
  %746 = load i8, ptr %745, align 1
  %747 = icmp slt i8 %746, 0
  br i1 %747, label %750, label %748

748:                                              ; preds = %744, %741
  %749 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 98
  store i32 0, ptr %749, align 8
  br label %750

750:                                              ; preds = %748, %744, %737
  %751 = icmp eq i32 %7, 0
  br i1 %751, label %752, label %754

752:                                              ; preds = %750
  %753 = load i8, ptr %76, align 4
  br label %792

754:                                              ; preds = %750
  %755 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 96
  store i32 0, ptr %755, align 8
  %756 = load i8, ptr %76, align 4
  %757 = and i8 %756, 30
  %758 = icmp eq i8 %757, 0
  br i1 %758, label %759, label %792

759:                                              ; preds = %754
  %760 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 99
  store i32 0, ptr %760, align 4
  %761 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %762 = load i32, ptr %761, align 4
  %763 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 97
  store i32 %762, ptr %763, align 4
  %764 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 40
  store i32 0, ptr %764, align 8
  %765 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 64
  store i32 0, ptr %765, align 4
  %766 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %767 = load i32, ptr %766, align 8
  %768 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 68
  store i32 %767, ptr %768, align 4
  %769 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 69
  store i32 0, ptr %769, align 8
  %770 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 70
  store i32 0, ptr %770, align 4
  %771 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %772 = load ptr, ptr %771, align 4
  %773 = load ptr, ptr %772, align 64
  %774 = tail call i32 %773(ptr noundef %0) #16
  %775 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  store i32 %774, ptr %775, align 4
  %776 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 56
  %777 = load i8, ptr %776, align 2
  %778 = and i8 %777, 1
  %779 = icmp eq i8 %778, 0
  br i1 %779, label %782, label %780

780:                                              ; preds = %759
  %781 = or i8 %777, 2
  store i8 %781, ptr %776, align 2
  br label %782

782:                                              ; preds = %780, %759
  %783 = load ptr, ptr %771, align 4
  %784 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %783, i32 0, i32 2
  %785 = load ptr, ptr %784, align 8
  %786 = icmp eq ptr %785, null
  br i1 %786, label %788, label %787

787:                                              ; preds = %782
  tail call void %785(ptr noundef %0, i8 noundef zeroext 2) #16
  br label %788

788:                                              ; preds = %787, %782
  %789 = load i8, ptr %76, align 4
  %790 = and i8 %789, -32
  %791 = or i8 %790, 2
  store i8 %791, ptr %76, align 4
  br label %792

792:                                              ; preds = %788, %754, %752
  %793 = phi i8 [ %753, %752 ], [ %791, %788 ], [ %756, %754 ]
  %794 = and i8 %793, 31
  %795 = icmp eq i8 %794, 2
  br i1 %795, label %879, label %796

796:                                              ; preds = %792
  %797 = load i32, ptr %68, align 4
  %798 = load i32, ptr %70, align 8
  %799 = sub i32 0, %797
  %800 = icmp eq i32 %798, %799
  br i1 %800, label %801, label %811

801:                                              ; preds = %796
  %802 = load i32, ptr %738, align 8
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %804, label %811

804:                                              ; preds = %801
  %805 = tail call ptr @rb_first(ptr noundef %692) #16
  %806 = icmp eq ptr %805, null
  br i1 %806, label %812, label %807

807:                                              ; preds = %804
  %808 = getelementptr inbounds %struct.sk_buff, ptr %805, i32 0, i32 3, i32 13
  %809 = load i8, ptr %808, align 1
  %810 = icmp slt i8 %809, 0
  br i1 %810, label %811, label %812

811:                                              ; preds = %807, %801, %796
  br label %812

812:                                              ; preds = %811, %807, %804
  %813 = phi i32 [ 1, %811 ], [ 0, %807 ], [ 0, %804 ]
  %814 = load i8, ptr %76, align 4
  %815 = and i8 %814, 31
  %816 = zext i8 %815 to i32
  %817 = icmp eq i32 %813, %816
  br i1 %817, label %879, label %818

818:                                              ; preds = %812
  %819 = trunc i32 %813 to i8
  %820 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %821 = load ptr, ptr %820, align 4
  %822 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %821, i32 0, i32 2
  %823 = load ptr, ptr %822, align 8
  %824 = icmp eq ptr %823, null
  br i1 %824, label %827, label %825

825:                                              ; preds = %818
  tail call void %823(ptr noundef %0, i8 noundef zeroext %819) #16
  %826 = load i8, ptr %76, align 4
  br label %827

827:                                              ; preds = %825, %818
  %828 = phi i8 [ %814, %818 ], [ %826, %825 ]
  %829 = and i8 %828, -32
  %830 = or i8 %829, %819
  store i8 %830, ptr %76, align 4
  %831 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %832 = load i32, ptr %831, align 4
  %833 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 97
  store i32 %832, ptr %833, align 4
  br label %879

834:                                              ; preds = %728, %720
  %835 = load i8, ptr %76, align 4
  %836 = and i8 %835, 30
  %837 = icmp eq i8 %836, 0
  br i1 %837, label %838, label %853

838:                                              ; preds = %834
  %839 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 25, i32 2
  %840 = load i32, ptr %839, align 8
  %841 = and i32 %840, 2147483647
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %853, label %843

843:                                              ; preds = %838
  %844 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %845 = load i32, ptr %844, align 4
  %846 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 113
  %847 = load i32, ptr %846, align 8
  %848 = icmp eq i32 %845, %847
  br i1 %848, label %849, label %853

849:                                              ; preds = %843
  tail call fastcc void @tcp_mtup_probe_failed(ptr noundef %0)
  %850 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %851 = load i32, ptr %850, align 8
  %852 = add i32 %851, 1
  store i32 %852, ptr %850, align 8
  tail call void @tcp_simple_retransmit(ptr noundef %0)
  br label %879

853:                                              ; preds = %843, %838, %834, %509, %502
  %854 = phi i8 [ %379, %502 ], [ %379, %509 ], [ %40, %843 ], [ %40, %838 ], [ %40, %834 ]
  %855 = phi i1 [ true, %502 ], [ true, %509 ], [ false, %843 ], [ false, %838 ], [ false, %834 ]
  tail call void @tcp_enter_recovery(ptr noundef %0, i1 noundef zeroext %8)
  br label %856

856:                                              ; preds = %853, %498
  %857 = phi i8 [ %379, %498 ], [ %854, %853 ]
  %858 = phi i1 [ true, %498 ], [ %855, %853 ]
  %859 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 68), align 16
  %860 = and i8 %859, 1
  %861 = icmp ne i8 %860, 0
  %862 = icmp eq i8 %857, 0
  %863 = select i1 %861, i1 true, i1 %862
  br i1 %863, label %878, label %864

864:                                              ; preds = %856
  %865 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %866 = load i24, ptr %865, align 4
  %867 = and i24 %866, 112
  %868 = icmp eq i24 %867, 0
  br i1 %868, label %878, label %869

869:                                              ; preds = %864
  %870 = load i32, ptr %68, align 4
  %871 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 58
  %872 = load i32, ptr %871, align 8
  %873 = sub i32 %870, %872
  %874 = icmp sgt i32 %873, -1
  br i1 %874, label %875, label %876

875:                                              ; preds = %869
  tail call fastcc void @tcp_mark_head_lost(ptr noundef %0, i32 noundef %873, i32 noundef 0) #16
  br label %878

876:                                              ; preds = %869
  br i1 %858, label %878, label %877

877:                                              ; preds = %876
  tail call fastcc void @tcp_mark_head_lost(ptr noundef %0, i32 noundef 1, i32 noundef 1) #16
  br label %878

878:                                              ; preds = %877, %876, %875, %864, %856
  store i32 1, ptr %4, align 4
  br label %879

879:                                              ; preds = %878, %849, %827, %812, %792, %621, %509, %505, %255, %144, %55
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_rate_gen(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_sync_mss(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_cwnd_restart(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @tcp_sacktag_walk(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr nocapture noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) unnamed_addr #2 {
  %8 = icmp eq ptr %0, null
  br i1 %8, label %400, label %9

9:                                                ; preds = %7
  %10 = icmp eq ptr %2, null
  %11 = getelementptr inbounds %struct.tcp_sack_block, ptr %2, i32 0, i32 1
  %12 = getelementptr inbounds %struct.tcp_sock, ptr %1, i32 0, i32 16
  %13 = getelementptr inbounds %struct.tcp_sacktag_state, ptr %3, i32 0, i32 6
  %14 = getelementptr inbounds %struct.tcp_sock, ptr %1, i32 0, i32 84
  %15 = getelementptr inbounds %struct.tcp_sock, ptr %1, i32 0, i32 94
  %16 = getelementptr inbounds %struct.tcp_sock, ptr %1, i32 0, i32 10
  br label %17

17:                                               ; preds = %396, %9
  %18 = phi ptr [ %0, %9 ], [ %398, %396 ]
  %19 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3
  %20 = load i32, ptr %19, align 8
  %21 = sub i32 %20, %5
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %400

23:                                               ; preds = %17
  br i1 %10, label %82, label %24

24:                                               ; preds = %23
  %25 = load i32, ptr %11, align 4
  %26 = sub i32 %20, %25
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %82

28:                                               ; preds = %24
  %29 = load i32, ptr %2, align 4
  %30 = sub i32 %20, %29
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = sub i32 %25, %34
  %36 = icmp sgt i32 %35, -1
  br label %37

37:                                               ; preds = %32, %28
  %38 = phi i1 [ false, %28 ], [ %36, %32 ]
  %39 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 8
  %40 = load i16, ptr %39, align 8
  %41 = icmp ult i16 %40, 2
  %42 = select i1 %41, i1 true, i1 %38
  br i1 %42, label %80, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = sub i32 %29, %45
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br i1 %6, label %88, label %83

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 10
  %51 = load i16, ptr %50, align 2
  %52 = zext i16 %51 to i32
  %53 = xor i1 %31, true
  br i1 %31, label %54, label %57

54:                                               ; preds = %49
  %55 = sub i32 %29, %20
  %56 = tail call i32 @llvm.umax.i32(i32 %55, i32 %52) #16
  br label %60

57:                                               ; preds = %49
  %58 = sub i32 %25, %20
  %59 = icmp ult i32 %58, %52
  br i1 %59, label %79, label %60

60:                                               ; preds = %57, %54
  %61 = phi i32 [ %58, %57 ], [ %56, %54 ]
  %62 = icmp ugt i32 %61, %52
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = urem i32 %61, %52
  %65 = sub i32 %61, %64
  %66 = icmp ult i32 %65, %61
  %67 = select i1 %31, i1 %66, i1 false
  %68 = select i1 %67, i32 %52, i32 0
  %69 = add i32 %68, %65
  br label %70

70:                                               ; preds = %63, %60
  %71 = phi i32 [ %69, %63 ], [ %61, %60 ]
  %72 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 5
  %73 = load i32, ptr %72, align 8
  %74 = icmp ult i32 %71, %73
  %75 = select i1 %74, i1 true, i1 %53
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = tail call i32 @tcp_fragment(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %18, i32 noundef %71, i32 noundef %52, i32 noundef 2592) #16
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76, %70, %57
  br i1 %6, label %88, label %83

80:                                               ; preds = %76, %37
  %81 = phi i1 [ %53, %76 ], [ %38, %37 ]
  br i1 %81, label %350, label %82

82:                                               ; preds = %80, %24, %23
  br i1 %6, label %88, label %83

83:                                               ; preds = %82, %79, %48
  %84 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 13
  %85 = load i8, ptr %84, align 1
  %86 = and i8 %85, 6
  %87 = icmp eq i8 %86, 2
  br i1 %87, label %285, label %88

88:                                               ; preds = %83, %82, %79, %48
  %89 = phi i1 [ true, %79 ], [ false, %83 ], [ true, %82 ], [ true, %48 ]
  %90 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 5
  %91 = load i32, ptr %90, align 8
  %92 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 6
  %93 = load i32, ptr %92, align 4
  %94 = icmp ne i32 %91, %93
  %95 = icmp eq i32 %93, 0
  %96 = or i1 %94, %95
  br i1 %96, label %285, label %97

97:                                               ; preds = %88
  %98 = load i32, ptr %12, align 4
  %99 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 4
  %100 = load i32, ptr %99, align 4
  %101 = sub i32 %98, %100
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %285

103:                                              ; preds = %97
  %104 = tail call ptr @rb_prev(ptr noundef nonnull %18) #16
  %105 = icmp eq ptr %104, null
  br i1 %105, label %285, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.sk_buff, ptr %104, i32 0, i32 3, i32 13
  %108 = load i8, ptr %107, align 1
  %109 = and i8 %108, 7
  %110 = icmp eq i8 %109, 1
  br i1 %110, label %111, label %285

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.sk_buff, ptr %104, i32 0, i32 3, i32 15
  %113 = load i8, ptr %112, align 1
  %114 = and i8 %113, 2
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %285, !prof !11

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.sk_buff, ptr %104, i32 0, i32 15
  %118 = load ptr, ptr %117, align 4
  %119 = load i8, ptr %118, align 8
  %120 = and i8 %119, 4
  %121 = icmp eq i8 %120, 0
  %122 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 15
  %123 = load ptr, ptr %122, align 4
  %124 = load i8, ptr %123, align 8
  %125 = and i8 %124, 4
  %126 = icmp ne i8 %125, 0
  %127 = xor i1 %121, %126
  br i1 %127, label %128, label %285

128:                                              ; preds = %116
  %129 = load i32, ptr %19, align 8
  %130 = sub i32 %129, %4
  %131 = icmp slt i32 %130, 0
  %132 = load i32, ptr %99, align 4
  %133 = xor i1 %131, true
  %134 = sub i32 %5, %132
  %135 = icmp sgt i32 %134, -1
  %136 = select i1 %133, i1 %135, i1 false
  br i1 %136, label %137, label %162

137:                                              ; preds = %128
  %138 = load i32, ptr %90, align 8
  %139 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 8
  %140 = load i16, ptr %139, align 8
  %141 = zext i16 %140 to i32
  %142 = icmp eq i16 %140, 1
  br i1 %142, label %147, label %143

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 10
  %145 = load i16, ptr %144, align 2
  %146 = zext i16 %145 to i32
  br label %147

147:                                              ; preds = %143, %137
  %148 = phi i32 [ %146, %143 ], [ %138, %137 ]
  %149 = getelementptr inbounds %struct.sk_buff, ptr %104, i32 0, i32 3, i32 8
  %150 = load i16, ptr %149, align 8
  %151 = icmp eq i16 %150, 1
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.sk_buff, ptr %104, i32 0, i32 5
  %154 = load i32, ptr %153, align 8
  br label %159

155:                                              ; preds = %147
  %156 = getelementptr inbounds %struct.sk_buff, ptr %104, i32 0, i32 3, i32 10
  %157 = load i16, ptr %156, align 2
  %158 = zext i16 %157 to i32
  br label %159

159:                                              ; preds = %155, %152
  %160 = phi i32 [ %154, %152 ], [ %158, %155 ]
  %161 = icmp eq i32 %148, %160
  br i1 %161, label %202, label %285

162:                                              ; preds = %128
  %163 = sub i32 %4, %132
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %347

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 8
  %167 = load i16, ptr %166, align 8
  %168 = icmp ult i16 %167, 2
  br i1 %168, label %347, label %169

169:                                              ; preds = %165
  br i1 %131, label %285, label %170

170:                                              ; preds = %169
  %171 = sub i32 %5, %129
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %174, !prof !16

173:                                              ; preds = %170
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/tcp_input.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1617, 0\0A.popsection", ""() #16, !srcloc !60
  unreachable

174:                                              ; preds = %170
  %175 = load i32, ptr %90, align 8
  %176 = icmp ugt i32 %171, %175
  br i1 %176, label %177, label %178, !prof !16

177:                                              ; preds = %174
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/tcp_input.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1618, 0\0A.popsection", ""() #16, !srcloc !61
  unreachable

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 10
  %180 = load i16, ptr %179, align 2
  %181 = zext i16 %180 to i32
  %182 = getelementptr inbounds %struct.sk_buff, ptr %104, i32 0, i32 3, i32 8
  %183 = load i16, ptr %182, align 8
  %184 = icmp eq i16 %183, 1
  br i1 %184, label %185, label %188

185:                                              ; preds = %178
  %186 = getelementptr inbounds %struct.sk_buff, ptr %104, i32 0, i32 5
  %187 = load i32, ptr %186, align 8
  br label %192

188:                                              ; preds = %178
  %189 = getelementptr inbounds %struct.sk_buff, ptr %104, i32 0, i32 3, i32 10
  %190 = load i16, ptr %189, align 2
  %191 = zext i16 %190 to i32
  br label %192

192:                                              ; preds = %188, %185
  %193 = phi i32 [ %187, %185 ], [ %191, %188 ]
  %194 = icmp eq i32 %193, %181
  br i1 %194, label %195, label %285

195:                                              ; preds = %192
  %196 = icmp eq i32 %171, %181
  br i1 %196, label %202, label %197

197:                                              ; preds = %195
  %198 = icmp ult i32 %171, %181
  br i1 %198, label %347, label %199

199:                                              ; preds = %197
  %200 = udiv i32 %171, %181
  %201 = mul i32 %200, %181
  br label %202

202:                                              ; preds = %199, %195, %159
  %203 = phi i16 [ %150, %159 ], [ %183, %199 ], [ %183, %195 ]
  %204 = phi i32 [ %138, %159 ], [ %201, %199 ], [ %171, %195 ]
  %205 = phi i32 [ %141, %159 ], [ %200, %199 ], [ 1, %195 ]
  %206 = phi i32 [ %148, %159 ], [ %181, %199 ], [ %171, %195 ]
  %207 = load i32, ptr %12, align 4
  %208 = add i32 %204, %129
  %209 = sub i32 %207, %208
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %285

211:                                              ; preds = %202
  %212 = getelementptr inbounds %struct.sk_buff, ptr %104, i32 0, i32 5
  %213 = load i32, ptr %212, align 8
  %214 = add i32 %213, %204
  %215 = icmp ugt i32 %214, 524279
  br i1 %215, label %285, label %216, !prof !16

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.sk_buff, ptr %104, i32 0, i32 3, i32 8
  %218 = zext i16 %203 to i32
  %219 = add nuw i32 %205, %218
  %220 = icmp sgt i32 %219, 65535
  br i1 %220, label %285, label %221, !prof !16

221:                                              ; preds = %216
  %222 = tail call i32 @skb_shift(ptr noundef nonnull %104, ptr noundef nonnull %18, i32 noundef %204) #16
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %285, label %224

224:                                              ; preds = %221
  %225 = tail call fastcc zeroext i1 @tcp_shifted_skb(ptr noundef %1, ptr noundef nonnull %104, ptr noundef nonnull %18, ptr noundef %3, i32 noundef %205, i32 noundef %204, i32 noundef %206, i1 noundef zeroext %89) #16
  br i1 %225, label %226, label %283

226:                                              ; preds = %224
  %227 = tail call ptr @rb_next(ptr noundef nonnull %104) #16
  %228 = icmp eq ptr %227, null
  br i1 %228, label %283, label %229

229:                                              ; preds = %226
  %230 = getelementptr inbounds %struct.sk_buff, ptr %227, i32 0, i32 5
  %231 = load i32, ptr %230, align 8
  %232 = getelementptr inbounds %struct.sk_buff, ptr %227, i32 0, i32 6
  %233 = load i32, ptr %232, align 4
  %234 = icmp ne i32 %231, %233
  %235 = icmp eq i32 %233, 0
  %236 = or i1 %234, %235
  br i1 %236, label %283, label %237

237:                                              ; preds = %229
  %238 = getelementptr inbounds %struct.sk_buff, ptr %227, i32 0, i32 3, i32 13
  %239 = load i8, ptr %238, align 1
  %240 = and i8 %239, 7
  %241 = icmp eq i8 %240, 1
  br i1 %241, label %242, label %283

242:                                              ; preds = %237
  %243 = getelementptr inbounds %struct.sk_buff, ptr %227, i32 0, i32 3, i32 8
  %244 = load i16, ptr %243, align 8
  %245 = icmp eq i16 %244, 1
  br i1 %245, label %250, label %246

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.sk_buff, ptr %227, i32 0, i32 3, i32 10
  %248 = load i16, ptr %247, align 2
  %249 = zext i16 %248 to i32
  br label %250

250:                                              ; preds = %246, %242
  %251 = phi i32 [ %249, %246 ], [ %231, %242 ]
  %252 = icmp eq i32 %206, %251
  br i1 %252, label %253, label %283

253:                                              ; preds = %250
  %254 = load i8, ptr %112, align 1
  %255 = and i8 %254, 2
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %257, label %283, !prof !11

257:                                              ; preds = %253
  %258 = load ptr, ptr %117, align 4
  %259 = load i8, ptr %258, align 8
  %260 = and i8 %259, 4
  %261 = icmp eq i8 %260, 0
  %262 = getelementptr inbounds %struct.sk_buff, ptr %227, i32 0, i32 15
  %263 = load ptr, ptr %262, align 4
  %264 = load i8, ptr %263, align 8
  %265 = and i8 %264, 4
  %266 = icmp ne i8 %265, 0
  %267 = xor i1 %261, %266
  br i1 %267, label %268, label %283

268:                                              ; preds = %257
  %269 = zext i16 %244 to i32
  %270 = load i32, ptr %212, align 8
  %271 = add i32 %270, %231
  %272 = icmp ugt i32 %271, 524279
  br i1 %272, label %283, label %273, !prof !16

273:                                              ; preds = %268
  %274 = load i16, ptr %217, align 8
  %275 = zext i16 %274 to i32
  %276 = add nuw nsw i32 %275, %269
  %277 = icmp ugt i32 %276, 65535
  br i1 %277, label %283, label %278, !prof !16

278:                                              ; preds = %273
  %279 = tail call i32 @skb_shift(ptr noundef nonnull %104, ptr noundef nonnull %227, i32 noundef %231) #16
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %283, label %281

281:                                              ; preds = %278
  %282 = tail call fastcc zeroext i1 @tcp_shifted_skb(ptr noundef %1, ptr noundef nonnull %104, ptr noundef nonnull %227, ptr noundef %3, i32 noundef %269, i32 noundef %231, i32 noundef %206, i1 noundef zeroext false) #16
  br label %283

283:                                              ; preds = %281, %278, %273, %268, %257, %253, %250, %237, %229, %226, %224
  %284 = icmp eq ptr %104, %18
  br i1 %284, label %347, label %396

285:                                              ; preds = %221, %216, %211, %202, %192, %169, %159, %116, %111, %106, %103, %97, %88, %83
  %286 = phi i1 [ %89, %221 ], [ %89, %216 ], [ %89, %211 ], [ %89, %202 ], [ %89, %192 ], [ %89, %169 ], [ %89, %159 ], [ %89, %116 ], [ %89, %111 ], [ %89, %106 ], [ %89, %103 ], [ %89, %97 ], [ %89, %88 ], [ false, %83 ]
  %287 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %288 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %289 = getelementptr [126 x i32], ptr %288, i32 0, i32 67
  %290 = ptrtoint ptr %289 to i32
  %291 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %292 = inttoptr i32 %291 to ptr
  %293 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %292) #13, !srcloc !14
  %294 = add i32 %293, %290
  %295 = inttoptr i32 %294 to ptr
  %296 = load i32, ptr %295, align 4
  %297 = add i32 %296, 1
  store i32 %297, ptr %295, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %287) #16, !srcloc !15
  %298 = load i32, ptr %19, align 8
  %299 = sub i32 %298, %4
  %300 = icmp slt i32 %299, 0
  br i1 %300, label %306, label %301

301:                                              ; preds = %285
  %302 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 4
  %303 = load i32, ptr %302, align 4
  %304 = sub i32 %5, %303
  %305 = icmp sgt i32 %304, -1
  br label %306

306:                                              ; preds = %301, %285
  %307 = phi i1 [ false, %285 ], [ %305, %301 ]
  %308 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 8
  %309 = load i16, ptr %308, align 8
  %310 = icmp ult i16 %309, 2
  %311 = select i1 %310, i1 true, i1 %307
  br i1 %311, label %348, label %312

312:                                              ; preds = %306
  %313 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 4
  %314 = load i32, ptr %313, align 4
  %315 = sub i32 %4, %314
  %316 = icmp slt i32 %315, 0
  br i1 %316, label %317, label %396

317:                                              ; preds = %312
  %318 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 10
  %319 = load i16, ptr %318, align 2
  %320 = zext i16 %319 to i32
  %321 = xor i1 %300, true
  br i1 %300, label %322, label %325

322:                                              ; preds = %317
  %323 = sub i32 %4, %298
  %324 = tail call i32 @llvm.umax.i32(i32 %323, i32 %320) #16
  br label %328

325:                                              ; preds = %317
  %326 = sub i32 %5, %298
  %327 = icmp ult i32 %326, %320
  br i1 %327, label %400, label %328

328:                                              ; preds = %325, %322
  %329 = phi i32 [ %326, %325 ], [ %324, %322 ]
  %330 = icmp ugt i32 %329, %320
  br i1 %330, label %331, label %338

331:                                              ; preds = %328
  %332 = urem i32 %329, %320
  %333 = sub i32 %329, %332
  %334 = icmp ult i32 %333, %329
  %335 = select i1 %300, i1 %334, i1 false
  %336 = select i1 %335, i32 %320, i32 0
  %337 = add i32 %336, %333
  br label %338

338:                                              ; preds = %331, %328
  %339 = phi i32 [ %337, %331 ], [ %329, %328 ]
  %340 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 5
  %341 = load i32, ptr %340, align 8
  %342 = icmp ult i32 %339, %341
  %343 = select i1 %342, i1 true, i1 %321
  br i1 %343, label %344, label %347

344:                                              ; preds = %338
  %345 = tail call i32 @tcp_fragment(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %18, i32 noundef %339, i32 noundef %320, i32 noundef 2592) #16
  %346 = icmp slt i32 %345, 0
  br i1 %346, label %400, label %348

347:                                              ; preds = %338, %283, %197, %165, %162
  br label %396

348:                                              ; preds = %344, %306
  %349 = phi i1 [ %321, %344 ], [ %307, %306 ]
  br i1 %349, label %350, label %396

350:                                              ; preds = %348, %80
  %351 = phi i1 [ %286, %348 ], [ true, %80 ]
  %352 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 13
  %353 = load i8, ptr %352, align 1
  %354 = load i32, ptr %19, align 8
  %355 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 4
  %356 = load i32, ptr %355, align 4
  %357 = zext i1 %351 to i32
  %358 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 3, i32 8
  %359 = load i16, ptr %358, align 8
  %360 = zext i16 %359 to i32
  %361 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 2
  %362 = load i64, ptr %361, align 8
  %363 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %362, i32 0) #17, !srcloc !17
  %364 = extractvalue { i64, i32 } %363, 0
  %365 = extractvalue { i64, i32 } %363, 1
  %366 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %362, i64 %364, i32 %365) #17, !srcloc !18
  %367 = extractvalue { i64, i32 } %366, 0
  %368 = lshr i64 %367, 9
  %369 = tail call fastcc zeroext i8 @tcp_sacktag_one(ptr noundef %1, ptr noundef %3, i8 noundef zeroext %353, i32 noundef %354, i32 noundef %356, i32 noundef %357, i32 noundef %360, i64 noundef %368)
  store i8 %369, ptr %352, align 1
  %370 = load ptr, ptr %13, align 8
  tail call void @tcp_rate_skb_delivered(ptr noundef %1, ptr noundef nonnull %18, ptr noundef %370) #16
  %371 = load i8, ptr %352, align 1
  %372 = and i8 %371, 1
  %373 = icmp eq i8 %372, 0
  br i1 %373, label %380, label %374

374:                                              ; preds = %350
  %375 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 4
  %376 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 4, i32 0, i32 1
  %377 = load ptr, ptr %376, align 4
  %378 = load ptr, ptr %375, align 4
  %379 = getelementptr inbounds %struct.list_head, ptr %378, i32 0, i32 1
  store ptr %377, ptr %379, align 4
  store volatile ptr %378, ptr %377, align 4
  store volatile ptr %375, ptr %375, align 4
  store ptr %375, ptr %376, align 4
  br label %380

380:                                              ; preds = %374, %350
  %381 = load i32, ptr %19, align 8
  %382 = load i32, ptr %14, align 4
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %389, label %384

384:                                              ; preds = %380
  %385 = load ptr, ptr %15, align 8
  %386 = icmp eq ptr %385, null
  %387 = getelementptr inbounds %struct.sk_buff, ptr %385, i32 0, i32 3
  %388 = select i1 %386, ptr %16, ptr %387
  br label %389

389:                                              ; preds = %384, %380
  %390 = phi ptr [ %12, %380 ], [ %388, %384 ]
  %391 = load i32, ptr %390, align 4
  %392 = sub i32 %381, %391
  %393 = icmp slt i32 %392, 0
  br i1 %393, label %396, label %394

394:                                              ; preds = %389
  %395 = tail call ptr @rb_next(ptr noundef nonnull %18) #16
  store ptr %395, ptr %15, align 8
  br label %396

396:                                              ; preds = %394, %389, %348, %347, %312, %283
  %397 = phi ptr [ %18, %347 ], [ %18, %348 ], [ %18, %394 ], [ %18, %389 ], [ %104, %283 ], [ %18, %312 ]
  %398 = tail call ptr @rb_next(ptr noundef nonnull %397) #16
  %399 = icmp eq ptr %398, null
  br i1 %399, label %400, label %17

400:                                              ; preds = %396, %344, %325, %17, %7
  %401 = phi ptr [ null, %7 ], [ %18, %17 ], [ %18, %344 ], [ %18, %325 ], [ null, %396 ]
  ret ptr %401
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i8 @tcp_sacktag_one(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i64 noundef %7) unnamed_addr #2 {
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %37, label %10

10:                                               ; preds = %8
  %11 = zext i8 %2 to i32
  %12 = and i32 %11, 146
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 99
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 100
  %20 = load i32, ptr %19, align 8
  %21 = icmp sgt i32 %20, 0
  %22 = sub i32 %16, %4
  %23 = icmp slt i32 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = sub i32 %20, %6
  %27 = tail call i32 @llvm.smax.i32(i32 %26, i32 0)
  store i32 %27, ptr %19, align 8
  br label %28

28:                                               ; preds = %25, %18, %14
  %29 = and i32 %11, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.tcp_sacktag_state, ptr %1, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = sub i32 %3, %33
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 %3, ptr %32, align 8
  br label %37

37:                                               ; preds = %36, %31, %28, %10, %8
  %38 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %39 = load i32, ptr %38, align 4
  %40 = sub i32 %39, %4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %144

42:                                               ; preds = %37
  %43 = zext i8 %2 to i32
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %134

46:                                               ; preds = %42
  tail call void @tcp_rack_advance(ptr noundef %0, i8 noundef zeroext %2, i32 noundef %4, i64 noundef %7) #16
  %47 = and i32 %43, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %46
  %50 = and i32 %43, 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %110, label %52

52:                                               ; preds = %49
  %53 = and i8 %2, -7
  %54 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 83
  %55 = load i32, ptr %54, align 8
  %56 = sub i32 %55, %6
  store i32 %56, ptr %54, align 8
  %57 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 52
  br label %105

58:                                               ; preds = %46
  %59 = and i32 %43, 146
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %99

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 94
  %67 = load ptr, ptr %66, align 8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  br label %73

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.sk_buff, ptr %67, i32 0, i32 3
  br label %73

73:                                               ; preds = %71, %69, %61
  %74 = phi ptr [ %70, %69 ], [ %72, %71 ], [ %38, %61 ]
  %75 = load i32, ptr %74, align 4
  %76 = sub i32 %3, %75
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.tcp_sacktag_state, ptr %1, i32 0, i32 2
  %80 = load i32, ptr %79, align 8
  %81 = sub i32 %3, %80
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 %3, ptr %79, align 8
  br label %84

84:                                               ; preds = %83, %78, %73
  %85 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 97
  %86 = load i32, ptr %85, align 4
  %87 = sub i32 %86, %4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.tcp_sacktag_state, ptr %1, i32 0, i32 4
  %91 = load i32, ptr %90, align 8
  %92 = or i32 %91, 512
  store i32 %92, ptr %90, align 8
  br label %93

93:                                               ; preds = %89, %84
  %94 = load i64, ptr %1, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i64 %7, ptr %1, align 8
  br label %97

97:                                               ; preds = %96, %93
  %98 = getelementptr inbounds %struct.tcp_sacktag_state, ptr %1, i32 0, i32 1
  store i64 %7, ptr %98, align 8
  br label %99

99:                                               ; preds = %97, %58
  %100 = and i32 %43, 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %99
  %103 = and i8 %2, -5
  %104 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 83
  br label %105

105:                                              ; preds = %102, %52
  %106 = phi ptr [ %104, %102 ], [ %57, %52 ]
  %107 = phi i8 [ %103, %102 ], [ %53, %52 ]
  %108 = load i32, ptr %106, align 8
  %109 = sub i32 %108, %6
  store i32 %109, ptr %106, align 8
  br label %110

110:                                              ; preds = %105, %99, %49
  %111 = phi i8 [ %2, %49 ], [ %2, %99 ], [ %107, %105 ]
  %112 = or i8 %111, 1
  %113 = getelementptr inbounds %struct.tcp_sacktag_state, ptr %1, i32 0, i32 4
  %114 = load i32, ptr %113, align 8
  %115 = or i32 %114, 32
  store i32 %115, ptr %113, align 8
  %116 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  %117 = load i32, ptr %116, align 4
  %118 = add i32 %117, %6
  store i32 %118, ptr %116, align 4
  %119 = getelementptr inbounds %struct.tcp_sacktag_state, ptr %1, i32 0, i32 3
  %120 = load i32, ptr %119, align 4
  %121 = add i32 %120, %6
  store i32 %121, ptr %119, align 4
  %122 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 87
  %123 = load ptr, ptr %122, align 8
  %124 = icmp eq ptr %123, null
  br i1 %124, label %134, label %125

125:                                              ; preds = %110
  %126 = getelementptr inbounds %struct.sk_buff, ptr %123, i32 0, i32 3
  %127 = load i32, ptr %126, align 8
  %128 = sub i32 %3, %127
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 95
  %132 = load i32, ptr %131, align 4
  %133 = add i32 %132, %6
  store i32 %133, ptr %131, align 4
  br label %134

134:                                              ; preds = %130, %125, %110, %42
  %135 = phi i8 [ %2, %42 ], [ %112, %130 ], [ %112, %125 ], [ %112, %110 ]
  %136 = and i8 %135, 2
  %137 = icmp eq i8 %136, 0
  %138 = or i1 %9, %137
  br i1 %138, label %144, label %139

139:                                              ; preds = %134
  %140 = and i8 %135, -3
  %141 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 52
  %142 = load i32, ptr %141, align 8
  %143 = sub i32 %142, %6
  store i32 %143, ptr %141, align 8
  br label %144

144:                                              ; preds = %139, %134, %37
  %145 = phi i8 [ %2, %37 ], [ %140, %139 ], [ %135, %134 ]
  ret i8 %145
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_rate_skb_delivered(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_fragment(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tcp_shifted_skb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7) unnamed_addr #2 {
  %9 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3
  %10 = icmp eq i32 %4, 0
  br i1 %10, label %11, label %12, !prof !16

11:                                               ; preds = %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/tcp_input.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1440, 0\0A.popsection", ""() #16, !srcloc !62
  unreachable

12:                                               ; preds = %8
  %13 = load i32, ptr %9, align 8
  %14 = add i32 %13, %5
  %15 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 13
  %16 = load i8, ptr %15, align 1
  %17 = zext i1 %7 to i32
  %18 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %19, i32 0) #17, !srcloc !17
  %21 = extractvalue { i64, i32 } %20, 0
  %22 = extractvalue { i64, i32 } %20, 1
  %23 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %19, i64 %21, i32 %22) #17, !srcloc !18
  %24 = extractvalue { i64, i32 } %23, 0
  %25 = lshr i64 %24, 9
  %26 = tail call fastcc zeroext i8 @tcp_sacktag_one(ptr noundef %0, ptr noundef %3, i8 noundef zeroext %16, i32 noundef %13, i32 noundef %14, i32 noundef %17, i32 noundef %4, i64 noundef %25)
  %27 = getelementptr inbounds %struct.tcp_sacktag_state, ptr %3, i32 0, i32 6
  %28 = load ptr, ptr %27, align 8
  tail call void @tcp_rate_skb_delivered(ptr noundef %0, ptr noundef %2, ptr noundef %28) #16
  %29 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 87
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, %2
  br i1 %31, label %32, label %36

32:                                               ; preds = %12
  %33 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 95
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %4
  store i32 %35, ptr %33, align 4
  br label %36

36:                                               ; preds = %32, %12
  %37 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, %5
  store i32 %39, ptr %37, align 4
  %40 = load i32, ptr %9, align 8
  %41 = add i32 %40, %5
  store i32 %41, ptr %9, align 8
  %42 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %43 = load i16, ptr %42, align 8
  %44 = trunc i32 %4 to i16
  %45 = add i16 %43, %44
  store i16 %45, ptr %42, align 8
  %46 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 8
  %47 = load i16, ptr %46, align 8
  %48 = zext i16 %47 to i32
  %49 = icmp ult i32 %48, %4
  %50 = load i1, ptr @tcp_shifted_skb.__already_done, align 1
  %51 = xor i1 %50, true
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %53, label %55, !prof !16

53:                                               ; preds = %36
  store i1 true, ptr @tcp_shifted_skb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1460, i32 noundef 9, ptr noundef null) #16
  %54 = load i16, ptr %46, align 8
  br label %55

55:                                               ; preds = %53, %36
  %56 = phi i16 [ %54, %53 ], [ %47, %36 ]
  %57 = sub i16 %56, %44
  store i16 %57, ptr %46, align 8
  %58 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 10
  %59 = load i16, ptr %58, align 2
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = trunc i32 %6 to i16
  store i16 %62, ptr %58, align 2
  %63 = load i16, ptr %46, align 8
  br label %64

64:                                               ; preds = %61, %55
  %65 = phi i16 [ %63, %61 ], [ %57, %55 ]
  %66 = icmp ult i16 %65, 2
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 10
  store i16 0, ptr %68, align 2
  br label %69

69:                                               ; preds = %67, %64
  %70 = load i8, ptr %15, align 1
  %71 = and i8 %70, -128
  %72 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 13
  %73 = load i8, ptr %72, align 1
  %74 = or i8 %73, %71
  store i8 %74, ptr %72, align 1
  %75 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %76 = load i32, ptr %75, align 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %94, label %78

78:                                               ; preds = %69
  %79 = load i16, ptr %46, align 8
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %81, label %82, !prof !16

81:                                               ; preds = %78
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/tcp_input.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1479, 0\0A.popsection", ""() #16, !srcloc !63
  unreachable

82:                                               ; preds = %78
  %83 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %84 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %85 = getelementptr [126 x i32], ptr %84, i32 0, i32 65
  %86 = ptrtoint ptr %85 to i32
  %87 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %88 = inttoptr i32 %87 to ptr
  %89 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %88) #13, !srcloc !14
  %90 = add i32 %89, %86
  %91 = inttoptr i32 %90 to ptr
  %92 = load i32, ptr %91, align 4
  %93 = add i32 %92, 1
  store i32 %93, ptr %91, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %83) #16, !srcloc !15
  br label %150

94:                                               ; preds = %69
  %95 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 88
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, %2
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store ptr %1, ptr %95, align 4
  br label %99

99:                                               ; preds = %98, %94
  %100 = load ptr, ptr %29, align 8
  %101 = icmp eq ptr %100, %2
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  store ptr %1, ptr %29, align 8
  %103 = load i16, ptr %42, align 8
  %104 = zext i16 %103 to i32
  %105 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 95
  %106 = load i32, ptr %105, align 4
  %107 = sub i32 %106, %104
  store i32 %107, ptr %105, align 4
  br label %108

108:                                              ; preds = %102, %99
  %109 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 12
  %110 = load i8, ptr %109, align 4
  %111 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %112 = load i8, ptr %111, align 4
  %113 = or i8 %112, %110
  store i8 %113, ptr %111, align 4
  %114 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 15
  %115 = load i8, ptr %114, align 1
  %116 = and i8 %115, 2
  %117 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 15
  %118 = load i8, ptr %117, align 1
  %119 = and i8 %118, -3
  %120 = or i8 %119, %116
  store i8 %120, ptr %117, align 1
  %121 = load i8, ptr %109, align 4
  %122 = and i8 %121, 1
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %108
  %125 = load i32, ptr %37, align 4
  %126 = add i32 %125, 1
  store i32 %126, ptr %37, align 4
  br label %127

127:                                              ; preds = %124, %108
  %128 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 94
  %129 = load ptr, ptr %128, align 8
  %130 = icmp eq ptr %129, %2
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = tail call ptr @rb_next(ptr noundef %2) #16
  store ptr %132, ptr %128, align 8
  br label %133

133:                                              ; preds = %131, %127
  tail call void @tcp_skb_collapse_tstamp(ptr noundef %1, ptr noundef %2) #16
  %134 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 40
  %135 = load i64, ptr %134, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %138, label %137, !prof !11

137:                                              ; preds = %133
  store i64 0, ptr %134, align 8
  br label %138

138:                                              ; preds = %137, %133
  tail call fastcc void @tcp_rtx_queue_unlink_and_free(ptr noundef %2, ptr noundef %0)
  %139 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %140 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %141 = getelementptr [126 x i32], ptr %140, i32 0, i32 66
  %142 = ptrtoint ptr %141 to i32
  %143 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %144 = inttoptr i32 %143 to ptr
  %145 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %144) #13, !srcloc !14
  %146 = add i32 %145, %142
  %147 = inttoptr i32 %146 to ptr
  %148 = load i32, ptr %147, align 4
  %149 = add i32 %148, 1
  store i32 %149, ptr %147, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %139) #16, !srcloc !15
  br label %150

150:                                              ; preds = %138, %82
  ret i1 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_skb_collapse_tstamp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_rtx_queue_unlink_and_free(ptr noundef %0, ptr noundef %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %5, ptr %7, align 4
  store volatile ptr %6, ptr %5, align 4
  store ptr null, ptr %4, align 4
  store i32 0, ptr %3, align 8
  %8 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 25
  tail call void @rb_erase(ptr noundef %0, ptr noundef %8) #16
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 18
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 22
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 %12, %10
  store volatile i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  %16 = load i8, ptr %15, align 8
  %17 = and i8 %16, 4
  %18 = icmp eq i8 %17, 0
  %19 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 8
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.proto, ptr %20, i32 0, i32 30
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %18, label %24, label %43

24:                                               ; preds = %2
  br i1 %23, label %68, label %25

25:                                               ; preds = %24
  %26 = load i32, ptr %9, align 8
  %27 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 11
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, %26
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 12
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %39, label %33, !prof !11

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 9
  %35 = load volatile i32, ptr %34, align 4
  %36 = add i32 %13, %35
  %37 = sub i32 %31, %36
  %38 = tail call i32 @llvm.smax.i32(i32 %37, i32 0) #16
  br label %39

39:                                               ; preds = %33, %25
  %40 = phi i32 [ %38, %33 ], [ 0, %25 ]
  %41 = sub i32 %29, %40
  %42 = icmp sgt i32 %41, 2097151
  br i1 %42, label %67, label %68, !prof !16

43:                                               ; preds = %2
  br i1 %23, label %68, label %44

44:                                               ; preds = %43
  %45 = ptrtoint ptr %15 to i32
  %46 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %47 = load ptr, ptr %46, align 8
  %48 = ptrtoint ptr %47 to i32
  %49 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 11
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %45, 448
  %52 = sub i32 %51, %48
  %53 = add i32 %52, %50
  store i32 %53, ptr %49, align 4
  %54 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 12
  %55 = load i32, ptr %54, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %63, label %57, !prof !11

57:                                               ; preds = %44
  %58 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 9
  %59 = load volatile i32, ptr %58, align 4
  %60 = add i32 %13, %59
  %61 = sub i32 %55, %60
  %62 = tail call i32 @llvm.smax.i32(i32 %61, i32 0) #16
  br label %63

63:                                               ; preds = %57, %44
  %64 = phi i32 [ %62, %57 ], [ 0, %44 ]
  %65 = sub i32 %53, %64
  %66 = icmp sgt i32 %65, 2097151
  br i1 %66, label %67, label %68, !prof !16

67:                                               ; preds = %63, %39
  tail call void @__sk_mem_reclaim(ptr noundef %1, i32 noundef 1048576) #16
  br label %68

68:                                               ; preds = %67, %63, %43, %39, %24
  tail call void @__kfree_skb(ptr noundef %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_rack_advance(ptr noundef, i8 noundef zeroext, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_chrono_stop(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_mtup_probe_success(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 31
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 1, %5
  %7 = and i32 %6, 12
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 1
  %14 = lshr i32 %12, 2
  %15 = add nuw i32 %13, %14
  %16 = tail call i32 @llvm.umax.i32(i32 %10, i32 %15) #16
  %17 = select i1 %8, i32 %16, i32 %10
  %18 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 96
  store i32 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %20 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @tcp_mss_to_mtu(ptr noundef %0, i32 noundef %21) #16
  %23 = mul i32 %22, %12
  %24 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 25, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 2147483647
  %27 = udiv i32 %23, %26
  store i32 %27, ptr %19, align 8
  %28 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 64
  store i32 0, ptr %28, align 4
  %29 = load volatile i32, ptr @jiffies, align 64
  %30 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 67
  store i32 %29, ptr %30, align 8
  %31 = load i8, ptr %2, align 4
  %32 = and i8 %31, 31
  %33 = zext i8 %32 to i32
  %34 = shl nuw i32 1, %33
  %35 = and i32 %34, 12
  %36 = icmp eq i32 %35, 0
  %37 = load i32, ptr %9, align 4
  %38 = lshr i32 %27, 1
  %39 = lshr i32 %27, 2
  %40 = add nuw i32 %38, %39
  %41 = tail call i32 @llvm.umax.i32(i32 %37, i32 %40) #16
  %42 = select i1 %36, i32 %41, i32 %37
  store i32 %42, ptr %9, align 4
  %43 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 25, i32 1
  store i32 %26, ptr %43, align 4
  %44 = and i32 %25, -2147483648
  store i32 %44, ptr %24, align 8
  %45 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 9
  %46 = load i32, ptr %45, align 8
  %47 = tail call i32 @tcp_sync_mss(ptr noundef %0, i32 noundef %46) #16
  %48 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %49 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %50 = getelementptr [126 x i32], ptr %49, i32 0, i32 112
  %51 = ptrtoint ptr %50 to i32
  %52 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %53 = inttoptr i32 %52 to ptr
  %54 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %53) #13, !srcloc !14
  %55 = add i32 %54, %51
  %56 = inttoptr i32 %55 to ptr
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, 1
  store i32 %58, ptr %56, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %48) #16, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_trim_head(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_tstamp_tx(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_mss_to_mtu(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tcp_try_undo_recovery(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 99
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %66, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 100
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 98
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %66, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %15 = load i24, ptr %14, align 4
  %16 = and i24 %15, 1
  %17 = icmp eq i24 %16, 0
  br i1 %17, label %66, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = sub i32 %20, %11
  %23 = icmp slt i32 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %66

25:                                               ; preds = %18, %5
  %26 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 96
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %31, i32 0, i32 8
  %33 = load ptr, ptr %32, align 32
  %34 = tail call i32 %33(ptr noundef %0) #16
  %35 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  store i32 %34, ptr %35, align 8
  %36 = load i32, ptr %26, align 8
  %37 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  %38 = load i32, ptr %37, align 4
  %39 = icmp ugt i32 %36, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  store i32 %36, ptr %37, align 4
  %41 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 56
  %42 = load i8, ptr %41, align 2
  %43 = and i8 %42, -3
  store i8 %43, ptr %41, align 2
  br label %44

44:                                               ; preds = %40, %29, %25
  %45 = load volatile i32, ptr @jiffies, align 64
  %46 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 67
  store i32 %45, ptr %46, align 8
  store i32 0, ptr %2, align 4
  %47 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 31, i32 5
  %48 = load i8, ptr %47, align 1
  %49 = or i8 %48, 64
  store i8 %49, ptr %47, align 1
  %50 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %51 = load i8, ptr %50, align 4
  %52 = and i8 %51, 31
  %53 = icmp eq i8 %52, 4
  %54 = select i1 %53, i32 33, i32 30
  %55 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %56 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %57 = getelementptr [126 x i32], ptr %56, i32 0, i32 %54
  %58 = ptrtoint ptr %57 to i32
  %59 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %60 = inttoptr i32 %59 to ptr
  %61 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %60) #13, !srcloc !14
  %62 = add i32 %61, %58
  %63 = inttoptr i32 %62 to ptr
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %63, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %55) #16, !srcloc !15
  br label %76

66:                                               ; preds = %18, %13, %9, %1
  %67 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 31, i32 5
  %68 = load i8, ptr %67, align 1
  %69 = and i8 %68, 31
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = add i8 %68, 31
  %73 = and i8 %72, 31
  %74 = and i8 %68, -32
  %75 = or i8 %73, %74
  store i8 %75, ptr %67, align 1
  br label %76

76:                                               ; preds = %71, %66, %44
  %77 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 97
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %84 = load i24, ptr %83, align 4
  %85 = and i24 %84, 112
  %86 = icmp eq i24 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 52
  %89 = load i32, ptr %88, align 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %115

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %93 = tail call ptr @rb_first(ptr noundef %92) #16
  %94 = icmp eq ptr %93, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.sk_buff, ptr %93, i32 0, i32 3, i32 13
  %97 = load i8, ptr %96, align 1
  %98 = icmp slt i8 %97, 0
  br i1 %98, label %115, label %99

99:                                               ; preds = %95, %91
  %100 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 98
  store i32 0, ptr %100, align 8
  br label %115

101:                                              ; preds = %82, %76
  %102 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %103, i32 0, i32 2
  %105 = load ptr, ptr %104, align 8
  %106 = icmp eq ptr %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %101
  tail call void %105(ptr noundef %0, i8 noundef zeroext 0) #16
  br label %108

108:                                              ; preds = %107, %101
  %109 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %110 = load i8, ptr %109, align 4
  %111 = and i8 %110, -32
  store i8 %111, ptr %109, align 4
  %112 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %113 = load i16, ptr %112, align 4
  %114 = and i16 %113, -33
  store i16 %114, ptr %112, align 4
  br label %115

115:                                              ; preds = %108, %99, %95, %87
  %116 = phi i1 [ false, %108 ], [ true, %99 ], [ true, %95 ], [ true, %87 ]
  ret i1 %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_add_reno_sack(ptr nocapture noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #2 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %55, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, %1
  store i32 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 83
  %10 = load i32, ptr %9, align 8
  %11 = tail call i32 @llvm.umax.i32(i32 %10, i32 1) #16
  %12 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.umin.i32(i32 %11, i32 %13) #16
  %15 = add i32 %14, %8
  %16 = icmp ugt i32 %15, %13
  br i1 %16, label %17, label %37

17:                                               ; preds = %5
  %18 = sub i32 %13, %14
  store i32 %18, ptr %6, align 4
  %19 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 76), align 8
  %20 = tail call i32 @llvm.umin.i32(i32 %13, i32 %19) #16
  %21 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 58
  store i32 %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 59
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %26 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %27 = getelementptr [126 x i32], ptr %26, i32 0, i32 28
  %28 = ptrtoint ptr %27 to i32
  %29 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %30 = inttoptr i32 %29 to ptr
  %31 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %30) #13, !srcloc !14
  %32 = add i32 %31, %28
  %33 = inttoptr i32 %32 to ptr
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %25) #16, !srcloc !15
  %36 = load i32, ptr %6, align 4
  br label %37

37:                                               ; preds = %17, %5
  %38 = phi i32 [ %8, %5 ], [ %36, %17 ]
  %39 = sub i32 %38, %7
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 71
  %43 = load i32, ptr %42, align 8
  %44 = add i32 %43, %39
  store i32 %44, ptr %42, align 8
  br i1 %2, label %45, label %49

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 72
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, %39
  store i32 %48, ptr %46, align 4
  br label %49

49:                                               ; preds = %45, %41, %37
  %50 = load i32, ptr %9, align 8
  %51 = add i32 %50, %38
  %52 = load i32, ptr %12, align 4
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %54, label %55, !prof !16

54:                                               ; preds = %49
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2052, i32 noundef 9, ptr noundef null) #16
  br label %55

55:                                               ; preds = %54, %49, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_mtup_probe_failed(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 25
  %3 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 25, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 2147483647
  %6 = add nsw i32 %5, -1
  store i32 %6, ptr %2, align 8
  %7 = and i32 %4, -2147483648
  store i32 %7, ptr %3, align 8
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %9 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %10 = getelementptr [126 x i32], ptr %9, i32 0, i32 111
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #13, !srcloc !14
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #16, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_newreno_mark_lost(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tcp_rack_mark_lost(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tcp_try_undo_loss(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  br i1 %1, label %27, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 99
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %111, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 100
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 98
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %111, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %17 = load i24, ptr %16, align 4
  %18 = and i24 %17, 1
  %19 = icmp eq i24 %18, 0
  br i1 %19, label %111, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = sub i32 %22, %13
  %25 = icmp slt i32 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %111

27:                                               ; preds = %20, %7, %2
  %28 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %29 = tail call ptr @rb_first(ptr noundef %28) #16
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %31, %27
  %32 = phi ptr [ %36, %31 ], [ %29, %27 ]
  %33 = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 3, i32 13
  %34 = load i8, ptr %33, align 1
  %35 = and i8 %34, -5
  store i8 %35, ptr %33, align 1
  %36 = tail call ptr @rb_next(ptr noundef nonnull %32) #16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %31

38:                                               ; preds = %31, %27
  %39 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 83
  store i32 0, ptr %39, align 8
  %40 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 87
  store ptr null, ptr %40, align 8
  %41 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 88
  store ptr null, ptr %41, align 4
  %42 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 96
  %43 = load i32, ptr %42, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %47, i32 0, i32 8
  %49 = load ptr, ptr %48, align 32
  %50 = tail call i32 %49(ptr noundef %0) #16
  %51 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  store i32 %50, ptr %51, align 8
  %52 = load i32, ptr %42, align 8
  %53 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  %54 = load i32, ptr %53, align 4
  %55 = icmp ugt i32 %52, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %45
  store i32 %52, ptr %53, align 4
  %57 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 56
  %58 = load i8, ptr %57, align 2
  %59 = and i8 %58, -3
  store i8 %59, ptr %57, align 2
  br label %60

60:                                               ; preds = %56, %45, %38
  %61 = load volatile i32, ptr @jiffies, align 64
  %62 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 67
  store i32 %61, ptr %62, align 8
  %63 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 99
  store i32 0, ptr %63, align 4
  %64 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 31, i32 5
  %65 = load i8, ptr %64, align 1
  %66 = or i8 %65, 64
  store i8 %66, ptr %64, align 1
  %67 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %68 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %69 = getelementptr [126 x i32], ptr %68, i32 0, i32 33
  %70 = ptrtoint ptr %69 to i32
  %71 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %72 = inttoptr i32 %71 to ptr
  %73 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %72) #13, !srcloc !14
  %74 = add i32 %73, %70
  %75 = inttoptr i32 %74 to ptr
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %76, 1
  store i32 %77, ptr %75, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %67) #16, !srcloc !15
  br i1 %1, label %78, label %91

78:                                               ; preds = %60
  %79 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %80 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %81 = getelementptr [126 x i32], ptr %80, i32 0, i32 61
  %82 = ptrtoint ptr %81 to i32
  %83 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %84 = inttoptr i32 %83 to ptr
  %85 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %84) #13, !srcloc !14
  %86 = add i32 %85, %82
  %87 = inttoptr i32 %86 to ptr
  %88 = load i32, ptr %87, align 4
  %89 = add i32 %88, 1
  store i32 %89, ptr %87, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %79) #16, !srcloc !15
  %90 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 18
  store i8 0, ptr %90, align 1
  br label %97

91:                                               ; preds = %60
  %92 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 18
  store i8 0, ptr %92, align 1
  %93 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %94 = load i24, ptr %93, align 4
  %95 = and i24 %94, 112
  %96 = icmp eq i24 %95, 0
  br i1 %96, label %111, label %97

97:                                               ; preds = %91, %78
  %98 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %99, i32 0, i32 2
  %101 = load ptr, ptr %100, align 8
  %102 = icmp eq ptr %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %97
  tail call void %101(ptr noundef %0, i8 noundef zeroext 0) #16
  br label %104

104:                                              ; preds = %103, %97
  %105 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %106 = load i8, ptr %105, align 4
  %107 = and i8 %106, -32
  store i8 %107, ptr %105, align 4
  %108 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %109 = load i16, ptr %108, align 4
  %110 = and i16 %109, -33
  store i16 %110, ptr %108, align 4
  br label %111

111:                                              ; preds = %104, %91, %20, %15, %11, %3
  %112 = phi i1 [ true, %104 ], [ true, %91 ], [ false, %3 ], [ false, %11 ], [ false, %20 ], [ false, %15 ]
  ret i1 %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_mark_head_lost(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, %1
  br i1 %8, label %9, label %10, !prof !16

9:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2344, i32 noundef 9, ptr noundef null) #16
  br label %10

10:                                               ; preds = %9, %3
  %11 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 87
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = icmp eq i32 %2, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 3
  %20 = load i32, ptr %19, align 8
  %21 = sub i32 %18, %20
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %72, label %23

23:                                               ; preds = %16, %14
  %24 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 95
  %25 = load i32, ptr %24, align 4
  br label %30

26:                                               ; preds = %10
  %27 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %28 = tail call ptr @rb_first(ptr noundef %27) #16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %63, label %30

30:                                               ; preds = %26, %23
  %31 = phi ptr [ %12, %23 ], [ %28, %26 ]
  %32 = phi i32 [ %25, %23 ], [ 0, %26 ]
  %33 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 95
  %34 = icmp eq i32 %2, 0
  br label %35

35:                                               ; preds = %60, %30
  %36 = phi ptr [ %31, %30 ], [ %61, %60 ]
  %37 = phi i32 [ %32, %30 ], [ %53, %60 ]
  store ptr %36, ptr %11, align 8
  store i32 %37, ptr %33, align 4
  %38 = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 3, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = sub i32 %5, %39
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %63, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 3, i32 13
  %44 = load i8, ptr %43, align 1
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 3, i32 8
  %49 = load i16, ptr %48, align 8
  %50 = zext i16 %49 to i32
  %51 = add i32 %37, %50
  br label %52

52:                                               ; preds = %47, %42
  %53 = phi i32 [ %51, %47 ], [ %37, %42 ]
  %54 = icmp sgt i32 %53, %1
  br i1 %54, label %63, label %55

55:                                               ; preds = %52
  %56 = and i8 %44, 4
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  tail call void @tcp_mark_skb_lost(ptr noundef %0, ptr noundef nonnull %36)
  br label %59

59:                                               ; preds = %58, %55
  br i1 %34, label %60, label %63

60:                                               ; preds = %59
  %61 = tail call ptr @rb_next(ptr noundef nonnull %36) #16
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %35

63:                                               ; preds = %60, %59, %52, %35, %26
  %64 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 83
  %67 = load i32, ptr %66, align 8
  %68 = add i32 %67, %65
  %69 = load i32, ptr %6, align 4
  %70 = icmp ugt i32 %68, %69
  br i1 %70, label %71, label %72, !prof !16

71:                                               ; preds = %63
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2377, i32 noundef 9, ptr noundef null) #16
  br label %72

72:                                               ; preds = %71, %63, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tcp_schedule_loss_probe(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tcp_push_pending_frames(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_clamp_probe0_to_user_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_checksum_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_ecn_check_ce(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 56
  %4 = load i8, ptr %3, align 2
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %92, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 14
  %9 = load i8, ptr %8, align 2
  %10 = and i8 %9, 3
  %11 = zext i8 %10 to i32
  switch i32 %11, label %76 [
    i32 0, label %12
    i32 3, label %35
  ]

12:                                               ; preds = %7
  %13 = and i8 %4, 8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %92, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 79
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 8
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = shl nuw nsw i32 %20, 1
  %22 = udiv i32 %17, %21
  %23 = icmp ugt i32 %21, %17
  %24 = tail call i32 @llvm.umin.i32(i32 %22, i32 2) #16
  %25 = select i1 %23, i32 2, i32 %24
  %26 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 1
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp ugt i32 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %15
  %31 = trunc i32 %25 to i8
  store i8 %31, ptr %26, align 1
  br label %32

32:                                               ; preds = %30, %15
  %33 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 2
  store i8 0, ptr %33, align 2
  %34 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 4
  store i32 4, ptr %34, align 4
  br label %92

35:                                               ; preds = %7
  %36 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %37, i32 0, i32 15
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %37, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  tail call void %44(ptr noundef %0, i32 noundef 5) #16
  %47 = load i8, ptr %3, align 2
  br label %48

48:                                               ; preds = %46, %42, %35
  %49 = phi i8 [ %47, %46 ], [ %4, %42 ], [ %4, %35 ]
  %50 = and i8 %49, 4
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 79
  %54 = load i32, ptr %53, align 8
  %55 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 8
  %56 = load i16, ptr %55, align 2
  %57 = zext i16 %56 to i32
  %58 = shl nuw nsw i32 %57, 1
  %59 = udiv i32 %54, %58
  %60 = icmp ugt i32 %58, %54
  %61 = tail call i32 @llvm.umin.i32(i32 %59, i32 2) #16
  %62 = select i1 %60, i32 2, i32 %61
  %63 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 1
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp ugt i32 %62, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %52
  %68 = trunc i32 %62 to i8
  store i8 %68, ptr %63, align 1
  br label %69

69:                                               ; preds = %67, %52
  %70 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 2
  store i8 0, ptr %70, align 2
  %71 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 4
  store i32 4, ptr %71, align 4
  %72 = or i8 %49, 4
  br label %73

73:                                               ; preds = %69, %48
  %74 = phi i8 [ %72, %69 ], [ %49, %48 ]
  %75 = or i8 %74, 8
  store i8 %75, ptr %3, align 2
  br label %92

76:                                               ; preds = %7
  %77 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %78, i32 0, i32 15
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, 2
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %78, i32 0, i32 3
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  tail call void %85(ptr noundef %0, i32 noundef 4) #16
  %88 = load i8, ptr %3, align 2
  br label %89

89:                                               ; preds = %87, %83, %76
  %90 = phi i8 [ %88, %87 ], [ %4, %83 ], [ %4, %76 ]
  %91 = or i8 %90, 8
  store i8 %91, ptr %3, align 2
  br label %92

92:                                               ; preds = %89, %73, %32, %12, %2
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_grow_window(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) unnamed_addr #14 {
  %4 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 29
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 15
  %7 = load volatile i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %9 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9, i32 1
  %10 = load volatile i32, ptr %9, align 4
  %11 = load volatile i32, ptr %8, align 4
  %12 = add i32 %10, %11
  %13 = sub i32 %7, %12
  %14 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 77), align 4
  %15 = icmp slt i32 %14, 1
  %16 = sub i32 0, %14
  %17 = ashr i32 %13, %16
  %18 = ashr i32 %13, %14
  %19 = sub i32 %13, %18
  %20 = select i1 %15, i32 %17, i32 %19
  %21 = tail call i32 @llvm.smin.i32(i32 %5, i32 %20)
  %22 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 30
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 %21, %23
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %114, label %26

26:                                               ; preds = %3
  %27 = load volatile i32, ptr @tcp_memory_pressure, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %89

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %31 = load i32, ptr %30, align 8
  %32 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %33 = load i32, ptr %32, align 8
  br i1 %2, label %34, label %50

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %42 = load ptr, ptr %41, align 8
  %43 = ptrtoint ptr %40 to i32
  %44 = ptrtoint ptr %42 to i32
  %45 = add i32 %31, -448
  %46 = sub i32 %45, %43
  %47 = add i32 %46, %44
  %48 = icmp slt i32 %47, %33
  br i1 %48, label %49, label %50, !prof !16

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %38, %34, %29
  %51 = phi i32 [ %31, %34 ], [ %31, %49 ], [ %47, %38 ], [ %31, %29 ]
  %52 = ashr i32 %51, %16
  %53 = ashr i32 %51, %14
  %54 = sub i32 %51, %53
  %55 = select i1 %15, i32 %52, i32 %54
  %56 = icmp ugt i32 %55, %33
  br i1 %56, label %59, label %57

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 32
  br label %75

59:                                               ; preds = %50
  %60 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 97, i32 2), align 8
  %61 = ashr i32 %60, %16
  %62 = ashr i32 %60, %14
  %63 = sub i32 %60, %62
  %64 = select i1 %15, i32 %61, i32 %63
  br label %65

65:                                               ; preds = %70, %59
  %66 = phi i32 [ %55, %59 ], [ %71, %70 ]
  %67 = phi i32 [ %64, %59 ], [ %68, %70 ]
  %68 = ashr i32 %67, 1
  %69 = icmp ugt i32 %23, %68
  br i1 %69, label %114, label %70

70:                                               ; preds = %65
  %71 = ashr i32 %66, 1
  %72 = icmp ugt i32 %71, %33
  br i1 %72, label %65, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 8
  br label %75

75:                                               ; preds = %73, %57
  %76 = phi ptr [ %58, %57 ], [ %74, %73 ]
  %77 = load i16, ptr %76, align 2
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %114, label %79

79:                                               ; preds = %75
  %80 = zext i16 %77 to i32
  %81 = shl nuw nsw i32 %80, 1
  %82 = shl i32 %33, 1
  %83 = tail call i32 @llvm.smax.i32(i32 %81, i32 %82)
  %84 = tail call i32 @llvm.smin.i32(i32 %24, i32 %83)
  %85 = add i32 %84, %23
  store i32 %85, ptr %22, align 4
  %86 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 1
  %87 = load i8, ptr %86, align 1
  %88 = or i8 %87, 1
  store i8 %88, ptr %86, align 1
  br label %114

89:                                               ; preds = %26
  %90 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  %91 = load i32, ptr %90, align 8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %100, label %93, !prof !11

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %95 = load i32, ptr %94, align 4
  %96 = load volatile i32, ptr %8, align 4
  %97 = add i32 %95, %96
  %98 = sub i32 %91, %97
  %99 = tail call i32 @llvm.smax.i32(i32 %98, i32 0) #16
  br label %100

100:                                              ; preds = %93, %89
  %101 = phi i32 [ %99, %93 ], [ 0, %89 ]
  %102 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 32
  %103 = load i16, ptr %102, align 8
  %104 = zext i16 %103 to i32
  %105 = shl nuw nsw i32 %104, 2
  %106 = tail call i32 @llvm.umin.i32(i32 %23, i32 %105) #16
  store i32 %106, ptr %22, align 4
  %107 = icmp eq i32 %101, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %100
  %109 = lshr i32 %101, %16
  %110 = lshr i32 %101, %14
  %111 = sub nsw i32 %101, %110
  %112 = select i1 %15, i32 %109, i32 %111
  %113 = tail call i32 @llvm.umax.i32(i32 %106, i32 %112) #16
  store i32 %113, ptr %22, align 4
  br label %114

114:                                              ; preds = %108, %100, %79, %75, %65, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_gro_dev_warn(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 {
  %4 = load i1, ptr @tcp_gro_dev_warn.__once, align 1
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  store i1 true, ptr @tcp_gro_dev_warn.__once, align 1
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = tail call ptr @dev_get_by_index_rcu(ptr noundef nonnull @init_net, i32 noundef %7) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 20
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, %2
  br i1 %13, label %17, label %14

14:                                               ; preds = %10, %5
  %15 = phi ptr [ @.str.12, %5 ], [ %8, %10 ]
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %15) #18
  br label %17

17:                                               ; preds = %14, %10
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %18

18:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tcp_select_window(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_send_delayed_ack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_send_dupack(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr %3, align 8
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %109, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 8
  %11 = sub i32 %6, %10
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %109

13:                                               ; preds = %8
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %15 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %16 = getelementptr [126 x i32], ptr %15, i32 0, i32 18
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #13, !srcloc !14
  %21 = add i32 %20, %17
  %22 = inttoptr i32 %21 to ptr
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #16, !srcloc !15
  %25 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 79
  %26 = load i32, ptr %25, align 8
  %27 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 8
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = shl nuw nsw i32 %29, 1
  %31 = udiv i32 %26, %30
  %32 = icmp ugt i32 %30, %26
  %33 = tail call i32 @llvm.umin.i32(i32 %31, i32 16)
  %34 = select i1 %32, i32 2, i32 %33
  %35 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp ugt i32 %34, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %13
  %40 = trunc i32 %34 to i8
  store i8 %40, ptr %35, align 1
  br label %41

41:                                               ; preds = %39, %13
  %42 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 2
  store i8 0, ptr %42, align 2
  %43 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 4
  store i32 4, ptr %43, align 4
  %44 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %45 = load i24, ptr %44, align 4
  %46 = and i24 %45, 112
  %47 = icmp eq i24 %46, 0
  %48 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 78), align 32
  %49 = icmp eq i8 %48, 0
  %50 = select i1 %47, i1 true, i1 %49
  br i1 %50, label %109, label %51

51:                                               ; preds = %41
  %52 = load i32, ptr %4, align 4
  %53 = load i32, ptr %3, align 8
  %54 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 91
  %55 = load i32, ptr %54, align 8
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %79

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 42
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %79, label %61

61:                                               ; preds = %57
  %62 = tail call i32 @prandom_u32() #16
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %63, i32 1, i32 %62
  store volatile i32 %64, ptr %58, align 4
  %65 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %66 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %67 = getelementptr [126 x i32], ptr %66, i32 0, i32 121
  %68 = ptrtoint ptr %67 to i32
  %69 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %70 = inttoptr i32 %69 to ptr
  %71 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %70) #13, !srcloc !14
  %72 = add i32 %71, %68
  %73 = inttoptr i32 %72 to ptr
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, 1
  store i32 %75, ptr %73, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %65) #16, !srcloc !15
  %76 = load i24, ptr %44, align 4
  %77 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 78), align 32
  %78 = and i24 %76, 112
  br label %79

79:                                               ; preds = %61, %57, %51
  %80 = phi i24 [ %46, %51 ], [ %46, %57 ], [ %78, %61 ]
  %81 = phi i8 [ %48, %51 ], [ %48, %57 ], [ %77, %61 ]
  %82 = icmp eq i24 %80, 0
  %83 = icmp eq i8 %81, 0
  %84 = select i1 %82, i1 true, i1 %83
  br i1 %84, label %109, label %85

85:                                               ; preds = %79
  %86 = load i32, ptr %3, align 8
  %87 = load i32, ptr %9, align 8
  %88 = load i32, ptr %4, align 4
  %89 = sub i32 %87, %88
  %90 = icmp slt i32 %89, 0
  %91 = select i1 %90, i32 %87, i32 %52
  %92 = sub i32 %86, %87
  %93 = icmp slt i32 %92, 0
  %94 = select i1 %93, i32 46, i32 47
  %95 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %96 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %97 = getelementptr [126 x i32], ptr %96, i32 0, i32 %94
  %98 = ptrtoint ptr %97 to i32
  %99 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %100 = inttoptr i32 %99 to ptr
  %101 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %100) #13, !srcloc !14
  %102 = add i32 %101, %98
  %103 = inttoptr i32 %102 to ptr
  %104 = load i32, ptr %103, align 4
  %105 = add i32 %104, 1
  store i32 %105, ptr %103, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %95) #16, !srcloc !15
  %106 = load i24, ptr %44, align 4
  %107 = or i24 %106, 4
  store i24 %107, ptr %44, align 4
  store i32 %86, ptr %54, align 8
  %108 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 91, i32 0, i32 1
  store i32 %91, ptr %108, align 4
  br label %109

109:                                              ; preds = %85, %79, %41, %8, %2
  tail call void @tcp_send_ack(ptr noundef %0) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_check_urg(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.tcphdr, ptr %1, i32 0, i32 7
  %4 = load i16, ptr %3, align 2
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %6 = zext i16 %5 to i32
  %7 = icmp eq i16 %4, 0
  %8 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 72), align 4
  %9 = icmp eq i8 %8, 0
  %10 = sext i1 %9 to i32
  %11 = add nsw i32 %10, %6
  %12 = select i1 %7, i32 0, i32 %11
  %13 = getelementptr inbounds %struct.tcphdr, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = add i32 %12, %15
  %17 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 %16, %18
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %73, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %23 = load i32, ptr %22, align 8
  %24 = sub i32 %16, %23
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %73, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 55
  %28 = load i16, ptr %27, align 4
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 103
  %32 = load i32, ptr %31, align 4
  %33 = sub i32 %32, %16
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %73

35:                                               ; preds = %30, %26
  tail call void @sk_send_sigurg(ptr noundef %0) #16
  %36 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 103
  %37 = load i32, ptr %36, align 4
  %38 = load i32, ptr %17, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %71

40:                                               ; preds = %35
  %41 = load i16, ptr %27, align 4
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %71, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %45, 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %43
  %49 = load i32, ptr %22, align 8
  %50 = icmp eq i32 %37, %49
  br i1 %50, label %71, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, %52
  %55 = add i32 %37, 1
  store i32 %55, ptr %17, align 4
  %56 = icmp eq ptr %53, null
  %57 = or i1 %54, %56
  br i1 %57, label %71, label %58

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 3, i32 4
  %60 = load i32, ptr %59, align 4
  %61 = sub i32 %55, %60
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, -1
  store volatile i32 %66, ptr %64, align 4
  %67 = load ptr, ptr %53, align 8
  %68 = getelementptr inbounds %struct.anon.43, ptr %53, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  store ptr null, ptr %68, align 4
  store ptr null, ptr %53, align 8
  %70 = getelementptr inbounds %struct.anon.43, ptr %67, i32 0, i32 1
  store volatile ptr %69, ptr %70, align 4
  store volatile ptr %67, ptr %69, align 8
  tail call void @__kfree_skb(ptr noundef nonnull %53) #16
  br label %71

71:                                               ; preds = %63, %58, %51, %48, %43, %40, %35
  store volatile i16 512, ptr %27, align 4
  store volatile i32 %16, ptr %36, align 4
  %72 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 3
  store i32 0, ptr %72, align 4
  br label %73

73:                                               ; preds = %71, %30, %21, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_send_sigurg(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_forced_mem_schedule(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_replace_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_condense(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tcp_bad_csum(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tcp_rcv_fastopen_synack(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = alloca %struct.tcp_options_received, align 4
  %5 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 39
  %6 = load i8, ptr %5, align 1
  %7 = and i8 %6, 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %11 = tail call ptr @rb_first(ptr noundef %10) #16
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi ptr [ %11, %9 ], [ null, %3 ]
  %14 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 7
  %15 = load i16, ptr %14, align 2
  %16 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 6
  %17 = load i16, ptr %16, align 4
  %18 = icmp eq i16 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  %20 = getelementptr inbounds %struct.tcp_options_received, ptr %4, i32 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @tcp_parse_options(ptr noundef nonnull @init_net, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 0, ptr noundef null)
  %21 = load i16, ptr %20, align 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  br label %22

22:                                               ; preds = %19, %12
  %23 = phi i16 [ %21, %19 ], [ %15, %12 ]
  %24 = load i8, ptr %5, align 1
  %25 = and i8 %24, 8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %2, i32 0, i32 1
  store i8 -1, ptr %28, align 8
  br label %47

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 102
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %2, i32 0, i32 1
  %34 = load i8, ptr %33, align 8
  %35 = icmp slt i8 %34, 0
  br i1 %32, label %39, label %36

36:                                               ; preds = %29
  %37 = icmp ne ptr %13, null
  %38 = select i1 %35, i1 %37, i1 false
  br label %47

39:                                               ; preds = %29
  %40 = and i8 %24, 4
  %41 = icmp eq i8 %40, 0
  %42 = select i1 %35, i1 %41, i1 false
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = and i8 %24, 16
  %45 = icmp eq i8 %44, 0
  %46 = select i1 %45, i16 1, i16 2
  br label %47

47:                                               ; preds = %43, %39, %36, %27
  %48 = phi i1 [ %38, %36 ], [ false, %43 ], [ false, %39 ], [ false, %27 ]
  %49 = phi i16 [ 0, %36 ], [ %46, %43 ], [ 0, %39 ], [ 0, %27 ]
  tail call void @tcp_fastopen_cache_set(ptr noundef %0, i16 noundef zeroext %23, ptr noundef %2, i1 noundef zeroext %48, i16 noundef zeroext %49) #16
  %50 = icmp eq ptr %13, null
  br i1 %50, label %77, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 102
  %53 = load i32, ptr %52, align 8
  %54 = icmp eq i32 %53, 0
  %55 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %56 = load i16, ptr %55, align 4
  %57 = or i16 %56, 192
  %58 = and i16 %56, -193
  %59 = or i16 %58, 128
  %60 = select i1 %54, i16 %59, i16 %57
  store i16 %60, ptr %55, align 4
  br label %61

61:                                               ; preds = %61, %51
  %62 = phi ptr [ %63, %61 ], [ %13, %51 ]
  tail call void @tcp_mark_skb_lost(ptr noundef %0, ptr noundef nonnull %62)
  %63 = tail call ptr @rb_next(ptr noundef nonnull %62) #16
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %61

65:                                               ; preds = %61
  tail call void @tcp_xmit_retransmit_queue(ptr noundef %0) #16
  %66 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %67 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %68 = getelementptr [126 x i32], ptr %67, i32 0, i32 85
  %69 = ptrtoint ptr %68 to i32
  %70 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %71 = inttoptr i32 %70 to ptr
  %72 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %71) #13, !srcloc !14
  %73 = add i32 %72, %69
  %74 = inttoptr i32 %73 to ptr
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %75, 1
  store i32 %76, ptr %74, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %66) #16, !srcloc !15
  br label %102

77:                                               ; preds = %47
  %78 = load i8, ptr %5, align 1
  %79 = shl i8 %78, 4
  %80 = and i8 %79, 64
  %81 = and i8 %78, -65
  %82 = or i8 %80, %81
  store i8 %82, ptr %5, align 1
  %83 = icmp eq i8 %80, 0
  br i1 %83, label %101, label %84

84:                                               ; preds = %77
  %85 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !13
  %86 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %87 = getelementptr [126 x i32], ptr %86, i32 0, i32 84
  %88 = ptrtoint ptr %87 to i32
  %89 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %90 = inttoptr i32 %89 to ptr
  %91 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %90) #13, !srcloc !14
  %92 = add i32 %91, %88
  %93 = inttoptr i32 %92 to ptr
  %94 = load i32, ptr %93, align 4
  %95 = add i32 %94, 1
  store i32 %95, ptr %93, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %85) #16, !srcloc !15
  %96 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 71
  %97 = load i32, ptr %96, align 8
  %98 = icmp ugt i32 %97, 1
  br i1 %98, label %99, label %101

99:                                               ; preds = %84
  %100 = add i32 %97, -1
  store i32 %100, ptr %96, align 8
  br label %101

101:                                              ; preds = %99, %84, %77
  tail call void @tcp_fastopen_add_skb(ptr noundef %0, ptr noundef %1) #16
  br label %102

102:                                              ; preds = %101, %65
  %103 = xor i1 %50, true
  ret i1 %103
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_send_synack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_fastopen_cache_set(ptr noundef, i16 noundef zeroext, ptr noundef, i1 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_fastopen_add_skb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #10

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nounwind readonly }
attributes #14 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }

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
!9 = !{i64 2157293616}
!10 = !{i64 2157293772}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148393039, i64 2148393319, i64 2148393653, i64 2148393987}
!13 = !{i64 947934, i64 947995}
!14 = !{i64 966634}
!15 = !{i64 950951}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 907495, i64 907522, i64 907544, i64 907572}
!18 = !{i64 907903, i64 907930, i64 907963, i64 907984, i64 908011, i64 908037}
!19 = !{i64 2157257787}
!20 = !{i64 2157257937}
!21 = !{i64 2157914760}
!22 = !{i64 2149608094}
!23 = !{i64 2149608311}
!24 = !{!"auto-init"}
!25 = !{i8 0, i8 2}
!26 = !{i64 2153845501, i64 2153845989, i64 2153845538, i64 2153845594, i64 2153845628, i64 2153845652, i64 2153845693, i64 2153845714, i64 2153845742, i64 2153845776}
!27 = !{i64 1042256, i64 2148532227, i64 2148532253, i64 2148532300, i64 2148532322, i64 2148532350, i64 2148532370}
!28 = !{i64 2148543642, i64 2148543668, i64 2148543697, i64 2148543731, i64 2148543762, i64 2148543785}
!29 = !{i64 2157328396}
!30 = !{i64 2157328540}
!31 = !{i64 2153828082, i64 2153828570, i64 2153828119, i64 2153828175, i64 2153828209, i64 2153828233, i64 2153828274, i64 2153828295, i64 2153828323, i64 2153828357}
!32 = !{i64 2157344418}
!33 = !{i64 2157344560}
!34 = !{i64 1042074}
!35 = !{i64 2157808686, i64 2157809172, i64 2157808723, i64 2157808779, i64 2157808813, i64 2157808837, i64 2157808878, i64 2157808899, i64 2157808927, i64 2157808961}
!36 = !{i64 2157809990, i64 2157810476, i64 2157810027, i64 2157810083, i64 2157810117, i64 2157810141, i64 2157810182, i64 2157810203, i64 2157810231, i64 2157810265}
!37 = !{i64 907208, i64 907235}
!38 = !{!"branch_weights", i32 2000, i32 2002}
!39 = !{i64 2158191714}
!40 = !{i32 0, i32 33}
!41 = !{i64 2148545100, i64 2148545132, i64 2148545161, i64 2148545195, i64 2148545226, i64 2148545249}
!42 = !{i64 2158203365, i64 2158203851, i64 2158203402, i64 2158203458, i64 2158203492, i64 2158203516, i64 2158203557, i64 2158203578, i64 2158203606, i64 2158203640}
!43 = !{i64 2148645322}
!44 = !{i64 2148547457, i64 2148547489, i64 2148547518, i64 2148547552, i64 2148547583, i64 2148547606}
!45 = !{i64 2149003548}
!46 = !{i64 2158331075}
!47 = !{i64 2158340212}
!48 = !{i64 1028319, i64 1028343, i64 1028364, i64 1028381, i64 1028398}
!49 = !{i64 1032115, i64 1032135, i64 1032163, i64 1032193, i64 1032209}
!50 = !{i64 2158393976}
!51 = !{i64 1050906, i64 1050923, i64 1050947, i64 1050973, i64 1050991}
!52 = !{i64 2158394293}
!53 = !{i64 2149209322}
!54 = !{i64 2149205146}
!55 = !{i64 2149205221, i64 2149205248, i64 2149205295, i64 2149205317, i64 2149205345, i64 2149205365}
!56 = !{i64 2149232325}
!57 = !{i64 2149558674}
!58 = !{i64 2158139524, i64 2158140010, i64 2158139561, i64 2158139617, i64 2158139651, i64 2158139675, i64 2158139716, i64 2158139737, i64 2158139765, i64 2158139799}
!59 = !{i64 2158141724, i64 2158142210, i64 2158141761, i64 2158141817, i64 2158141851, i64 2158141875, i64 2158141916, i64 2158141937, i64 2158141965, i64 2158141999}
!60 = !{i64 2157600401, i64 2157600887, i64 2157600438, i64 2157600494, i64 2157600528, i64 2157600552, i64 2157600593, i64 2157600614, i64 2157600642, i64 2157600676}
!61 = !{i64 2157601427, i64 2157601913, i64 2157601464, i64 2157601520, i64 2157601554, i64 2157601578, i64 2157601619, i64 2157601640, i64 2157601668, i64 2157601702}
!62 = !{i64 2157572431, i64 2157572917, i64 2157572468, i64 2157572524, i64 2157572558, i64 2157572582, i64 2157572623, i64 2157572644, i64 2157572672, i64 2157572706}
!63 = !{i64 2157574864, i64 2157575350, i64 2157574901, i64 2157574957, i64 2157574991, i64 2157575015, i64 2157575056, i64 2157575077, i64 2157575105, i64 2157575139}
