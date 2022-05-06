; ModuleID = '/llk/IR/net/ipv4/tcp_output.c_pt.bc'
source_filename = "../net/ipv4/tcp_output.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_select_initial_window:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_select_initial_window\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_select_initial_window:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_release_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_release_cb\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_release_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_mtu_to_mss:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_mtu_to_mss\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_mtu_to_mss:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_mss_to_mtu:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_mss_to_mtu\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_mss_to_mtu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_mtup_init:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_mtup_init\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_mtup_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_sync_mss:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_sync_mss\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_sync_mss:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_make_synack:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_make_synack\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_make_synack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_connect\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tcp_send_ack:\09\09\09\09\09"
module asm "\09.asciz \09\22__tcp_send_ack\22\09\09\09\09\09"
module asm "__kstrtabns___tcp_send_ack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_rtx_synack:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_rtx_synack\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_rtx_synack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.tsq_tasklet = type { %struct.tasklet_struct, %struct.list_head }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.189, i32 }
%struct.atomic_t = type { i32 }
%union.anon.189 = type { ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.static_key_false = type { %struct.static_key }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.179, %struct.anon.180, %struct.anon.181, i32, ptr, ptr, ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.177, %struct.anon.178, i32, i32, [13 x i64] }
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
%struct.anon.177 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.178 = type { i32, i32, i32, i32 }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.179 = type { i32, i32, i64 }
%struct.anon.180 = type { i32, i32, i64 }
%struct.anon.181 = type { i32, i32 }
%struct.tcp_congestion_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.list_head, i32, i32, ptr, ptr, [40 x i8] }
%struct.inet_connection_sock_af_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, ptr, ptr, ptr, ptr }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.165, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.165 = type { ptr }
%struct.sk_buff_list = type { ptr, ptr }
%struct.page = type { i32, %union.anon.5, %union.anon.161, %struct.atomic_t }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.161 = type { %struct.atomic_t }
%struct.sk_buff_fclones = type { %struct.sk_buff, %struct.sk_buff, %struct.refcount_struct }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [40 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, i32, i32, i32, i32, i32, %union.anon.174, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.174 = type { %struct.anon.175 }
%struct.anon.175 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.tcp_out_options = type { i16, i16, i8, i8, i8, i8, ptr, i32, i32, ptr, %struct.mptcp_out_options }
%struct.mptcp_out_options = type {}
%struct.tcp_request_sock = type { %struct.inet_request_sock, ptr, i64, i8, i8, i32, i32, i32, i32, i32, i32, i8 }
%struct.inet_request_sock = type { %struct.request_sock, i16, i32, %union.anon.195 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%union.anon.195 = type { %struct.anon.196 }
%struct.anon.196 = type { ptr, ptr }
%struct.tcp_fastopen_cookie = type { [2 x i64], i8, i8 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.anon.2 = type { i16, i16 }
%struct.tcp_fastopen_request = type { %struct.tcp_fastopen_cookie, ptr, i32, i32, ptr }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.164, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.162 }
%union.anon.4 = type { ptr }
%union.anon.162 = type { i64 }
%union.anon.164 = type { ptr }
%struct.ubuf_info = type { ptr, %union.anon.182, %struct.refcount_struct, i8, %struct.mmpin }
%union.anon.182 = type { %struct.anon.184 }
%struct.anon.184 = type { i32, i16, i8, i32 }
%struct.mmpin = type { ptr, i32 }
%struct.tcp_request_sock_ops = type { i16, ptr, ptr, ptr, ptr }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@sysctl_rmem_max = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_tcp_select_initial_window = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_select_initial_window = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_select_initial_window = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_select_initial_window to i32), ptr @__kstrtab_tcp_select_initial_window, ptr @__kstrtabns_tcp_select_initial_window }, section "___ksymtab+tcp_select_initial_window", align 4
@__kstrtab_tcp_release_cb = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_release_cb = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_release_cb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_release_cb to i32), ptr @__kstrtab_tcp_release_cb, ptr @__kstrtabns_tcp_release_cb }, section "___ksymtab+tcp_release_cb", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@tsq_tasklet = internal global %struct.tsq_tasklet zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str = private unnamed_addr constant [22 x i8] c"net/ipv4/tcp_output.c\00", align 1
@__kstrtab_tcp_mtu_to_mss = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_mtu_to_mss = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_mtu_to_mss = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_mtu_to_mss to i32), ptr @__kstrtab_tcp_mtu_to_mss, ptr @__kstrtabns_tcp_mtu_to_mss }, section "___ksymtab+tcp_mtu_to_mss", align 4
@__kstrtab_tcp_mss_to_mtu = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_mss_to_mtu = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_mss_to_mtu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_mss_to_mtu to i32), ptr @__kstrtab_tcp_mss_to_mtu, ptr @__kstrtabns_tcp_mss_to_mtu }, section "___ksymtab+tcp_mss_to_mtu", align 4
@__kstrtab_tcp_mtup_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_mtup_init = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_mtup_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_mtup_init to i32), ptr @__kstrtab_tcp_mtup_init, ptr @__kstrtabns_tcp_mtup_init }, section "___ksymtab+tcp_mtup_init", align 4
@__kstrtab_tcp_sync_mss = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_sync_mss = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_sync_mss = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_sync_mss to i32), ptr @__kstrtab_tcp_sync_mss, ptr @__kstrtabns_tcp_sync_mss }, section "___ksymtab+tcp_sync_mss", align 4
@tcp_send_loss_probe.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"invalid inflight: %u state %u cwnd %u mss %d\0A\00", align 1
@__tcp_retransmit_skb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"\013TCP: %s: wrong queue state\0A\00", align 1
@__func__.tcp_send_synack = private unnamed_addr constant [16 x i8] c"tcp_send_synack\00", align 1
@__kstrtab_tcp_make_synack = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_make_synack = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_make_synack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_make_synack to i32), ptr @__kstrtab_tcp_make_synack, ptr @__kstrtabns_tcp_make_synack }, section "___ksymtab+tcp_make_synack", align 4
@__kstrtab_tcp_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_connect to i32), ptr @__kstrtab_tcp_connect, ptr @__kstrtabns_tcp_connect }, section "___ksymtab+tcp_connect", align 4
@__kstrtab___tcp_send_ack = external dso_local constant [0 x i8], align 1
@__kstrtabns___tcp_send_ack = external dso_local constant [0 x i8], align 1
@__ksymtab___tcp_send_ack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tcp_send_ack to i32), ptr @__kstrtab___tcp_send_ack, ptr @__kstrtabns___tcp_send_ack }, section "___ksymtab_gpl+__tcp_send_ack", align 4
@__kstrtab_tcp_rtx_synack = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_rtx_synack = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_rtx_synack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_rtx_synack to i32), ptr @__kstrtab_tcp_rtx_synack, ptr @__kstrtabns_tcp_rtx_synack }, section "___ksymtab+tcp_rtx_synack", align 4
@init_net = external dso_local global %struct.net, align 64
@ksoftirqd = external dso_local global ptr, section ".data..percpu", align 4
@tcp_memory_pressure = external dso_local global i32, align 4
@__tracepoint_tcp_retransmit_skb = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@tcp_tx_delay_enabled = external dso_local global %struct.static_key_false, align 4
@__tracepoint_tcp_send_reset = external dso_local global %struct.tracepoint, align 4
@__tracepoint_tcp_retransmit_synack = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab___tcp_send_ack, ptr @__ksymtab_tcp_connect, ptr @__ksymtab_tcp_make_synack, ptr @__ksymtab_tcp_mss_to_mtu, ptr @__ksymtab_tcp_mtu_to_mss, ptr @__ksymtab_tcp_mtup_init, ptr @__ksymtab_tcp_release_cb, ptr @__ksymtab_tcp_rtx_synack, ptr @__ksymtab_tcp_select_initial_window, ptr @__ksymtab_tcp_sync_mss], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_mstamp_refresh(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @ktime_get() #19
  %3 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 43
  store i64 %2, ptr %3, align 8
  %4 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %2, i32 0) #20, !srcloc !9
  %5 = extractvalue { i64, i32 } %4, 0
  %6 = extractvalue { i64, i32 } %4, 1
  %7 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %2, i64 %5, i32 %6) #20, !srcloc !10
  %8 = extractvalue { i64, i32 } %7, 0
  %9 = lshr i64 %8, 9
  %10 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  store i64 %9, ptr %10, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_cwnd_restart(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %4 = load volatile ptr, ptr %3, align 8
  %5 = tail call i32 @tcp_init_cwnd(ptr noundef %0, ptr noundef %4) #19
  %6 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  tail call void %11(ptr noundef %0, i32 noundef 1) #19
  br label %14

14:                                               ; preds = %13, %2
  %15 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %16 = load i8, ptr %15, align 4
  %17 = and i8 %16, 31
  %18 = zext i8 %17 to i32
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, 12
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  %23 = load i32, ptr %22, align 4
  br i1 %21, label %24, label %30

24:                                               ; preds = %14
  %25 = load i32, ptr %6, align 8
  %26 = lshr i32 %25, 1
  %27 = lshr i32 %25, 2
  %28 = add nuw i32 %26, %27
  %29 = tail call i32 @llvm.umax.i32(i32 %23, i32 %28) #19
  br label %30

30:                                               ; preds = %24, %14
  %31 = phi i32 [ %29, %24 ], [ %23, %14 ]
  store i32 %31, ptr %22, align 4
  %32 = tail call i32 @llvm.umin.i32(i32 %5, i32 %7)
  %33 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 6
  %34 = load i32, ptr %33, align 4
  br label %35

35:                                               ; preds = %35, %30
  %36 = phi i32 [ %7, %30 ], [ %42, %35 ]
  %37 = phi i32 [ %1, %30 ], [ %38, %35 ]
  %38 = sub i32 %37, %34
  %39 = icmp sgt i32 %38, 0
  %40 = icmp ugt i32 %36, %32
  %41 = select i1 %39, i1 %40, i1 false
  %42 = lshr i32 %36, 1
  br i1 %41, label %35, label %43

43:                                               ; preds = %35
  %44 = tail call i32 @llvm.umax.i32(i32 %36, i32 %32)
  store i32 %44, ptr %6, align 8
  %45 = load volatile i32, ptr @jiffies, align 64
  %46 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 67
  store i32 %45, ptr %46, align 8
  %47 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 66
  store i32 0, ptr %47, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_init_cwnd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @tcp_select_initial_window(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, i32 noundef %5, ptr nocapture noundef %6, i32 noundef %7) #3 {
  %9 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %10 = load i32, ptr %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 1073725440, ptr %4, align 4
  br label %13

13:                                               ; preds = %12, %8
  %14 = phi i32 [ 1073725440, %12 ], [ %10, %8 ]
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %9)
  %16 = icmp ugt i32 %15, %2
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = urem i32 %15, %2
  %19 = sub nsw i32 %15, %18
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi i32 [ %19, %17 ], [ %15, %13 ]
  %22 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 85), align 1
  %23 = icmp eq i8 %22, 0
  %24 = select i1 %23, i32 65535, i32 32767
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 %21)
  %26 = icmp eq i32 %7, 0
  %27 = mul i32 %7, %2
  %28 = tail call i32 @llvm.umin.i32(i32 %25, i32 %27)
  %29 = select i1 %26, i32 %25, i32 %28
  store i32 %29, ptr %3, align 4
  store i8 0, ptr %6, align 1
  %30 = icmp eq i32 %5, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %20
  %32 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 97, i32 2), align 8
  %33 = tail call i32 @llvm.umax.i32(i32 %21, i32 %32)
  %34 = load i32, ptr @sysctl_rmem_max, align 4
  %35 = tail call i32 @llvm.umax.i32(i32 %33, i32 %34)
  %36 = load i32, ptr %4, align 4
  %37 = tail call i32 @llvm.umin.i32(i32 %35, i32 %36)
  %38 = icmp eq i32 %37, 0
  %39 = tail call i32 @llvm.ctlz.i32(i32 %37, i1 false) #19, !range !11
  %40 = sub nsw i32 31, %39
  %41 = call i32 @llvm.smax.i32(i32 %40, i32 15)
  %42 = add nsw i32 %41, -15
  %43 = call i32 @llvm.umin.i32(i32 %42, i32 14)
  %44 = select i1 %38, i32 0, i32 %43
  %45 = trunc i32 %44 to i8
  store i8 %45, ptr %6, align 1
  br label %46

46:                                               ; preds = %31, %20
  %47 = phi i32 [ %44, %31 ], [ 0, %20 ]
  %48 = shl nuw nsw i32 65535, %47
  %49 = load i32, ptr %4, align 4
  %50 = tail call i32 @llvm.umin.i32(i32 %48, i32 %49)
  store i32 %50, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_release_cb(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 24
  br label %3

3:                                                ; preds = %13, %1
  %4 = load i32, ptr %2, align 4
  %5 = and i32 %4, 60
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %61, label %7

7:                                                ; preds = %3
  %8 = and i32 %4, -61
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #19, !srcloc !13
  br label %9

9:                                                ; preds = %9, %7
  %10 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %2, i32 %4, i32 %8) #19, !srcloc !14
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %9

13:                                               ; preds = %9
  %14 = extractvalue { i32, i32 } %10, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !15
  %15 = icmp eq i32 %14, %4
  br i1 %15, label %16, label %3

16:                                               ; preds = %13
  %17 = and i32 %4, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  tail call fastcc void @tcp_tsq_write(ptr noundef %0)
  %20 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #19, !srcloc !13
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #19, !srcloc !17
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %25, !prof !18

24:                                               ; preds = %19
  tail call void @refcount_warn_saturate(ptr noundef %20, i32 noundef 4) #19
  br label %25

25:                                               ; preds = %24, %19, %16
  %26 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i32 0, ptr %26, align 4
  br label %30

30:                                               ; preds = %29, %25
  %31 = and i32 %4, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  tail call void @tcp_write_timer_handler(ptr noundef %0) #19
  %34 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #19, !srcloc !13
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 1, ptr elementtype(i32) %34) #19, !srcloc !17
  %36 = extractvalue { i32, i32, i32 } %35, 0
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %39, !prof !18

38:                                               ; preds = %33
  tail call void @refcount_warn_saturate(ptr noundef %34, i32 noundef 4) #19
  br label %39

39:                                               ; preds = %38, %33, %30
  %40 = and i32 %4, 16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  tail call void @tcp_delack_timer_handler(ptr noundef %0) #19
  %43 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #19, !srcloc !13
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #19, !srcloc !17
  %45 = extractvalue { i32, i32, i32 } %44, 0
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %47, label %48, !prof !18

47:                                               ; preds = %42
  tail call void @refcount_warn_saturate(ptr noundef %43, i32 noundef 4) #19
  br label %48

48:                                               ; preds = %47, %42, %39
  %49 = and i32 %4, 32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 11
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %53, i32 0, i32 12
  %55 = load ptr, ptr %54, align 4
  tail call void %55(ptr noundef %0) #19
  %56 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %56) #19, !srcloc !13
  %57 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %56, ptr %56, i32 1, ptr elementtype(i32) %56) #19, !srcloc !17
  %58 = extractvalue { i32, i32, i32 } %57, 0
  %59 = icmp slt i32 %58, 2
  br i1 %59, label %60, label %61, !prof !18

60:                                               ; preds = %51
  tail call void @refcount_warn_saturate(ptr noundef %56, i32 noundef 4) #19
  br label %61

61:                                               ; preds = %60, %51, %48, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_tsq_write(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %3 = load volatile i8, ptr %2, align 2
  %4 = zext i8 %3 to i32
  %5 = shl nuw i32 1, %4
  %6 = and i32 %5, 2834
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %90, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 83
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 52
  %12 = load i32, ptr %11, align 8
  %13 = icmp ugt i32 %10, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %12, %18
  %22 = add i32 %10, %20
  %23 = sub i32 %21, %22
  %24 = icmp ugt i32 %16, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %14
  %26 = tail call i64 @ktime_get() #19
  %27 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 43
  store i64 %26, ptr %27, align 8
  %28 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %26, i32 0) #20, !srcloc !9
  %29 = extractvalue { i64, i32 } %28, 0
  %30 = extractvalue { i64, i32 } %28, 1
  %31 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %26, i64 %29, i32 %30) #20, !srcloc !10
  %32 = extractvalue { i64, i32 } %31, 0
  %33 = lshr i64 %32, 9
  %34 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  store i64 %33, ptr %34, align 8
  tail call void @tcp_xmit_retransmit_queue(ptr noundef %0)
  br label %35

35:                                               ; preds = %25, %14, %8
  %36 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %37 = load volatile ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq ptr %37, null
  br i1 %40, label %52, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.dst_entry, ptr %37, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.dst_ops, ptr %43, i32 0, i32 5
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 %45(ptr noundef nonnull %37) #19
  %47 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 9
  %48 = load i32, ptr %47, align 8
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %52, label %50

50:                                               ; preds = %41
  %51 = tail call i32 @tcp_sync_mss(ptr noundef %0, i32 noundef %46) #19
  br label %52

52:                                               ; preds = %50, %41, %35
  %53 = phi i32 [ %39, %35 ], [ %51, %50 ], [ %39, %41 ]
  %54 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %55 = load i24, ptr %54, align 4
  %56 = and i24 %55, 2
  %57 = icmp eq i24 %56, 0
  %58 = select i1 %57, i32 0, i32 12, !prof !18
  %59 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 5
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = zext i24 %55 to i32
  %63 = lshr i32 %62, 2
  %64 = and i32 %63, 1
  %65 = add nuw nsw i32 %64, %61
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %74, label %67, !prof !19

67:                                               ; preds = %52
  %68 = sub nuw nsw i32 36, %58
  %69 = lshr i32 %68, 3
  %70 = tail call i32 @llvm.umin.i32(i32 %65, i32 %69) #19
  %71 = shl nuw nsw i32 %70, 3
  %72 = add nuw nsw i32 %58, 4
  %73 = add nuw nsw i32 %72, %71
  br label %74

74:                                               ; preds = %67, %52
  %75 = phi i32 [ %73, %67 ], [ %58, %52 ]
  %76 = add nuw nsw i32 %75, 20
  %77 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 1
  %78 = load i16, ptr %77, align 8
  %79 = zext i16 %78 to i32
  %80 = icmp eq i32 %76, %79
  %81 = sub nsw i32 %79, %76
  %82 = select i1 %80, i32 0, i32 %81
  %83 = add i32 %82, %53
  %84 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %85 = load i16, ptr %84, align 4
  %86 = lshr i16 %85, 8
  %87 = and i16 %86, 15
  %88 = zext i16 %87 to i32
  %89 = tail call fastcc zeroext i1 @tcp_write_xmit(ptr noundef %0, i32 noundef %83, i32 noundef %88, i32 noundef 0, i32 noundef 2592)
  br label %90

90:                                               ; preds = %74, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_write_timer_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_delack_timer_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @tcp_tasklet_init() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #21
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = icmp ult i32 %1, %2
  br i1 %3, label %4, label %15

4:                                                ; preds = %4, %0
  %5 = phi i32 [ %12, %4 ], [ %1, %0 ]
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @tsq_tasklet to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.tsq_tasklet, ptr %9, i32 0, i32 1
  store volatile ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.tsq_tasklet, ptr %9, i32 0, i32 1, i32 1
  store ptr %10, ptr %11, align 4
  tail call void @tasklet_setup(ptr noundef %9, ptr noundef nonnull @tcp_tasklet_func) #19
  %12 = tail call i32 @cpumask_next(i32 noundef %5, ptr noundef nonnull @__cpu_possible_mask) #21
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %4, label %15

15:                                               ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tcp_tasklet_func(ptr noundef %0) #0 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !20
  %5 = getelementptr inbounds %struct.tsq_tasklet, ptr %0, i32 0, i32 1
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.tsq_tasklet, ptr %0, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %2, ptr %12, align 4
  store ptr %6, ptr %2, align 8
  store ptr %9, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %5, ptr %5, align 4
  store ptr %5, ptr %10, align 4
  br label %14

14:                                               ; preds = %8, %1
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #19, !srcloc !21
  %15 = load ptr, ptr %2, align 8
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %26, label %17

17:                                               ; preds = %17, %14
  %18 = phi ptr [ %19, %17 ], [ %15, %14 ]
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %18, i32 -1104
  %21 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %22, ptr %23, align 4
  store volatile ptr %19, ptr %22, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %21, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !22
  %24 = getelementptr i8, ptr %18, i32 -844
  call void @_clear_bit(i32 noundef 1, ptr noundef %24) #19
  call fastcc void @tcp_tsq_handler(ptr noundef %20)
  call void @sk_free(ptr noundef %20) #19
  %25 = icmp eq ptr %19, %2
  br i1 %25, label %26, label %17

26:                                               ; preds = %17, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_wfree(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 18
  %5 = load i32, ptr %4, align 8
  %6 = add i32 %5, -1
  %7 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #19, !srcloc !13
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 %6, ptr elementtype(i32) %7) #19, !srcloc !17
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, %6
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = sub i32 %9, %6
  %13 = or i32 %12, %9
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %17, label %15, !prof !19

15:                                               ; preds = %11
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef 3) #19
  br label %17

16:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1146, i32 noundef 9, ptr noundef null) #19
  br label %17

17:                                               ; preds = %16, %15, %11
  %18 = load volatile i32, ptr %7, align 4
  %19 = icmp ugt i32 %18, 448
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !24
  %21 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %22 = inttoptr i32 %21 to ptr
  %23 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %22) #16, !srcloc !25
  %24 = add i32 %23, ptrtoint (ptr @ksoftirqd to i32)
  %25 = inttoptr i32 %24 to ptr
  %26 = load volatile ptr, ptr %25, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !26
  %27 = tail call ptr @llvm.thread.pointer() #19
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %65, label %29

29:                                               ; preds = %20, %17
  %30 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 24
  %31 = load volatile i32, ptr %30, align 4
  br label %32

32:                                               ; preds = %43, %29
  %33 = phi i32 [ %31, %29 ], [ %44, %43 ]
  %34 = and i32 %33, 3
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %65

36:                                               ; preds = %32
  %37 = and i32 %33, -4
  %38 = or i32 %37, 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !27
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #19, !srcloc !13
  br label %39

39:                                               ; preds = %39, %36
  %40 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %30, i32 %33, i32 %38) #19, !srcloc !14
  %41 = extractvalue { i32, i32 } %40, 0
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %39

43:                                               ; preds = %39
  %44 = extractvalue { i32, i32 } %40, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !28
  %45 = icmp eq i32 %44, %33
  br i1 %45, label %46, label %32

46:                                               ; preds = %43
  %47 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !20
  %48 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %49 = inttoptr i32 %48 to ptr
  %50 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %49) #16, !srcloc !25
  %51 = add i32 %50, ptrtoint (ptr @tsq_tasklet to i32)
  %52 = inttoptr i32 %51 to ptr
  %53 = getelementptr inbounds %struct.tsq_tasklet, ptr %52, i32 0, i32 1
  %54 = load volatile ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %53
  %56 = getelementptr inbounds %struct.tcp_sock, ptr %3, i32 0, i32 23
  %57 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  store ptr %56, ptr %57, align 4
  store ptr %54, ptr %56, align 4
  %58 = getelementptr inbounds %struct.tcp_sock, ptr %3, i32 0, i32 23, i32 1
  store ptr %53, ptr %58, align 4
  store volatile ptr %56, ptr %53, align 4
  br i1 %55, label %59, label %64

59:                                               ; preds = %46
  %60 = getelementptr inbounds %struct.tasklet_struct, ptr %52, i32 0, i32 1
  %61 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %60) #19
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  tail call void @__tasklet_schedule(ptr noundef %52) #19
  br label %64

64:                                               ; preds = %63, %59, %46
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %47) #19, !srcloc !21
  br label %66

65:                                               ; preds = %32, %20
  tail call void @sk_free(ptr noundef %3) #19
  br label %66

66:                                               ; preds = %65, %64
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_pace_kick(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -1424
  tail call fastcc void @tcp_tsq_handler(ptr noundef %2)
  %3 = getelementptr i8, ptr %0, i32 -1324
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #19, !srcloc !13
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #19, !srcloc !17
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %11, label %9, !prof !19

9:                                                ; preds = %7
  tail call void @refcount_warn_saturate(ptr noundef %3, i32 noundef 3) #19
  br label %11

10:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !23
  tail call void @sk_free(ptr noundef %2) #19
  br label %11

11:                                               ; preds = %10, %9, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_tsq_handler(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %2) #19
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 4, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call fastcc void @tcp_tsq_write(ptr noundef %0)
  br label %22

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 24
  %9 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %8) #19
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #19, !srcloc !13
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #19, !srcloc !29
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !18

16:                                               ; preds = %11
  %17 = add i32 %14, 1
  %18 = or i32 %17, %14
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %22, label %20, !prof !19

20:                                               ; preds = %16, %11
  %21 = phi i32 [ 2, %11 ], [ 1, %16 ]
  tail call void @refcount_warn_saturate(ptr noundef %12, i32 noundef %21) #19
  br label %22

22:                                               ; preds = %20, %16, %7, %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !30
  %23 = load i16, ptr %2, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !31
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !32
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_fragment(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = icmp ult i32 %8, %3
  br i1 %9, label %10, label %11, !prof !18

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1541, i32 noundef 9, ptr noundef null) #19
  br label %220

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %3
  %15 = sub i32 %8, %14
  %16 = tail call i32 @llvm.smax.i32(i32 %15, i32 0)
  %17 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 21
  %18 = load i32, ptr %17, align 8
  %19 = add i32 %18, 131968
  %20 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %21 = load i32, ptr %20, align 4
  %22 = ashr i32 %21, 1
  %23 = icmp sgt i32 %22, %19
  %24 = icmp ne i32 %1, 0
  %25 = and i1 %24, %23
  br i1 %25, label %26, label %45

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %28 = tail call ptr @rb_first(ptr noundef %27) #19
  %29 = icmp eq ptr %28, %2
  br i1 %29, label %45, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @rb_last(ptr noundef %27) #19
  %32 = icmp eq ptr %31, %2
  br i1 %32, label %45, label %33, !prof !19

33:                                               ; preds = %30
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !20
  %35 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %36 = getelementptr [126 x i32], ptr %35, i32 0, i32 118
  %37 = ptrtoint ptr %36 to i32
  %38 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %39 = inttoptr i32 %38 to ptr
  %40 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %39) #16, !srcloc !25
  %41 = add i32 %40, %37
  %42 = inttoptr i32 %41 to ptr
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %34) #19, !srcloc !21
  br label %220

45:                                               ; preds = %30, %26, %11
  %46 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 11
  %47 = load i8, ptr %46, align 2
  %48 = and i8 %47, 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 15
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.skb_shared_info, ptr %52, i32 0, i32 10
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 18
  %59 = load i32, ptr %58, align 8
  %60 = tail call i32 @pskb_expand_head(ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef %5) #19
  store i32 %59, ptr %58, align 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %220

62:                                               ; preds = %57, %50, %45
  %63 = tail call ptr @tcp_stream_alloc_skb(ptr noundef %0, i32 noundef %16, i32 noundef %5, i1 noundef zeroext true) #19
  %64 = icmp eq ptr %63, null
  br i1 %64, label %220, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 18
  %67 = load i32, ptr %66, align 8
  %68 = load i32, ptr %20, align 4
  %69 = add i32 %68, %67
  store volatile i32 %69, ptr %20, align 4
  %70 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.proto, ptr %71, i32 0, i32 30
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %65
  %76 = load i32, ptr %66, align 8
  %77 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %78 = load i32, ptr %77, align 4
  %79 = sub i32 %78, %76
  store i32 %79, ptr %77, align 4
  br label %80

80:                                               ; preds = %75, %65
  %81 = load i32, ptr %7, align 8
  %82 = add i32 %16, %3
  %83 = sub i32 %81, %82
  %84 = load i32, ptr %66, align 8
  %85 = add i32 %84, %83
  store i32 %85, ptr %66, align 8
  %86 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 18
  %87 = load i32, ptr %86, align 8
  %88 = sub i32 %87, %83
  store i32 %88, ptr %86, align 8
  %89 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3
  %90 = load i32, ptr %89, align 8
  %91 = add i32 %90, %3
  %92 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 3
  store i32 %91, ptr %92, align 8
  %93 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 4
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 3, i32 4
  store i32 %94, ptr %95, align 4
  store i32 %91, ptr %93, align 4
  %96 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 12
  %97 = load i8, ptr %96, align 4
  %98 = and i8 %97, -10
  store i8 %98, ptr %96, align 4
  %99 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 3, i32 12
  store i8 %97, ptr %99, align 4
  %100 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 13
  %101 = load i8, ptr %100, align 1
  %102 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 3, i32 13
  store i8 %101, ptr %102, align 1
  %103 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 15
  %104 = load i8, ptr %103, align 1
  %105 = and i8 %104, 2
  %106 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 3, i32 15
  %107 = load i8, ptr %106, align 1
  %108 = and i8 %107, -3
  %109 = or i8 %108, %105
  store i8 %109, ptr %106, align 1
  %110 = load i8, ptr %103, align 1
  %111 = and i8 %110, -3
  store i8 %111, ptr %103, align 1
  tail call void @skb_split(ptr noundef %2, ptr noundef nonnull %63, i32 noundef %3) #19
  %112 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 2
  %113 = load i64, ptr %112, align 8
  %114 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 2
  store i64 %113, ptr %114, align 8
  %115 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 15
  %116 = load ptr, ptr %115, align 4
  %117 = load i8, ptr %103, align 1
  %118 = and i8 %117, 1
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %125, !prof !34

120:                                              ; preds = %80
  %121 = getelementptr inbounds %struct.skb_shared_info, ptr %116, i32 0, i32 3
  %122 = load i8, ptr %121, align 1
  %123 = and i8 %122, 67
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %151, label %125, !prof !19

125:                                              ; preds = %120, %80
  %126 = getelementptr inbounds %struct.skb_shared_info, ptr %116, i32 0, i32 9
  %127 = load i32, ptr %126, align 4
  %128 = load i32, ptr %92, align 8
  %129 = sub i32 %127, %128
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %151, label %131

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 15
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.skb_shared_info, ptr %116, i32 0, i32 3
  %135 = load i8, ptr %134, align 1
  %136 = and i8 %135, 67
  %137 = and i8 %135, -68
  store i8 %137, ptr %134, align 1
  %138 = getelementptr inbounds %struct.skb_shared_info, ptr %133, i32 0, i32 3
  %139 = load i8, ptr %138, align 1
  %140 = or i8 %139, %136
  store i8 %140, ptr %138, align 1
  %141 = load i32, ptr %126, align 4
  %142 = getelementptr inbounds %struct.skb_shared_info, ptr %133, i32 0, i32 9
  %143 = load i32, ptr %142, align 4
  store i32 %143, ptr %126, align 4
  store i32 %141, ptr %142, align 4
  %144 = load i8, ptr %103, align 1
  %145 = and i8 %144, 1
  %146 = load i8, ptr %106, align 1
  %147 = and i8 %146, -2
  %148 = or i8 %147, %145
  store i8 %148, ptr %106, align 1
  %149 = load i8, ptr %103, align 1
  %150 = and i8 %149, -2
  store i8 %150, ptr %103, align 1
  br label %151

151:                                              ; preds = %131, %125, %120
  %152 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 8
  %153 = load i16, ptr %152, align 8
  %154 = zext i16 %153 to i32
  %155 = load i32, ptr %7, align 8
  %156 = icmp ugt i32 %155, %4
  br i1 %156, label %157, label %163

157:                                              ; preds = %151
  %158 = add i32 %4, -1
  %159 = add i32 %158, %155
  %160 = udiv i32 %159, %4
  %161 = trunc i32 %160 to i16
  %162 = trunc i32 %4 to i16
  br label %163

163:                                              ; preds = %157, %151
  %164 = phi i16 [ %161, %157 ], [ 1, %151 ]
  %165 = phi i16 [ %162, %157 ], [ 0, %151 ]
  store i16 %164, ptr %152, align 8
  %166 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 10
  store i16 %165, ptr %166, align 2
  %167 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 5
  %168 = load i32, ptr %167, align 8
  %169 = icmp ugt i32 %168, %4
  br i1 %169, label %170, label %176

170:                                              ; preds = %163
  %171 = add i32 %4, -1
  %172 = add i32 %171, %168
  %173 = udiv i32 %172, %4
  %174 = trunc i32 %173 to i16
  %175 = trunc i32 %4 to i16
  br label %176

176:                                              ; preds = %170, %163
  %177 = phi i16 [ %174, %170 ], [ 1, %163 ]
  %178 = phi i16 [ %175, %170 ], [ 0, %163 ]
  %179 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 3, i32 8
  store i16 %177, ptr %179, align 8
  %180 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 3, i32 10
  store i16 %178, ptr %180, align 2
  %181 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 3, i32 24
  %182 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 24
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %181, ptr noundef align 8 dereferenceable(24) %182, i32 24, i1 false)
  %183 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %184 = load i32, ptr %183, align 4
  %185 = load i32, ptr %95, align 4
  %186 = sub i32 %184, %185
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %196, label %188

188:                                              ; preds = %176
  %189 = load i16, ptr %152, align 8
  %190 = zext i16 %189 to i32
  %191 = zext i16 %177 to i32
  %192 = add nuw nsw i32 %190, %191
  %193 = icmp eq i32 %192, %154
  br i1 %193, label %196, label %194

194:                                              ; preds = %188
  %195 = sub nsw i32 %154, %192
  tail call fastcc void @tcp_adjust_pcount(ptr noundef %0, ptr noundef %2, i32 noundef %195)
  br label %196

196:                                              ; preds = %194, %188, %176
  %197 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 11
  %198 = load i8, ptr %197, align 2
  %199 = or i8 %198, 2
  store i8 %199, ptr %197, align 2
  %200 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 15
  %201 = load ptr, ptr %200, align 4
  %202 = getelementptr inbounds %struct.skb_shared_info, ptr %201, i32 0, i32 10
  store volatile i32 65537, ptr %202, align 4
  %203 = icmp eq i32 %1, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %196
  %205 = load ptr, ptr %2, align 4
  store volatile ptr %205, ptr %63, align 8
  %206 = getelementptr inbounds %struct.anon.43, ptr %63, i32 0, i32 1
  store volatile ptr %2, ptr %206, align 4
  %207 = getelementptr inbounds %struct.sk_buff_list, ptr %205, i32 0, i32 1
  store volatile ptr %63, ptr %207, align 4
  store volatile ptr %63, ptr %2, align 4
  %208 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26, i32 1
  %209 = load i32, ptr %208, align 4
  %210 = add i32 %209, 1
  store volatile i32 %210, ptr %208, align 4
  br label %220

211:                                              ; preds = %196
  %212 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  tail call void @tcp_rbtree_insert(ptr noundef %212, ptr noundef nonnull %63) #19
  %213 = icmp eq i32 %1, 1
  br i1 %213, label %214, label %220

214:                                              ; preds = %211
  %215 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 4
  %216 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 4
  %217 = load ptr, ptr %216, align 4
  %218 = getelementptr inbounds %struct.list_head, ptr %217, i32 0, i32 1
  store ptr %215, ptr %218, align 4
  store ptr %217, ptr %215, align 4
  %219 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 4, i32 0, i32 1
  store ptr %216, ptr %219, align 4
  store volatile ptr %215, ptr %216, align 4
  br label %220

220:                                              ; preds = %214, %211, %204, %62, %57, %33, %10
  %221 = phi i32 [ -22, %10 ], [ -12, %33 ], [ -12, %57 ], [ -12, %62 ], [ 0, %214 ], [ 0, %211 ], [ 0, %204 ]
  ret i32 %221
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcp_stream_alloc_skb(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_split(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_adjust_pcount(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %5 = load i32, ptr %4, align 4
  %6 = sub i32 %5, %2
  store i32 %6, ptr %4, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 13
  %9 = load i8, ptr %8, align 1
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 %14, %2
  store i32 %15, ptr %13, align 4
  %16 = load i8, ptr %8, align 1
  br label %17

17:                                               ; preds = %12, %3
  %18 = phi i8 [ %16, %12 ], [ %9, %3 ]
  %19 = and i8 %18, 2
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 52
  %23 = load i32, ptr %22, align 8
  %24 = sub i32 %23, %2
  store i32 %24, ptr %22, align 8
  %25 = load i8, ptr %8, align 1
  br label %26

26:                                               ; preds = %21, %17
  %27 = phi i8 [ %25, %21 ], [ %18, %17 ]
  %28 = and i8 %27, 4
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 83
  %32 = load i32, ptr %31, align 8
  %33 = sub i32 %32, %2
  store i32 %33, ptr %31, align 8
  br label %34

34:                                               ; preds = %30, %26
  %35 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %36 = load i24, ptr %35, align 4
  %37 = and i24 %36, 112
  %38 = icmp eq i24 %37, 0
  %39 = icmp sgt i32 %2, 0
  %40 = and i1 %39, %38
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  %43 = load i32, ptr %42, align 4
  %44 = tail call i32 @llvm.usub.sat.i32(i32 %43, i32 %2)
  store i32 %44, ptr %42, align 4
  br label %45

45:                                               ; preds = %41, %34
  %46 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 87
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %63, label %49

49:                                               ; preds = %45
  %50 = load i32, ptr %7, align 8
  %51 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 3
  %52 = load i32, ptr %51, align 8
  %53 = sub i32 %50, %52
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load i8, ptr %8, align 1
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 95
  %61 = load i32, ptr %60, align 4
  %62 = sub i32 %61, %2
  store i32 %62, ptr %60, align 4
  br label %63

63:                                               ; preds = %59, %55, %49, %45
  %64 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 83
  %67 = load i32, ptr %66, align 8
  %68 = add i32 %67, %65
  %69 = icmp ugt i32 %68, %6
  br i1 %69, label %70, label %71, !prof !18

70:                                               ; preds = %63
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1481, i32 noundef 9, ptr noundef null) #19
  br label %71

71:                                               ; preds = %70, %63
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_trim_head(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %5 = load i8, ptr %4, align 2
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.skb_shared_info, ptr %10, i32 0, i32 10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %20, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %17 = load i32, ptr %16, align 8
  %18 = tail call i32 @pskb_expand_head(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #19
  store i32 %17, ptr %16, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %81

20:                                               ; preds = %15, %8, %3
  %21 = tail call fastcc i32 @__pskb_trim_head(ptr noundef %1, i32 noundef %2)
  %22 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %23 = load i32, ptr %22, align 8
  %24 = add i32 %23, %2
  store i32 %24, ptr %22, align 8
  %25 = icmp eq i32 %21, 0
  br i1 %25, label %62, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %28 = load i32, ptr %27, align 8
  %29 = sub i32 %28, %21
  store i32 %29, ptr %27, align 8
  %30 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %31 = load i32, ptr %30, align 4
  %32 = sub i32 %31, %21
  store volatile i32 %32, ptr %30, align 4
  %33 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %34 = load ptr, ptr %33, align 4
  %35 = load i8, ptr %34, align 8
  %36 = and i8 %35, 4
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.proto, ptr %40, i32 0, i32 30
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %62, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, %21
  store i32 %47, ptr %45, align 4
  %48 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  %49 = load i32, ptr %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %57, label %51, !prof !19

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %53 = load volatile i32, ptr %52, align 4
  %54 = add i32 %32, %53
  %55 = sub i32 %49, %54
  %56 = tail call i32 @llvm.smax.i32(i32 %55, i32 0) #19
  br label %57

57:                                               ; preds = %51, %44
  %58 = phi i32 [ %56, %51 ], [ 0, %44 ]
  %59 = sub i32 %47, %58
  %60 = icmp sgt i32 %59, 2097151
  br i1 %60, label %61, label %62, !prof !18

61:                                               ; preds = %57
  tail call void @__sk_mem_reclaim(ptr noundef %0, i32 noundef 1048576) #19
  br label %62

62:                                               ; preds = %61, %57, %38, %26, %20
  %63 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %64 = load i16, ptr %63, align 8
  %65 = icmp ugt i16 %64, 1
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 10
  %68 = load i16, ptr %67, align 2
  %69 = zext i16 %68 to i32
  %70 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %71 = load i32, ptr %70, align 8
  %72 = icmp ugt i32 %71, %69
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = add nsw i32 %69, -1
  %75 = add i32 %74, %71
  %76 = udiv i32 %75, %69
  %77 = trunc i32 %76 to i16
  br label %78

78:                                               ; preds = %73, %66
  %79 = phi i16 [ %77, %73 ], [ 1, %66 ]
  %80 = phi i16 [ %68, %73 ], [ 0, %66 ]
  store i16 %79, ptr %63, align 8
  store i16 %80, ptr %67, align 2
  br label %81

81:                                               ; preds = %78, %62, %15
  %82 = phi i32 [ -12, %15 ], [ 0, %78 ], [ 0, %62 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__pskb_trim_head(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %4, %6
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 %1)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  %11 = sub i32 %4, %8
  store i32 %11, ptr %3, align 8
  %12 = icmp ult i32 %11, %6
  br i1 %12, label %13, label %14, !prof !18

13:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #19, !srcloc !35
  unreachable

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 %8
  store ptr %17, ptr %15, align 4
  %18 = sub i32 %1, %8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %88, label %20

20:                                               ; preds = %14, %2
  %21 = phi i32 [ %18, %14 ], [ %1, %2 ]
  %22 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.skb_shared_info, ptr %23, i32 0, i32 2
  %25 = load i8, ptr %24, align 2
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %83, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  br label %29

29:                                               ; preds = %76, %27
  %30 = phi i32 [ %21, %27 ], [ %78, %76 ]
  %31 = phi i32 [ 0, %27 ], [ %77, %76 ]
  %32 = phi i32 [ 0, %27 ], [ %79, %76 ]
  %33 = getelementptr %struct.skb_shared_info, ptr %23, i32 0, i32 12, i32 %32, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %63, label %36

36:                                               ; preds = %29
  %37 = load ptr, ptr %22, align 4
  %38 = getelementptr %struct.skb_shared_info, ptr %37, i32 0, i32 12, i32 %32
  %39 = load i8, ptr %28, align 2
  %40 = icmp slt i8 %39, 0
  %41 = load ptr, ptr %38, align 4
  br i1 %40, label %42, label %44

42:                                               ; preds = %36
  %43 = tail call zeroext i1 @page_pool_return_skb_page(ptr noundef %41) #19
  br i1 %43, label %61, label %44

44:                                               ; preds = %42, %36
  %45 = getelementptr inbounds %struct.page, ptr %41, i32 0, i32 1
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49, !prof !19

49:                                               ; preds = %44
  %50 = add i32 %46, -1
  br label %53

51:                                               ; preds = %44
  %52 = ptrtoint ptr %41 to i32
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = inttoptr i32 %54 to ptr
  %56 = getelementptr inbounds %struct.page, ptr %55, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !36
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %56) #19, !srcloc !13
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %56, ptr %56, i32 1, ptr elementtype(i32) %56) #19, !srcloc !37
  %58 = extractvalue { i32, i32 } %57, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !38
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  tail call void @__put_page(ptr noundef %55) #19
  br label %61

61:                                               ; preds = %60, %53, %42
  %62 = sub i32 %30, %34
  br label %76

63:                                               ; preds = %29
  %64 = getelementptr %struct.skb_shared_info, ptr %23, i32 0, i32 12, i32 %32
  %65 = getelementptr %struct.skb_shared_info, ptr %23, i32 0, i32 12, i32 %31
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %65, ptr noundef align 4 dereferenceable(12) %64, i32 12, i1 false)
  %66 = icmp eq i32 %30, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %63
  %68 = getelementptr %struct.skb_shared_info, ptr %23, i32 0, i32 12, i32 %31, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, %30
  store i32 %70, ptr %68, align 4
  %71 = getelementptr %struct.skb_shared_info, ptr %23, i32 0, i32 12, i32 %31, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = sub i32 %72, %30
  store i32 %73, ptr %71, align 4
  br label %74

74:                                               ; preds = %67, %63
  %75 = add i32 %31, 1
  br label %76

76:                                               ; preds = %74, %61
  %77 = phi i32 [ %31, %61 ], [ %75, %74 ]
  %78 = phi i32 [ %62, %61 ], [ 0, %74 ]
  %79 = add nuw nsw i32 %32, 1
  %80 = load i8, ptr %24, align 2
  %81 = zext i8 %80 to i32
  %82 = icmp ult i32 %79, %81
  br i1 %82, label %29, label %83

83:                                               ; preds = %76, %20
  %84 = phi i32 [ 0, %20 ], [ %77, %76 ]
  %85 = trunc i32 %84 to i8
  store i8 %85, ptr %24, align 2
  %86 = load i32, ptr %5, align 4
  %87 = sub i32 %86, %21
  store i32 %87, ptr %5, align 4
  store i32 %87, ptr %3, align 8
  br label %88

88:                                               ; preds = %83, %14
  %89 = phi i32 [ %21, %83 ], [ 0, %14 ]
  ret i32 %89
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @tcp_mtu_to_mss(ptr noundef %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %4, i32 0, i32 6
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = sub i32 %1, %7
  %9 = add i32 %8, -20
  %10 = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %4, i32 0, i32 7
  %11 = load i16, ptr %10, align 2
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %15 = load volatile ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.dst_entry, ptr %15, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, -4
  %21 = inttoptr i32 %20 to ptr
  %22 = getelementptr i32, ptr %21, i32 11
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = zext i16 %11 to i32
  %28 = sub i32 %9, %27
  br label %29

29:                                               ; preds = %26, %17, %13, %2
  %30 = phi i32 [ %9, %2 ], [ %28, %26 ], [ %9, %17 ], [ %9, %13 ]
  %31 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 7
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = tail call i32 @llvm.smin.i32(i32 %30, i32 %33) #19
  %35 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 23
  %36 = load i16, ptr %35, align 2
  %37 = zext i16 %36 to i32
  %38 = sub i32 %34, %37
  %39 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 47), align 32
  %40 = tail call i32 @llvm.smax.i32(i32 %38, i32 %39) #19
  %41 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 1
  %42 = load i16, ptr %41, align 8
  %43 = zext i16 %42 to i32
  %44 = sub nsw i32 20, %43
  %45 = add i32 %44, %40
  ret i32 %45
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @tcp_mss_to_mtu(ptr noundef %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 1
  %4 = load i16, ptr %3, align 8
  %5 = zext i16 %4 to i32
  %6 = add i32 %5, %1
  %7 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 23
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = add i32 %6, %9
  %11 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 11
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %12, i32 0, i32 6
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = add i32 %10, %15
  %17 = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %12, i32 0, i32 7
  %18 = load i16, ptr %17, align 2
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %22 = load volatile ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.dst_entry, ptr %22, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, -4
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr i32, ptr %28, i32 11
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %24
  %34 = zext i16 %18 to i32
  %35 = add i32 %16, %34
  br label %36

36:                                               ; preds = %33, %24, %20, %2
  %37 = phi i32 [ %16, %2 ], [ %35, %33 ], [ %16, %24 ], [ %16, %20 ]
  ret i32 %37
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @tcp_mtup_init(ptr noundef %0) #8 {
  %2 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 44), align 1
  %3 = icmp ugt i8 %2, 1
  %4 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 25
  %5 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 25, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = select i1 %3, i32 -2147483648, i32 0
  %8 = and i32 %6, 2147483647
  %9 = or i32 %8, %7
  store i32 %9, ptr %5, align 8
  %10 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 7
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = add nuw nsw i32 %12, 20
  %14 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 11
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %15, i32 0, i32 6
  %17 = load i16, ptr %16, align 4
  %18 = zext i16 %17 to i32
  %19 = add nuw nsw i32 %13, %18
  store i32 %19, ptr %4, align 8
  %20 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 46), align 4
  %21 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 1
  %22 = load i16, ptr %21, align 8
  %23 = zext i16 %22 to i32
  %24 = add i32 %20, %23
  %25 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 23
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  %28 = add i32 %24, %27
  %29 = load i16, ptr %16, align 4
  %30 = zext i16 %29 to i32
  %31 = add i32 %28, %30
  %32 = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %15, i32 0, i32 7
  %33 = load i16, ptr %32, align 2
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %1
  %36 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %37 = load volatile ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %51, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.dst_entry, ptr %37, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, -4
  %43 = inttoptr i32 %42 to ptr
  %44 = getelementptr i32, ptr %43, i32 11
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %39
  %49 = zext i16 %33 to i32
  %50 = add i32 %31, %49
  br label %51

51:                                               ; preds = %48, %39, %35, %1
  %52 = phi i32 [ %31, %1 ], [ %50, %48 ], [ %31, %39 ], [ %31, %35 ]
  %53 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 25, i32 1
  store i32 %52, ptr %53, align 4
  store i32 %7, ptr %5, align 8
  %54 = icmp sgt i32 %9, -1
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load volatile i32, ptr @jiffies, align 64
  %57 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 25, i32 3
  store i32 %56, ptr %57, align 4
  br label %58

58:                                               ; preds = %55, %51
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @tcp_sync_mss(ptr noundef %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 25
  %4 = load i32, ptr %3, align 8
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store i32 %1, ptr %3, align 8
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %9, i32 0, i32 6
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = sub i32 %1, %12
  %14 = add i32 %13, -20
  %15 = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %9, i32 0, i32 7
  %16 = load i16, ptr %15, align 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %20 = load volatile ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %34, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.dst_entry, ptr %20, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, -4
  %26 = inttoptr i32 %25 to ptr
  %27 = getelementptr i32, ptr %26, i32 11
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = zext i16 %16 to i32
  %33 = sub i32 %14, %32
  br label %34

34:                                               ; preds = %31, %22, %18, %7
  %35 = phi i32 [ %14, %7 ], [ %33, %31 ], [ %14, %22 ], [ %14, %18 ]
  %36 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 7
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  %39 = tail call i32 @llvm.smin.i32(i32 %35, i32 %38) #19
  %40 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 23
  %41 = load i16, ptr %40, align 2
  %42 = zext i16 %41 to i32
  %43 = sub i32 %39, %42
  %44 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 47), align 32
  %45 = tail call i32 @llvm.smax.i32(i32 %43, i32 %44) #19
  %46 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 1
  %47 = load i16, ptr %46, align 8
  %48 = zext i16 %47 to i32
  %49 = sub nsw i32 20, %48
  %50 = add i32 %49, %45
  %51 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 27
  %52 = load i32, ptr %51, align 8
  %53 = icmp ugt i32 %52, 536
  %54 = zext i1 %53 to i32
  %55 = lshr i32 %52, %54
  %56 = icmp ne i32 %55, 0
  %57 = icmp slt i32 %55, %50
  %58 = and i1 %56, %57
  %59 = sub nsw i32 68, %48
  %60 = tail call i32 @llvm.smax.i32(i32 %55, i32 %59) #19
  %61 = select i1 %58, i32 %60, i32 %50
  %62 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 9
  store i32 %1, ptr %62, align 8
  %63 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 25, i32 2
  %64 = load i32, ptr %63, align 8
  %65 = icmp sgt i32 %64, -1
  br i1 %65, label %98, label %66

66:                                               ; preds = %34
  %67 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 25, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = load i16, ptr %10, align 4
  %70 = zext i16 %69 to i32
  %71 = sub i32 %68, %70
  %72 = add i32 %71, -20
  %73 = load i16, ptr %15, align 2
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %91, label %75

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %77 = load volatile ptr, ptr %76, align 8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %91, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.dst_entry, ptr %77, i32 0, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, -4
  %83 = inttoptr i32 %82 to ptr
  %84 = getelementptr i32, ptr %83, i32 11
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %79
  %89 = zext i16 %73 to i32
  %90 = sub i32 %72, %89
  br label %91

91:                                               ; preds = %88, %79, %75, %66
  %92 = phi i32 [ %72, %66 ], [ %90, %88 ], [ %72, %79 ], [ %72, %75 ]
  %93 = tail call i32 @llvm.smin.i32(i32 %92, i32 %38) #19
  %94 = sub i32 %93, %42
  %95 = tail call i32 @llvm.smax.i32(i32 %94, i32 %44) #19
  %96 = add i32 %95, %49
  %97 = tail call i32 @llvm.smin.i32(i32 %61, i32 %96)
  br label %98

98:                                               ; preds = %91, %34
  %99 = phi i32 [ %97, %91 ], [ %61, %34 ]
  %100 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  store i32 %99, ptr %100, align 4
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_current_mss(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %3 = load volatile ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq ptr %3, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dst_entry, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dst_ops, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef nonnull %3) #19
  %13 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 9
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %7
  %17 = tail call i32 @tcp_sync_mss(ptr noundef %0, i32 noundef %12)
  br label %18

18:                                               ; preds = %16, %7, %1
  %19 = phi i32 [ %5, %1 ], [ %17, %16 ], [ %5, %7 ]
  %20 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %21 = load i24, ptr %20, align 4
  %22 = and i24 %21, 2
  %23 = icmp eq i24 %22, 0
  %24 = select i1 %23, i32 0, i32 12, !prof !18
  %25 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 5
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = zext i24 %21 to i32
  %29 = lshr i32 %28, 2
  %30 = and i32 %29, 1
  %31 = add nuw nsw i32 %30, %27
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33, !prof !19

33:                                               ; preds = %18
  %34 = sub nuw nsw i32 36, %24
  %35 = lshr i32 %34, 3
  %36 = tail call i32 @llvm.umin.i32(i32 %31, i32 %35) #19
  %37 = shl nuw nsw i32 %36, 3
  %38 = add nuw nsw i32 %24, 4
  %39 = add nuw nsw i32 %38, %37
  br label %40

40:                                               ; preds = %33, %18
  %41 = phi i32 [ %39, %33 ], [ %24, %18 ]
  %42 = add nuw nsw i32 %41, 20
  %43 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 1
  %44 = load i16, ptr %43, align 8
  %45 = zext i16 %44 to i32
  %46 = icmp eq i32 %42, %45
  %47 = sub nsw i32 %45, %42
  %48 = select i1 %46, i32 0, i32 %47
  %49 = add i32 %48, %19
  ret i32 %49
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @tcp_chrono_start(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %4 = load i16, ptr %3, align 4
  %5 = and i16 %4, 3
  %6 = zext i16 %5 to i32
  %7 = icmp ult i32 %6, %1
  br i1 %7, label %8, label %25

8:                                                ; preds = %2
  %9 = load volatile i32, ptr @jiffies, align 64
  %10 = icmp eq i16 %5, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 35
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %9, %13
  %15 = add nsw i32 %6, -1
  %16 = getelementptr %struct.tcp_sock, ptr %0, i32 0, i32 36, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %14, %17
  store i32 %18, ptr %16, align 4
  br label %19

19:                                               ; preds = %11, %8
  %20 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 35
  store i32 %9, ptr %20, align 4
  %21 = trunc i32 %1 to i16
  %22 = and i16 %21, 3
  %23 = and i16 %4, -4
  %24 = or i16 %23, %22
  store i16 %24, ptr %3, align 4
  br label %25

25:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @tcp_chrono_stop(ptr noundef %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %4 = load volatile ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %30

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %6
  %13 = load volatile i32, ptr @jiffies, align 64
  %14 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %15 = load i16, ptr %14, align 4
  %16 = and i16 %15, 3
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %12
  %19 = zext i16 %16 to i32
  %20 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 35
  %21 = load i32, ptr %20, align 4
  %22 = sub i32 %13, %21
  %23 = add nsw i32 %19, -1
  %24 = getelementptr %struct.tcp_sock, ptr %0, i32 0, i32 36, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %22, %25
  store i32 %26, ptr %24, align 4
  br label %27

27:                                               ; preds = %18, %12
  %28 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 35
  store i32 %13, ptr %28, align 4
  %29 = and i16 %15, -4
  store i16 %29, ptr %14, align 4
  br label %51

30:                                               ; preds = %6, %2
  %31 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %32 = load i16, ptr %31, align 4
  %33 = and i16 %32, 3
  %34 = zext i16 %33 to i32
  %35 = icmp eq i32 %34, %1
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = load volatile i32, ptr @jiffies, align 64
  %38 = icmp eq i16 %33, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 35
  %41 = load i32, ptr %40, align 4
  %42 = sub i32 %37, %41
  %43 = add nsw i32 %1, -1
  %44 = getelementptr %struct.tcp_sock, ptr %0, i32 0, i32 36, i32 %43
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %42, %45
  store i32 %46, ptr %44, align 4
  br label %47

47:                                               ; preds = %39, %36
  %48 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 35
  store i32 %37, ptr %48, align 4
  %49 = and i16 %32, -4
  %50 = or i16 %49, 1
  store i16 %50, ptr %31, align 4
  br label %51

51:                                               ; preds = %47, %30, %27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @tcp_schedule_loss_probe(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 116
  %4 = load volatile ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %87

6:                                                ; preds = %2
  %7 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 67), align 1
  %8 = add i8 %7, -5
  %9 = icmp ult i8 %8, -2
  br i1 %9, label %87, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %87, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %16 = load i24, ptr %15, align 4
  %17 = and i24 %16, 112
  %18 = icmp eq i24 %17, 0
  br i1 %18, label %87, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %21 = load i8, ptr %20, align 4
  %22 = trunc i8 %21 to i5
  switch i5 %22, label %87 [
    i5 0, label %23
    i5 2, label %23
  ]

23:                                               ; preds = %19, %19
  %24 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 45
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  %28 = lshr i32 %25, 2
  %29 = tail call i32 @__usecs_to_jiffies(i32 noundef %28) #19
  %30 = load i32, ptr %11, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = add i32 %29, 20
  br label %36

34:                                               ; preds = %27
  %35 = add i32 %29, 2
  br label %36

36:                                               ; preds = %34, %32, %23
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ], [ 100, %23 ]
  br i1 %1, label %38, label %42

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = tail call i32 @jiffies_to_usecs(i32 noundef %40) #19
  br label %62

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %44 = tail call ptr @rb_first(ptr noundef %43) #19
  %45 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 2
  %48 = load i64, ptr %47, align 8
  %49 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %48, i32 0) #20, !srcloc !9
  %50 = extractvalue { i64, i32 } %49, 0
  %51 = extractvalue { i64, i32 } %49, 1
  %52 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %48, i64 %50, i32 %51) #20, !srcloc !10
  %53 = extractvalue { i64, i32 } %52, 0
  %54 = lshr i64 %53, 9
  %55 = tail call i32 @jiffies_to_usecs(i32 noundef %46) #19
  %56 = zext i32 %55 to i64
  %57 = add nuw nsw i64 %54, %56
  %58 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  %59 = load i64, ptr %58, align 8
  %60 = sub i64 %57, %59
  %61 = trunc i64 %60 to i32
  br label %62

62:                                               ; preds = %42, %38
  %63 = phi i32 [ %41, %38 ], [ %61, %42 ]
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = tail call i32 @__usecs_to_jiffies(i32 noundef %63) #19
  %67 = tail call i32 @llvm.umin.i32(i32 %37, i32 %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = phi i32 [ %67, %65 ], [ %37, %62 ]
  %70 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 42
  %71 = load i64, ptr %70, align 8
  %72 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 43
  %73 = load i64, ptr %72, align 8
  %74 = sub i64 %71, %73
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = tail call i32 @nsecs_to_jiffies(i64 noundef %74) #19
  br label %78

78:                                               ; preds = %76, %68
  %79 = phi i32 [ %77, %76 ], [ 0, %68 ]
  %80 = add i32 %79, %69
  %81 = tail call i32 @llvm.umin.i32(i32 %80, i32 12000) #19
  %82 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 19
  store i8 5, ptr %82, align 2
  %83 = load volatile i32, ptr @jiffies, align 64
  %84 = add i32 %83, %81
  %85 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 3
  store i32 %84, ptr %85, align 8
  %86 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 4
  tail call void @sk_reset_timer(ptr noundef %0, ptr noundef %86, i32 noundef %84) #19
  br label %87

87:                                               ; preds = %78, %19, %14, %10, %6, %2
  %88 = phi i1 [ true, %78 ], [ false, %2 ], [ false, %19 ], [ false, %6 ], [ false, %14 ], [ false, %10 ]
  ret i1 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_send_loss_probe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %3 = load volatile ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq ptr %3, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dst_entry, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dst_ops, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef nonnull %3) #19
  %13 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 9
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %7
  %17 = tail call i32 @tcp_sync_mss(ptr noundef %0, i32 noundef %12) #19
  br label %18

18:                                               ; preds = %16, %7, %1
  %19 = phi i32 [ %5, %1 ], [ %17, %16 ], [ %5, %7 ]
  %20 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %21 = load i24, ptr %20, align 4
  %22 = and i24 %21, 2
  %23 = icmp eq i24 %22, 0
  %24 = select i1 %23, i32 0, i32 12, !prof !18
  %25 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 5
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = zext i24 %21 to i32
  %29 = lshr i32 %28, 2
  %30 = and i32 %29, 1
  %31 = add nuw nsw i32 %30, %27
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33, !prof !19

33:                                               ; preds = %18
  %34 = sub nuw nsw i32 36, %24
  %35 = lshr i32 %34, 3
  %36 = tail call i32 @llvm.umin.i32(i32 %31, i32 %35) #19
  %37 = shl nuw nsw i32 %36, 3
  %38 = add nuw nsw i32 %24, 4
  %39 = add nuw nsw i32 %38, %37
  br label %40

40:                                               ; preds = %33, %18
  %41 = phi i32 [ %39, %33 ], [ %24, %18 ]
  %42 = add nuw nsw i32 %41, 20
  %43 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 1
  %44 = load i16, ptr %43, align 8
  %45 = zext i16 %44 to i32
  %46 = icmp eq i32 %42, %45
  %47 = sub nsw i32 %45, %42
  %48 = select i1 %46, i32 0, i32 %47
  %49 = add i32 %48, %19
  %50 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 40
  %51 = load i32, ptr %50, align 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %186

53:                                               ; preds = %40
  %54 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 34
  %55 = load i8, ptr %54, align 1
  %56 = and i8 %55, -5
  store i8 %56, ptr %54, align 1
  %57 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, %57
  %60 = icmp eq ptr %58, null
  %61 = or i1 %59, %60
  br i1 %61, label %87, label %62

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.sk_buff, ptr %58, i32 0, i32 3, i32 4
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.sk_buff, ptr %58, i32 0, i32 5
  %66 = load i32, ptr %65, align 8
  %67 = icmp ugt i32 %66, %49
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.sk_buff, ptr %58, i32 0, i32 3
  %70 = load i32, ptr %69, align 8
  %71 = add i32 %70, %49
  br label %72

72:                                               ; preds = %68, %62
  %73 = phi i32 [ %71, %68 ], [ %64, %62 ]
  %74 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 26
  %77 = load i32, ptr %76, align 4
  %78 = sub i32 %75, %73
  %79 = add i32 %78, %77
  %80 = icmp sgt i32 %79, -1
  br i1 %80, label %81, label %87

81:                                               ; preds = %72
  %82 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %83 = load i32, ptr %82, align 4
  %84 = tail call fastcc zeroext i1 @tcp_write_xmit(ptr noundef %0, i32 noundef %49, i32 noundef 1, i32 noundef 2, i32 noundef 2592)
  %85 = load i32, ptr %82, align 4
  %86 = icmp ugt i32 %85, %83
  br i1 %86, label %171, label %186

87:                                               ; preds = %72, %53
  %88 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %89 = tail call ptr @rb_last(ptr noundef %88) #19
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %106, !prof !18

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %93 = load i32, ptr %92, align 4
  %94 = icmp ne i32 %93, 0
  %95 = load i1, ptr @tcp_send_loss_probe.__already_done, align 1
  %96 = xor i1 %95, true
  %97 = select i1 %94, i1 %96, i1 false
  br i1 %97, label %98, label %104, !prof !18

98:                                               ; preds = %91
  store i1 true, ptr @tcp_send_loss_probe.__already_done, align 1
  %99 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %100 = load volatile i8, ptr %99, align 2
  %101 = zext i8 %100 to i32
  %102 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %103 = load i32, ptr %102, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2811, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %93, i32 noundef %101, i32 noundef %103, i32 noundef %49) #19
  br label %104

104:                                              ; preds = %98, %91
  %105 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 19
  store i8 0, ptr %105, align 2
  br label %187

106:                                              ; preds = %87
  %107 = getelementptr inbounds %struct.sk_buff, ptr %89, i32 0, i32 11
  %108 = load i8, ptr %107, align 2
  %109 = and i8 %108, 12
  %110 = icmp eq i8 %109, 4
  br i1 %110, label %111, label %142

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.sk_buff_fclones, ptr %89, i32 0, i32 2
  %113 = load volatile i32, ptr %112, align 4
  %114 = icmp ugt i32 %113, 1
  br i1 %114, label %115, label %142

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.sk_buff_fclones, ptr %89, i32 0, i32 1, i32 1
  %117 = load volatile ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, %0
  br i1 %118, label %119, label %142, !prof !18

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 24
  tail call void @_set_bit(i32 noundef 0, ptr noundef %120) #19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !39
  %121 = load i8, ptr %107, align 2
  %122 = and i8 %121, 12
  %123 = icmp eq i8 %122, 4
  br i1 %123, label %124, label %142

124:                                              ; preds = %119
  %125 = load volatile i32, ptr %112, align 4
  %126 = icmp ugt i32 %125, 1
  br i1 %126, label %127, label %142

127:                                              ; preds = %124
  %128 = load volatile ptr, ptr %116, align 4
  %129 = icmp eq ptr %128, %0
  br i1 %129, label %130, label %142

130:                                              ; preds = %127
  %131 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !20
  %132 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %133 = getelementptr [126 x i32], ptr %132, i32 0, i32 91
  %134 = ptrtoint ptr %133 to i32
  %135 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %136 = inttoptr i32 %135 to ptr
  %137 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %136) #16, !srcloc !25
  %138 = add i32 %137, %134
  %139 = inttoptr i32 %138 to ptr
  %140 = load i32, ptr %139, align 4
  %141 = add i32 %140, 1
  store i32 %141, ptr %139, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %131) #19, !srcloc !21
  br label %186

142:                                              ; preds = %127, %124, %119, %115, %111, %106
  %143 = getelementptr inbounds %struct.sk_buff, ptr %89, i32 0, i32 3, i32 8
  %144 = load i16, ptr %143, align 8
  switch i16 %144, label %146 [
    i16 0, label %145
    i16 1, label %164
  ], !prof !40

145:                                              ; preds = %142
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2820, i32 noundef 9, ptr noundef null) #19
  br label %186

146:                                              ; preds = %142
  %147 = zext i16 %144 to i32
  %148 = getelementptr inbounds %struct.sk_buff, ptr %89, i32 0, i32 5
  %149 = load i32, ptr %148, align 8
  %150 = add nsw i32 %147, -1
  %151 = mul i32 %150, %49
  %152 = icmp ugt i32 %149, %151
  br i1 %152, label %153, label %164

153:                                              ; preds = %146
  %154 = tail call i32 @tcp_fragment(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %89, i32 noundef %151, i32 noundef %49, i32 noundef 2592)
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %186, !prof !19

156:                                              ; preds = %153
  %157 = tail call ptr @rb_next(ptr noundef nonnull %89) #19
  %158 = icmp eq ptr %157, null
  br i1 %158, label %163, label %159

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.sk_buff, ptr %157, i32 0, i32 3, i32 8
  %161 = load i16, ptr %160, align 8
  %162 = icmp eq i16 %161, 0
  br i1 %162, label %163, label %164, !prof !18

163:                                              ; preds = %159, %156
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2831, i32 noundef 9, ptr noundef null) #19
  br label %186

164:                                              ; preds = %159, %146, %142
  %165 = phi ptr [ %157, %159 ], [ %89, %146 ], [ %89, %142 ]
  %166 = tail call i32 @__tcp_retransmit_skb(ptr noundef %0, ptr noundef nonnull %165, i32 noundef 1)
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %186

168:                                              ; preds = %164
  %169 = load i8, ptr %54, align 1
  %170 = or i8 %169, 4
  store i8 %170, ptr %54, align 1
  br label %171

171:                                              ; preds = %168, %81
  %172 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %173 = load i32, ptr %172, align 4
  store i32 %173, ptr %50, align 8
  %174 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !20
  %175 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %176 = getelementptr [126 x i32], ptr %175, i32 0, i32 41
  %177 = ptrtoint ptr %176 to i32
  %178 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %179 = inttoptr i32 %178 to ptr
  %180 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %179) #16, !srcloc !25
  %181 = add i32 %180, %177
  %182 = inttoptr i32 %181 to ptr
  %183 = load i32, ptr %182, align 4
  %184 = add i32 %183, 1
  store i32 %184, ptr %182, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %174) #19, !srcloc !21
  %185 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 19
  store i8 0, ptr %185, align 2
  br label %186

186:                                              ; preds = %171, %164, %163, %153, %145, %130, %81, %40
  tail call void @tcp_rearm_rto(ptr noundef %0) #19
  br label %187

187:                                              ; preds = %186, %104
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tcp_write_xmit(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = tail call i64 @ktime_get() #19
  %7 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 43
  store i64 %6, ptr %7, align 8
  %8 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %6, i32 0) #20, !srcloc !9
  %9 = extractvalue { i64, i32 } %8, 0
  %10 = extractvalue { i64, i32 } %8, 1
  %11 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %6, i64 %9, i32 %10) #20, !srcloc !10
  %12 = extractvalue { i64, i32 } %11, 0
  %13 = lshr i64 %12, 9
  %14 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  store i64 %13, ptr %14, align 8
  %15 = icmp eq i32 %3, 0
  br i1 %15, label %16, label %232

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 25
  %18 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 25, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, -2147483648
  br i1 %20, label %21, label %232

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %23 = load i8, ptr %22, align 4
  %24 = and i8 %23, 31
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %232

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %28 = load i32, ptr %27, align 8
  %29 = icmp ult i32 %28, 11
  br i1 %29, label %232, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 5
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %232

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %36 = load i24, ptr %35, align 4
  %37 = and i24 %36, 4
  %38 = icmp eq i24 %37, 0
  br i1 %38, label %39, label %232, !prof !18

39:                                               ; preds = %34
  %40 = tail call i32 @tcp_current_mss(ptr noundef %0) #19
  %41 = load i32, ptr %17, align 8
  %42 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 25, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, %41
  %45 = ashr i32 %44, 1
  %46 = tail call i32 @tcp_mtu_to_mss(ptr noundef %0, i32 noundef %45) #19
  %47 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 58
  %48 = load i32, ptr %47, align 8
  %49 = add i32 %48, 1
  %50 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  %51 = load i32, ptr %50, align 4
  %52 = mul i32 %49, %51
  %53 = add i32 %52, %46
  %54 = load i32, ptr %17, align 8
  %55 = load i32, ptr %42, align 4
  %56 = tail call i32 @tcp_mtu_to_mss(ptr noundef %0, i32 noundef %54) #19
  %57 = icmp sgt i32 %46, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %39
  %59 = sub i32 %54, %55
  %60 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 48), align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %39
  tail call fastcc void @tcp_mtu_check_reprobe(ptr noundef %0) #19
  br label %232

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %67 = load i32, ptr %66, align 4
  %68 = sub i32 %65, %67
  %69 = icmp ult i32 %68, %53
  br i1 %69, label %232, label %70

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 26
  %72 = load i32, ptr %71, align 4
  %73 = icmp ult i32 %72, %53
  br i1 %73, label %232, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %67, %53
  %78 = sub i32 %72, %77
  %79 = add i32 %78, %76
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %1028, label %81

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 83
  %87 = load i32, ptr %86, align 8
  %88 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 52
  %89 = load i32, ptr %88, align 8
  %90 = add i32 %85, %87
  %91 = sub i32 %83, %90
  %92 = add i32 %91, %89
  %93 = add i32 %92, 2
  %94 = load i32, ptr %27, align 8
  %95 = icmp ugt i32 %93, %94
  br i1 %95, label %217, label %96

96:                                               ; preds = %81
  %97 = tail call fastcc zeroext i1 @tcp_can_coalesce_send_queue_head(ptr noundef %0, i32 noundef %46) #19
  br i1 %97, label %98, label %232

98:                                               ; preds = %96
  %99 = tail call ptr @tcp_stream_alloc_skb(ptr noundef %0, i32 noundef %46, i32 noundef 2592, i1 noundef zeroext false) #19
  %100 = icmp eq ptr %99, null
  br i1 %100, label %232, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.sk_buff, ptr %99, i32 0, i32 18
  %103 = load i32, ptr %102, align 8
  %104 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %105 = load i32, ptr %104, align 4
  %106 = add i32 %105, %103
  store volatile i32 %106, ptr %104, align 4
  %107 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %108 = load ptr, ptr %107, align 8
  %109 = getelementptr inbounds %struct.proto, ptr %108, i32 0, i32 30
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %117, label %112

112:                                              ; preds = %101
  %113 = load i32, ptr %102, align 8
  %114 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %115 = load i32, ptr %114, align 4
  %116 = sub i32 %115, %113
  store i32 %116, ptr %114, align 4
  br label %117

117:                                              ; preds = %112, %101
  %118 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, %118
  %121 = select i1 %120, ptr null, ptr %119
  %122 = getelementptr inbounds %struct.sk_buff, ptr %121, i32 0, i32 3
  %123 = load i32, ptr %122, align 8
  %124 = getelementptr inbounds %struct.sk_buff, ptr %99, i32 0, i32 3
  store i32 %123, ptr %124, align 8
  %125 = load i32, ptr %122, align 8
  %126 = add i32 %125, %46
  %127 = getelementptr inbounds %struct.sk_buff, ptr %99, i32 0, i32 3, i32 4
  store i32 %126, ptr %127, align 4
  %128 = getelementptr inbounds %struct.sk_buff, ptr %99, i32 0, i32 3, i32 12
  store i8 16, ptr %128, align 4
  %129 = getelementptr inbounds %struct.sk_buff_list, ptr %121, i32 0, i32 1
  %130 = load ptr, ptr %129, align 4
  store volatile ptr %121, ptr %99, align 8
  %131 = getelementptr inbounds %struct.anon.43, ptr %99, i32 0, i32 1
  store volatile ptr %130, ptr %131, align 4
  store volatile ptr %99, ptr %129, align 4
  store volatile ptr %99, ptr %130, align 4
  %132 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26, i32 1
  %133 = load i32, ptr %132, align 4
  %134 = add i32 %133, 1
  store volatile i32 %134, ptr %132, align 4
  %135 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 94
  %136 = load ptr, ptr %135, align 8
  %137 = icmp eq ptr %136, %121
  br i1 %137, label %138, label %139

138:                                              ; preds = %117
  store ptr %99, ptr %135, align 8
  br label %139

139:                                              ; preds = %138, %117
  %140 = getelementptr inbounds %struct.sk_buff, ptr %99, i32 0, i32 3, i32 15
  %141 = add i32 %40, -1
  %142 = trunc i32 %40 to i16
  br label %143

143:                                              ; preds = %206, %139
  %144 = phi ptr [ %121, %139 ], [ %146, %206 ]
  %145 = phi i32 [ 0, %139 ], [ %207, %206 ]
  %146 = load ptr, ptr %144, align 8
  %147 = icmp eq ptr %144, %118
  br i1 %147, label %209, label %148

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.sk_buff, ptr %144, i32 0, i32 5
  %150 = load i32, ptr %149, align 8
  %151 = sub i32 %46, %145
  %152 = tail call i32 @llvm.smin.i32(i32 %150, i32 %151) #19
  %153 = tail call ptr @skb_put(ptr noundef nonnull %99, i32 noundef %152) #19
  %154 = tail call i32 @skb_copy_bits(ptr noundef %144, i32 noundef 0, ptr noundef %153, i32 noundef %152) #19
  %155 = load i32, ptr %149, align 8
  %156 = icmp ugt i32 %155, %152
  br i1 %156, label %176, label %157

157:                                              ; preds = %148
  %158 = getelementptr inbounds %struct.sk_buff, ptr %144, i32 0, i32 3, i32 12
  %159 = load i8, ptr %158, align 4
  %160 = load i8, ptr %128, align 4
  %161 = or i8 %160, %159
  store i8 %161, ptr %128, align 4
  %162 = getelementptr inbounds %struct.sk_buff, ptr %144, i32 0, i32 3, i32 15
  %163 = load i8, ptr %162, align 1
  %164 = and i8 %163, 2
  %165 = load i8, ptr %140, align 1
  %166 = and i8 %165, -3
  %167 = or i8 %166, %164
  store i8 %167, ptr %140, align 1
  tail call void @tcp_skb_collapse_tstamp(ptr noundef nonnull %99, ptr noundef %144) #19
  %168 = getelementptr inbounds %struct.sk_buff, ptr %144, i32 0, i32 4
  %169 = getelementptr inbounds %struct.sk_buff, ptr %144, i32 0, i32 4, i32 0, i32 1
  store ptr null, ptr %169, align 4
  store i32 0, ptr %168, align 8
  %170 = load i32, ptr %132, align 4
  %171 = add i32 %170, -1
  store volatile i32 %171, ptr %132, align 4
  %172 = load ptr, ptr %144, align 8
  %173 = getelementptr inbounds %struct.anon.43, ptr %144, i32 0, i32 1
  %174 = load ptr, ptr %173, align 4
  store ptr null, ptr %173, align 4
  store ptr null, ptr %144, align 8
  %175 = getelementptr inbounds %struct.anon.43, ptr %172, i32 0, i32 1
  store volatile ptr %174, ptr %175, align 4
  store volatile ptr %172, ptr %174, align 8
  tail call fastcc void @tcp_wmem_free_skb(ptr noundef %0, ptr noundef %144) #19
  br label %206

176:                                              ; preds = %148
  %177 = getelementptr inbounds %struct.sk_buff, ptr %144, i32 0, i32 3
  %178 = getelementptr inbounds %struct.sk_buff, ptr %144, i32 0, i32 3, i32 12
  %179 = load i8, ptr %178, align 4
  %180 = and i8 %179, -10
  %181 = load i8, ptr %128, align 4
  %182 = or i8 %181, %180
  store i8 %182, ptr %128, align 4
  %183 = getelementptr inbounds %struct.sk_buff, ptr %144, i32 0, i32 15
  %184 = load ptr, ptr %183, align 4
  %185 = getelementptr inbounds %struct.skb_shared_info, ptr %184, i32 0, i32 2
  %186 = load i8, ptr %185, align 2
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %176
  %189 = tail call ptr @skb_pull(ptr noundef %144, i32 noundef %152) #19
  br label %203

190:                                              ; preds = %176
  %191 = tail call fastcc i32 @__pskb_trim_head(ptr noundef %144, i32 noundef %152) #19
  %192 = load i32, ptr %149, align 8
  %193 = icmp ugt i32 %192, %40
  br i1 %193, label %194, label %198

194:                                              ; preds = %190
  %195 = add i32 %141, %192
  %196 = udiv i32 %195, %40
  %197 = trunc i32 %196 to i16
  br label %198

198:                                              ; preds = %194, %190
  %199 = phi i16 [ %197, %194 ], [ 1, %190 ]
  %200 = phi i16 [ %142, %194 ], [ 0, %190 ]
  %201 = getelementptr inbounds %struct.sk_buff, ptr %144, i32 0, i32 3, i32 8
  store i16 %199, ptr %201, align 8
  %202 = getelementptr inbounds %struct.sk_buff, ptr %144, i32 0, i32 3, i32 10
  store i16 %200, ptr %202, align 2
  br label %203

203:                                              ; preds = %198, %188
  %204 = load i32, ptr %177, align 8
  %205 = add i32 %204, %152
  store i32 %205, ptr %177, align 8
  br label %206

206:                                              ; preds = %203, %157
  %207 = add i32 %152, %145
  %208 = icmp slt i32 %207, %46
  br i1 %208, label %143, label %209

209:                                              ; preds = %206, %143
  %210 = getelementptr inbounds %struct.sk_buff, ptr %99, i32 0, i32 5
  %211 = load i32, ptr %210, align 8
  %212 = tail call fastcc i32 @tcp_init_tso_segs(ptr noundef nonnull %99, i32 noundef %211) #19
  %213 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %214 = load i32, ptr %213, align 8
  %215 = tail call fastcc i32 @__tcp_transmit_skb(ptr noundef %0, ptr noundef nonnull %99, i32 noundef 1, i32 noundef 2592, i32 noundef %214) #19
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %219, label %232

217:                                              ; preds = %81
  %218 = icmp eq i32 %92, 0
  br i1 %218, label %232, label %1028

219:                                              ; preds = %209
  %220 = load i32, ptr %27, align 8
  %221 = add i32 %220, -1
  store i32 %221, ptr %27, align 8
  tail call fastcc void @tcp_event_new_data_sent(ptr noundef %0, ptr noundef nonnull %99) #19
  %222 = load i32, ptr %210, align 8
  %223 = tail call i32 @tcp_mss_to_mtu(ptr noundef %0, i32 noundef %222) #19
  %224 = load i32, ptr %18, align 8
  %225 = and i32 %223, 2147483647
  %226 = and i32 %224, -2147483648
  %227 = or i32 %226, %225
  store i32 %227, ptr %18, align 8
  %228 = load i32, ptr %124, align 8
  %229 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 113
  store i32 %228, ptr %229, align 8
  %230 = load i32, ptr %127, align 4
  %231 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 113, i32 1
  store i32 %230, ptr %231, align 4
  br label %232

232:                                              ; preds = %219, %217, %209, %98, %96, %70, %63, %62, %34, %30, %26, %21, %16, %5
  %233 = phi i32 [ 0, %5 ], [ 1, %219 ], [ 0, %217 ], [ 0, %16 ], [ 0, %21 ], [ 0, %26 ], [ 0, %30 ], [ 0, %209 ], [ 0, %98 ], [ 0, %96 ], [ 0, %70 ], [ 0, %63 ], [ 0, %34 ], [ 0, %62 ]
  %234 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %235 = load ptr, ptr %234, align 4
  %236 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %235, i32 0, i32 6
  %237 = load ptr, ptr %236, align 8
  %238 = icmp eq ptr %237, null
  br i1 %238, label %241, label %239

239:                                              ; preds = %232
  %240 = tail call i32 %237(ptr noundef %0) #19
  br label %244

241:                                              ; preds = %232
  %242 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 89), align 4
  %243 = zext i8 %242 to i32
  br label %244

244:                                              ; preds = %241, %239
  %245 = phi i32 [ %240, %239 ], [ %243, %241 ]
  %246 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 35
  %247 = load i32, ptr %246, align 4
  %248 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 44
  %249 = load volatile i8, ptr %248, align 1
  %250 = zext i8 %249 to i32
  %251 = lshr i32 %247, %250
  %252 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 40
  %253 = load i32, ptr %252, align 4
  %254 = add i32 %253, -321
  %255 = tail call i32 @llvm.umin.i32(i32 %251, i32 %254) #19
  %256 = udiv i32 %255, %1
  %257 = tail call i32 @llvm.umax.i32(i32 %256, i32 %245) #19
  %258 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 47
  %259 = load i16, ptr %258, align 2
  %260 = zext i16 %259 to i32
  %261 = tail call i32 @llvm.umin.i32(i32 %257, i32 %260) #19
  %262 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %263 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %264 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 38
  %265 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 42
  %266 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 24
  %267 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 24, i32 1
  %268 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 30
  %269 = add i32 %1, -1
  %270 = trunc i32 %1 to i16
  %271 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %272 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  %273 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 83
  %274 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 52
  %275 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %276 = icmp eq i32 %3, 2
  %277 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %278 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 26
  %279 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %280 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  %281 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26, i32 0, i32 0, i32 1
  %282 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %283 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 45
  %284 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 60
  %285 = and i32 %2, 2
  %286 = icmp eq i32 %285, 0
  %287 = icmp eq i32 %2, 0
  %288 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 17
  %289 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %290 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %291 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %292 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %293 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26, i32 1
  %294 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 41
  %295 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 23
  %296 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 24
  %297 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %298 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 94
  %299 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 19
  br label %300

300:                                              ; preds = %784, %244
  %301 = phi i32 [ %233, %244 ], [ %786, %784 ]
  %302 = load ptr, ptr %262, align 4
  %303 = icmp eq ptr %302, %262
  %304 = icmp eq ptr %302, null
  %305 = or i1 %303, %304
  br i1 %305, label %807, label %306

306:                                              ; preds = %300
  %307 = load i16, ptr %263, align 4
  %308 = and i16 %307, 16384
  %309 = icmp eq i16 %308, 0
  br i1 %309, label %323, label %310, !prof !19

310:                                              ; preds = %306
  %311 = load i8, ptr %264, align 2
  %312 = icmp eq i8 %311, 2
  br i1 %312, label %313, label %323

313:                                              ; preds = %310
  %314 = load i64, ptr %7, align 8
  store i64 %314, ptr %265, align 8
  %315 = getelementptr inbounds %struct.sk_buff, ptr %302, i32 0, i32 2
  store i64 %314, ptr %315, align 8
  %316 = getelementptr inbounds %struct.sk_buff, ptr %302, i32 0, i32 4
  %317 = getelementptr inbounds %struct.sk_buff, ptr %302, i32 0, i32 4, i32 0, i32 1
  %318 = load ptr, ptr %317, align 4
  %319 = load ptr, ptr %316, align 4
  %320 = getelementptr inbounds %struct.list_head, ptr %319, i32 0, i32 1
  store ptr %318, ptr %320, align 4
  store volatile ptr %319, ptr %318, align 4
  %321 = load ptr, ptr %267, align 4
  store ptr %316, ptr %267, align 4
  store ptr %266, ptr %316, align 4
  store ptr %321, ptr %317, align 4
  store volatile ptr %316, ptr %321, align 4
  %322 = tail call fastcc i32 @tcp_init_tso_segs(ptr noundef nonnull %302, i32 noundef %1)
  br label %736

323:                                              ; preds = %310, %306
  %324 = load volatile i32, ptr %268, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !41
  %325 = icmp eq i32 %324, 1
  br i1 %325, label %326, label %347

326:                                              ; preds = %323
  %327 = load i64, ptr %265, align 8
  %328 = load i64, ptr %7, align 8
  %329 = icmp ugt i64 %327, %328
  br i1 %329, label %330, label %347

330:                                              ; preds = %326
  %331 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 85, i32 4
  %332 = load volatile i8, ptr %331, align 8
  %333 = and i8 %332, 1
  %334 = icmp eq i8 %333, 0
  br i1 %334, label %335, label %807

335:                                              ; preds = %330
  %336 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 85
  tail call void @hrtimer_start_range_ns(ptr noundef %336, i64 noundef %327, i64 noundef 0, i32 noundef 6) #19
  %337 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %337) #19, !srcloc !13
  %338 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %337, ptr %337, i32 1, ptr elementtype(i32) %337) #19, !srcloc !29
  %339 = extractvalue { i32, i32, i32 } %338, 0
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %345, label %341, !prof !18

341:                                              ; preds = %335
  %342 = add i32 %339, 1
  %343 = or i32 %342, %339
  %344 = icmp sgt i32 %343, -1
  br i1 %344, label %807, label %345, !prof !19

345:                                              ; preds = %341, %335
  %346 = phi i32 [ 2, %335 ], [ 1, %341 ]
  tail call void @refcount_warn_saturate(ptr noundef %337, i32 noundef %346) #19
  br label %807

347:                                              ; preds = %326, %323
  %348 = getelementptr inbounds %struct.sk_buff, ptr %302, i32 0, i32 3, i32 8
  %349 = load i16, ptr %348, align 8
  switch i16 %349, label %350 [
    i16 0, label %355
    i16 1, label %368
  ]

350:                                              ; preds = %347
  %351 = getelementptr inbounds %struct.sk_buff, ptr %302, i32 0, i32 3, i32 10
  %352 = load i16, ptr %351, align 2
  %353 = zext i16 %352 to i32
  %354 = icmp eq i32 %353, %1
  br i1 %354, label %368, label %355

355:                                              ; preds = %350, %347
  %356 = getelementptr inbounds %struct.sk_buff, ptr %302, i32 0, i32 5
  %357 = load i32, ptr %356, align 8
  %358 = icmp ugt i32 %357, %1
  br i1 %358, label %361, label %359

359:                                              ; preds = %355
  store i16 1, ptr %348, align 8
  %360 = getelementptr inbounds %struct.sk_buff, ptr %302, i32 0, i32 3, i32 10
  store i16 0, ptr %360, align 2
  br label %368

361:                                              ; preds = %355
  %362 = add i32 %269, %357
  %363 = udiv i32 %362, %1
  %364 = trunc i32 %363 to i16
  store i16 %364, ptr %348, align 8
  %365 = getelementptr inbounds %struct.sk_buff, ptr %302, i32 0, i32 3, i32 10
  store i16 %270, ptr %365, align 2
  %366 = icmp eq i16 %364, 0
  br i1 %366, label %367, label %368, !prof !18

367:                                              ; preds = %361
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/tcp_output.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2629, 0\0A.popsection", ""() #19, !srcloc !42
  unreachable

368:                                              ; preds = %361, %359, %350, %347
  %369 = phi i16 [ %364, %361 ], [ %349, %347 ], [ 1, %359 ], [ %349, %350 ]
  %370 = getelementptr inbounds %struct.sk_buff, ptr %302, i32 0, i32 3, i32 12
  %371 = load i8, ptr %370, align 4
  %372 = and i8 %371, 1
  %373 = icmp eq i8 %372, 0
  %374 = xor i1 %373, true
  %375 = icmp eq i16 %369, 1
  %376 = select i1 %374, i1 %375, i1 false
  br i1 %376, label %396, label %377

377:                                              ; preds = %368
  %378 = load i32, ptr %271, align 4
  %379 = load i32, ptr %272, align 4
  %380 = load i32, ptr %273, align 8
  %381 = load i32, ptr %274, align 8
  %382 = add i32 %379, %380
  %383 = sub i32 %378, %382
  %384 = add i32 %383, %381
  %385 = load i32, ptr %275, align 8
  %386 = icmp ugt i32 %385, %384
  br i1 %386, label %387, label %395

387:                                              ; preds = %377
  %388 = lshr i32 %385, 1
  %389 = tail call i32 @llvm.umax.i32(i32 %388, i32 1) #19
  %390 = sub i32 %385, %384
  %391 = tail call i32 @llvm.umin.i32(i32 %389, i32 %390) #19
  %392 = icmp ne i32 %391, 0
  %393 = or i1 %392, %276
  %394 = select i1 %392, i32 %391, i32 1
  br i1 %393, label %396, label %807

395:                                              ; preds = %377
  br i1 %276, label %396, label %807

396:                                              ; preds = %395, %387, %368
  %397 = phi i32 [ %394, %387 ], [ 1, %395 ], [ 1, %368 ]
  %398 = getelementptr inbounds %struct.sk_buff, ptr %302, i32 0, i32 3, i32 4
  %399 = load i32, ptr %398, align 4
  %400 = getelementptr inbounds %struct.sk_buff, ptr %302, i32 0, i32 5
  %401 = load i32, ptr %400, align 8
  %402 = icmp ugt i32 %401, %1
  br i1 %402, label %403, label %407

403:                                              ; preds = %396
  %404 = getelementptr inbounds %struct.sk_buff, ptr %302, i32 0, i32 3
  %405 = load i32, ptr %404, align 8
  %406 = add i32 %405, %1
  br label %407

407:                                              ; preds = %403, %396
  %408 = phi i32 [ %406, %403 ], [ %399, %396 ]
  %409 = load i32, ptr %277, align 4
  %410 = load i32, ptr %278, align 4
  %411 = sub i32 %409, %408
  %412 = add i32 %411, %410
  %413 = icmp sgt i32 %412, -1
  br i1 %413, label %414, label %787, !prof !19

414:                                              ; preds = %407
  %415 = icmp eq i16 %369, 1
  br i1 %415, label %416, label %444

416:                                              ; preds = %414
  %417 = load ptr, ptr %302, align 8
  %418 = icmp eq ptr %417, %262
  %419 = select i1 %418, i32 %2, i32 4
  %420 = and i32 %419, 4
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %422, label %569

422:                                              ; preds = %416
  %423 = load i32, ptr %284, align 8
  %424 = icmp eq i32 %409, %423
  %425 = select i1 %424, i1 %373, i1 false
  %426 = icmp ult i32 %401, %1
  %427 = select i1 %425, i1 %426, i1 false
  br i1 %427, label %428, label %569

428:                                              ; preds = %422
  %429 = and i32 %419, 2
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %431, label %807

431:                                              ; preds = %428
  %432 = icmp eq i32 %419, 0
  br i1 %432, label %433, label %569

433:                                              ; preds = %431
  %434 = load i32, ptr %271, align 4
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %569, label %436

436:                                              ; preds = %433
  %437 = load i32, ptr %288, align 8
  %438 = sub i32 %409, %437
  %439 = icmp slt i32 %438, 0
  br i1 %439, label %440, label %569

440:                                              ; preds = %436
  %441 = load i32, ptr %289, align 4
  %442 = sub i32 %441, %437
  %443 = icmp sgt i32 %442, -1
  br i1 %443, label %807, label %569

444:                                              ; preds = %414
  br i1 %15, label %445, label %529

445:                                              ; preds = %444
  %446 = load i8, ptr %279, align 4
  %447 = and i8 %446, 31
  %448 = icmp ugt i8 %447, 2
  br i1 %448, label %529, label %449

449:                                              ; preds = %445
  %450 = load i64, ptr %7, align 8
  %451 = load i64, ptr %265, align 8
  %452 = add i64 %450, -1000000
  %453 = sub i64 %452, %451
  %454 = icmp sgt i64 %453, 0
  br i1 %454, label %529, label %455

455:                                              ; preds = %449
  %456 = load i32, ptr %271, align 4
  %457 = load i32, ptr %272, align 4
  %458 = load i32, ptr %273, align 8
  %459 = load i32, ptr %274, align 8
  %460 = add i32 %457, %458
  %461 = sub i32 %456, %460
  %462 = add i32 %461, %459
  %463 = icmp ult i16 %369, 2
  br i1 %463, label %464, label %465, !prof !18

464:                                              ; preds = %455
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/tcp_output.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2189, 0\0A.popsection", ""() #19, !srcloc !43
  unreachable

465:                                              ; preds = %455
  %466 = load i32, ptr %275, align 8
  %467 = icmp ugt i32 %466, %462
  br i1 %467, label %469, label %468, !prof !19

468:                                              ; preds = %465
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/tcp_output.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2190, 0\0A.popsection", ""() #19, !srcloc !44
  unreachable

469:                                              ; preds = %465
  %470 = add i32 %410, %409
  %471 = getelementptr inbounds %struct.sk_buff, ptr %302, i32 0, i32 3
  %472 = load i32, ptr %471, align 8
  %473 = sub i32 %470, %472
  %474 = sub i32 %466, %462
  %475 = load i32, ptr %280, align 4
  %476 = mul i32 %475, %474
  %477 = tail call i32 @llvm.umin.i32(i32 %473, i32 %476) #19
  %478 = mul i32 %475, %261
  %479 = icmp ult i32 %477, %478
  br i1 %479, label %480, label %529

480:                                              ; preds = %469
  %481 = load volatile ptr, ptr %281, align 4
  %482 = icmp eq ptr %481, %262
  %483 = select i1 %482, ptr null, ptr %481
  %484 = icmp eq ptr %483, %302
  %485 = icmp ult i32 %477, %401
  %486 = select i1 %484, i1 true, i1 %485
  br i1 %486, label %487, label %529

487:                                              ; preds = %480
  %488 = load volatile i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 84), align 2
  %489 = icmp eq i8 %488, 0
  br i1 %489, label %496, label %490

490:                                              ; preds = %487
  %491 = zext i8 %488 to i32
  %492 = mul i32 %475, %466
  %493 = tail call i32 @llvm.umin.i32(i32 %410, i32 %492) #19
  %494 = udiv i32 %493, %491
  %495 = icmp ult i32 %477, %494
  br i1 %495, label %499, label %529

496:                                              ; preds = %487
  %497 = mul i32 %475, 3
  %498 = icmp ugt i32 %477, %497
  br i1 %498, label %529, label %499

499:                                              ; preds = %496, %490
  %500 = tail call ptr @rb_first(ptr noundef %282) #19
  %501 = icmp eq ptr %500, null
  br i1 %501, label %529, label %502

502:                                              ; preds = %499
  %503 = load i64, ptr %7, align 8
  %504 = getelementptr inbounds %struct.sk_buff, ptr %500, i32 0, i32 2
  %505 = load i64, ptr %504, align 8
  %506 = sub i64 %503, %505
  %507 = load i32, ptr %283, align 8
  %508 = lshr i32 %507, 4
  %509 = zext i32 %508 to i64
  %510 = mul nsw i64 %509, -1000
  %511 = add i64 %506, %510
  %512 = icmp slt i64 %511, 0
  br i1 %512, label %529, label %513

513:                                              ; preds = %502
  %514 = icmp ult i32 %476, %473
  %515 = load i32, ptr %400, align 8
  br i1 %514, label %516, label %518

516:                                              ; preds = %513
  %517 = icmp ugt i32 %476, %515
  br i1 %517, label %520, label %807

518:                                              ; preds = %513
  %519 = icmp ugt i32 %473, %515
  br i1 %519, label %520, label %787

520:                                              ; preds = %518, %516
  %521 = load i8, ptr %370, align 4
  %522 = and i8 %521, 1
  %523 = icmp eq i8 %522, 0
  br i1 %523, label %524, label %529

524:                                              ; preds = %520
  %525 = getelementptr inbounds %struct.sk_buff, ptr %302, i32 0, i32 3, i32 15
  %526 = load i8, ptr %525, align 1
  %527 = and i8 %526, 2
  %528 = icmp eq i8 %527, 0
  br i1 %528, label %807, label %529

529:                                              ; preds = %524, %520, %502, %499, %496, %490, %480, %469, %449, %445, %444
  %530 = load i32, ptr %277, align 4
  %531 = load i32, ptr %284, align 8
  %532 = icmp eq i32 %530, %531
  br i1 %532, label %533, label %569

533:                                              ; preds = %529
  %534 = tail call i32 @llvm.umin.i32(i32 %397, i32 %261)
  %535 = load i32, ptr %278, align 4
  %536 = add i32 %535, %530
  %537 = getelementptr inbounds %struct.sk_buff, ptr %302, i32 0, i32 3
  %538 = load i32, ptr %537, align 8
  %539 = sub i32 %536, %538
  %540 = mul i32 %534, %1
  %541 = icmp ugt i32 %540, %539
  br i1 %541, label %547, label %542, !prof !18

542:                                              ; preds = %533
  %543 = load volatile ptr, ptr %281, align 4
  %544 = icmp eq ptr %543, %262
  %545 = select i1 %544, ptr null, ptr %543
  %546 = icmp eq ptr %545, %302
  br i1 %546, label %547, label %569, !prof !18

547:                                              ; preds = %542, %533
  %548 = load i32, ptr %400, align 8
  %549 = tail call i32 @llvm.umin.i32(i32 %548, i32 %539) #19
  %550 = icmp ugt i32 %540, %549
  br i1 %550, label %551, label %569

551:                                              ; preds = %547
  %552 = urem i32 %549, %1
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %569, label %554

554:                                              ; preds = %551
  br i1 %286, label %555, label %567

555:                                              ; preds = %554
  br i1 %287, label %556, label %569

556:                                              ; preds = %555
  %557 = load i32, ptr %271, align 4
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %569, label %559

559:                                              ; preds = %556
  %560 = load i32, ptr %288, align 8
  %561 = sub i32 %530, %560
  %562 = icmp slt i32 %561, 0
  br i1 %562, label %563, label %569

563:                                              ; preds = %559
  %564 = load i32, ptr %289, align 4
  %565 = sub i32 %564, %560
  %566 = icmp sgt i32 %565, -1
  br i1 %566, label %567, label %569

567:                                              ; preds = %563, %554
  %568 = sub i32 %549, %552
  br label %569

569:                                              ; preds = %567, %563, %559, %556, %555, %551, %547, %542, %529, %440, %436, %433, %431, %422, %416
  %570 = phi i32 [ %1, %529 ], [ %1, %416 ], [ %1, %422 ], [ %1, %440 ], [ %1, %433 ], [ %1, %431 ], [ %1, %436 ], [ %540, %542 ], [ %540, %547 ], [ %568, %567 ], [ %549, %563 ], [ %549, %551 ], [ %549, %556 ], [ %549, %555 ], [ %549, %559 ]
  %571 = load i32, ptr %400, align 8
  %572 = icmp ugt i32 %571, %570
  br i1 %572, label %573, label %691

573:                                              ; preds = %569
  %574 = sub i32 %571, %570
  %575 = getelementptr inbounds %struct.sk_buff, ptr %302, i32 0, i32 6
  %576 = load i32, ptr %575, align 4
  %577 = icmp eq i32 %571, %576
  br i1 %577, label %578, label %688

578:                                              ; preds = %573
  %579 = tail call ptr @tcp_stream_alloc_skb(ptr noundef %0, i32 noundef 0, i32 noundef %4, i1 noundef zeroext true) #19
  %580 = icmp eq ptr %579, null
  br i1 %580, label %807, label %581, !prof !18

581:                                              ; preds = %578
  %582 = getelementptr inbounds %struct.sk_buff, ptr %579, i32 0, i32 18
  %583 = load i32, ptr %582, align 8
  %584 = load i32, ptr %290, align 4
  %585 = add i32 %584, %583
  store volatile i32 %585, ptr %290, align 4
  %586 = load ptr, ptr %291, align 8
  %587 = getelementptr inbounds %struct.proto, ptr %586, i32 0, i32 30
  %588 = load ptr, ptr %587, align 4
  %589 = icmp eq ptr %588, null
  br i1 %589, label %594, label %590

590:                                              ; preds = %581
  %591 = load i32, ptr %582, align 8
  %592 = load i32, ptr %292, align 4
  %593 = sub i32 %592, %591
  store i32 %593, ptr %292, align 4
  br label %594

594:                                              ; preds = %590, %581
  %595 = load i32, ptr %582, align 8
  %596 = add i32 %595, %574
  store i32 %596, ptr %582, align 8
  %597 = getelementptr inbounds %struct.sk_buff, ptr %302, i32 0, i32 18
  %598 = load i32, ptr %597, align 8
  %599 = sub i32 %598, %574
  store i32 %599, ptr %597, align 8
  %600 = getelementptr inbounds %struct.sk_buff, ptr %302, i32 0, i32 3
  %601 = load i32, ptr %600, align 8
  %602 = add i32 %601, %570
  %603 = getelementptr inbounds %struct.sk_buff, ptr %579, i32 0, i32 3
  store i32 %602, ptr %603, align 8
  %604 = load i32, ptr %398, align 4
  %605 = getelementptr inbounds %struct.sk_buff, ptr %579, i32 0, i32 3, i32 4
  store i32 %604, ptr %605, align 4
  store i32 %602, ptr %398, align 4
  %606 = load i8, ptr %370, align 4
  %607 = and i8 %606, -10
  store i8 %607, ptr %370, align 4
  %608 = getelementptr inbounds %struct.sk_buff, ptr %579, i32 0, i32 3, i32 12
  store i8 %606, ptr %608, align 4
  %609 = getelementptr inbounds %struct.sk_buff, ptr %302, i32 0, i32 3, i32 15
  %610 = load i8, ptr %609, align 1
  %611 = and i8 %610, 2
  %612 = getelementptr inbounds %struct.sk_buff, ptr %579, i32 0, i32 3, i32 15
  %613 = load i8, ptr %612, align 1
  %614 = and i8 %613, -3
  %615 = or i8 %614, %611
  store i8 %615, ptr %612, align 1
  %616 = load i8, ptr %609, align 1
  %617 = and i8 %616, -3
  store i8 %617, ptr %609, align 1
  tail call void @skb_split(ptr noundef nonnull %302, ptr noundef nonnull %579, i32 noundef %570) #19
  %618 = getelementptr inbounds %struct.sk_buff, ptr %302, i32 0, i32 15
  %619 = load ptr, ptr %618, align 4
  %620 = load i8, ptr %609, align 1
  %621 = and i8 %620, 1
  %622 = icmp eq i8 %621, 0
  br i1 %622, label %623, label %628, !prof !34

623:                                              ; preds = %594
  %624 = getelementptr inbounds %struct.skb_shared_info, ptr %619, i32 0, i32 3
  %625 = load i8, ptr %624, align 1
  %626 = and i8 %625, 67
  %627 = icmp eq i8 %626, 0
  br i1 %627, label %654, label %628, !prof !19

628:                                              ; preds = %623, %594
  %629 = getelementptr inbounds %struct.skb_shared_info, ptr %619, i32 0, i32 9
  %630 = load i32, ptr %629, align 4
  %631 = load i32, ptr %603, align 8
  %632 = sub i32 %630, %631
  %633 = icmp slt i32 %632, 0
  br i1 %633, label %654, label %634

634:                                              ; preds = %628
  %635 = getelementptr inbounds %struct.sk_buff, ptr %579, i32 0, i32 15
  %636 = load ptr, ptr %635, align 4
  %637 = getelementptr inbounds %struct.skb_shared_info, ptr %619, i32 0, i32 3
  %638 = load i8, ptr %637, align 1
  %639 = and i8 %638, 67
  %640 = and i8 %638, -68
  store i8 %640, ptr %637, align 1
  %641 = getelementptr inbounds %struct.skb_shared_info, ptr %636, i32 0, i32 3
  %642 = load i8, ptr %641, align 1
  %643 = or i8 %642, %639
  store i8 %643, ptr %641, align 1
  %644 = load i32, ptr %629, align 4
  %645 = getelementptr inbounds %struct.skb_shared_info, ptr %636, i32 0, i32 9
  %646 = load i32, ptr %645, align 4
  store i32 %646, ptr %629, align 4
  store i32 %644, ptr %645, align 4
  %647 = load i8, ptr %609, align 1
  %648 = and i8 %647, 1
  %649 = load i8, ptr %612, align 1
  %650 = and i8 %649, -2
  %651 = or i8 %650, %648
  store i8 %651, ptr %612, align 1
  %652 = load i8, ptr %609, align 1
  %653 = and i8 %652, -2
  store i8 %653, ptr %609, align 1
  br label %654

654:                                              ; preds = %634, %628, %623
  %655 = load i32, ptr %400, align 8
  %656 = icmp ugt i32 %655, %1
  br i1 %656, label %657, label %661

657:                                              ; preds = %654
  %658 = add i32 %269, %655
  %659 = udiv i32 %658, %1
  %660 = trunc i32 %659 to i16
  br label %661

661:                                              ; preds = %657, %654
  %662 = phi i16 [ %660, %657 ], [ 1, %654 ]
  %663 = phi i16 [ %270, %657 ], [ 0, %654 ]
  store i16 %662, ptr %348, align 8
  %664 = getelementptr inbounds %struct.sk_buff, ptr %302, i32 0, i32 3, i32 10
  store i16 %663, ptr %664, align 2
  %665 = getelementptr inbounds %struct.sk_buff, ptr %579, i32 0, i32 5
  %666 = load i32, ptr %665, align 8
  %667 = icmp ugt i32 %666, %1
  br i1 %667, label %668, label %672

668:                                              ; preds = %661
  %669 = add i32 %269, %666
  %670 = udiv i32 %669, %1
  %671 = trunc i32 %670 to i16
  br label %672

672:                                              ; preds = %668, %661
  %673 = phi i16 [ %671, %668 ], [ 1, %661 ]
  %674 = phi i16 [ %270, %668 ], [ 0, %661 ]
  %675 = getelementptr inbounds %struct.sk_buff, ptr %579, i32 0, i32 3, i32 8
  store i16 %673, ptr %675, align 8
  %676 = getelementptr inbounds %struct.sk_buff, ptr %579, i32 0, i32 3, i32 10
  store i16 %674, ptr %676, align 2
  %677 = getelementptr inbounds %struct.sk_buff, ptr %579, i32 0, i32 11
  %678 = load i8, ptr %677, align 2
  %679 = or i8 %678, 2
  store i8 %679, ptr %677, align 2
  %680 = getelementptr inbounds %struct.sk_buff, ptr %579, i32 0, i32 15
  %681 = load ptr, ptr %680, align 4
  %682 = getelementptr inbounds %struct.skb_shared_info, ptr %681, i32 0, i32 10
  store volatile i32 65537, ptr %682, align 4
  %683 = load ptr, ptr %302, align 4
  store volatile ptr %683, ptr %579, align 8
  %684 = getelementptr inbounds %struct.anon.43, ptr %579, i32 0, i32 1
  store volatile ptr %302, ptr %684, align 4
  %685 = getelementptr inbounds %struct.sk_buff_list, ptr %683, i32 0, i32 1
  store volatile ptr %579, ptr %685, align 4
  store volatile ptr %579, ptr %302, align 4
  %686 = load i32, ptr %293, align 4
  %687 = add i32 %686, 1
  store volatile i32 %687, ptr %293, align 4
  br label %691

688:                                              ; preds = %573
  %689 = tail call i32 @tcp_fragment(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %302, i32 noundef %570, i32 noundef %1, i32 noundef %4) #19
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %691, label %807, !prof !19

691:                                              ; preds = %688, %672, %569
  %692 = getelementptr inbounds %struct.sk_buff, ptr %302, i32 0, i32 18
  %693 = load i32, ptr %692, align 8
  %694 = shl i32 %693, 1
  %695 = load i32, ptr %246, align 4
  %696 = load volatile i8, ptr %248, align 1
  %697 = zext i8 %696 to i32
  %698 = lshr i32 %695, %697
  %699 = tail call i32 @llvm.umax.i32(i32 %694, i32 %698) #19
  %700 = load i32, ptr %268, align 8
  %701 = icmp eq i32 %700, 0
  %702 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 86), align 8
  %703 = tail call i32 @llvm.umin.i32(i32 %699, i32 %702) #19
  %704 = select i1 %701, i32 %703, i32 %699
  %705 = load volatile i32, ptr @tcp_tx_delay_enabled, align 4
  %706 = icmp sgt i32 %705, 0
  br i1 %706, label %707, label %717, !prof !18

707:                                              ; preds = %691
  %708 = load i32, ptr %294, align 4
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %717, label %710

710:                                              ; preds = %707
  %711 = zext i32 %695 to i64
  %712 = zext i32 %708 to i64
  %713 = mul nuw i64 %712, %711
  %714 = lshr i64 %713, 19
  %715 = trunc i64 %714 to i32
  %716 = add i32 %704, %715
  br label %717

717:                                              ; preds = %710, %707, %691
  %718 = phi i32 [ %716, %710 ], [ %704, %707 ], [ %704, %691 ]
  %719 = load volatile i32, ptr %295, align 4
  %720 = icmp ugt i32 %719, %718
  br i1 %720, label %721, label %727

721:                                              ; preds = %717
  %722 = load volatile ptr, ptr %282, align 8
  %723 = icmp eq ptr %722, null
  br i1 %723, label %727, label %724

724:                                              ; preds = %721
  tail call void @_set_bit(i32 noundef 0, ptr noundef %296) #19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !45
  %725 = load volatile i32, ptr %295, align 4
  %726 = icmp ugt i32 %725, %718
  br i1 %726, label %807, label %727

727:                                              ; preds = %724, %721, %717
  %728 = getelementptr inbounds %struct.sk_buff, ptr %302, i32 0, i32 3
  %729 = load i32, ptr %398, align 4
  %730 = load i32, ptr %728, align 8
  %731 = icmp eq i32 %729, %730
  br i1 %731, label %807, label %732

732:                                              ; preds = %727
  %733 = load i32, ptr %297, align 8
  %734 = tail call fastcc i32 @__tcp_transmit_skb(ptr noundef %0, ptr noundef nonnull %302, i32 noundef 1, i32 noundef %4, i32 noundef %733) #19
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %736, label %807, !prof !19

736:                                              ; preds = %732, %313
  %737 = load i32, ptr %271, align 4
  %738 = getelementptr inbounds %struct.sk_buff, ptr %302, i32 0, i32 3, i32 4
  %739 = load i32, ptr %738, align 4
  store volatile i32 %739, ptr %289, align 4
  %740 = load i32, ptr %293, align 4
  %741 = add i32 %740, -1
  store volatile i32 %741, ptr %293, align 4
  %742 = load ptr, ptr %302, align 8
  %743 = getelementptr inbounds %struct.anon.43, ptr %302, i32 0, i32 1
  %744 = load ptr, ptr %743, align 4
  store ptr null, ptr %743, align 4
  store ptr null, ptr %302, align 8
  %745 = getelementptr inbounds %struct.anon.43, ptr %742, i32 0, i32 1
  store volatile ptr %744, ptr %745, align 4
  store volatile ptr %742, ptr %744, align 8
  tail call void @tcp_rbtree_insert(ptr noundef %282, ptr noundef nonnull %302) #19
  %746 = load ptr, ptr %298, align 8
  %747 = icmp eq ptr %746, null
  br i1 %747, label %748, label %749

748:                                              ; preds = %736
  store ptr %302, ptr %298, align 8
  br label %749

749:                                              ; preds = %748, %736
  %750 = getelementptr inbounds %struct.sk_buff, ptr %302, i32 0, i32 3, i32 8
  %751 = load i16, ptr %750, align 8
  %752 = zext i16 %751 to i32
  %753 = load i32, ptr %271, align 4
  %754 = add i32 %753, %752
  store i32 %754, ptr %271, align 4
  %755 = icmp eq i32 %737, 0
  br i1 %755, label %759, label %756

756:                                              ; preds = %749
  %757 = load i8, ptr %299, align 2
  %758 = icmp eq i8 %757, 5
  br i1 %758, label %759, label %760

759:                                              ; preds = %756, %749
  tail call void @tcp_rearm_rto(ptr noundef %0) #19
  br label %760

760:                                              ; preds = %759, %756
  %761 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !20
  %762 = load i16, ptr %750, align 8
  %763 = zext i16 %762 to i32
  %764 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %765 = getelementptr [126 x i32], ptr %764, i32 0, i32 98
  %766 = ptrtoint ptr %765 to i32
  %767 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %768 = inttoptr i32 %767 to ptr
  %769 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %768) #16, !srcloc !25
  %770 = add i32 %769, %766
  %771 = inttoptr i32 %770 to ptr
  %772 = load i32, ptr %771, align 4
  %773 = add i32 %772, %763
  store i32 %773, ptr %771, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %761) #19, !srcloc !21
  %774 = getelementptr inbounds %struct.sk_buff, ptr %302, i32 0, i32 5
  %775 = load i32, ptr %774, align 8
  %776 = load i16, ptr %750, align 8
  %777 = zext i16 %776 to i32
  %778 = mul i32 %777, %1
  %779 = icmp ult i32 %775, %778
  br i1 %779, label %780, label %784

780:                                              ; preds = %760
  %781 = load i32, ptr %738, align 4
  store i32 %781, ptr %288, align 8
  %782 = load i16, ptr %750, align 8
  %783 = zext i16 %782 to i32
  br label %784

784:                                              ; preds = %780, %760
  %785 = phi i32 [ %777, %760 ], [ %783, %780 ]
  %786 = add i32 %301, %785
  br i1 %15, label %300, label %807

787:                                              ; preds = %518, %407
  %788 = load i16, ptr %263, align 4
  %789 = and i16 %788, 3
  %790 = zext i16 %789 to i32
  %791 = icmp ult i16 %789, 2
  br i1 %791, label %792, label %852

792:                                              ; preds = %787
  %793 = load volatile i32, ptr @jiffies, align 64
  %794 = icmp eq i16 %789, 0
  br i1 %794, label %803, label %795

795:                                              ; preds = %792
  %796 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 35
  %797 = load i32, ptr %796, align 4
  %798 = sub i32 %793, %797
  %799 = add nsw i32 %790, -1
  %800 = getelementptr %struct.tcp_sock, ptr %0, i32 0, i32 36, i32 %799
  %801 = load i32, ptr %800, align 4
  %802 = add i32 %798, %801
  store i32 %802, ptr %800, align 4
  br label %803

803:                                              ; preds = %795, %792
  %804 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 35
  store i32 %793, ptr %804, align 4
  %805 = and i16 %788, -4
  %806 = or i16 %805, 2
  br label %848

807:                                              ; preds = %784, %732, %727, %724, %688, %578, %524, %516, %440, %428, %395, %387, %345, %341, %330, %300
  %808 = phi i8 [ 0, %330 ], [ 0, %341 ], [ 0, %345 ], [ 0, %578 ], [ 0, %524 ], [ 1, %516 ], [ 0, %727 ], [ 0, %784 ], [ 0, %732 ], [ 0, %688 ], [ 0, %395 ], [ 0, %428 ], [ 0, %440 ], [ 0, %724 ], [ 0, %300 ], [ 0, %387 ]
  %809 = phi i32 [ %301, %330 ], [ %301, %341 ], [ %301, %345 ], [ %301, %578 ], [ %301, %524 ], [ %301, %516 ], [ %301, %727 ], [ %786, %784 ], [ %301, %732 ], [ %301, %688 ], [ %301, %395 ], [ %301, %428 ], [ %301, %440 ], [ %301, %724 ], [ %301, %300 ], [ %301, %387 ]
  %810 = load volatile ptr, ptr %282, align 8
  %811 = icmp eq ptr %810, null
  br i1 %811, label %812, label %834

812:                                              ; preds = %807
  %813 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %814 = load i32, ptr %813, align 4
  %815 = load i32, ptr %289, align 4
  %816 = icmp eq i32 %814, %815
  br i1 %816, label %817, label %834

817:                                              ; preds = %812
  %818 = load volatile i32, ptr @jiffies, align 64
  %819 = load i16, ptr %263, align 4
  %820 = and i16 %819, 3
  %821 = icmp eq i16 %820, 0
  br i1 %821, label %831, label %822

822:                                              ; preds = %817
  %823 = zext i16 %820 to i32
  %824 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 35
  %825 = load i32, ptr %824, align 4
  %826 = sub i32 %818, %825
  %827 = add nsw i32 %823, -1
  %828 = getelementptr %struct.tcp_sock, ptr %0, i32 0, i32 36, i32 %827
  %829 = load i32, ptr %828, align 4
  %830 = add i32 %826, %829
  store i32 %830, ptr %828, align 4
  br label %831

831:                                              ; preds = %822, %817
  %832 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 35
  store i32 %818, ptr %832, align 4
  %833 = and i16 %819, -4
  br label %848

834:                                              ; preds = %812, %807
  %835 = load i16, ptr %263, align 4
  %836 = and i16 %835, 3
  %837 = icmp eq i16 %836, 2
  br i1 %837, label %838, label %852

838:                                              ; preds = %834
  %839 = load volatile i32, ptr @jiffies, align 64
  %840 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 35
  %841 = load i32, ptr %840, align 4
  %842 = sub i32 %839, %841
  %843 = getelementptr %struct.tcp_sock, ptr %0, i32 0, i32 36, i32 1
  %844 = load i32, ptr %843, align 4
  %845 = add i32 %842, %844
  store i32 %845, ptr %843, align 4
  store i32 %839, ptr %840, align 4
  %846 = and i16 %835, -4
  %847 = or i16 %846, 1
  br label %848

848:                                              ; preds = %838, %831, %803
  %849 = phi i16 [ %847, %838 ], [ %833, %831 ], [ %806, %803 ]
  %850 = phi i32 [ %809, %838 ], [ %809, %831 ], [ %301, %803 ]
  %851 = phi i8 [ %808, %838 ], [ %808, %831 ], [ 0, %803 ]
  store i16 %849, ptr %263, align 4
  br label %852

852:                                              ; preds = %848, %834, %787
  %853 = phi i32 [ %809, %834 ], [ %301, %787 ], [ %850, %848 ]
  %854 = phi i8 [ %808, %834 ], [ 0, %787 ], [ %851, %848 ]
  %855 = load i32, ptr %271, align 4
  %856 = load i32, ptr %272, align 4
  %857 = load i32, ptr %273, align 8
  %858 = load i32, ptr %274, align 8
  %859 = add i32 %856, %857
  %860 = sub i32 %855, %859
  %861 = add i32 %860, %858
  %862 = load i32, ptr %275, align 8
  %863 = icmp uge i32 %861, %862
  %864 = zext i1 %863 to i32
  %865 = zext i8 %854 to i32
  %866 = or i32 %864, %865
  %867 = icmp ne i32 %866, 0
  %868 = icmp ne i32 %853, 0
  %869 = select i1 %868, i1 true, i1 %867
  br i1 %869, label %870, label %1005, !prof !19

870:                                              ; preds = %852
  %871 = load ptr, ptr %234, align 4
  %872 = load i32, ptr %277, align 4
  %873 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 54
  %874 = load i32, ptr %873, align 8
  %875 = sub i32 %872, %874
  %876 = icmp slt i32 %875, 0
  br i1 %876, label %877, label %882

877:                                              ; preds = %870
  %878 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 53
  %879 = load i32, ptr %878, align 4
  %880 = icmp ugt i32 %855, %879
  %881 = or i1 %867, %880
  br i1 %881, label %882, label %890

882:                                              ; preds = %877, %870
  %883 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 53
  store i32 %855, ptr %883, align 4
  %884 = load i32, ptr %289, align 4
  store i32 %884, ptr %873, align 8
  %885 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 39
  %886 = load i8, ptr %885, align 1
  %887 = select i1 %867, i8 -128, i8 0
  %888 = and i8 %886, 127
  %889 = or i8 %888, %887
  store i8 %889, ptr %885, align 1
  br label %890

890:                                              ; preds = %882, %877
  %891 = phi i32 [ %879, %877 ], [ %855, %882 ]
  %892 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 62
  %893 = load i32, ptr %892, align 4
  %894 = icmp ult i32 %862, %893
  br i1 %894, label %895, label %898

895:                                              ; preds = %890
  %896 = shl i32 %891, 1
  %897 = icmp ult i32 %862, %896
  br i1 %897, label %902, label %906

898:                                              ; preds = %890
  %899 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 39
  %900 = load i8, ptr %899, align 1
  %901 = icmp slt i8 %900, 0
  br i1 %901, label %902, label %906

902:                                              ; preds = %898, %895
  %903 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 66
  store i32 0, ptr %903, align 4
  %904 = load volatile i32, ptr @jiffies, align 64
  %905 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 67
  store i32 %904, ptr %905, align 8
  br label %1005

906:                                              ; preds = %898, %895
  %907 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 66
  %908 = load i32, ptr %907, align 4
  %909 = icmp ugt i32 %855, %908
  br i1 %909, label %910, label %911

910:                                              ; preds = %906
  store i32 %855, ptr %907, align 4
  br label %911

911:                                              ; preds = %910, %906
  %912 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 70), align 2
  %913 = icmp eq i8 %912, 0
  br i1 %913, label %965, label %914

914:                                              ; preds = %911
  %915 = load volatile i32, ptr @jiffies, align 64
  %916 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 67
  %917 = load i32, ptr %916, align 8
  %918 = sub i32 %915, %917
  %919 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 6
  %920 = load i32, ptr %919, align 4
  %921 = icmp ult i32 %918, %920
  br i1 %921, label %965, label %922

922:                                              ; preds = %914
  %923 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %871, i32 0, i32 7
  %924 = load ptr, ptr %923, align 4
  %925 = icmp eq ptr %924, null
  br i1 %925, label %926, label %965

926:                                              ; preds = %922
  %927 = load i8, ptr %279, align 4
  %928 = and i8 %927, 31
  %929 = icmp eq i8 %928, 0
  br i1 %929, label %930, label %963

930:                                              ; preds = %926
  %931 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %932 = load ptr, ptr %931, align 8
  %933 = icmp eq ptr %932, null
  br i1 %933, label %963, label %934

934:                                              ; preds = %930
  %935 = getelementptr inbounds %struct.socket, ptr %932, i32 0, i32 2
  %936 = load volatile i32, ptr %935, align 4
  %937 = and i32 %936, 4
  %938 = icmp eq i32 %937, 0
  br i1 %938, label %939, label %963

939:                                              ; preds = %934
  %940 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %941 = load volatile ptr, ptr %940, align 8
  %942 = tail call i32 @tcp_init_cwnd(ptr noundef %0, ptr noundef %941) #19
  %943 = load i32, ptr %907, align 4
  %944 = tail call i32 @llvm.umax.i32(i32 %943, i32 %942) #19
  %945 = load i32, ptr %275, align 8
  %946 = icmp ult i32 %944, %945
  br i1 %946, label %947, label %962

947:                                              ; preds = %939
  %948 = load i8, ptr %279, align 4
  %949 = and i8 %948, 31
  %950 = zext i8 %949 to i32
  %951 = shl nuw i32 1, %950
  %952 = and i32 %951, 12
  %953 = icmp eq i32 %952, 0
  %954 = load i32, ptr %892, align 4
  %955 = lshr i32 %945, 1
  %956 = lshr i32 %945, 2
  %957 = add nuw i32 %955, %956
  %958 = tail call i32 @llvm.umax.i32(i32 %954, i32 %957) #19
  %959 = select i1 %953, i32 %958, i32 %954
  store i32 %959, ptr %892, align 4
  %960 = add i32 %945, %944
  %961 = lshr i32 %960, 1
  store i32 %961, ptr %275, align 8
  br label %962

962:                                              ; preds = %947, %939
  store i32 0, ptr %907, align 4
  br label %963

963:                                              ; preds = %962, %934, %930, %926
  %964 = load volatile i32, ptr @jiffies, align 64
  store i32 %964, ptr %916, align 8
  br label %965

965:                                              ; preds = %963, %922, %914, %911
  %966 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %967 = load i32, ptr %966, align 4
  %968 = load i32, ptr %289, align 4
  %969 = icmp eq i32 %967, %968
  br i1 %969, label %970, label %1005

970:                                              ; preds = %965
  %971 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %972 = load ptr, ptr %971, align 8
  %973 = icmp eq ptr %972, null
  br i1 %973, label %1005, label %974

974:                                              ; preds = %970
  %975 = getelementptr inbounds %struct.socket, ptr %972, i32 0, i32 2
  %976 = load volatile i32, ptr %975, align 4
  %977 = and i32 %976, 4
  %978 = icmp eq i32 %977, 0
  br i1 %978, label %1005, label %979

979:                                              ; preds = %974
  %980 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %981 = load volatile i8, ptr %980, align 2
  %982 = zext i8 %981 to i32
  %983 = shl nuw i32 1, %982
  %984 = and i32 %983, 258
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %1005, label %986

986:                                              ; preds = %979
  %987 = load i16, ptr %263, align 4
  %988 = and i16 %987, 3
  %989 = zext i16 %988 to i32
  %990 = icmp eq i16 %988, 3
  br i1 %990, label %1005, label %991

991:                                              ; preds = %986
  %992 = load volatile i32, ptr @jiffies, align 64
  %993 = icmp eq i16 %988, 0
  br i1 %993, label %1002, label %994

994:                                              ; preds = %991
  %995 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 35
  %996 = load i32, ptr %995, align 4
  %997 = sub i32 %992, %996
  %998 = add nsw i32 %989, -1
  %999 = getelementptr %struct.tcp_sock, ptr %0, i32 0, i32 36, i32 %998
  %1000 = load i32, ptr %999, align 4
  %1001 = add i32 %997, %1000
  store i32 %1001, ptr %999, align 4
  br label %1002

1002:                                             ; preds = %994, %991
  %1003 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 35
  store i32 %992, ptr %1003, align 4
  %1004 = or i16 %987, 3
  store i16 %1004, ptr %263, align 4
  br label %1005

1005:                                             ; preds = %1002, %986, %979, %974, %970, %965, %902, %852
  br i1 %868, label %1006, label %1020, !prof !19

1006:                                             ; preds = %1005
  %1007 = load i8, ptr %279, align 4
  %1008 = and i8 %1007, 31
  %1009 = zext i8 %1008 to i32
  %1010 = shl nuw i32 1, %1009
  %1011 = and i32 %1010, 12
  %1012 = icmp eq i32 %1011, 0
  br i1 %1012, label %1017, label %1013

1013:                                             ; preds = %1006
  %1014 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 70
  %1015 = load i32, ptr %1014, align 4
  %1016 = add i32 %1015, %853
  store i32 %1016, ptr %1014, align 4
  br label %1017

1017:                                             ; preds = %1013, %1006
  br i1 %276, label %1028, label %1018

1018:                                             ; preds = %1017
  %1019 = tail call zeroext i1 @tcp_schedule_loss_probe(ptr noundef %0, i1 noundef zeroext false)
  br label %1028

1020:                                             ; preds = %1005
  %1021 = load i32, ptr %271, align 4
  %1022 = icmp eq i32 %1021, 0
  br i1 %1022, label %1023, label %1028

1023:                                             ; preds = %1020
  %1024 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %1025 = load i32, ptr %1024, align 4
  %1026 = load i32, ptr %289, align 4
  %1027 = icmp ne i32 %1025, %1026
  br label %1028

1028:                                             ; preds = %1023, %1020, %1018, %1017, %217, %74
  %1029 = phi i1 [ false, %217 ], [ false, %1018 ], [ false, %1017 ], [ false, %1020 ], [ %1027, %1023 ], [ false, %74 ]
  ret i1 %1029
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_last(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__tcp_retransmit_skb(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 25, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 2147483647
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = and i32 %5, -2147483648
  store i32 %9, ptr %4, align 8
  br label %10

10:                                               ; preds = %8, %3
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %12 = load i8, ptr %11, align 2
  %13 = and i8 %12, 12
  %14 = icmp eq i8 %13, 4
  br i1 %14, label %15, label %46

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.sk_buff_fclones, ptr %1, i32 0, i32 2
  %17 = load volatile i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, 1
  br i1 %18, label %19, label %46

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.sk_buff_fclones, ptr %1, i32 0, i32 1, i32 1
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %23, label %46, !prof !18

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 24
  tail call void @_set_bit(i32 noundef 0, ptr noundef %24) #19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !39
  %25 = load i8, ptr %11, align 2
  %26 = and i8 %25, 12
  %27 = icmp eq i8 %26, 4
  br i1 %27, label %28, label %46

28:                                               ; preds = %23
  %29 = load volatile i32, ptr %16, align 4
  %30 = icmp ugt i32 %29, 1
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = load volatile ptr, ptr %20, align 4
  %33 = icmp eq ptr %32, %0
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !20
  %36 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %37 = getelementptr [126 x i32], ptr %36, i32 0, i32 91
  %38 = ptrtoint ptr %37 to i32
  %39 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %40 = inttoptr i32 %39 to ptr
  %41 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %40) #16, !srcloc !25
  %42 = add i32 %41, %38
  %43 = inttoptr i32 %42 to ptr
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %35) #19, !srcloc !21
  br label %300

46:                                               ; preds = %31, %28, %23, %19, %15, %10
  %47 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %48 = load i32, ptr %47, align 8
  %49 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %50 = load i32, ptr %49, align 4
  %51 = sub i32 %48, %50
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = sub i32 %55, %50
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61, !prof !18

58:                                               ; preds = %53
  %59 = load i1, ptr @__tcp_retransmit_skb.__already_done, align 1
  br i1 %59, label %300, label %60, !prof !19

60:                                               ; preds = %58
  store i1 true, ptr @__tcp_retransmit_skb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3145, i32 noundef 9, ptr noundef null) #19
  br label %300

61:                                               ; preds = %53
  %62 = sub i32 %50, %48
  %63 = tail call i32 @tcp_trim_head(ptr noundef %0, ptr noundef %1, i32 noundef %62)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %300

65:                                               ; preds = %61, %46
  %66 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 11
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = tail call i32 %69(ptr noundef %0) #19
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %300

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %74 = load volatile ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq ptr %74, null
  br i1 %77, label %89, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.dst_entry, ptr %74, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.dst_ops, ptr %80, i32 0, i32 5
  %82 = load ptr, ptr %81, align 4
  %83 = tail call i32 %82(ptr noundef nonnull %74) #19
  %84 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 9
  %85 = load i32, ptr %84, align 8
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %89, label %87

87:                                               ; preds = %78
  %88 = tail call i32 @tcp_sync_mss(ptr noundef %0, i32 noundef %83) #19
  br label %89

89:                                               ; preds = %87, %78, %72
  %90 = phi i32 [ %76, %72 ], [ %88, %87 ], [ %76, %78 ]
  %91 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %92 = load i24, ptr %91, align 4
  %93 = and i24 %92, 2
  %94 = icmp eq i24 %93, 0
  %95 = select i1 %94, i32 0, i32 12, !prof !18
  %96 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 5
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %97 to i32
  %99 = zext i24 %92 to i32
  %100 = lshr i32 %99, 2
  %101 = and i32 %100, 1
  %102 = add nuw nsw i32 %101, %98
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %111, label %104, !prof !19

104:                                              ; preds = %89
  %105 = sub nuw nsw i32 36, %95
  %106 = lshr i32 %105, 3
  %107 = tail call i32 @llvm.umin.i32(i32 %102, i32 %106) #19
  %108 = shl nuw nsw i32 %107, 3
  %109 = add nuw nsw i32 %95, 4
  %110 = add nuw nsw i32 %109, %108
  br label %111

111:                                              ; preds = %104, %89
  %112 = phi i32 [ %110, %104 ], [ %95, %89 ]
  %113 = add nuw nsw i32 %112, 20
  %114 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 1
  %115 = load i16, ptr %114, align 8
  %116 = zext i16 %115 to i32
  %117 = icmp eq i32 %113, %116
  %118 = sub nsw i32 %116, %113
  %119 = select i1 %117, i32 0, i32 %118
  %120 = add i32 %119, %90
  %121 = load i32, ptr %47, align 8
  %122 = load i32, ptr %49, align 4
  %123 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 26
  %124 = load i32, ptr %123, align 4
  %125 = add i32 %122, %124
  %126 = sub i32 %121, %125
  %127 = icmp slt i32 %126, 0
  %128 = icmp eq i32 %121, %122
  %129 = select i1 %127, i1 true, i1 %128
  br i1 %129, label %130, label %300

130:                                              ; preds = %111
  %131 = mul i32 %120, %2
  %132 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %133 = load i32, ptr %132, align 8
  %134 = icmp ugt i32 %133, %131
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = tail call i32 @tcp_fragment(ptr noundef %0, i32 noundef 1, ptr noundef %1, i32 noundef %131, i32 noundef %120, i32 noundef 2592)
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %181, label %300

138:                                              ; preds = %130
  %139 = load i8, ptr %11, align 2
  %140 = and i8 %139, 1
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %156, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.skb_shared_info, ptr %144, i32 0, i32 10
  %146 = load volatile i32, ptr %145, align 4
  %147 = and i32 %146, 65535
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %156, label %149

149:                                              ; preds = %142
  %150 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %151 = load i32, ptr %150, align 8
  %152 = tail call i32 @pskb_expand_head(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #19
  store i32 %151, ptr %150, align 8
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %300

154:                                              ; preds = %149
  %155 = load i32, ptr %132, align 8
  br label %156

156:                                              ; preds = %154, %142, %138
  %157 = phi i32 [ %155, %154 ], [ %133, %138 ], [ %133, %142 ]
  %158 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %159 = load i16, ptr %158, align 8
  %160 = zext i16 %159 to i32
  %161 = icmp ugt i32 %157, %120
  br i1 %161, label %162, label %168

162:                                              ; preds = %156
  %163 = add i32 %120, -1
  %164 = add i32 %163, %157
  %165 = udiv i32 %164, %120
  %166 = trunc i32 %165 to i16
  %167 = trunc i32 %120 to i16
  br label %168

168:                                              ; preds = %162, %156
  %169 = phi i16 [ %166, %162 ], [ 1, %156 ]
  %170 = phi i16 [ %167, %162 ], [ 0, %156 ]
  store i16 %169, ptr %158, align 8
  %171 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 10
  store i16 %170, ptr %171, align 2
  %172 = icmp eq i16 %159, %169
  br i1 %172, label %177, label %173

173:                                              ; preds = %168
  %174 = zext i16 %169 to i32
  %175 = sub nsw i32 %160, %174
  tail call fastcc void @tcp_adjust_pcount(ptr noundef %0, ptr noundef %1, i32 noundef %175)
  %176 = load i32, ptr %132, align 8
  br label %177

177:                                              ; preds = %173, %168
  %178 = phi i32 [ %176, %173 ], [ %157, %168 ]
  %179 = icmp ult i32 %178, %120
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  tail call fastcc void @tcp_retrans_try_collapse(ptr noundef %0, ptr noundef %1, i32 noundef %120)
  br label %181

181:                                              ; preds = %180, %177, %135
  %182 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %183 = load i8, ptr %182, align 4
  %184 = and i8 %183, -62
  %185 = icmp ne i8 %184, -62
  %186 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 30), align 1
  %187 = icmp eq i8 %186, 0
  %188 = select i1 %185, i1 true, i1 %187
  br i1 %188, label %191, label %189

189:                                              ; preds = %181
  %190 = and i8 %183, 63
  store i8 %190, ptr %182, align 4
  br label %191

191:                                              ; preds = %189, %181
  %192 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %193 = load i16, ptr %192, align 8
  %194 = zext i16 %193 to i32
  %195 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !20
  %196 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %197 = getelementptr [16 x i32], ptr %196, i32 0, i32 12
  %198 = ptrtoint ptr %197 to i32
  %199 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %200 = inttoptr i32 %199 to ptr
  %201 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %200) #16, !srcloc !25
  %202 = add i32 %201, %198
  %203 = inttoptr i32 %202 to ptr
  %204 = load i32, ptr %203, align 4
  %205 = add i32 %204, %194
  store i32 %205, ptr %203, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %195) #19, !srcloc !21
  %206 = load i8, ptr %182, align 4
  %207 = and i8 %206, 2
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %220, label %209

209:                                              ; preds = %191
  %210 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %211 = getelementptr [126 x i32], ptr %210, i32 0, i32 97
  %212 = ptrtoint ptr %211 to i32
  %213 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %214 = inttoptr i32 %213 to ptr
  %215 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %214) #16, !srcloc !25
  %216 = add i32 %215, %212
  %217 = inttoptr i32 %216 to ptr
  %218 = load i32, ptr %217, align 4
  %219 = add i32 %218, 1
  store i32 %219, ptr %217, align 4
  br label %220

220:                                              ; preds = %209, %191
  %221 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 102
  %222 = load i32, ptr %221, align 8
  %223 = add i32 %222, %194
  store i32 %223, ptr %221, align 8
  %224 = load i32, ptr %132, align 8
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 101
  %227 = load i64, ptr %226, align 8
  %228 = add i64 %227, %225
  store i64 %228, ptr %226, align 8
  %229 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %230 = load ptr, ptr %229, align 4
  %231 = ptrtoint ptr %230 to i32
  %232 = and i32 %231, 3
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %240, !prof !19

234:                                              ; preds = %220
  %235 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %236 = load ptr, ptr %235, align 8
  %237 = ptrtoint ptr %236 to i32
  %238 = sub i32 %231, %237
  %239 = icmp ugt i32 %238, 65534
  br i1 %239, label %240, label %255, !prof !18

240:                                              ; preds = %234, %220
  %241 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %242 = load i32, ptr %241, align 8
  store i32 0, ptr %241, align 8
  %243 = tail call ptr @__pskb_copy_fclone(ptr noundef %1, i32 noundef 320, i32 noundef 2592, i1 noundef zeroext false) #19
  %244 = icmp eq ptr %243, null
  br i1 %244, label %245, label %246

245:                                              ; preds = %240
  store i32 %242, ptr %241, align 8
  br label %259

246:                                              ; preds = %240
  %247 = getelementptr inbounds %struct.anon.43, ptr %243, i32 0, i32 2
  store ptr null, ptr %247, align 8
  %248 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %249 = load i32, ptr %248, align 8
  %250 = tail call fastcc i32 @__tcp_transmit_skb(ptr noundef %0, ptr noundef nonnull %243, i32 noundef 0, i32 noundef 2592, i32 noundef %249) #19
  store i32 %242, ptr %241, align 8
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %246
  %253 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 42
  %254 = load i64, ptr %253, align 8
  tail call fastcc void @tcp_update_skb_after_send(ptr noundef %0, ptr noundef %1, i64 noundef %254)
  tail call void @tcp_rate_skb_sent(ptr noundef %0, ptr noundef %1) #19
  br label %259

255:                                              ; preds = %234
  %256 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %257 = load i32, ptr %256, align 8
  %258 = tail call fastcc i32 @__tcp_transmit_skb(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef 2592, i32 noundef %257) #19
  br label %259

259:                                              ; preds = %255, %252, %246, %245
  %260 = phi i32 [ %258, %255 ], [ 0, %252 ], [ %250, %246 ], [ -105, %245 ]
  %261 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 13
  %262 = load i8, ptr %261, align 1
  %263 = or i8 %262, -128
  store i8 %263, ptr %261, align 1
  %264 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 107
  %265 = load i8, ptr %264, align 4
  %266 = and i8 %265, 2
  %267 = icmp eq i8 %266, 0
  br i1 %267, label %271, label %268

268:                                              ; preds = %259
  %269 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %270 = load volatile i8, ptr %269, align 2
  br label %271

271:                                              ; preds = %268, %259
  switch i32 %260, label %288 [
    i32 0, label %272
    i32 -16, label %300
  ], !prof !46

272:                                              ; preds = %271
  %273 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tcp_retransmit_skb, i32 0, i32 1), align 4
  %274 = icmp sgt i32 %273, 0
  br i1 %274, label %275, label %300

275:                                              ; preds = %272
  %276 = tail call ptr @llvm.thread.pointer() #19
  %277 = getelementptr inbounds %struct.thread_info, ptr %276, i32 0, i32 2
  %278 = load i32, ptr %277, align 8
  %279 = lshr i32 %278, 5
  %280 = getelementptr i32, ptr @__cpu_online_mask, i32 %279
  %281 = load volatile i32, ptr %280, align 4
  %282 = and i32 %278, 31
  %283 = shl nuw i32 1, %282
  %284 = and i32 %283, %281
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %300, label %286

286:                                              ; preds = %275
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !47
  %287 = tail call i32 @__traceiter_tcp_retransmit_skb(ptr noundef null, ptr noundef %0, ptr noundef %1) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !48
  br label %300

288:                                              ; preds = %271
  %289 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !20
  %290 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %291 = getelementptr [126 x i32], ptr %290, i32 0, i32 76
  %292 = ptrtoint ptr %291 to i32
  %293 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %294 = inttoptr i32 %293 to ptr
  %295 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %294) #16, !srcloc !25
  %296 = add i32 %295, %292
  %297 = inttoptr i32 %296 to ptr
  %298 = load i32, ptr %297, align 4
  %299 = add i32 %298, %194
  store i32 %299, ptr %297, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %289) #19, !srcloc !21
  br label %300

300:                                              ; preds = %288, %286, %275, %272, %271, %149, %135, %111, %65, %61, %60, %58, %34
  %301 = phi i32 [ -16, %34 ], [ -22, %60 ], [ -22, %58 ], [ -12, %61 ], [ -113, %65 ], [ -12, %135 ], [ -12, %149 ], [ %260, %271 ], [ %260, %288 ], [ 0, %272 ], [ 0, %275 ], [ 0, %286 ], [ -11, %111 ]
  ret i32 %301
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_rearm_rto(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__tcp_push_pending_frames(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %5 = load volatile i8, ptr %4, align 2
  %6 = icmp eq i8 %5, 7
  br i1 %6, label %41, label %7, !prof !18

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 41
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 131072
  %11 = or i32 %10, 2592
  %12 = tail call fastcc zeroext i1 @tcp_write_xmit(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef %11)
  br i1 %12, label %13, label %41

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 19
  %19 = load i8, ptr %18, align 2
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @llvm.umax.i32(i32 %23, i32 20) #19
  %25 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 42
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 43
  %28 = load i64, ptr %27, align 8
  %29 = sub i64 %26, %28
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = tail call i32 @nsecs_to_jiffies(i64 noundef %29) #19
  br label %33

33:                                               ; preds = %31, %21
  %34 = phi i32 [ %32, %31 ], [ 0, %21 ]
  %35 = add i32 %34, %24
  %36 = tail call i32 @llvm.umin.i32(i32 %35, i32 12000) #19
  store i8 3, ptr %18, align 2
  %37 = load volatile i32, ptr @jiffies, align 64
  %38 = add i32 %37, %36
  %39 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 3
  store i32 %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 4
  tail call void @sk_reset_timer(ptr noundef %0, ptr noundef %40, i32 noundef %38) #19
  br label %41

41:                                               ; preds = %33, %17, %13, %7, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_push_one(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  %6 = icmp eq ptr %4, null
  %7 = or i1 %5, %6
  br i1 %7, label %12, label %8, !prof !18

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 5
  %10 = load i32, ptr %9, align 8
  %11 = icmp ult i32 %10, %1
  br i1 %11, label %12, label %13, !prof !18

12:                                               ; preds = %8, %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/tcp_output.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2876, 0\0A.popsection", ""() #19, !srcloc !49
  unreachable

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 41
  %15 = load i32, ptr %14, align 8
  %16 = tail call fastcc zeroext i1 @tcp_write_xmit(ptr noundef %0, i32 noundef %1, i32 noundef 4, i32 noundef 1, i32 noundef %15)
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @__tcp_select_window(ptr noundef %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 8
  %3 = load i16, ptr %2, align 2
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 15
  %5 = load volatile i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9, i32 1
  %8 = load volatile i32, ptr %7, align 4
  %9 = load volatile i32, ptr %6, align 4
  %10 = add i32 %8, %9
  %11 = sub i32 %5, %10
  %12 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 77), align 4
  %13 = icmp slt i32 %12, 1
  %14 = sub i32 0, %12
  %15 = ashr i32 %11, %14
  %16 = ashr i32 %11, %12
  %17 = sub i32 %11, %16
  %18 = select i1 %13, i32 %15, i32 %17
  %19 = load volatile i32, ptr %4, align 4
  %20 = ashr i32 %19, %14
  %21 = ashr i32 %19, %12
  %22 = sub i32 %19, %21
  %23 = select i1 %13, i32 %20, i32 %22
  %24 = zext i16 %3 to i32
  %25 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 29
  %26 = load i32, ptr %25, align 8
  %27 = tail call i32 @llvm.smin.i32(i32 %26, i32 %23)
  %28 = icmp slt i32 %27, %24
  br i1 %28, label %29, label %31, !prof !18

29:                                               ; preds = %1
  %30 = icmp slt i32 %27, 1
  br i1 %30, label %113, label %31

31:                                               ; preds = %29, %1
  %32 = phi i32 [ %27, %29 ], [ %24, %1 ]
  %33 = ashr i32 %27, 1
  %34 = icmp slt i32 %18, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %37 = load i24, ptr %36, align 4
  %38 = trunc i24 %37 to i16
  br label %83

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 1
  store i8 0, ptr %40, align 1
  %41 = load volatile i32, ptr @tcp_memory_pressure, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %70, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  %45 = load i32, ptr %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %47, !prof !19

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %49 = load i32, ptr %48, align 4
  %50 = load volatile i32, ptr %6, align 4
  %51 = add i32 %49, %50
  %52 = sub i32 %45, %51
  %53 = tail call i32 @llvm.smax.i32(i32 %52, i32 0) #19
  br label %54

54:                                               ; preds = %47, %43
  %55 = phi i32 [ %53, %47 ], [ 0, %43 ]
  %56 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 30
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 32
  %59 = load i16, ptr %58, align 8
  %60 = zext i16 %59 to i32
  %61 = shl nuw nsw i32 %60, 2
  %62 = tail call i32 @llvm.umin.i32(i32 %57, i32 %61) #19
  store i32 %62, ptr %56, align 4
  %63 = icmp eq i32 %55, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %54
  %65 = lshr i32 %55, %14
  %66 = lshr i32 %55, %12
  %67 = sub nsw i32 %55, %66
  %68 = select i1 %13, i32 %65, i32 %67
  %69 = tail call i32 @llvm.umax.i32(i32 %62, i32 %68) #19
  store i32 %69, ptr %56, align 4
  br label %70

70:                                               ; preds = %64, %54, %39
  %71 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %72 = load i24, ptr %71, align 4
  %73 = zext i24 %72 to i32
  %74 = lshr i32 %73, 12
  %75 = and i32 %74, 15
  %76 = shl nsw i32 -1, %75
  %77 = and i32 %76, %18
  %78 = ashr i32 %23, 4
  %79 = icmp slt i32 %77, %78
  %80 = icmp slt i32 %77, %32
  %81 = select i1 %79, i1 true, i1 %80
  %82 = trunc i24 %72 to i16
  br i1 %81, label %113, label %83

83:                                               ; preds = %70, %35
  %84 = phi i16 [ %38, %35 ], [ %82, %70 ]
  %85 = phi i32 [ %18, %35 ], [ %77, %70 ]
  %86 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 30
  %87 = load i32, ptr %86, align 4
  %88 = tail call i32 @llvm.umin.i32(i32 %85, i32 %87)
  %89 = icmp ult i16 %84, 4096
  br i1 %89, label %97, label %90

90:                                               ; preds = %83
  %91 = lshr i16 %84, 12
  %92 = zext i16 %91 to i32
  %93 = shl nsw i32 -1, %92
  %94 = xor i32 %93, -1
  %95 = add i32 %88, %94
  %96 = and i32 %95, %93
  br label %113

97:                                               ; preds = %83
  %98 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 79
  %99 = load i32, ptr %98, align 8
  %100 = sub i32 %88, %32
  %101 = icmp sle i32 %99, %100
  %102 = icmp sgt i32 %99, %88
  %103 = or i1 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = srem i32 %88, %32
  %106 = sub i32 %88, %105
  br label %113

107:                                              ; preds = %97
  %108 = icmp eq i32 %32, %27
  %109 = add i32 %99, %33
  %110 = icmp sgt i32 %88, %109
  %111 = select i1 %108, i1 %110, i1 false
  %112 = select i1 %111, i32 %88, i32 %99
  br label %113

113:                                              ; preds = %107, %104, %90, %70, %29
  %114 = phi i32 [ 0, %29 ], [ 0, %70 ], [ %96, %90 ], [ %106, %104 ], [ %112, %107 ]
  ret i32 %114
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @tcp_skb_collapse_tstamp(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 15
  %4 = load i8, ptr %3, align 1
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.skb_shared_info, ptr %8, i32 0, i32 3
  %10 = load i8, ptr %9, align 1
  %11 = and i8 %10, 67
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %6, i1 %12, i1 false
  br i1 %13, label %28, label %14, !prof !50

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 3
  %18 = load i8, ptr %17, align 1
  %19 = or i8 %18, %11
  store i8 %19, ptr %17, align 1
  %20 = getelementptr inbounds %struct.skb_shared_info, ptr %8, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 9
  store i32 %21, ptr %22, align 4
  %23 = load i8, ptr %3, align 1
  %24 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 15
  %25 = load i8, ptr %24, align 1
  %26 = and i8 %23, 1
  %27 = or i8 %26, %25
  store i8 %27, ptr %24, align 1
  br label %28

28:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_retrans_try_collapse(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 71), align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %147, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 2
  %10 = icmp ne i8 %9, 0
  %11 = icmp eq ptr %1, null
  %12 = or i1 %10, %11
  br i1 %12, label %147, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 15
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %16 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %17 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 26
  %18 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %19 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 94
  %20 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %21 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 13
  %22 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 87
  %23 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 88
  br label %24

24:                                               ; preds = %145, %13
  %25 = phi i32 [ %2, %13 ], [ %67, %145 ]
  %26 = phi ptr [ %1, %13 ], [ %28, %145 ]
  %27 = phi i1 [ true, %13 ], [ false, %145 ]
  %28 = tail call ptr @rb_next(ptr noundef nonnull %26) #19
  %29 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 3, i32 8
  %30 = load i16, ptr %29, align 8
  %31 = icmp ugt i16 %30, 1
  br i1 %31, label %147, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 11
  %34 = load i8, ptr %33, align 2
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 15
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.skb_shared_info, ptr %39, i32 0, i32 10
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %147

44:                                               ; preds = %37, %32
  %45 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 3, i32 13
  %46 = load i8, ptr %45, align 1
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %147

49:                                               ; preds = %44
  %50 = load i8, ptr %14, align 1
  %51 = and i8 %50, 2
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %147, !prof !19

53:                                               ; preds = %49
  %54 = load ptr, ptr %15, align 4
  %55 = load i8, ptr %54, align 8
  %56 = and i8 %55, 4
  %57 = icmp eq i8 %56, 0
  %58 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 15
  %59 = load ptr, ptr %58, align 4
  %60 = load i8, ptr %59, align 8
  %61 = and i8 %60, 4
  %62 = icmp ne i8 %61, 0
  %63 = xor i1 %57, %62
  br i1 %63, label %64, label %147

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 5
  %66 = load i32, ptr %65, align 8
  %67 = sub i32 %25, %66
  br i1 %27, label %145, label %68

68:                                               ; preds = %64
  %69 = icmp slt i32 %67, 0
  br i1 %69, label %147, label %70

70:                                               ; preds = %68
  %71 = load i32, ptr %16, align 4
  %72 = load i32, ptr %17, align 4
  %73 = add i32 %72, %71
  %74 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 3, i32 4
  %75 = load i32, ptr %74, align 4
  %76 = sub i32 %73, %75
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %147, label %78

78:                                               ; preds = %70
  %79 = tail call ptr @rb_next(ptr noundef %1) #19
  %80 = getelementptr inbounds %struct.sk_buff, ptr %79, i32 0, i32 5
  %81 = load i32, ptr %80, align 8
  %82 = load i16, ptr %18, align 8
  %83 = icmp eq i16 %82, 1
  br i1 %83, label %84, label %88, !prof !19

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.sk_buff, ptr %79, i32 0, i32 3, i32 8
  %86 = load i16, ptr %85, align 8
  %87 = icmp eq i16 %86, 1
  br i1 %87, label %89, label %88, !prof !19

88:                                               ; preds = %84, %78
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/tcp_output.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3038, 0\0A.popsection", ""() #19, !srcloc !51
  unreachable

89:                                               ; preds = %84
  %90 = icmp eq i32 %81, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %89
  %92 = tail call i32 @tcp_skb_shift(ptr noundef %1, ptr noundef %79, i32 noundef 1, i32 noundef %81) #19
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %147, label %94

94:                                               ; preds = %91, %89
  %95 = load ptr, ptr %19, align 8
  %96 = icmp eq ptr %95, %79
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store ptr %1, ptr %19, align 8
  br label %98

98:                                               ; preds = %97, %94
  %99 = getelementptr inbounds %struct.sk_buff, ptr %79, i32 0, i32 3, i32 4
  %100 = load i32, ptr %99, align 4
  store i32 %100, ptr %20, align 4
  %101 = getelementptr inbounds %struct.sk_buff, ptr %79, i32 0, i32 3, i32 12
  %102 = load i8, ptr %101, align 4
  %103 = load i8, ptr %7, align 4
  %104 = or i8 %103, %102
  store i8 %104, ptr %7, align 4
  %105 = getelementptr inbounds %struct.sk_buff, ptr %79, i32 0, i32 3, i32 13
  %106 = load i8, ptr %105, align 1
  %107 = and i8 %106, -128
  %108 = load i8, ptr %21, align 1
  %109 = or i8 %108, %107
  store i8 %109, ptr %21, align 1
  %110 = getelementptr inbounds %struct.sk_buff, ptr %79, i32 0, i32 3, i32 15
  %111 = load i8, ptr %110, align 1
  %112 = and i8 %111, 2
  %113 = load i8, ptr %14, align 1
  %114 = and i8 %113, -3
  %115 = or i8 %114, %112
  store i8 %115, ptr %14, align 1
  store ptr null, ptr %22, align 8
  %116 = load ptr, ptr %23, align 4
  %117 = icmp eq ptr %79, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %98
  store ptr %1, ptr %23, align 4
  br label %119

119:                                              ; preds = %118, %98
  %120 = load i16, ptr %85, align 8
  %121 = zext i16 %120 to i32
  tail call fastcc void @tcp_adjust_pcount(ptr noundef %0, ptr noundef %79, i32 noundef %121) #19
  %122 = load i8, ptr %110, align 1
  %123 = and i8 %122, 1
  %124 = icmp eq i8 %123, 0
  %125 = getelementptr inbounds %struct.sk_buff, ptr %79, i32 0, i32 15
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.skb_shared_info, ptr %126, i32 0, i32 3
  %128 = load i8, ptr %127, align 1
  %129 = and i8 %128, 67
  %130 = icmp eq i8 %129, 0
  %131 = select i1 %124, i1 %130, i1 false
  br i1 %131, label %144, label %132, !prof !50

132:                                              ; preds = %119
  %133 = load ptr, ptr %15, align 4
  %134 = getelementptr inbounds %struct.skb_shared_info, ptr %133, i32 0, i32 3
  %135 = load i8, ptr %134, align 1
  %136 = or i8 %135, %129
  store i8 %136, ptr %134, align 1
  %137 = getelementptr inbounds %struct.skb_shared_info, ptr %126, i32 0, i32 9
  %138 = load i32, ptr %137, align 4
  %139 = getelementptr inbounds %struct.skb_shared_info, ptr %133, i32 0, i32 9
  store i32 %138, ptr %139, align 4
  %140 = load i8, ptr %110, align 1
  %141 = load i8, ptr %14, align 1
  %142 = and i8 %140, 1
  %143 = or i8 %142, %141
  store i8 %143, ptr %14, align 1
  br label %144

144:                                              ; preds = %132, %119
  tail call fastcc void @tcp_rtx_queue_unlink_and_free(ptr noundef %79, ptr noundef %0) #19
  br label %145

145:                                              ; preds = %144, %64
  %146 = icmp eq ptr %28, null
  br i1 %146, label %147, label %24

147:                                              ; preds = %145, %91, %70, %68, %53, %49, %44, %37, %24, %6, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_update_skb_after_send(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 30
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 35
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = icmp ult i32 %10, -2
  br i1 %11, label %12, label %38

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 12
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, 9
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %18 = load i32, ptr %17, align 8
  %19 = zext i32 %18 to i64
  %20 = mul nuw nsw i64 %19, 1000000000
  %21 = icmp ult i64 %20, 4294967296
  br i1 %21, label %22, label %26, !prof !19

22:                                               ; preds = %16
  %23 = trunc i64 %20 to i32
  %24 = udiv i32 %23, %9
  %25 = zext i32 %24 to i64
  br label %29

26:                                               ; preds = %16
  %27 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %20) #20, !srcloc !52
  %28 = extractvalue { i64, i64 } %27, 1
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i64 [ %25, %22 ], [ %28, %26 ]
  %31 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 42
  %32 = load i64, ptr %31, align 8
  %33 = sub i64 %32, %2
  %34 = lshr i64 %30, 1
  %35 = tail call i64 @llvm.umin.i64(i64 %34, i64 %33)
  %36 = add i64 %32, %30
  %37 = sub i64 %36, %35
  store i64 %37, ptr %31, align 8
  br label %38

38:                                               ; preds = %29, %12, %7, %3
  %39 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %40 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 24
  %41 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %39, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %42, ptr %44, align 4
  store volatile ptr %43, ptr %42, align 4
  %45 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 24, i32 1
  %46 = load ptr, ptr %45, align 4
  store ptr %39, ptr %45, align 4
  store ptr %40, ptr %39, align 4
  store ptr %46, ptr %41, align 4
  store volatile ptr %39, ptr %46, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_rate_skb_sent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_retransmit_skb(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @__tcp_retransmit_skb(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 13
  %8 = load i8, ptr %7, align 1
  %9 = or i8 %8, -110
  store i8 %9, ptr %7, align 1
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %11 = load i16, ptr %10, align 8
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 52
  %14 = load i32, ptr %13, align 8
  %15 = add i32 %14, %12
  store i32 %15, ptr %13, align 8
  br label %16

16:                                               ; preds = %6, %3
  %17 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 98
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 2
  %22 = load i64, ptr %21, align 8
  %23 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %22) #20, !srcloc !53
  %24 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %22, i64 %23, i32 0) #20, !srcloc !10
  %25 = extractvalue { i64, i32 } %24, 0
  %26 = lshr i64 %25, 18
  %27 = trunc i64 %26 to i32
  store i32 %27, ptr %17, align 8
  br label %28

28:                                               ; preds = %20, %16
  %29 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 100
  %30 = load i32, ptr %29, align 8
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, ptr %29, align 8
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i32 [ 0, %32 ], [ %30, %28 ]
  %35 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %36 = load i16, ptr %35, align 8
  %37 = zext i16 %36 to i32
  %38 = add nuw i32 %34, %37
  store i32 %38, ptr %29, align 8
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_xmit_retransmit_queue(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %291, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %7 = tail call ptr @rb_first(ptr noundef %6) #19
  %8 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 88
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr %7, ptr %9
  %12 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %13 = load volatile ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq ptr %13, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.dst_entry, ptr %13, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dst_ops, ptr %19, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef nonnull %13) #19
  %23 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 9
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %28, label %26

26:                                               ; preds = %17
  %27 = tail call i32 @tcp_sync_mss(ptr noundef %0, i32 noundef %22) #19
  br label %28

28:                                               ; preds = %26, %17, %5
  %29 = phi i32 [ %15, %5 ], [ %27, %26 ], [ %15, %17 ]
  %30 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %31 = load i24, ptr %30, align 4
  %32 = and i24 %31, 2
  %33 = icmp eq i24 %32, 0
  %34 = select i1 %33, i32 0, i32 12, !prof !18
  %35 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 5
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = zext i24 %31 to i32
  %39 = lshr i32 %38, 2
  %40 = and i32 %39, 1
  %41 = add nuw nsw i32 %40, %37
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %50, label %43, !prof !19

43:                                               ; preds = %28
  %44 = sub nuw nsw i32 36, %34
  %45 = lshr i32 %44, 3
  %46 = tail call i32 @llvm.umin.i32(i32 %41, i32 %45) #19
  %47 = shl nuw nsw i32 %46, 3
  %48 = add nuw nsw i32 %34, 4
  %49 = add nuw nsw i32 %48, %47
  br label %50

50:                                               ; preds = %43, %28
  %51 = phi i32 [ %49, %43 ], [ %34, %28 ]
  %52 = add nuw nsw i32 %51, 20
  %53 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 1
  %54 = load i16, ptr %53, align 8
  %55 = zext i16 %54 to i32
  %56 = icmp eq i32 %52, %55
  %57 = sub nsw i32 %55, %52
  %58 = select i1 %56, i32 0, i32 %57
  %59 = add i32 %58, %29
  %60 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %61, i32 0, i32 6
  %63 = load ptr, ptr %62, align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %50
  %66 = tail call i32 %63(ptr noundef %0) #19
  br label %70

67:                                               ; preds = %50
  %68 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 89), align 4
  %69 = zext i8 %68 to i32
  br label %70

70:                                               ; preds = %67, %65
  %71 = phi i32 [ %66, %65 ], [ %69, %67 ]
  %72 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 35
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 44
  %75 = load volatile i8, ptr %74, align 1
  %76 = zext i8 %75 to i32
  %77 = lshr i32 %73, %76
  %78 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 40
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, -321
  %81 = tail call i32 @llvm.umin.i32(i32 %77, i32 %80) #19
  %82 = udiv i32 %81, %59
  %83 = tail call i32 @llvm.umax.i32(i32 %82, i32 %71) #19
  %84 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 47
  %85 = load i16, ptr %84, align 2
  %86 = zext i16 %85 to i32
  %87 = tail call i32 @llvm.umin.i32(i32 %83, i32 %86) #19
  %88 = icmp eq ptr %11, null
  br i1 %88, label %291, label %89

89:                                               ; preds = %70
  %90 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 30
  %91 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 42
  %92 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 43
  %93 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 63
  %94 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  %95 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 83
  %96 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 52
  %97 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %98 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 41
  %99 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 23
  %100 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 24
  %101 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 98
  %102 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 100
  %103 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 70
  %104 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 19
  br label %105

105:                                              ; preds = %268, %89
  %106 = phi ptr [ %11, %89 ], [ %271, %268 ]
  %107 = phi ptr [ null, %89 ], [ %270, %268 ]
  %108 = phi i1 [ false, %89 ], [ %269, %268 ]
  %109 = load volatile i32, ptr %90, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !41
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %132

111:                                              ; preds = %105
  %112 = load i64, ptr %91, align 8
  %113 = load i64, ptr %92, align 8
  %114 = icmp ugt i64 %112, %113
  br i1 %114, label %115, label %132

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 85, i32 4
  %117 = load volatile i8, ptr %116, align 8
  %118 = and i8 %117, 1
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %267

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 85
  tail call void @hrtimer_start_range_ns(ptr noundef %121, i64 noundef %112, i64 noundef 0, i32 noundef 6) #19
  %122 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %122) #19, !srcloc !13
  %123 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %122, ptr %122, i32 1, ptr elementtype(i32) %122) #19, !srcloc !29
  %124 = extractvalue { i32, i32, i32 } %123, 0
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %130, label %126, !prof !18

126:                                              ; preds = %120
  %127 = add i32 %124, 1
  %128 = or i32 %127, %124
  %129 = icmp sgt i32 %128, -1
  br i1 %129, label %267, label %130, !prof !19

130:                                              ; preds = %126, %120
  %131 = phi i32 [ 2, %120 ], [ 1, %126 ]
  tail call void @refcount_warn_saturate(ptr noundef %122, i32 noundef %131) #19
  br label %267

132:                                              ; preds = %111, %105
  %133 = icmp eq ptr %107, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %132
  store ptr %106, ptr %8, align 4
  br label %135

135:                                              ; preds = %134, %132
  %136 = load i32, ptr %93, align 8
  %137 = load i32, ptr %2, align 4
  %138 = load i32, ptr %94, align 4
  %139 = load i32, ptr %95, align 8
  %140 = load i32, ptr %96, align 8
  %141 = sub i32 %136, %137
  %142 = add i32 %141, %138
  %143 = add i32 %142, %139
  %144 = sub i32 %143, %140
  %145 = icmp slt i32 %144, 1
  br i1 %145, label %267, label %146

146:                                              ; preds = %135
  %147 = tail call i32 @llvm.smin.i32(i32 %144, i32 %87)
  %148 = icmp ult i32 %140, %139
  br i1 %148, label %149, label %267

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.sk_buff, ptr %106, i32 0, i32 3, i32 13
  %151 = load i8, ptr %150, align 1
  %152 = zext i8 %151 to i32
  %153 = and i32 %152, 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %149
  br i1 %133, label %156, label %268

156:                                              ; preds = %155
  %157 = and i32 %152, 3
  %158 = icmp eq i32 %157, 0
  %159 = select i1 %158, ptr %106, ptr null
  br label %268

160:                                              ; preds = %149
  %161 = load i8, ptr %97, align 4
  %162 = and i8 %161, 31
  %163 = icmp eq i8 %162, 4
  %164 = select i1 %163, i32 39, i32 38
  %165 = and i32 %152, 3
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %268

167:                                              ; preds = %160
  %168 = getelementptr inbounds %struct.sk_buff, ptr %106, i32 0, i32 18
  %169 = load i32, ptr %168, align 8
  %170 = shl i32 %169, 1
  %171 = load i32, ptr %72, align 4
  %172 = load volatile i8, ptr %74, align 1
  %173 = zext i8 %172 to i32
  %174 = lshr i32 %171, %173
  %175 = tail call i32 @llvm.umax.i32(i32 %170, i32 %174) #19
  %176 = load i32, ptr %90, align 8
  %177 = icmp eq i32 %176, 0
  %178 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 86), align 8
  %179 = tail call i32 @llvm.umin.i32(i32 %175, i32 %178) #19
  %180 = select i1 %177, i32 %179, i32 %175
  %181 = shl i32 %180, 1
  %182 = load volatile i32, ptr @tcp_tx_delay_enabled, align 4
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %184, label %194, !prof !18

184:                                              ; preds = %167
  %185 = load i32, ptr %98, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %194, label %187

187:                                              ; preds = %184
  %188 = zext i32 %171 to i64
  %189 = zext i32 %185 to i64
  %190 = mul nuw i64 %189, %188
  %191 = lshr i64 %190, 19
  %192 = trunc i64 %191 to i32
  %193 = add i32 %181, %192
  br label %194

194:                                              ; preds = %187, %184, %167
  %195 = phi i32 [ %193, %187 ], [ %181, %184 ], [ %181, %167 ]
  %196 = load volatile i32, ptr %99, align 4
  %197 = icmp ugt i32 %196, %195
  br i1 %197, label %198, label %204

198:                                              ; preds = %194
  %199 = load volatile ptr, ptr %6, align 8
  %200 = icmp eq ptr %199, null
  br i1 %200, label %204, label %201

201:                                              ; preds = %198
  tail call void @_set_bit(i32 noundef 0, ptr noundef %100) #19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !45
  %202 = load volatile i32, ptr %99, align 4
  %203 = icmp ugt i32 %202, %195
  br i1 %203, label %267, label %204

204:                                              ; preds = %201, %198, %194
  %205 = tail call i32 @__tcp_retransmit_skb(ptr noundef %0, ptr noundef nonnull %106, i32 noundef %147) #19
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %204
  %208 = load i8, ptr %150, align 1
  %209 = or i8 %208, -110
  store i8 %209, ptr %150, align 1
  %210 = getelementptr inbounds %struct.sk_buff, ptr %106, i32 0, i32 3, i32 8
  %211 = load i16, ptr %210, align 8
  %212 = zext i16 %211 to i32
  %213 = load i32, ptr %96, align 8
  %214 = add i32 %213, %212
  store i32 %214, ptr %96, align 8
  br label %215

215:                                              ; preds = %207, %204
  %216 = load i32, ptr %101, align 8
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %226

218:                                              ; preds = %215
  %219 = getelementptr inbounds %struct.sk_buff, ptr %106, i32 0, i32 2
  %220 = load i64, ptr %219, align 8
  %221 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %220) #20, !srcloc !53
  %222 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %220, i64 %221, i32 0) #20, !srcloc !10
  %223 = extractvalue { i64, i32 } %222, 0
  %224 = lshr i64 %223, 18
  %225 = trunc i64 %224 to i32
  store i32 %225, ptr %101, align 8
  br label %226

226:                                              ; preds = %218, %215
  %227 = load i32, ptr %102, align 8
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %226
  store i32 0, ptr %102, align 8
  br label %230

230:                                              ; preds = %229, %226
  %231 = phi i32 [ 0, %229 ], [ %227, %226 ]
  %232 = getelementptr inbounds %struct.sk_buff, ptr %106, i32 0, i32 3, i32 8
  %233 = load i16, ptr %232, align 8
  %234 = zext i16 %233 to i32
  %235 = add nuw i32 %231, %234
  store i32 %235, ptr %102, align 8
  br i1 %206, label %236, label %267

236:                                              ; preds = %230
  %237 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !20
  %238 = load i16, ptr %232, align 8
  %239 = zext i16 %238 to i32
  %240 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %241 = getelementptr [126 x i32], ptr %240, i32 0, i32 %164
  %242 = ptrtoint ptr %241 to i32
  %243 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %244 = inttoptr i32 %243 to ptr
  %245 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %244) #16, !srcloc !25
  %246 = add i32 %245, %242
  %247 = inttoptr i32 %246 to ptr
  %248 = load i32, ptr %247, align 4
  %249 = add i32 %248, %239
  store i32 %249, ptr %247, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %237) #19, !srcloc !21
  %250 = load i8, ptr %97, align 4
  %251 = and i8 %250, 31
  %252 = zext i8 %251 to i32
  %253 = shl nuw i32 1, %252
  %254 = and i32 %253, 12
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %261, label %256

256:                                              ; preds = %236
  %257 = load i16, ptr %232, align 8
  %258 = zext i16 %257 to i32
  %259 = load i32, ptr %103, align 4
  %260 = add i32 %259, %258
  store i32 %260, ptr %103, align 4
  br label %261

261:                                              ; preds = %256, %236
  %262 = icmp eq ptr %106, %7
  br i1 %262, label %263, label %268

263:                                              ; preds = %261
  %264 = load i8, ptr %104, align 2
  %265 = icmp ne i8 %264, 6
  %266 = select i1 %265, i1 true, i1 %108
  br label %268

267:                                              ; preds = %230, %201, %146, %135, %130, %126, %115
  br i1 %108, label %274, label %291

268:                                              ; preds = %263, %261, %160, %156, %155
  %269 = phi i1 [ %108, %156 ], [ %108, %155 ], [ %108, %160 ], [ %108, %261 ], [ %266, %263 ]
  %270 = phi ptr [ %159, %156 ], [ %107, %155 ], [ %107, %160 ], [ %107, %261 ], [ %107, %263 ]
  %271 = tail call ptr @rb_next(ptr noundef nonnull %106) #19
  %272 = icmp eq ptr %271, null
  br i1 %272, label %273, label %105

273:                                              ; preds = %268
  br i1 %269, label %274, label %291

274:                                              ; preds = %273, %267
  %275 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 6
  %276 = load i32, ptr %275, align 4
  %277 = load i64, ptr %91, align 8
  %278 = load i64, ptr %92, align 8
  %279 = sub i64 %277, %278
  %280 = icmp sgt i64 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %274
  %282 = tail call i32 @nsecs_to_jiffies(i64 noundef %279) #19
  br label %283

283:                                              ; preds = %281, %274
  %284 = phi i32 [ %282, %281 ], [ 0, %274 ]
  %285 = add i32 %284, %276
  %286 = tail call i32 @llvm.umin.i32(i32 %285, i32 12000) #19
  store i8 1, ptr %104, align 2
  %287 = load volatile i32, ptr @jiffies, align 64
  %288 = add i32 %287, %286
  %289 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 3
  store i32 %288, ptr %289, align 8
  %290 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 4
  tail call void @sk_reset_timer(ptr noundef %0, ptr noundef %290, i32 noundef %288) #19
  br label %291

291:                                              ; preds = %283, %273, %267, %70, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sk_forced_mem_schedule(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %4 = load i32, ptr %3, align 4
  %5 = icmp slt i32 %4, %1
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = add i32 %1, 4095
  %8 = ashr i32 %7, 12
  %9 = and i32 %7, -4096
  %10 = add i32 %4, %9
  store i32 %10, ptr %3, align 4
  %11 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.proto, ptr %12, i32 0, i32 30
  %14 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !54
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #19, !srcloc !13
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 %8, ptr elementtype(i32) %14) #19, !srcloc !55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !56
  br label %16

16:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_send_fin(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26, i32 0, i32 0, i32 1
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %2
  %6 = icmp eq ptr %4, null
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load volatile i32, ptr @tcp_memory_pressure, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %13 = tail call ptr @rb_last(ptr noundef %12) #19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %11, %1
  %16 = phi ptr [ %13, %11 ], [ %4, %1 ]
  %17 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3, i32 12
  %18 = load i8, ptr %17, align 4
  %19 = or i8 %18, 1
  store i8 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4
  %23 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 4
  br i1 %7, label %26, label %107

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store volatile i32 %29, ptr %27, align 4
  br label %193

30:                                               ; preds = %11, %8
  %31 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 41
  %32 = load i32, ptr %31, align 8
  %33 = tail call ptr @__alloc_skb(i32 noundef 320, i32 noundef %32, i32 noundef 1, i32 noundef -1) #19
  %34 = icmp eq ptr %33, null
  br i1 %34, label %193, label %35, !prof !18

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 4
  store volatile ptr %36, ptr %36, align 4
  %37 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 4, i32 0, i32 1
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 17
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 320
  store ptr %40, ptr %38, align 4
  %41 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 14
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr i8, ptr %42, i32 320
  store ptr %43, ptr %41, align 8
  %44 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 18
  %45 = load i32, ptr %44, align 8
  %46 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %47 = load i32, ptr %46, align 4
  %48 = icmp slt i32 %47, %45
  br i1 %48, label %49, label %59

49:                                               ; preds = %35
  %50 = add i32 %45, 4095
  %51 = ashr i32 %50, 12
  %52 = and i32 %50, -4096
  %53 = add i32 %52, %47
  store i32 %53, ptr %46, align 4
  %54 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.proto, ptr %55, i32 0, i32 30
  %57 = load ptr, ptr %56, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !54
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %57) #19, !srcloc !13
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %57, ptr %57, i32 %51, ptr elementtype(i32) %57) #19, !srcloc !55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !56
  br label %59

59:                                               ; preds = %49, %35
  %60 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 13
  %63 = load i16, ptr %62, align 8
  %64 = or i16 %63, 96
  store i16 %64, ptr %62, align 8
  %65 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 3
  %66 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 3, i32 12
  store i8 17, ptr %66, align 4
  %67 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 3, i32 8
  store i16 1, ptr %67, align 8
  store i32 %61, ptr %65, align 8
  %68 = add i32 %61, 1
  %69 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 3, i32 4
  store i32 %68, ptr %69, align 4
  store volatile i32 %68, ptr %60, align 4
  %70 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 11
  %71 = load i8, ptr %70, align 2
  %72 = or i8 %71, 2
  store i8 %72, ptr %70, align 2
  %73 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 15
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.skb_shared_info, ptr %74, i32 0, i32 10
  store volatile i32 65537, ptr %75, align 4
  %76 = load ptr, ptr %3, align 4
  store volatile ptr %2, ptr %33, align 8
  %77 = getelementptr inbounds %struct.anon.43, ptr %33, i32 0, i32 1
  store volatile ptr %76, ptr %77, align 4
  store volatile ptr %33, ptr %3, align 4
  store volatile ptr %33, ptr %76, align 4
  %78 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, 1
  store volatile i32 %80, ptr %78, align 4
  %81 = load ptr, ptr %2, align 4
  %82 = icmp eq ptr %81, %33
  br i1 %82, label %83, label %93

83:                                               ; preds = %59
  %84 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %85 = load i16, ptr %84, align 4
  %86 = and i16 %85, 3
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load volatile i32, ptr @jiffies, align 64
  %90 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 35
  store i32 %89, ptr %90, align 4
  %91 = and i16 %85, -4
  %92 = or i16 %91, 1
  store i16 %92, ptr %84, align 4
  br label %93

93:                                               ; preds = %88, %83, %59
  %94 = load i32, ptr %44, align 8
  %95 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %96 = load i32, ptr %95, align 4
  %97 = add i32 %96, %94
  store volatile i32 %97, ptr %95, align 4
  %98 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %99 = load ptr, ptr %98, align 8
  %100 = getelementptr inbounds %struct.proto, ptr %99, i32 0, i32 30
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %93
  %104 = load i32, ptr %44, align 8
  %105 = load i32, ptr %46, align 4
  %106 = sub i32 %105, %104
  store i32 %106, ptr %46, align 4
  br label %107

107:                                              ; preds = %103, %93, %15
  %108 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %109 = load volatile ptr, ptr %108, align 8
  %110 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq ptr %109, null
  br i1 %112, label %124, label %113

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.dst_entry, ptr %109, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.dst_ops, ptr %115, i32 0, i32 5
  %117 = load ptr, ptr %116, align 4
  %118 = tail call i32 %117(ptr noundef nonnull %109) #19
  %119 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 9
  %120 = load i32, ptr %119, align 8
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %124, label %122

122:                                              ; preds = %113
  %123 = tail call i32 @tcp_sync_mss(ptr noundef %0, i32 noundef %118) #19
  br label %124

124:                                              ; preds = %122, %113, %107
  %125 = phi i32 [ %111, %107 ], [ %123, %122 ], [ %111, %113 ]
  %126 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %127 = load i24, ptr %126, align 4
  %128 = and i24 %127, 2
  %129 = icmp eq i24 %128, 0
  %130 = select i1 %129, i32 0, i32 12, !prof !18
  %131 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 5
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i32
  %134 = zext i24 %127 to i32
  %135 = lshr i32 %134, 2
  %136 = and i32 %135, 1
  %137 = add nuw nsw i32 %136, %133
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %146, label %139, !prof !19

139:                                              ; preds = %124
  %140 = sub nuw nsw i32 36, %130
  %141 = lshr i32 %140, 3
  %142 = tail call i32 @llvm.umin.i32(i32 %137, i32 %141) #19
  %143 = shl nuw nsw i32 %142, 3
  %144 = add nuw nsw i32 %130, 4
  %145 = add nuw nsw i32 %144, %143
  br label %146

146:                                              ; preds = %139, %124
  %147 = phi i32 [ %145, %139 ], [ %130, %124 ]
  %148 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 1
  %149 = load i16, ptr %148, align 8
  %150 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %151 = load volatile i8, ptr %150, align 2
  %152 = icmp eq i8 %151, 7
  br i1 %152, label %193, label %153, !prof !18

153:                                              ; preds = %146
  %154 = add nuw nsw i32 %147, 20
  %155 = zext i16 %149 to i32
  %156 = icmp eq i32 %154, %155
  %157 = sub nsw i32 %155, %154
  %158 = select i1 %156, i32 0, i32 %157
  %159 = add i32 %158, %125
  %160 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 41
  %161 = load i32, ptr %160, align 8
  %162 = and i32 %161, 131072
  %163 = or i32 %162, 2592
  %164 = tail call fastcc zeroext i1 @tcp_write_xmit(ptr noundef %0, i32 noundef %159, i32 noundef 1, i32 noundef 0, i32 noundef %163) #19
  br i1 %164, label %165, label %193

165:                                              ; preds = %153
  %166 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %167 = load i32, ptr %166, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %193

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 19
  %171 = load i8, ptr %170, align 2
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %173, label %193

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 6
  %175 = load i32, ptr %174, align 4
  %176 = tail call i32 @llvm.umax.i32(i32 %175, i32 20) #19
  %177 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 42
  %178 = load i64, ptr %177, align 8
  %179 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 43
  %180 = load i64, ptr %179, align 8
  %181 = sub i64 %178, %180
  %182 = icmp sgt i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %173
  %184 = tail call i32 @nsecs_to_jiffies(i64 noundef %181) #19
  br label %185

185:                                              ; preds = %183, %173
  %186 = phi i32 [ %184, %183 ], [ 0, %173 ]
  %187 = add i32 %186, %176
  %188 = tail call i32 @llvm.umin.i32(i32 %187, i32 12000) #19
  store i8 3, ptr %170, align 2
  %189 = load volatile i32, ptr @jiffies, align 64
  %190 = add i32 %189, %188
  %191 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 3
  store i32 %190, ptr %191, align 8
  %192 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 4
  tail call void @sk_reset_timer(ptr noundef %0, ptr noundef %192, i32 noundef %190) #19
  br label %193

193:                                              ; preds = %185, %169, %165, %153, %146, %30, %26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_send_active_reset(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !20
  %4 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %5 = getelementptr [16 x i32], ptr %4, i32 0, i32 14
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #16, !srcloc !25
  %10 = add i32 %9, %6
  %11 = inttoptr i32 %10 to ptr
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #19, !srcloc !21
  %14 = tail call ptr @__alloc_skb(i32 noundef 320, i32 noundef %1, i32 noundef 0, i32 noundef -1) #19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !20
  %18 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %19 = getelementptr [126 x i32], ptr %18, i32 0, i32 55
  %20 = ptrtoint ptr %19 to i32
  %21 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %22 = inttoptr i32 %21 to ptr
  %23 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %22) #16, !srcloc !25
  %24 = add i32 %23, %20
  %25 = inttoptr i32 %24 to ptr
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #19, !srcloc !21
  br label %107

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 17
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 320
  store ptr %31, ptr %29, align 4
  %32 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 14
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr i8, ptr %33, i32 320
  store ptr %34, ptr %32, align 8
  %35 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 26
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, %36
  %40 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %41 = load i32, ptr %40, align 4
  %42 = sub i32 %39, %41
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %28
  %45 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %46 = load i24, ptr %45, align 4
  %47 = and i24 %46, 8
  %48 = icmp eq i24 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %44
  %50 = sub i32 %41, %39
  %51 = zext i24 %46 to i32
  %52 = lshr i32 %51, 12
  %53 = and i32 %52, 15
  %54 = lshr i32 %50, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %49, %44
  br label %57

57:                                               ; preds = %56, %49, %28
  %58 = phi i32 [ %39, %56 ], [ %41, %49 ], [ %41, %28 ]
  %59 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 13
  %60 = load i16, ptr %59, align 8
  %61 = or i16 %60, 96
  store i16 %61, ptr %59, align 8
  %62 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 3
  %63 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 3, i32 12
  store i8 20, ptr %63, align 4
  %64 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 3, i32 8
  store i16 1, ptr %64, align 8
  store i32 %58, ptr %62, align 8
  %65 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 3, i32 4
  store i32 %58, ptr %65, align 4
  %66 = tail call i64 @ktime_get() #19
  %67 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 43
  store i64 %66, ptr %67, align 8
  %68 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %66, i32 0) #20, !srcloc !9
  %69 = extractvalue { i64, i32 } %68, 0
  %70 = extractvalue { i64, i32 } %68, 1
  %71 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %66, i64 %69, i32 %70) #20, !srcloc !10
  %72 = extractvalue { i64, i32 } %71, 0
  %73 = lshr i64 %72, 9
  %74 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  store i64 %73, ptr %74, align 8
  %75 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %76 = load i32, ptr %75, align 8
  %77 = tail call fastcc i32 @__tcp_transmit_skb(ptr noundef %0, ptr noundef nonnull %14, i32 noundef 0, i32 noundef %1, i32 noundef %76) #19
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %57
  %80 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !20
  %81 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %82 = getelementptr [126 x i32], ptr %81, i32 0, i32 55
  %83 = ptrtoint ptr %82 to i32
  %84 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %85 = inttoptr i32 %84 to ptr
  %86 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %85) #16, !srcloc !25
  %87 = add i32 %86, %83
  %88 = inttoptr i32 %87 to ptr
  %89 = load i32, ptr %88, align 4
  %90 = add i32 %89, 1
  store i32 %90, ptr %88, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %80) #19, !srcloc !21
  br label %91

91:                                               ; preds = %79, %57
  %92 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tcp_send_reset, i32 0, i32 1), align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %91
  %95 = tail call ptr @llvm.thread.pointer() #19
  %96 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 2
  %97 = load i32, ptr %96, align 8
  %98 = lshr i32 %97, 5
  %99 = getelementptr i32, ptr @__cpu_online_mask, i32 %98
  %100 = load volatile i32, ptr %99, align 4
  %101 = and i32 %97, 31
  %102 = shl nuw i32 1, %101
  %103 = and i32 %102, %100
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %94
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !57
  %106 = tail call i32 @__traceiter_tcp_send_reset(ptr noundef null, ptr noundef %0, ptr noundef null) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !58
  br label %107

107:                                              ; preds = %105, %94, %91, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_send_synack(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  %3 = tail call ptr @rb_first(ptr noundef %2) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 12
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5, %1
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.tcp_send_synack) #22
  br label %113

13:                                               ; preds = %5
  %14 = and i32 %8, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %108

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 11
  %18 = load i8, ptr %17, align 2
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %62, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 15
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.skb_shared_info, ptr %23, i32 0, i32 10
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %62, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 4
  %30 = load i32, ptr %29, align 8
  store i32 0, ptr %29, align 8
  %31 = tail call ptr @skb_copy(ptr noundef nonnull %3, i32 noundef 2592) #19
  store i32 %30, ptr %29, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %113, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 4
  store volatile ptr %34, ptr %34, align 4
  %35 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 4, i32 0, i32 1
  store ptr %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 94
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store ptr %31, ptr %36, align 8
  br label %40

40:                                               ; preds = %39, %33
  tail call fastcc void @tcp_rtx_queue_unlink_and_free(ptr noundef nonnull %3, ptr noundef %0)
  %41 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 11
  %42 = load i8, ptr %41, align 2
  %43 = or i8 %42, 2
  store i8 %43, ptr %41, align 2
  %44 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 15
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.skb_shared_info, ptr %45, i32 0, i32 10
  store volatile i32 65537, ptr %46, align 4
  tail call void @tcp_rbtree_insert(ptr noundef %2, ptr noundef nonnull %31) #19
  %47 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 18
  %48 = load i32, ptr %47, align 8
  %49 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, %48
  store volatile i32 %51, ptr %49, align 4
  %52 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.proto, ptr %53, i32 0, i32 30
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %40
  %58 = load i32, ptr %47, align 8
  %59 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %60 = load i32, ptr %59, align 4
  %61 = sub i32 %60, %58
  store i32 %61, ptr %59, align 4
  br label %62

62:                                               ; preds = %57, %40, %21, %16
  %63 = phi ptr [ %3, %21 ], [ %3, %16 ], [ %31, %57 ], [ %31, %40 ]
  %64 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 3, i32 12
  %65 = load i8, ptr %64, align 4
  %66 = or i8 %65, 16
  %67 = and i8 %66, 127
  store i8 %67, ptr %64, align 4
  %68 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 56
  %69 = load i8, ptr %68, align 2
  %70 = and i8 %69, 1
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = and i8 %66, 63
  store i8 %73, ptr %64, align 4
  br label %108

74:                                               ; preds = %62
  %75 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %76, i32 0, i32 15
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %83 = load volatile i8, ptr %82, align 2
  br label %108

84:                                               ; preds = %74
  %85 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %86 = load i8, ptr %85, align 4
  %87 = or i8 %86, 2
  store i8 %87, ptr %85, align 4
  %88 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %89 = load volatile i8, ptr %88, align 2
  %90 = zext i8 %89 to i32
  %91 = shl nuw i32 1, %90
  %92 = and i32 %91, -4161
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %108, label %94

94:                                               ; preds = %84
  %95 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %96 = load ptr, ptr %95, align 8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %108, label %98

98:                                               ; preds = %94
  %99 = load volatile i8, ptr %88, align 2
  %100 = zext i8 %99 to i32
  %101 = shl nuw i32 1, %100
  %102 = and i32 %101, -4161
  %103 = icmp eq i32 %102, 0
  %104 = select i1 %103, ptr null, ptr %96
  %105 = getelementptr inbounds %struct.ipv6_pinfo, ptr %104, i32 0, i32 11
  %106 = load i8, ptr %105, align 1
  %107 = or i8 %106, 2
  store i8 %107, ptr %105, align 1
  br label %108

108:                                              ; preds = %98, %94, %84, %81, %72, %13
  %109 = phi ptr [ %3, %13 ], [ %63, %72 ], [ %63, %81 ], [ %63, %84 ], [ %63, %94 ], [ %63, %98 ]
  %110 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %111 = load i32, ptr %110, align 8
  %112 = tail call fastcc i32 @__tcp_transmit_skb(ptr noundef %0, ptr noundef nonnull %109, i32 noundef 1, i32 noundef 2592, i32 noundef %111) #19
  br label %113

113:                                              ; preds = %108, %28, %11
  %114 = phi i32 [ %112, %108 ], [ -14, %11 ], [ -12, %28 ]
  ret i32 %114
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_rtx_queue_unlink_and_free(ptr noundef %0, ptr noundef %1) unnamed_addr #12 {
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
  tail call void @rb_erase(ptr noundef %0, ptr noundef %8) #19
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
  br i1 %32, label %39, label %33, !prof !19

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 9
  %35 = load volatile i32, ptr %34, align 4
  %36 = add i32 %13, %35
  %37 = sub i32 %31, %36
  %38 = tail call i32 @llvm.smax.i32(i32 %37, i32 0) #19
  br label %39

39:                                               ; preds = %33, %25
  %40 = phi i32 [ %38, %33 ], [ 0, %25 ]
  %41 = sub i32 %29, %40
  %42 = icmp sgt i32 %41, 2097151
  br i1 %42, label %67, label %68, !prof !18

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
  br i1 %56, label %63, label %57, !prof !19

57:                                               ; preds = %44
  %58 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 9
  %59 = load volatile i32, ptr %58, align 4
  %60 = add i32 %13, %59
  %61 = sub i32 %55, %60
  %62 = tail call i32 @llvm.smax.i32(i32 %61, i32 0) #19
  br label %63

63:                                               ; preds = %57, %44
  %64 = phi i32 [ %62, %57 ], [ 0, %44 ]
  %65 = sub i32 %53, %64
  %66 = icmp sgt i32 %65, 2097151
  br i1 %66, label %67, label %68, !prof !18

67:                                               ; preds = %63, %39
  tail call void @__sk_mem_reclaim(ptr noundef %1, i32 noundef 1048576) #19
  br label %68

68:                                               ; preds = %67, %63, %43, %39, %24
  tail call void @__kfree_skb(ptr noundef %0) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_rbtree_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tcp_make_synack(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture readnone %5) #0 {
  %7 = alloca %struct.tcp_out_options, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #19
  %8 = tail call ptr @__alloc_skb(i32 noundef 320, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #19
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !18

10:                                               ; preds = %6
  tail call void @dst_release(ptr noundef %1) #19
  br label %208

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 320
  store ptr %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 14
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i8, ptr %16, i32 320
  store ptr %17, ptr %15, align 8
  switch i32 %4, label %21 [
    i32 0, label %19
    i32 1, label %18
  ]

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %18, %11
  %20 = phi ptr [ %0, %18 ], [ %2, %11 ]
  tail call void @skb_set_owner_w(ptr noundef nonnull %8, ptr noundef %20) #19
  br label %21

21:                                               ; preds = %19, %11
  %22 = icmp ne ptr %1, null
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 13, i32 0, i32 3
  %25 = load i16, ptr %24, align 2
  %26 = lshr i16 %25, 14
  %27 = trunc i16 %26 to i8
  %28 = and i8 %27, 1
  %29 = or i8 %28, %23
  %30 = zext i8 %29 to i16
  %31 = shl nuw nsw i16 %30, 14
  %32 = and i16 %25, -16385
  %33 = or i16 %31, %32
  store i16 %33, ptr %24, align 2
  %34 = ptrtoint ptr %1 to i32
  %35 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 4
  store i32 %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, -4
  %39 = inttoptr i32 %38 to ptr
  %40 = getelementptr i32, ptr %39, i32 7
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %21
  %44 = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.dst_ops, ptr %45, i32 0, i32 4
  %47 = load ptr, ptr %46, align 16
  %48 = tail call i32 %47(ptr noundef %1) #19
  br label %49

49:                                               ; preds = %43, %21
  %50 = phi i32 [ %41, %21 ], [ %48, %43 ]
  %51 = trunc i32 %50 to i16
  %52 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 6
  %53 = load volatile i16, ptr %52, align 4
  %54 = icmp ne i16 %53, 0
  %55 = icmp ult i16 %53, %51
  %56 = and i1 %54, %55
  %57 = select i1 %56, i16 %53, i16 %51
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false)
  %58 = tail call i64 @ktime_get() #19
  %59 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 2
  store i64 %58, ptr %59, align 8
  %60 = getelementptr inbounds %struct.tcp_request_sock, ptr %2, i32 0, i32 2
  %61 = load i64, ptr %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %49
  %64 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %58, i32 0) #20, !srcloc !9
  %65 = extractvalue { i64, i32 } %64, 0
  %66 = extractvalue { i64, i32 } %64, 1
  %67 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %58, i64 %65, i32 %66) #20, !srcloc !10
  %68 = extractvalue { i64, i32 } %67, 0
  %69 = lshr i64 %68, 9
  store i64 %69, ptr %60, align 8
  br label %70

70:                                               ; preds = %63, %49
  %71 = getelementptr inbounds %struct.tcp_request_sock, ptr %2, i32 0, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 13
  %74 = load i16, ptr %73, align 8
  %75 = and i16 %74, -769
  %76 = or i16 %75, 256
  store i16 %76, ptr %73, align 8
  %77 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 13, i32 0, i32 7
  store i32 %72, ptr %77, align 8
  %78 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 3, i32 12
  store i8 18, ptr %78, align 4
  %79 = getelementptr inbounds %struct.tcp_out_options, ptr %7, i32 0, i32 1
  store i16 %57, ptr %79, align 2
  %80 = getelementptr inbounds %struct.inet_request_sock, ptr %2, i32 0, i32 1
  %81 = load i16, ptr %80, align 8
  %82 = and i16 %81, 1024
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %88, label %84, !prof !18

84:                                               ; preds = %70
  %85 = trunc i16 %81 to i8
  %86 = lshr i8 %85, 4
  %87 = getelementptr inbounds %struct.tcp_out_options, ptr %7, i32 0, i32 2
  store i8 %86, ptr %87, align 4
  store i16 8, ptr %7, align 4
  br label %88

88:                                               ; preds = %84, %70
  %89 = phi i16 [ 0, %70 ], [ 8, %84 ]
  %90 = phi i32 [ 36, %70 ], [ 32, %84 ]
  %91 = and i16 %81, 256
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %93, label %96, !prof !18

93:                                               ; preds = %88
  %94 = and i16 %81, 512
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %119, label %116, !prof !18

96:                                               ; preds = %88
  %97 = or i16 %89, 2
  store i16 %97, ptr %7, align 4
  %98 = load i64, ptr %59, align 8
  %99 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %98) #20, !srcloc !53
  %100 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %98, i64 %99, i32 0) #20, !srcloc !10
  %101 = extractvalue { i64, i32 } %100, 0
  %102 = lshr i64 %101, 18
  %103 = trunc i64 %102 to i32
  %104 = getelementptr inbounds %struct.tcp_request_sock, ptr %2, i32 0, i32 8
  %105 = load i32, ptr %104, align 8
  %106 = add i32 %105, %103
  %107 = getelementptr inbounds %struct.tcp_out_options, ptr %7, i32 0, i32 7
  store i32 %106, ptr %107, align 4
  %108 = getelementptr inbounds %struct.request_sock, ptr %2, i32 0, i32 5
  %109 = load i32, ptr %108, align 8
  %110 = getelementptr inbounds %struct.tcp_out_options, ptr %7, i32 0, i32 8
  store i32 %109, ptr %110, align 4
  %111 = add nsw i32 %90, -12
  %112 = and i16 %81, 512
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %119, label %114, !prof !18

114:                                              ; preds = %96
  %115 = or i16 %89, 3
  store i16 %115, ptr %7, align 4
  br label %119

116:                                              ; preds = %93
  %117 = or i16 %89, 1
  store i16 %117, ptr %7, align 4
  %118 = add nsw i32 %90, -4
  br label %119

119:                                              ; preds = %116, %114, %96, %93
  %120 = phi i16 [ %89, %93 ], [ %117, %116 ], [ %97, %96 ], [ %115, %114 ]
  %121 = phi i32 [ %90, %93 ], [ %118, %116 ], [ %111, %96 ], [ %111, %114 ]
  %122 = icmp eq ptr %3, null
  br i1 %122, label %141, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %3, i32 0, i32 1
  %125 = load i8, ptr %124, align 8
  %126 = icmp sgt i8 %125, -1
  br i1 %126, label %127, label %141

127:                                              ; preds = %123
  %128 = zext i8 %125 to i32
  %129 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %3, i32 0, i32 2
  %130 = load i8, ptr %129, align 1, !range !59
  %131 = icmp eq i8 %130, 0
  %132 = select i1 %131, i32 2, i32 4
  %133 = add nuw nsw i32 %128, 3
  %134 = add nuw nsw i32 %133, %132
  %135 = and i32 %134, 1020
  %136 = icmp ult i32 %121, %135
  br i1 %136, label %141, label %137

137:                                              ; preds = %127
  %138 = or i16 %120, 256
  store i16 %138, ptr %7, align 4
  %139 = getelementptr inbounds %struct.tcp_out_options, ptr %7, i32 0, i32 9
  store ptr %3, ptr %139, align 4
  %140 = sub nsw i32 %121, %135
  br label %141

141:                                              ; preds = %137, %127, %123, %119
  %142 = phi i32 [ %121, %119 ], [ %121, %127 ], [ %140, %137 ], [ %121, %123 ]
  %143 = sub nsw i32 60, %142
  %144 = tail call ptr @skb_push(ptr noundef nonnull %8, i32 noundef %143) #19
  %145 = load ptr, ptr %12, align 4
  %146 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 16
  %147 = load ptr, ptr %146, align 8
  %148 = ptrtoint ptr %145 to i32
  %149 = ptrtoint ptr %147 to i32
  %150 = sub i32 %148, %149
  %151 = trunc i32 %150 to i16
  %152 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 13, i32 0, i32 17
  store i16 %151, ptr %152, align 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %145, i8 0, i32 20, i1 false)
  %153 = getelementptr inbounds %struct.tcphdr, ptr %145, i32 0, i32 4
  store i16 4608, ptr %153, align 4
  %154 = load i16, ptr %80, align 8
  %155 = and i16 %154, 2048
  %156 = icmp eq i16 %155, 0
  %157 = select i1 %156, i16 4608, i16 20992
  store i16 %157, ptr %153, align 4
  %158 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 2
  %159 = getelementptr inbounds %struct.anon.2, ptr %158, i32 0, i32 1
  %160 = load i16, ptr %159, align 2
  %161 = tail call i16 @llvm.bswap.i16(i16 %160)
  store i16 %161, ptr %145, align 4
  %162 = load i16, ptr %158, align 4
  %163 = getelementptr inbounds %struct.tcphdr, ptr %145, i32 0, i32 1
  store i16 %162, ptr %163, align 2
  %164 = getelementptr inbounds %struct.inet_request_sock, ptr %2, i32 0, i32 2
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 13, i32 0, i32 11
  store i32 %165, ptr %166, align 4
  %167 = load i16, ptr %73, align 8
  %168 = or i16 %167, 96
  store i16 %168, ptr %73, align 8
  %169 = getelementptr inbounds %struct.tcp_request_sock, ptr %2, i32 0, i32 7
  %170 = load i32, ptr %169, align 4
  %171 = tail call i32 @llvm.bswap.i32(i32 %170)
  %172 = getelementptr inbounds %struct.tcphdr, ptr %145, i32 0, i32 2
  store i32 %171, ptr %172, align 4
  %173 = getelementptr inbounds %struct.tcp_request_sock, ptr %2, i32 0, i32 10
  %174 = load i32, ptr %173, align 8
  %175 = tail call i32 @llvm.bswap.i32(i32 %174)
  %176 = getelementptr inbounds %struct.tcphdr, ptr %145, i32 0, i32 3
  store i32 %175, ptr %176, align 4
  %177 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 18
  %178 = load i32, ptr %177, align 8
  %179 = tail call i32 @llvm.umin.i32(i32 %178, i32 65535)
  %180 = trunc i32 %179 to i16
  %181 = tail call i16 @llvm.bswap.i16(i16 %180)
  %182 = getelementptr inbounds %struct.tcphdr, ptr %145, i32 0, i32 5
  store i16 %181, ptr %182, align 2
  %183 = getelementptr %struct.tcphdr, ptr %145, i32 1
  call fastcc void @tcp_options_write(ptr noundef %183, ptr noundef null, ptr noundef nonnull %7)
  %184 = trunc i32 %143 to i16
  %185 = load i16, ptr %153, align 4
  %186 = shl nuw nsw i16 %184, 2
  %187 = and i16 %186, 240
  %188 = and i16 %185, -241
  %189 = or i16 %188, %187
  store i16 %189, ptr %153, align 4
  %190 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %191 = getelementptr [16 x i32], ptr %190, i32 0, i32 11
  %192 = ptrtoint ptr %191 to i32
  %193 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %194 = inttoptr i32 %193 to ptr
  %195 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %194) #16, !srcloc !25
  %196 = add i32 %195, %192
  %197 = inttoptr i32 %196 to ptr
  %198 = load i32, ptr %197, align 4
  %199 = add i32 %198, 1
  store i32 %199, ptr %197, align 4
  store i64 %58, ptr %59, align 8
  %200 = load volatile i32, ptr @tcp_tx_delay_enabled, align 4
  %201 = icmp sgt i32 %200, 0
  br i1 %201, label %202, label %208, !prof !18

202:                                              ; preds = %141
  %203 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 41
  %204 = load i32, ptr %203, align 4
  %205 = zext i32 %204 to i64
  %206 = mul nuw nsw i64 %205, 1000
  %207 = add i64 %206, %58
  store i64 %207, ptr %59, align 8
  br label %208

208:                                              ; preds = %202, %141, %10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #19
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_set_owner_w(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #13

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_options_write(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #14 {
  %4 = load i16, ptr %2, align 4
  %5 = and i16 %4, 4
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %11, label %7, !prof !19

7:                                                ; preds = %3
  %8 = getelementptr i32, ptr %0, i32 1
  store i32 303235329, ptr %0, align 4
  %9 = getelementptr inbounds %struct.tcp_out_options, ptr %2, i32 0, i32 6
  store ptr %8, ptr %9, align 4
  %10 = getelementptr i32, ptr %0, i32 5
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi ptr [ %10, %7 ], [ %0, %3 ]
  %13 = getelementptr inbounds %struct.tcp_out_options, ptr %2, i32 0, i32 1
  %14 = load i16, ptr %13, align 2
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %21, label %16, !prof !19

16:                                               ; preds = %11
  %17 = zext i16 %14 to i32
  %18 = or i32 %17, 33816576
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = getelementptr i32, ptr %12, i32 1
  store i32 %19, ptr %12, align 4
  br label %21

21:                                               ; preds = %16, %11
  %22 = phi ptr [ %20, %16 ], [ %12, %11 ]
  %23 = zext i16 %4 to i32
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %43, label %26, !prof !18

26:                                               ; preds = %21
  %27 = and i32 %23, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29, !prof !19

29:                                               ; preds = %26
  store i32 168296964, ptr %22, align 4
  %30 = and i16 %4, -2
  br label %32

31:                                               ; preds = %26
  store i32 168296705, ptr %22, align 4
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i16 [ %4, %31 ], [ %30, %29 ]
  %34 = getelementptr i32, ptr %22, i32 1
  %35 = getelementptr inbounds %struct.tcp_out_options, ptr %2, i32 0, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %38 = getelementptr i32, ptr %22, i32 2
  store i32 %37, ptr %34, align 4
  %39 = getelementptr inbounds %struct.tcp_out_options, ptr %2, i32 0, i32 8
  %40 = load i32, ptr %39, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %42 = getelementptr i32, ptr %22, i32 3
  store i32 %41, ptr %38, align 4
  br label %43

43:                                               ; preds = %32, %21
  %44 = phi i16 [ %4, %21 ], [ %33, %32 ]
  %45 = phi ptr [ %22, %21 ], [ %42, %32 ]
  %46 = and i16 %44, 1
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %50, label %48, !prof !19

48:                                               ; preds = %43
  %49 = getelementptr i32, ptr %45, i32 1
  store i32 33816833, ptr %45, align 4
  br label %50

50:                                               ; preds = %48, %43
  %51 = phi ptr [ %49, %48 ], [ %45, %43 ]
  %52 = and i16 %44, 8
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %61, label %54, !prof !19

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.tcp_out_options, ptr %2, i32 0, i32 2
  %56 = load i8, ptr %55, align 4
  %57 = zext i8 %56 to i32
  %58 = or i32 %57, 16974592
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %60 = getelementptr i32, ptr %51, i32 1
  store i32 %59, ptr %51, align 4
  br label %61

61:                                               ; preds = %54, %50
  %62 = phi ptr [ %60, %54 ], [ %51, %50 ]
  %63 = getelementptr inbounds %struct.tcp_out_options, ptr %2, i32 0, i32 3
  %64 = load i8, ptr %63, align 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %101, label %66, !prof !19

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.tcp_sock, ptr %1, i32 0, i32 61, i32 4
  %68 = load i24, ptr %67, align 4
  %69 = and i24 %68, 4
  %70 = icmp eq i24 %69, 0
  %71 = getelementptr inbounds %struct.tcp_sock, ptr %1, i32 0, i32 91
  %72 = getelementptr inbounds %struct.tcp_sock, ptr %1, i32 0, i32 92
  %73 = select i1 %70, ptr %72, ptr %71
  %74 = zext i8 %64 to i32
  %75 = shl nuw nsw i32 %74, 3
  %76 = or i32 %75, 16844034
  %77 = tail call i32 @llvm.bswap.i32(i32 %76)
  store i32 %77, ptr %62, align 4
  %78 = getelementptr i32, ptr %62, i32 1
  %79 = load i8, ptr %63, align 1
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %97, label %81

81:                                               ; preds = %81, %66
  %82 = phi ptr [ %93, %81 ], [ %78, %66 ]
  %83 = phi i32 [ %92, %81 ], [ 0, %66 ]
  %84 = phi ptr [ %88, %81 ], [ %62, %66 ]
  %85 = getelementptr %struct.tcp_sack_block, ptr %73, i32 %83
  %86 = load i32, ptr %85, align 4
  %87 = tail call i32 @llvm.bswap.i32(i32 %86)
  %88 = getelementptr i32, ptr %84, i32 2
  store i32 %87, ptr %82, align 4
  %89 = getelementptr %struct.tcp_sack_block, ptr %73, i32 %83, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = tail call i32 @llvm.bswap.i32(i32 %90)
  store i32 %91, ptr %88, align 4
  %92 = add nuw nsw i32 %83, 1
  %93 = getelementptr i32, ptr %84, i32 3
  %94 = load i8, ptr %63, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp ult i32 %92, %95
  br i1 %96, label %81, label %97

97:                                               ; preds = %81, %66
  %98 = phi ptr [ %78, %66 ], [ %93, %81 ]
  %99 = load i24, ptr %67, align 4
  %100 = and i24 %99, -5
  store i24 %100, ptr %67, align 4
  br label %101

101:                                              ; preds = %97, %61
  %102 = phi ptr [ %98, %97 ], [ %62, %61 ]
  %103 = and i16 %44, 256
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %142, label %105, !prof !19

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.tcp_out_options, ptr %2, i32 0, i32 9
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %107, i32 0, i32 2
  %109 = load i8, ptr %108, align 1, !range !59
  %110 = icmp eq i8 %109, 0
  %111 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %107, i32 0, i32 1
  %112 = load i8, ptr %111, align 8
  br i1 %110, label %120, label %113

113:                                              ; preds = %105
  %114 = sext i8 %112 to i32
  %115 = add nsw i32 %114, 4
  %116 = shl nsw i32 %115, 16
  %117 = or i32 %116, -33490551
  %118 = tail call i32 @llvm.bswap.i32(i32 %117)
  store i32 %118, ptr %102, align 4
  %119 = getelementptr i8, ptr %102, i32 4
  br label %126

120:                                              ; preds = %105
  %121 = zext i8 %112 to i32
  %122 = add nuw nsw i32 %121, 2
  %123 = getelementptr i8, ptr %102, i32 1
  store i8 34, ptr %102, align 1
  %124 = trunc i32 %122 to i8
  %125 = getelementptr i8, ptr %102, i32 2
  store i8 %124, ptr %123, align 1
  br label %126

126:                                              ; preds = %120, %113
  %127 = phi ptr [ %119, %113 ], [ %125, %120 ]
  %128 = phi i32 [ %115, %113 ], [ %122, %120 ]
  %129 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %107, i32 0, i32 1
  %130 = load i8, ptr %129, align 8
  %131 = sext i8 %130 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %127, ptr align 8 %107, i32 %131, i1 false)
  %132 = and i32 %128, 3
  %133 = icmp eq i32 %132, 2
  br i1 %133, label %134, label %142

134:                                              ; preds = %126
  %135 = load i8, ptr %129, align 8
  %136 = sext i8 %135 to i32
  %137 = getelementptr i8, ptr %127, i32 %136
  store i8 1, ptr %137, align 1
  %138 = load i8, ptr %129, align 8
  %139 = sext i8 %138 to i32
  %140 = add nsw i32 %139, 1
  %141 = getelementptr i8, ptr %127, i32 %140
  store i8 1, ptr %141, align 1
  br label %142

142:                                              ; preds = %134, %126, %101
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_connect(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %3 = load volatile i8, ptr %2, align 2
  %4 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0) #19
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %664

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %12 = load volatile ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 1
  %14 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 66), align 2
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, i16 20, i16 32
  store i16 %16, ptr %13, align 8
  %17 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61
  %18 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 6
  %19 = load i16, ptr %18, align 4
  %20 = icmp eq i16 %19, 0
  %21 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 7
  br i1 %20, label %22, label %24

22:                                               ; preds = %10
  %23 = load i16, ptr %21, align 2
  br label %25

24:                                               ; preds = %10
  store i16 %19, ptr %21, align 2
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i16 [ %23, %22 ], [ %19, %24 ]
  %27 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 27
  store i32 0, ptr %27, align 8
  %28 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 44), align 1
  %29 = icmp ugt i8 %28, 1
  %30 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 25
  %31 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 25, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = select i1 %29, i32 -2147483648, i32 0
  %34 = and i32 %32, 2147483647
  %35 = or i32 %34, %33
  store i32 %35, ptr %31, align 8
  %36 = zext i16 %26 to i32
  %37 = add nuw nsw i32 %36, 20
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %38, i32 0, i32 6
  %40 = load i16, ptr %39, align 4
  %41 = zext i16 %40 to i32
  %42 = add nuw nsw i32 %37, %41
  store i32 %42, ptr %30, align 8
  %43 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 46), align 4
  %44 = zext i16 %16 to i32
  %45 = add i32 %43, %44
  %46 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 23
  %47 = load i16, ptr %46, align 2
  %48 = zext i16 %47 to i32
  %49 = add i32 %45, %48
  %50 = load i16, ptr %39, align 4
  %51 = zext i16 %50 to i32
  %52 = add i32 %49, %51
  %53 = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %38, i32 0, i32 7
  %54 = load i16, ptr %53, align 2
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %71, label %56

56:                                               ; preds = %25
  %57 = load volatile ptr, ptr %11, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %71, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.dst_entry, ptr %57, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, -4
  %63 = inttoptr i32 %62 to ptr
  %64 = getelementptr i32, ptr %63, i32 11
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %59
  %69 = zext i16 %54 to i32
  %70 = add i32 %52, %69
  br label %71

71:                                               ; preds = %68, %59, %56, %25
  %72 = phi i32 [ %52, %25 ], [ %70, %68 ], [ %52, %59 ], [ %52, %56 ]
  %73 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 25, i32 1
  store i32 %72, ptr %73, align 4
  store i32 %33, ptr %31, align 8
  %74 = icmp sgt i32 %35, -1
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = load volatile i32, ptr @jiffies, align 64
  %77 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 25, i32 3
  store i32 %76, ptr %77, align 4
  br label %78

78:                                               ; preds = %75, %71
  %79 = getelementptr inbounds %struct.dst_entry, ptr %12, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.dst_ops, ptr %80, i32 0, i32 5
  %82 = load ptr, ptr %81, align 4
  %83 = tail call i32 %82(ptr noundef %12) #19
  %84 = tail call i32 @tcp_sync_mss(ptr noundef %0, i32 noundef %83) #19
  %85 = getelementptr inbounds %struct.dst_entry, ptr %12, i32 0, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, -4
  %88 = inttoptr i32 %87 to ptr
  %89 = getelementptr i32, ptr %88, i32 15
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %116, label %92

92:                                               ; preds = %78
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !60
  %93 = tail call ptr @tcp_ca_find_key(i32 noundef %90) #19
  %94 = icmp eq ptr %93, null
  br i1 %94, label %115, label %95, !prof !18

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %93, i32 0, i32 12
  %97 = load ptr, ptr %96, align 4
  %98 = tail call zeroext i1 @try_module_get(ptr noundef %97) #19
  br i1 %98, label %99, label %115, !prof !19

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %101, i32 0, i32 12
  %103 = load ptr, ptr %102, align 4
  tail call void @module_put(ptr noundef %103) #19
  %104 = load i32, ptr %85, align 4
  %105 = and i32 %104, -4
  %106 = inttoptr i32 %105 to ptr
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %109 = load i8, ptr %108, align 4
  %110 = lshr i32 %107, 9
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, -128
  %113 = and i8 %109, 127
  %114 = or i8 %112, %113
  store i8 %114, ptr %108, align 4
  store ptr %93, ptr %100, align 4
  br label %115

115:                                              ; preds = %99, %95, %92
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !61
  br label %116

116:                                              ; preds = %115, %78
  %117 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 29
  %118 = load i32, ptr %117, align 8
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %116
  %121 = load i32, ptr %85, align 4
  %122 = and i32 %121, -4
  %123 = inttoptr i32 %122 to ptr
  %124 = getelementptr i32, ptr %123, i32 2
  %125 = load i32, ptr %124, align 4
  store i32 %125, ptr %117, align 8
  br label %126

126:                                              ; preds = %120, %116
  %127 = load i32, ptr %85, align 4
  %128 = and i32 %127, -4
  %129 = inttoptr i32 %128 to ptr
  %130 = getelementptr i32, ptr %129, i32 7
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %126
  %134 = load ptr, ptr %79, align 4
  %135 = getelementptr inbounds %struct.dst_ops, ptr %134, i32 0, i32 4
  %136 = load ptr, ptr %135, align 16
  %137 = tail call i32 %136(ptr noundef %12) #19
  br label %138

138:                                              ; preds = %133, %126
  %139 = phi i32 [ %131, %126 ], [ %137, %133 ]
  %140 = trunc i32 %139 to i16
  %141 = load volatile i16, ptr %18, align 4
  %142 = icmp ne i16 %141, 0
  %143 = icmp ult i16 %141, %140
  %144 = and i1 %142, %143
  %145 = select i1 %144, i16 %141, i16 %140
  %146 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 32
  store i16 %145, ptr %146, align 8
  tail call void @tcp_initialize_rcv_mss(ptr noundef %0) #19
  %147 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 43
  %148 = load i8, ptr %147, align 8
  %149 = and i8 %148, 32
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %138
  %152 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 77), align 4
  %153 = sub i32 0, %152
  br label %173

154:                                              ; preds = %138
  %155 = load i32, ptr %117, align 8
  %156 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 15
  %157 = load volatile i32, ptr %156, align 4
  %158 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 77), align 4
  %159 = icmp slt i32 %158, 1
  %160 = sub i32 0, %158
  %161 = ashr i32 %157, %160
  %162 = ashr i32 %157, %158
  %163 = sub i32 %157, %162
  %164 = select i1 %159, i32 %161, i32 %163
  %165 = add i32 %155, -1
  %166 = icmp ult i32 %165, %164
  br i1 %166, label %173, label %167

167:                                              ; preds = %154
  %168 = load volatile i32, ptr %156, align 4
  %169 = ashr i32 %168, %160
  %170 = ashr i32 %168, %158
  %171 = sub i32 %168, %170
  %172 = select i1 %159, i32 %169, i32 %171
  store i32 %172, ptr %117, align 8
  br label %173

173:                                              ; preds = %167, %154, %151
  %174 = phi i32 [ %153, %151 ], [ %160, %154 ], [ %160, %167 ]
  %175 = phi i32 [ %152, %151 ], [ %158, %154 ], [ %158, %167 ]
  %176 = load volatile i8, ptr %2, align 2
  %177 = load i32, ptr %85, align 4
  %178 = and i32 %177, -4
  %179 = inttoptr i32 %178 to ptr
  %180 = getelementptr i32, ptr %179, i32 13
  %181 = load i32, ptr %180, align 4
  %182 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 15
  %183 = load volatile i32, ptr %182, align 4
  %184 = icmp slt i32 %175, 1
  %185 = ashr i32 %183, %174
  %186 = ashr i32 %183, %175
  %187 = sub i32 %183, %186
  %188 = select i1 %184, i32 %185, i32 %187
  %189 = load i16, ptr %146, align 8
  %190 = zext i16 %189 to i32
  %191 = load i32, ptr %17, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %173
  %194 = load i16, ptr %13, align 8
  %195 = zext i16 %194 to i32
  %196 = sub nsw i32 20, %195
  br label %197

197:                                              ; preds = %193, %173
  %198 = phi i32 [ %196, %193 ], [ 0, %173 ]
  %199 = add nsw i32 %198, %190
  %200 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 79
  %201 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 65), align 1
  %202 = tail call i32 @llvm.smax.i32(i32 %188, i32 0) #19
  %203 = load i32, ptr %117, align 4
  %204 = icmp eq i32 %203, 0
  %205 = select i1 %204, i32 1073725440, i32 %203
  %206 = tail call i32 @llvm.umin.i32(i32 %205, i32 %202) #19
  %207 = icmp ugt i32 %206, %199
  br i1 %207, label %208, label %211

208:                                              ; preds = %197
  %209 = urem i32 %206, %199
  %210 = sub nsw i32 %206, %209
  br label %211

211:                                              ; preds = %208, %197
  %212 = phi i32 [ %210, %208 ], [ %206, %197 ]
  %213 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 85), align 1
  %214 = icmp eq i8 %213, 0
  %215 = select i1 %214, i32 65535, i32 32767
  %216 = tail call i32 @llvm.umin.i32(i32 %215, i32 %212) #19
  %217 = icmp eq i32 %181, 0
  %218 = mul i32 %199, %181
  %219 = tail call i32 @llvm.umin.i32(i32 %216, i32 %218) #19
  %220 = select i1 %217, i32 %216, i32 %219
  store i32 %220, ptr %200, align 4
  %221 = icmp eq i8 %201, 0
  br i1 %221, label %236, label %222

222:                                              ; preds = %211
  %223 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 97, i32 2), align 8
  %224 = tail call i32 @llvm.umax.i32(i32 %212, i32 %223) #19
  %225 = load i32, ptr @sysctl_rmem_max, align 4
  %226 = tail call i32 @llvm.umax.i32(i32 %224, i32 %225) #19
  %227 = tail call i32 @llvm.umin.i32(i32 %226, i32 %205) #19
  %228 = icmp eq i32 %227, 0
  %229 = tail call i32 @llvm.ctlz.i32(i32 %227, i1 false) #19, !range !11
  %230 = sub nsw i32 31, %229
  %231 = call i32 @llvm.smax.i32(i32 %230, i32 15)
  %232 = add nsw i32 %231, -15
  %233 = call i32 @llvm.umin.i32(i32 %232, i32 14)
  %234 = select i1 %228, i32 0, i32 %233
  %235 = trunc i32 %234 to i8
  br label %236

236:                                              ; preds = %222, %211
  %237 = phi i8 [ 0, %211 ], [ %235, %222 ]
  %238 = phi i32 [ 0, %211 ], [ %234, %222 ]
  %239 = shl nuw nsw i32 65535, %238
  %240 = tail call i32 @llvm.umin.i32(i32 %239, i32 %205) #19
  store i32 %240, ptr %117, align 4
  %241 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %242 = load i24, ptr %241, align 4
  %243 = zext i8 %237 to i24
  %244 = shl nuw nsw i24 %243, 12
  %245 = and i24 %242, -61441
  %246 = or i24 %245, %244
  store i24 %246, ptr %241, align 4
  %247 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 30
  store i32 %220, ptr %247, align 4
  %248 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  store i32 0, ptr %248, align 4
  %249 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %250 = load i32, ptr %249, align 4
  %251 = and i32 %250, -3
  store i32 %251, ptr %249, align 4
  %252 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 26
  store i32 0, ptr %252, align 4
  %253 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 25
  store i32 0, ptr %253, align 8
  tail call void @tcp_write_queue_purge(ptr noundef %0) #19
  %254 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %255 = load i32, ptr %254, align 4
  %256 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  store i32 %255, ptr %256, align 4
  %257 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 17
  store i32 %255, ptr %257, align 8
  %258 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 60
  store i32 %255, ptr %258, align 8
  %259 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  store volatile i32 %255, ptr %259, align 4
  %260 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 37
  %261 = load i16, ptr %260, align 4
  %262 = and i16 %261, 16384
  %263 = icmp eq i16 %262, 0
  br i1 %263, label %264, label %266, !prof !19

264:                                              ; preds = %236
  %265 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  store i32 0, ptr %265, align 8
  br label %271

266:                                              ; preds = %236
  %267 = load volatile i32, ptr @jiffies, align 64
  %268 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 18
  store i32 %267, ptr %268, align 4
  %269 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %270 = load i32, ptr %269, align 8
  br label %271

271:                                              ; preds = %266, %264
  %272 = phi i32 [ %270, %266 ], [ 0, %264 ]
  %273 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 9
  store i32 %272, ptr %273, align 8
  %274 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 8
  store volatile i32 %272, ptr %274, align 4
  %275 = load volatile i8, ptr %2, align 2
  %276 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 6
  store i32 100, ptr %276, align 4
  %277 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 18
  store i8 0, ptr %277, align 1
  tail call void @tcp_clear_retrans(ptr noundef %0) #19
  %278 = load i16, ptr %260, align 4
  %279 = and i16 %278, 16384
  %280 = icmp eq i16 %279, 0
  br i1 %280, label %282, label %281, !prof !19

281:                                              ; preds = %271
  tail call void @tcp_finish_connect(ptr noundef %0, ptr noundef null) #19
  br label %664

282:                                              ; preds = %271
  %283 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 41
  %284 = load i32, ptr %283, align 8
  %285 = tail call ptr @tcp_stream_alloc_skb(ptr noundef %0, i32 noundef 0, i32 noundef %284, i1 noundef zeroext true) #19
  %286 = icmp eq ptr %285, null
  br i1 %286, label %664, label %287, !prof !18

287:                                              ; preds = %282
  %288 = load i32, ptr %254, align 4
  %289 = add i32 %288, 1
  store i32 %289, ptr %254, align 4
  %290 = getelementptr inbounds %struct.sk_buff, ptr %285, i32 0, i32 13
  %291 = load i16, ptr %290, align 8
  %292 = or i16 %291, 96
  store i16 %292, ptr %290, align 8
  %293 = getelementptr inbounds %struct.sk_buff, ptr %285, i32 0, i32 3
  %294 = getelementptr inbounds %struct.sk_buff, ptr %285, i32 0, i32 3, i32 12
  store i8 2, ptr %294, align 4
  %295 = getelementptr inbounds %struct.sk_buff, ptr %285, i32 0, i32 3, i32 8
  store i16 1, ptr %295, align 8
  store i32 %288, ptr %293, align 8
  %296 = getelementptr inbounds %struct.sk_buff, ptr %285, i32 0, i32 3, i32 4
  store i32 %289, ptr %296, align 4
  %297 = tail call i64 @ktime_get() #19
  %298 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 43
  store i64 %297, ptr %298, align 8
  %299 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %297, i32 0) #20, !srcloc !9
  %300 = extractvalue { i64, i32 } %299, 0
  %301 = extractvalue { i64, i32 } %299, 1
  %302 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %297, i64 %300, i32 %301) #20, !srcloc !10
  %303 = extractvalue { i64, i32 } %302, 0
  %304 = lshr i64 %303, 9
  %305 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  store i64 %304, ptr %305, align 8
  %306 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %304, i32 0) #20, !srcloc !9
  %307 = extractvalue { i64, i32 } %306, 0
  %308 = extractvalue { i64, i32 } %306, 1
  %309 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %304, i64 %307, i32 %308) #20, !srcloc !10
  %310 = extractvalue { i64, i32 } %309, 0
  %311 = lshr i64 %310, 9
  %312 = trunc i64 %311 to i32
  %313 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 98
  store i32 %312, ptr %313, align 8
  %314 = getelementptr inbounds %struct.sk_buff, ptr %285, i32 0, i32 5
  %315 = load i32, ptr %314, align 8
  %316 = load i32, ptr %296, align 4
  %317 = add i32 %316, %315
  store i32 %317, ptr %296, align 4
  %318 = getelementptr inbounds %struct.sk_buff, ptr %285, i32 0, i32 11
  %319 = load i8, ptr %318, align 2
  %320 = or i8 %319, 2
  store i8 %320, ptr %318, align 2
  %321 = getelementptr inbounds %struct.sk_buff, ptr %285, i32 0, i32 15
  %322 = load ptr, ptr %321, align 4
  %323 = getelementptr inbounds %struct.skb_shared_info, ptr %322, i32 0, i32 10
  store volatile i32 65537, ptr %323, align 4
  %324 = getelementptr inbounds %struct.sk_buff, ptr %285, i32 0, i32 18
  %325 = load i32, ptr %324, align 8
  %326 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %327 = load i32, ptr %326, align 4
  %328 = add i32 %327, %325
  store volatile i32 %328, ptr %326, align 4
  %329 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %330 = load ptr, ptr %329, align 8
  %331 = getelementptr inbounds %struct.proto, ptr %330, i32 0, i32 30
  %332 = load ptr, ptr %331, align 4
  %333 = icmp eq ptr %332, null
  br i1 %333, label %339, label %334

334:                                              ; preds = %287
  %335 = load i32, ptr %324, align 8
  %336 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %337 = load i32, ptr %336, align 4
  %338 = sub i32 %337, %335
  store i32 %338, ptr %336, align 4
  br label %339

339:                                              ; preds = %334, %287
  %340 = load i32, ptr %296, align 4
  store volatile i32 %340, ptr %254, align 4
  %341 = load i16, ptr %295, align 8
  %342 = zext i16 %341 to i32
  %343 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %344 = load i32, ptr %343, align 4
  %345 = add i32 %344, %342
  store i32 %345, ptr %343, align 4
  %346 = load volatile i8, ptr %2, align 2
  %347 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 29), align 8
  %348 = icmp eq i8 %347, 1
  br i1 %348, label %361, label %349

349:                                              ; preds = %339
  %350 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %351 = load ptr, ptr %350, align 4
  %352 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %351, i32 0, i32 15
  %353 = load i32, ptr %352, align 4
  %354 = and i32 %353, 2
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %361

356:                                              ; preds = %349
  %357 = load volatile ptr, ptr %11, align 8
  %358 = icmp eq ptr %357, null
  br i1 %358, label %359, label %363

359:                                              ; preds = %356
  %360 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 56
  store i8 0, ptr %360, align 2
  br label %406

361:                                              ; preds = %349, %339
  %362 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 56
  store i8 0, ptr %362, align 2
  br label %373

363:                                              ; preds = %356
  %364 = getelementptr inbounds %struct.dst_entry, ptr %357, i32 0, i32 2
  %365 = load i32, ptr %364, align 4
  %366 = and i32 %365, -4
  %367 = inttoptr i32 %366 to ptr
  %368 = getelementptr i32, ptr %367, i32 11
  %369 = load i32, ptr %368, align 4
  %370 = and i32 %369, 1
  %371 = icmp eq i32 %370, 0
  %372 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 56
  store i8 0, ptr %372, align 2
  br i1 %371, label %406, label %373

373:                                              ; preds = %363, %361
  %374 = phi ptr [ %362, %361 ], [ %372, %363 ]
  %375 = load i8, ptr %294, align 4
  %376 = or i8 %375, -64
  store i8 %376, ptr %294, align 4
  store i8 1, ptr %374, align 2
  %377 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %378 = load ptr, ptr %377, align 4
  %379 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %378, i32 0, i32 15
  %380 = load i32, ptr %379, align 4
  %381 = and i32 %380, 2
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %406, label %383

383:                                              ; preds = %373
  %384 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %385 = load i8, ptr %384, align 4
  %386 = or i8 %385, 2
  store i8 %386, ptr %384, align 4
  %387 = load volatile i8, ptr %2, align 2
  %388 = zext i8 %387 to i32
  %389 = shl nuw i32 1, %388
  %390 = and i32 %389, -4161
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %406, label %392

392:                                              ; preds = %383
  %393 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %394 = load ptr, ptr %393, align 8
  %395 = icmp eq ptr %394, null
  br i1 %395, label %406, label %396

396:                                              ; preds = %392
  %397 = load volatile i8, ptr %2, align 2
  %398 = zext i8 %397 to i32
  %399 = shl nuw i32 1, %398
  %400 = and i32 %399, -4161
  %401 = icmp eq i32 %400, 0
  %402 = select i1 %401, ptr null, ptr %394
  %403 = getelementptr inbounds %struct.ipv6_pinfo, ptr %402, i32 0, i32 11
  %404 = load i8, ptr %403, align 1
  %405 = or i8 %404, 2
  store i8 %405, ptr %403, align 1
  br label %406

406:                                              ; preds = %396, %392, %383, %373, %363, %359
  %407 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  tail call void @tcp_rbtree_insert(ptr noundef %407, ptr noundef nonnull %285) #19
  %408 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 115
  %409 = load ptr, ptr %408, align 4
  %410 = icmp eq ptr %409, null
  br i1 %410, label %625, label %411

411:                                              ; preds = %406
  %412 = load i16, ptr %146, align 8
  store i16 %412, ptr %21, align 2
  %413 = tail call zeroext i1 @tcp_fastopen_cookie_check(ptr noundef %0, ptr noundef %21, ptr noundef nonnull %409) #19
  br i1 %413, label %414, label %607

414:                                              ; preds = %411
  %415 = load i16, ptr %21, align 2
  %416 = load volatile i16, ptr %18, align 4
  %417 = icmp ne i16 %416, 0
  %418 = icmp ult i16 %416, %415
  %419 = and i1 %417, %418
  %420 = select i1 %419, i16 %416, i16 %415
  store i16 %420, ptr %21, align 2
  %421 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 9
  %422 = load i32, ptr %421, align 8
  %423 = load ptr, ptr %4, align 8
  %424 = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %423, i32 0, i32 6
  %425 = load i16, ptr %424, align 4
  %426 = zext i16 %425 to i32
  %427 = sub i32 %422, %426
  %428 = add i32 %427, -20
  %429 = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %423, i32 0, i32 7
  %430 = load i16, ptr %429, align 2
  %431 = icmp eq i16 %430, 0
  br i1 %431, label %447, label %432

432:                                              ; preds = %414
  %433 = load volatile ptr, ptr %11, align 8
  %434 = icmp eq ptr %433, null
  br i1 %434, label %447, label %435

435:                                              ; preds = %432
  %436 = getelementptr inbounds %struct.dst_entry, ptr %433, i32 0, i32 2
  %437 = load i32, ptr %436, align 4
  %438 = and i32 %437, -4
  %439 = inttoptr i32 %438 to ptr
  %440 = getelementptr i32, ptr %439, i32 11
  %441 = load i32, ptr %440, align 4
  %442 = and i32 %441, 8
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %447, label %444

444:                                              ; preds = %435
  %445 = zext i16 %430 to i32
  %446 = sub i32 %428, %445
  br label %447

447:                                              ; preds = %444, %435, %432, %414
  %448 = phi i32 [ %428, %414 ], [ %446, %444 ], [ %428, %435 ], [ %428, %432 ]
  %449 = zext i16 %420 to i32
  %450 = tail call i32 @llvm.smin.i32(i32 %448, i32 %449) #19
  %451 = load i16, ptr %46, align 2
  %452 = zext i16 %451 to i32
  %453 = sub i32 %450, %452
  %454 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 47), align 32
  %455 = tail call i32 @llvm.smax.i32(i32 %453, i32 %454) #19
  %456 = add i32 %455, -40
  %457 = getelementptr inbounds %struct.tcp_fastopen_request, ptr %409, i32 0, i32 2
  %458 = load i32, ptr %457, align 4
  %459 = tail call i32 @llvm.umin.i32(i32 %456, i32 %458) #19
  %460 = tail call i32 @llvm.umin.i32(i32 %459, i32 3520) #19
  %461 = load i32, ptr %283, align 8
  %462 = tail call ptr @tcp_stream_alloc_skb(ptr noundef %0, i32 noundef %460, i32 noundef %461, i1 noundef zeroext false) #19
  %463 = icmp eq ptr %462, null
  br i1 %463, label %607, label %464

464:                                              ; preds = %447
  %465 = getelementptr inbounds %struct.sk_buff, ptr %462, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(48) %465, ptr noundef align 8 dereferenceable(48) %293, i32 48, i1 false) #19
  %466 = icmp eq i32 %460, 0
  br i1 %466, label %514, label %467

467:                                              ; preds = %464
  %468 = tail call ptr @skb_put(ptr noundef nonnull %462, i32 noundef %460) #19
  %469 = getelementptr inbounds %struct.tcp_fastopen_request, ptr %409, i32 0, i32 1
  %470 = load ptr, ptr %469, align 8
  %471 = getelementptr inbounds %struct.msghdr, ptr %470, i32 0, i32 2
  %472 = tail call i32 @_copy_from_iter(ptr noundef %468, i32 noundef %460, ptr noundef %471) #19
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %511, label %474, !prof !18

474:                                              ; preds = %467
  %475 = icmp eq i32 %472, %460
  br i1 %475, label %477, label %476

476:                                              ; preds = %474
  tail call void @skb_trim(ptr noundef nonnull %462, i32 noundef %472) #19
  br label %477

477:                                              ; preds = %476, %474
  %478 = phi i32 [ %472, %476 ], [ %460, %474 ]
  %479 = getelementptr inbounds %struct.tcp_fastopen_request, ptr %409, i32 0, i32 4
  %480 = load ptr, ptr %479, align 4
  %481 = icmp eq ptr %480, null
  br i1 %481, label %514, label %482

482:                                              ; preds = %477
  %483 = getelementptr inbounds %struct.sk_buff, ptr %462, i32 0, i32 15
  %484 = load ptr, ptr %483, align 4
  %485 = load i8, ptr %484, align 8
  %486 = and i8 %485, 1
  %487 = icmp eq i8 %486, 0
  br i1 %487, label %492, label %488

488:                                              ; preds = %482
  %489 = getelementptr inbounds %struct.skb_shared_info, ptr %484, i32 0, i32 11
  %490 = load ptr, ptr %489, align 4
  %491 = icmp eq ptr %490, null
  br i1 %491, label %492, label %514

492:                                              ; preds = %488, %482
  %493 = getelementptr inbounds %struct.ubuf_info, ptr %480, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %493) #19, !srcloc !13
  %494 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %493, ptr %493, i32 1, ptr elementtype(i32) %493) #19, !srcloc !29
  %495 = extractvalue { i32, i32, i32 } %494, 0
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %501, label %497, !prof !18

497:                                              ; preds = %492
  %498 = add i32 %495, 1
  %499 = or i32 %498, %495
  %500 = icmp sgt i32 %499, -1
  br i1 %500, label %503, label %501, !prof !19

501:                                              ; preds = %497, %492
  %502 = phi i32 [ 2, %492 ], [ 1, %497 ]
  tail call void @refcount_warn_saturate(ptr noundef %493, i32 noundef %502) #19
  br label %503

503:                                              ; preds = %501, %497
  %504 = load ptr, ptr %483, align 4
  %505 = getelementptr inbounds %struct.skb_shared_info, ptr %504, i32 0, i32 11
  store ptr %480, ptr %505, align 4
  %506 = getelementptr inbounds %struct.ubuf_info, ptr %480, i32 0, i32 3
  %507 = load i8, ptr %506, align 4
  %508 = load ptr, ptr %483, align 4
  %509 = load i8, ptr %508, align 8
  %510 = or i8 %509, %507
  store i8 %510, ptr %508, align 8
  br label %514

511:                                              ; preds = %467
  %512 = getelementptr inbounds %struct.sk_buff, ptr %462, i32 0, i32 4
  %513 = getelementptr inbounds %struct.sk_buff, ptr %462, i32 0, i32 4, i32 0, i32 1
  store ptr null, ptr %513, align 4
  store i32 0, ptr %512, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %462, i32 noundef 0) #19
  br label %607

514:                                              ; preds = %503, %488, %477, %464
  %515 = phi i32 [ 0, %464 ], [ %478, %477 ], [ %478, %488 ], [ %478, %503 ]
  %516 = load i32, ptr %457, align 4
  %517 = icmp eq i32 %515, %516
  br i1 %517, label %518, label %520

518:                                              ; preds = %514
  %519 = getelementptr inbounds %struct.tcp_fastopen_request, ptr %409, i32 0, i32 1
  store ptr null, ptr %519, align 8
  br label %520

520:                                              ; preds = %518, %514
  %521 = getelementptr inbounds %struct.tcp_fastopen_request, ptr %409, i32 0, i32 3
  store i32 %515, ptr %521, align 8
  %522 = getelementptr inbounds %struct.sk_buff, ptr %462, i32 0, i32 5
  %523 = load i32, ptr %522, align 8
  %524 = getelementptr inbounds %struct.sk_buff, ptr %462, i32 0, i32 3, i32 4
  %525 = load i32, ptr %524, align 4
  %526 = add i32 %525, %523
  store i32 %526, ptr %524, align 4
  %527 = getelementptr inbounds %struct.sk_buff, ptr %462, i32 0, i32 11
  %528 = load i8, ptr %527, align 2
  %529 = or i8 %528, 2
  store i8 %529, ptr %527, align 2
  %530 = getelementptr inbounds %struct.sk_buff, ptr %462, i32 0, i32 15
  %531 = load ptr, ptr %530, align 4
  %532 = getelementptr inbounds %struct.skb_shared_info, ptr %531, i32 0, i32 10
  store volatile i32 65537, ptr %532, align 4
  %533 = getelementptr inbounds %struct.sk_buff, ptr %462, i32 0, i32 18
  %534 = load i32, ptr %533, align 8
  %535 = load i32, ptr %326, align 4
  %536 = add i32 %535, %534
  store volatile i32 %536, ptr %326, align 4
  %537 = load ptr, ptr %329, align 8
  %538 = getelementptr inbounds %struct.proto, ptr %537, i32 0, i32 30
  %539 = load ptr, ptr %538, align 4
  %540 = icmp eq ptr %539, null
  br i1 %540, label %546, label %541

541:                                              ; preds = %520
  %542 = load i32, ptr %533, align 8
  %543 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %544 = load i32, ptr %543, align 4
  %545 = sub i32 %544, %542
  store i32 %545, ptr %543, align 4
  br label %546

546:                                              ; preds = %541, %520
  %547 = load i32, ptr %524, align 4
  store volatile i32 %547, ptr %254, align 4
  %548 = getelementptr inbounds %struct.sk_buff, ptr %462, i32 0, i32 3, i32 8
  %549 = load i16, ptr %548, align 8
  %550 = zext i16 %549 to i32
  %551 = load i32, ptr %343, align 4
  %552 = add i32 %551, %550
  store i32 %552, ptr %343, align 4
  %553 = load i32, ptr %522, align 8
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %564, label %555

555:                                              ; preds = %546
  %556 = load i16, ptr %260, align 4
  %557 = and i16 %556, 3
  %558 = icmp eq i16 %557, 0
  br i1 %558, label %559, label %564

559:                                              ; preds = %555
  %560 = load volatile i32, ptr @jiffies, align 64
  %561 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 35
  store i32 %560, ptr %561, align 4
  %562 = and i16 %556, -4
  %563 = or i16 %562, 1
  store i16 %563, ptr %260, align 4
  br label %564

564:                                              ; preds = %559, %555, %546
  %565 = load i32, ptr %283, align 8
  %566 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %567 = load i32, ptr %566, align 8
  %568 = tail call fastcc i32 @__tcp_transmit_skb(ptr noundef %0, ptr noundef nonnull %462, i32 noundef 1, i32 noundef %565, i32 noundef %567) #19
  %569 = getelementptr inbounds %struct.sk_buff, ptr %462, i32 0, i32 2
  %570 = load i64, ptr %569, align 8
  %571 = getelementptr inbounds %struct.sk_buff, ptr %285, i32 0, i32 2
  store i64 %570, ptr %571, align 8
  %572 = load i32, ptr %465, align 8
  %573 = add i32 %572, 1
  store i32 %573, ptr %465, align 8
  %574 = getelementptr inbounds %struct.sk_buff, ptr %462, i32 0, i32 3, i32 12
  store i8 24, ptr %574, align 4
  %575 = icmp eq i32 %568, 0
  br i1 %575, label %576, label %595

576:                                              ; preds = %564
  %577 = load i32, ptr %521, align 8
  %578 = icmp sgt i32 %577, 0
  %579 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 39
  %580 = load i8, ptr %579, align 1
  %581 = select i1 %578, i8 4, i8 0
  %582 = and i8 %580, -5
  %583 = or i8 %582, %581
  store i8 %583, ptr %579, align 1
  tail call void @tcp_rbtree_insert(ptr noundef %407, ptr noundef nonnull %462) #19
  %584 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !20
  %585 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %586 = getelementptr [126 x i32], ptr %585, i32 0, i32 98
  %587 = ptrtoint ptr %586 to i32
  %588 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %589 = inttoptr i32 %588 to ptr
  %590 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %589) #16, !srcloc !25
  %591 = add i32 %590, %587
  %592 = inttoptr i32 %591 to ptr
  %593 = load i32, ptr %592, align 4
  %594 = add i32 %593, 1
  store i32 %594, ptr %592, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %584) #19, !srcloc !21
  br label %622

595:                                              ; preds = %564
  %596 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %597 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26, i32 0, i32 0, i32 1
  %598 = load ptr, ptr %597, align 4
  store volatile ptr %596, ptr %462, align 8
  %599 = getelementptr inbounds %struct.anon.43, ptr %462, i32 0, i32 1
  store volatile ptr %598, ptr %599, align 4
  store volatile ptr %462, ptr %597, align 4
  store volatile ptr %462, ptr %598, align 4
  %600 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26, i32 1
  %601 = load i32, ptr %600, align 4
  %602 = add i32 %601, 1
  store volatile i32 %602, ptr %600, align 4
  %603 = load i16, ptr %548, align 8
  %604 = zext i16 %603 to i32
  %605 = load i32, ptr %343, align 4
  %606 = sub i32 %605, %604
  store i32 %606, ptr %343, align 4
  br label %607

607:                                              ; preds = %595, %511, %447, %411
  %608 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %409, i32 0, i32 1
  %609 = load i8, ptr %608, align 8
  %610 = icmp sgt i8 %609, 0
  br i1 %610, label %611, label %612

611:                                              ; preds = %607
  store i8 0, ptr %608, align 8
  br label %612

612:                                              ; preds = %611, %607
  %613 = load i32, ptr %283, align 8
  %614 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %615 = load i32, ptr %614, align 8
  %616 = tail call fastcc i32 @__tcp_transmit_skb(ptr noundef %0, ptr noundef nonnull %285, i32 noundef 1, i32 noundef %613, i32 noundef %615) #19
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %622, label %618

618:                                              ; preds = %612
  %619 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 39
  %620 = load i8, ptr %619, align 1
  %621 = and i8 %620, -9
  store i8 %621, ptr %619, align 1
  br label %622

622:                                              ; preds = %618, %612, %576
  %623 = phi i32 [ %616, %618 ], [ 0, %612 ], [ 0, %576 ]
  %624 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %409, i32 0, i32 1
  store i8 -1, ptr %624, align 8
  br label %630

625:                                              ; preds = %406
  %626 = load i32, ptr %283, align 8
  %627 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %628 = load i32, ptr %627, align 8
  %629 = tail call fastcc i32 @__tcp_transmit_skb(ptr noundef %0, ptr noundef nonnull %285, i32 noundef 1, i32 noundef %626, i32 noundef %628) #19
  br label %630

630:                                              ; preds = %625, %622
  %631 = phi i32 [ %623, %622 ], [ %629, %625 ]
  %632 = icmp eq i32 %631, -111
  br i1 %632, label %664, label %633

633:                                              ; preds = %630
  %634 = load i32, ptr %254, align 4
  store volatile i32 %634, ptr %259, align 4
  %635 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 82
  store i32 %634, ptr %635, align 4
  %636 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %637 = load ptr, ptr %636, align 4
  %638 = icmp eq ptr %637, %636
  %639 = icmp eq ptr %637, null
  %640 = or i1 %638, %639
  br i1 %640, label %645, label %641, !prof !19

641:                                              ; preds = %633
  %642 = getelementptr inbounds %struct.sk_buff, ptr %637, i32 0, i32 3
  %643 = load i32, ptr %642, align 8
  store volatile i32 %643, ptr %259, align 4
  %644 = load i32, ptr %642, align 8
  store i32 %644, ptr %635, align 4
  br label %645

645:                                              ; preds = %641, %633
  %646 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !20
  %647 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %648 = getelementptr [16 x i32], ptr %647, i32 0, i32 5
  %649 = ptrtoint ptr %648 to i32
  %650 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %651 = inttoptr i32 %650 to ptr
  %652 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %651) #16, !srcloc !25
  %653 = add i32 %652, %649
  %654 = inttoptr i32 %653 to ptr
  %655 = load i32, ptr %654, align 4
  %656 = add i32 %655, 1
  store i32 %656, ptr %654, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %646) #19, !srcloc !21
  %657 = load i32, ptr %276, align 4
  %658 = tail call i32 @llvm.umin.i32(i32 %657, i32 12000) #19
  %659 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 19
  store i8 1, ptr %659, align 2
  %660 = load volatile i32, ptr @jiffies, align 64
  %661 = add i32 %660, %658
  %662 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 3
  store i32 %661, ptr %662, align 8
  %663 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 4
  tail call void @sk_reset_timer(ptr noundef %0, ptr noundef %663, i32 noundef %661) #19
  br label %664

664:                                              ; preds = %645, %630, %282, %281, %1
  %665 = phi i32 [ 0, %281 ], [ 0, %645 ], [ -113, %1 ], [ -105, %282 ], [ -111, %630 ]
  ret i32 %665
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_finish_connect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_send_delayed_ack(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24
  %3 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 4
  br i1 %5, label %6, label %28

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 2
  %8 = load i8, ptr %7, align 2
  %9 = icmp ugt i8 %8, 2
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load i8, ptr %2, align 4
  %12 = and i8 %11, 4
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %6
  br label %15

15:                                               ; preds = %14, %10
  %16 = phi i32 [ 20, %14 ], [ 50, %10 ]
  %17 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 45
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = lshr i32 %18, 3
  %22 = tail call i32 @__usecs_to_jiffies(i32 noundef %21) #19
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 4)
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 %16)
  br label %25

25:                                               ; preds = %20, %15
  %26 = phi i32 [ %24, %20 ], [ %16, %15 ]
  %27 = tail call i32 @llvm.smin.i32(i32 %4, i32 %26)
  br label %28

28:                                               ; preds = %25, %1
  %29 = phi i32 [ %27, %25 ], [ %4, %1 ]
  %30 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 @llvm.umin.i32(i32 %29, i32 %31)
  %33 = load volatile i32, ptr @jiffies, align 64
  %34 = add i32 %33, %32
  %35 = load i8, ptr %2, align 4
  %36 = and i8 %35, 2
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %28
  %39 = load volatile i32, ptr @jiffies, align 64
  %40 = ashr i32 %32, 2
  %41 = add i32 %39, %40
  %42 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = sub i32 %41, %43
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %48 = load i32, ptr %47, align 8
  tail call void @__tcp_send_ack(ptr noundef %0, i32 noundef %48) #19
  br label %58

49:                                               ; preds = %38
  %50 = sub i32 %34, %43
  %51 = icmp slt i32 %50, 0
  %52 = select i1 %51, i32 %34, i32 %43
  br label %53

53:                                               ; preds = %49, %28
  %54 = phi i32 [ %34, %28 ], [ %52, %49 ]
  %55 = or i8 %35, 3
  store i8 %55, ptr %2, align 4
  %56 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 5
  store i32 %54, ptr %56, align 4
  %57 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 5
  tail call void @sk_reset_timer(ptr noundef %0, ptr noundef %57, i32 noundef %54) #19
  br label %58

58:                                               ; preds = %53, %46
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_send_ack(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 8
  tail call void @__tcp_send_ack(ptr noundef %0, i32 noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_reset_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__tcp_send_ack(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %4 = load volatile i8, ptr %3, align 2
  %5 = icmp eq i8 %4, 7
  br i1 %5, label %71, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 41
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 131072
  %10 = or i32 %9, 10784
  %11 = tail call ptr @__alloc_skb(i32 noundef 320, i32 noundef %10, i32 noundef 0, i32 noundef -1) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %31, !prof !18

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 3
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl i32 20, %16
  %18 = icmp ult i32 %17, 12000
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = add i8 %15, 1
  store i8 %20, ptr %14, align 1
  br label %21

21:                                               ; preds = %19, %13
  %22 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24
  %23 = load i8, ptr %22, align 4
  %24 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 4
  store i32 4, ptr %24, align 4
  %25 = tail call i32 @llvm.umin.i32(i32 %17, i32 12000) #19
  %26 = or i8 %23, 3
  store i8 %26, ptr %22, align 4
  %27 = load volatile i32, ptr @jiffies, align 64
  %28 = add i32 %27, %25
  %29 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 5
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 5
  tail call void @sk_reset_timer(ptr noundef %0, ptr noundef %30, i32 noundef %28) #19
  br label %71

31:                                               ; preds = %6
  %32 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 17
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 320
  store ptr %34, ptr %32, align 4
  %35 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 14
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr i8, ptr %36, i32 320
  store ptr %37, ptr %35, align 8
  %38 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 26
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, %39
  %43 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %44 = load i32, ptr %43, align 4
  %45 = sub i32 %42, %44
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %31
  %48 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %49 = load i24, ptr %48, align 4
  %50 = and i24 %49, 8
  %51 = icmp eq i24 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %47
  %53 = sub i32 %44, %42
  %54 = zext i24 %49 to i32
  %55 = lshr i32 %54, 12
  %56 = and i32 %55, 15
  %57 = lshr i32 %53, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %52, %47
  br label %60

60:                                               ; preds = %59, %52, %31
  %61 = phi i32 [ %42, %59 ], [ %44, %52 ], [ %44, %31 ]
  %62 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 13
  %63 = load i16, ptr %62, align 8
  %64 = or i16 %63, 96
  store i16 %64, ptr %62, align 8
  %65 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3
  %66 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 12
  store i8 16, ptr %66, align 4
  %67 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 8
  store i16 1, ptr %67, align 8
  store i32 %61, ptr %65, align 8
  %68 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 4
  store i32 %61, ptr %68, align 4
  %69 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 18
  store i32 2, ptr %69, align 8
  %70 = tail call fastcc i32 @__tcp_transmit_skb(ptr noundef %0, ptr noundef nonnull %11, i32 noundef 0, i32 noundef 0, i32 noundef %1)
  br label %71

71:                                               ; preds = %60, %21, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__tcp_transmit_skb(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.tcp_out_options, align 4
  %7 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  store ptr null, ptr %7, align 4, !annotation !62
  %8 = icmp eq ptr %1, null
  br i1 %8, label %13, label %9, !prof !18

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %11 = load i16, ptr %10, align 8
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %14, !prof !18

13:                                               ; preds = %9, %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/tcp_output.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1252, 0\0A.popsection", ""() #19, !srcloc !63
  unreachable

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 42
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 43
  %18 = load i64, ptr %17, align 8
  %19 = tail call i64 @llvm.umax.i64(i64 %16, i64 %18)
  store i64 %19, ptr %15, align 8
  %20 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 2
  store i64 %19, ptr %20, align 8
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %52, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %24 = load i32, ptr %23, align 8
  store i32 0, ptr %23, align 8
  %25 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %26 = load i8, ptr %25, align 2
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.skb_shared_info, ptr %31, i32 0, i32 10
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %45, label %36, !prof !19

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %40 = load ptr, ptr %39, align 8
  %41 = ptrtoint ptr %38 to i32
  %42 = ptrtoint ptr %40 to i32
  %43 = sub i32 %41, %42
  %44 = tail call ptr @__pskb_copy_fclone(ptr noundef nonnull %1, i32 noundef %43, i32 noundef %3, i1 noundef zeroext false) #19
  br label %47

45:                                               ; preds = %29, %22
  %46 = tail call ptr @skb_clone(ptr noundef nonnull %1, i32 noundef %3) #19
  br label %47

47:                                               ; preds = %45, %36
  %48 = phi ptr [ %44, %36 ], [ %46, %45 ]
  store i32 %24, ptr %23, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %642, label %50, !prof !18

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.anon.43, ptr %48, i32 0, i32 2
  store ptr null, ptr %51, align 8
  br label %52

52:                                               ; preds = %50, %14
  %53 = phi ptr [ %1, %50 ], [ null, %14 ]
  %54 = phi ptr [ %48, %50 ], [ %1, %14 ]
  %55 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 24, i1 false)
  %56 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 3, i32 12
  %57 = load i8, ptr %56, align 4
  %58 = and i8 %57, 2
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %60, !prof !19

60:                                               ; preds = %52
  %61 = call fastcc i32 @tcp_syn_options(ptr noundef %0, ptr noundef nonnull %54, ptr noundef nonnull %6, ptr noundef nonnull %7)
  br label %108

62:                                               ; preds = %52
  store ptr null, ptr %7, align 4
  %63 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %64 = load i24, ptr %63, align 4
  %65 = and i24 %64, 2
  %66 = icmp eq i24 %65, 0
  br i1 %66, label %82, label %67, !prof !18

67:                                               ; preds = %62
  store i16 2, ptr %6, align 4
  %68 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 2
  %69 = load i64, ptr %68, align 8
  %70 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %69) #20, !srcloc !53
  %71 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %69, i64 %70, i32 0) #20, !srcloc !10
  %72 = extractvalue { i64, i32 } %71, 0
  %73 = lshr i64 %72, 18
  %74 = trunc i64 %73 to i32
  %75 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 22
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %76, %74
  %78 = getelementptr inbounds %struct.tcp_out_options, ptr %6, i32 0, i32 7
  store i32 %77, ptr %78, align 4
  %79 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds %struct.tcp_out_options, ptr %6, i32 0, i32 8
  store i32 %80, ptr %81, align 4
  br label %82

82:                                               ; preds = %67, %62
  %83 = phi i32 [ 12, %67 ], [ 0, %62 ]
  %84 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 5
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i32
  %87 = zext i24 %64 to i32
  %88 = lshr i32 %87, 2
  %89 = and i32 %88, 1
  %90 = add nuw nsw i32 %89, %86
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %101, label %92, !prof !19

92:                                               ; preds = %82
  %93 = sub nuw nsw i32 36, %83
  %94 = lshr i32 %93, 3
  %95 = tail call i32 @llvm.umin.i32(i32 %90, i32 %94) #19
  %96 = trunc i32 %95 to i8
  %97 = getelementptr inbounds %struct.tcp_out_options, ptr %6, i32 0, i32 3
  store i8 %96, ptr %97, align 1
  %98 = shl nuw nsw i32 %95, 3
  %99 = add nuw nsw i32 %83, 4
  %100 = add nuw nsw i32 %99, %98
  br label %101

101:                                              ; preds = %92, %82
  %102 = phi i32 [ %100, %92 ], [ %83, %82 ]
  %103 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 3, i32 8
  %104 = load i16, ptr %103, align 8
  %105 = icmp ugt i16 %104, 1
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = or i8 %57, 8
  store i8 %107, ptr %56, align 4
  br label %108

108:                                              ; preds = %106, %101, %60
  %109 = phi i32 [ %61, %60 ], [ %102, %106 ], [ %102, %101 ]
  %110 = add i32 %109, 20
  %111 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 23
  %112 = load volatile i32, ptr %111, align 4
  %113 = add i32 %112, -1
  %114 = icmp ult i32 %113, 449
  %115 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 13
  %116 = load i16, ptr %115, align 8
  %117 = select i1 %114, i16 128, i16 0
  %118 = and i16 %116, -129
  %119 = or i16 %117, %118
  store i16 %119, ptr %115, align 8
  %120 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 11
  %121 = load i8, ptr %120, align 2
  %122 = and i8 %121, -65
  store i8 %122, ptr %120, align 2
  %123 = tail call ptr @skb_push(ptr noundef nonnull %54, i32 noundef %110) #19
  %124 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 17
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 16
  %127 = load ptr, ptr %126, align 8
  %128 = ptrtoint ptr %125 to i32
  %129 = ptrtoint ptr %127 to i32
  %130 = sub i32 %128, %129
  %131 = trunc i32 %130 to i16
  %132 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 13, i32 0, i32 17
  store i16 %131, ptr %132, align 2
  %133 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 4, i32 0, i32 1
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %108
  tail call void %134(ptr noundef nonnull %54) #19
  store ptr null, ptr %133, align 4
  %137 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 1
  store ptr null, ptr %137, align 4
  br label %143

138:                                              ; preds = %108
  %139 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %143, label %142, !prof !19

142:                                              ; preds = %138
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #19, !srcloc !64
  unreachable

143:                                              ; preds = %138, %136
  %144 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 1
  store ptr %0, ptr %144, align 4
  %145 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 18
  %146 = load i32, ptr %145, align 8
  %147 = icmp eq i32 %146, 2
  %148 = select i1 %147, ptr @__sock_wfree, ptr @tcp_wfree
  store ptr %148, ptr %133, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %111) #19, !srcloc !13
  %149 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %111, ptr %111, i32 %146, ptr elementtype(i32) %111) #19, !srcloc !29
  %150 = extractvalue { i32, i32, i32 } %149, 0
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %156, label %152, !prof !18

152:                                              ; preds = %143
  %153 = add i32 %150, %146
  %154 = or i32 %153, %150
  %155 = icmp sgt i32 %154, -1
  br i1 %155, label %158, label %156, !prof !19

156:                                              ; preds = %152, %143
  %157 = phi i32 [ 2, %143 ], [ 1, %152 ]
  tail call void @refcount_warn_saturate(ptr noundef %111, i32 noundef %157) #19
  br label %158

158:                                              ; preds = %156, %152
  %159 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  %160 = load i32, ptr %159, align 4
  %161 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 13, i32 0, i32 3
  %162 = trunc i32 %160 to i16
  %163 = load i16, ptr %161, align 2
  %164 = shl i16 %162, 5
  %165 = and i16 %164, 32
  %166 = and i16 %163, -33
  %167 = or i16 %165, %166
  store i16 %167, ptr %161, align 2
  %168 = load ptr, ptr %124, align 4
  %169 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 6
  %170 = load i16, ptr %169, align 8
  store i16 %170, ptr %168, align 4
  %171 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %172 = load i16, ptr %171, align 4
  %173 = getelementptr inbounds %struct.tcphdr, ptr %168, i32 0, i32 1
  store i16 %172, ptr %173, align 2
  %174 = load i32, ptr %55, align 8
  %175 = tail call i32 @llvm.bswap.i32(i32 %174)
  %176 = getelementptr inbounds %struct.tcphdr, ptr %168, i32 0, i32 2
  store i32 %175, ptr %176, align 4
  %177 = tail call i32 @llvm.bswap.i32(i32 %4)
  %178 = getelementptr inbounds %struct.tcphdr, ptr %168, i32 0, i32 3
  store i32 %177, ptr %178, align 4
  %179 = shl i32 %110, 10
  %180 = and i32 %179, 61440
  %181 = load i8, ptr %56, align 4
  %182 = zext i8 %181 to i32
  %183 = or i32 %180, %182
  %184 = trunc i32 %183 to i16
  %185 = tail call i16 @llvm.bswap.i16(i16 %184)
  %186 = getelementptr i16, ptr %168, i32 6
  store i16 %185, ptr %186, align 2
  %187 = getelementptr inbounds %struct.tcphdr, ptr %168, i32 0, i32 6
  store i16 0, ptr %187, align 4
  %188 = getelementptr inbounds %struct.tcphdr, ptr %168, i32 0, i32 7
  store i16 0, ptr %188, align 2
  %189 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %190 = load i32, ptr %189, align 4
  %191 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 60
  %192 = load i32, ptr %191, align 8
  %193 = icmp eq i32 %190, %192
  br i1 %193, label %215, label %194

194:                                              ; preds = %158
  %195 = load i32, ptr %55, align 8
  %196 = sub i32 %195, %192
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %215, !prof !18

198:                                              ; preds = %194
  %199 = add i32 %192, -65536
  %200 = sub i32 %199, %195
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %198
  %203 = sub i32 %192, %195
  %204 = trunc i32 %203 to i16
  %205 = tail call i16 @llvm.bswap.i16(i16 %204)
  br label %212

206:                                              ; preds = %198
  %207 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %208 = load i32, ptr %207, align 4
  %209 = sub i32 -65535, %195
  %210 = add i32 %209, %208
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %206, %202
  %213 = phi i16 [ %205, %202 ], [ -1, %206 ]
  store i16 %213, ptr %188, align 2
  %214 = or i16 %185, 8192
  store i16 %214, ptr %186, align 4
  br label %215

215:                                              ; preds = %212, %206, %194, %158
  %216 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 39
  %217 = load i32, ptr %216, align 8
  %218 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 15
  %219 = load ptr, ptr %218, align 4
  %220 = getelementptr inbounds %struct.skb_shared_info, ptr %219, i32 0, i32 8
  store i32 %217, ptr %220, align 8
  %221 = load i8, ptr %56, align 4
  %222 = and i8 %221, 2
  %223 = icmp eq i8 %222, 0
  %224 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 79
  %225 = load i32, ptr %224, align 8
  br i1 %223, label %226, label %410, !prof !19

226:                                              ; preds = %215
  %227 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 9
  %228 = load i32, ptr %227, align 8
  %229 = add i32 %228, %225
  %230 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %231 = load i32, ptr %230, align 8
  %232 = sub i32 %229, %231
  %233 = tail call i32 @llvm.smax.i32(i32 %232, i32 0) #19
  %234 = tail call i32 @__tcp_select_window(ptr noundef %0) #19
  %235 = icmp ult i32 %234, %233
  br i1 %235, label %239, label %236

236:                                              ; preds = %226
  %237 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %238 = load i24, ptr %237, align 4
  br label %263

239:                                              ; preds = %226
  %240 = icmp eq i32 %234, 0
  br i1 %240, label %241, label %253

241:                                              ; preds = %239
  %242 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !20
  %243 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %244 = getelementptr [126 x i32], ptr %243, i32 0, i32 96
  %245 = ptrtoint ptr %244 to i32
  %246 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %247 = inttoptr i32 %246 to ptr
  %248 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %247) #16, !srcloc !25
  %249 = add i32 %248, %245
  %250 = inttoptr i32 %249 to ptr
  %251 = load i32, ptr %250, align 4
  %252 = add i32 %251, 1
  store i32 %252, ptr %250, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %242) #19, !srcloc !21
  br label %253

253:                                              ; preds = %241, %239
  %254 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %255 = load i24, ptr %254, align 4
  %256 = zext i24 %255 to i32
  %257 = lshr i32 %256, 12
  %258 = and i32 %257, 15
  %259 = shl nsw i32 -1, %258
  %260 = xor i32 %259, -1
  %261 = add nuw i32 %233, %260
  %262 = and i32 %261, %259
  br label %263

263:                                              ; preds = %253, %236
  %264 = phi i24 [ %255, %253 ], [ %238, %236 ]
  %265 = phi i32 [ %262, %253 ], [ %234, %236 ]
  store i32 %265, ptr %224, align 8
  %266 = load i32, ptr %230, align 8
  store i32 %266, ptr %227, align 8
  %267 = and i24 %264, 61440
  %268 = icmp ne i24 %267, 0
  %269 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 85), align 1
  %270 = icmp eq i8 %269, 0
  %271 = select i1 %268, i1 true, i1 %270
  br i1 %271, label %277, label %272

272:                                              ; preds = %263
  %273 = tail call i32 @llvm.umin.i32(i32 %265, i32 32767) #19
  %274 = zext i24 %264 to i32
  %275 = lshr i32 %274, 12
  %276 = and i32 %275, 15
  br label %283

277:                                              ; preds = %263
  %278 = zext i24 %264 to i32
  %279 = lshr i32 %278, 12
  %280 = and i32 %279, 15
  %281 = shl nuw nsw i32 65535, %280
  %282 = tail call i32 @llvm.umin.i32(i32 %265, i32 %281) #19
  br label %283

283:                                              ; preds = %277, %272
  %284 = phi i32 [ %280, %277 ], [ %276, %272 ]
  %285 = phi i32 [ %282, %277 ], [ %273, %272 ]
  %286 = lshr i32 %285, %284
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %303

288:                                              ; preds = %283
  %289 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 3
  store i32 0, ptr %289, align 4
  %290 = icmp eq i32 %225, 0
  br i1 %290, label %317, label %291

291:                                              ; preds = %288
  %292 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !20
  %293 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %294 = getelementptr [126 x i32], ptr %293, i32 0, i32 95
  %295 = ptrtoint ptr %294 to i32
  %296 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %297 = inttoptr i32 %296 to ptr
  %298 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %297) #16, !srcloc !25
  %299 = add i32 %298, %295
  %300 = inttoptr i32 %299 to ptr
  %301 = load i32, ptr %300, align 4
  %302 = add i32 %301, 1
  store i32 %302, ptr %300, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %292) #19, !srcloc !21
  br label %317

303:                                              ; preds = %283
  %304 = icmp eq i32 %225, 0
  br i1 %304, label %305, label %317

305:                                              ; preds = %303
  %306 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !20
  %307 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %308 = getelementptr [126 x i32], ptr %307, i32 0, i32 94
  %309 = ptrtoint ptr %308 to i32
  %310 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %311 = inttoptr i32 %310 to ptr
  %312 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %311) #16, !srcloc !25
  %313 = add i32 %312, %309
  %314 = inttoptr i32 %313 to ptr
  %315 = load i32, ptr %314, align 4
  %316 = add i32 %315, 1
  store i32 %316, ptr %314, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %306) #19, !srcloc !21
  br label %317

317:                                              ; preds = %305, %303, %291, %288
  %318 = trunc i32 %286 to i16
  %319 = tail call i16 @llvm.bswap.i16(i16 %318)
  %320 = getelementptr inbounds %struct.tcphdr, ptr %168, i32 0, i32 5
  store i16 %319, ptr %320, align 2
  %321 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 56
  %322 = load i8, ptr %321, align 2
  %323 = and i8 %322, 1
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %415, label %325

325:                                              ; preds = %317
  %326 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 5
  %327 = load i32, ptr %326, align 8
  %328 = icmp eq i32 %327, %110
  br i1 %328, label %372, label %329

329:                                              ; preds = %325
  %330 = load i32, ptr %55, align 8
  %331 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %332 = load i32, ptr %331, align 4
  %333 = sub i32 %330, %332
  %334 = icmp slt i32 %333, 0
  br i1 %334, label %372, label %335

335:                                              ; preds = %329
  %336 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %337 = load i8, ptr %336, align 4
  %338 = or i8 %337, 2
  store i8 %338, ptr %336, align 4
  %339 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %340 = load volatile i8, ptr %339, align 2
  %341 = zext i8 %340 to i32
  %342 = shl nuw i32 1, %341
  %343 = and i32 %342, -4161
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %360, label %345

345:                                              ; preds = %335
  %346 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %347 = load ptr, ptr %346, align 8
  %348 = icmp eq ptr %347, null
  br i1 %348, label %360, label %349

349:                                              ; preds = %345
  %350 = load volatile i8, ptr %339, align 2
  %351 = zext i8 %350 to i32
  %352 = shl nuw i32 1, %351
  %353 = and i32 %352, -4161
  %354 = icmp eq i32 %353, 0
  %355 = select i1 %354, ptr null, ptr %347
  %356 = getelementptr inbounds %struct.ipv6_pinfo, ptr %355, i32 0, i32 11
  %357 = load i8, ptr %356, align 1
  %358 = or i8 %357, 2
  store i8 %358, ptr %356, align 1
  %359 = load i8, ptr %321, align 2
  br label %360

360:                                              ; preds = %349, %345, %335
  %361 = phi i8 [ %322, %335 ], [ %322, %345 ], [ %359, %349 ]
  %362 = and i8 %361, 2
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %403, label %364

364:                                              ; preds = %360
  %365 = and i8 %361, -3
  store i8 %365, ptr %321, align 2
  %366 = load i16, ptr %186, align 4
  %367 = or i16 %366, -32768
  store i16 %367, ptr %186, align 4
  %368 = load ptr, ptr %218, align 4
  %369 = getelementptr inbounds %struct.skb_shared_info, ptr %368, i32 0, i32 8
  %370 = load i32, ptr %369, align 8
  %371 = or i32 %370, 4
  store i32 %371, ptr %369, align 8
  br label %403

372:                                              ; preds = %329, %325
  %373 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %374 = load ptr, ptr %373, align 4
  %375 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %374, i32 0, i32 15
  %376 = load i32, ptr %375, align 4
  %377 = and i32 %376, 2
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %403

379:                                              ; preds = %372
  %380 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %381 = load i8, ptr %380, align 4
  %382 = and i8 %381, -4
  store i8 %382, ptr %380, align 4
  %383 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %384 = load volatile i8, ptr %383, align 2
  %385 = zext i8 %384 to i32
  %386 = shl nuw i32 1, %385
  %387 = and i32 %386, -4161
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %403, label %389

389:                                              ; preds = %379
  %390 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %391 = load ptr, ptr %390, align 8
  %392 = icmp eq ptr %391, null
  br i1 %392, label %403, label %393

393:                                              ; preds = %389
  %394 = load volatile i8, ptr %383, align 2
  %395 = zext i8 %394 to i32
  %396 = shl nuw i32 1, %395
  %397 = and i32 %396, -4161
  %398 = icmp eq i32 %397, 0
  %399 = select i1 %398, ptr null, ptr %391
  %400 = getelementptr inbounds %struct.ipv6_pinfo, ptr %399, i32 0, i32 11
  %401 = load i8, ptr %400, align 1
  %402 = and i8 %401, -4
  store i8 %402, ptr %400, align 1
  br label %403

403:                                              ; preds = %393, %389, %379, %372, %364, %360
  %404 = load i8, ptr %321, align 2
  %405 = and i8 %404, 4
  %406 = icmp eq i8 %405, 0
  br i1 %406, label %415, label %407

407:                                              ; preds = %403
  %408 = load i16, ptr %186, align 4
  %409 = or i16 %408, 16384
  store i16 %409, ptr %186, align 4
  br label %415

410:                                              ; preds = %215
  %411 = tail call i32 @llvm.umin.i32(i32 %225, i32 65535)
  %412 = trunc i32 %411 to i16
  %413 = tail call i16 @llvm.bswap.i16(i16 %412)
  %414 = getelementptr inbounds %struct.tcphdr, ptr %168, i32 0, i32 5
  store i16 %413, ptr %414, align 2
  br label %415

415:                                              ; preds = %410, %407, %403, %317
  %416 = getelementptr %struct.tcphdr, ptr %168, i32 1
  call fastcc void @tcp_options_write(ptr noundef %416, ptr noundef %0, ptr noundef nonnull %6)
  %417 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 11
  %418 = load ptr, ptr %417, align 8
  %419 = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %418, i32 0, i32 1
  %420 = load ptr, ptr %419, align 4
  tail call void %420(ptr noundef %0, ptr noundef nonnull %54) #19
  %421 = load i8, ptr %56, align 4
  %422 = and i8 %421, 16
  %423 = icmp eq i8 %422, 0
  br i1 %423, label %472, label %424, !prof !18

424:                                              ; preds = %415
  %425 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 3, i32 8
  %426 = load i16, ptr %425, align 8
  %427 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 33
  %428 = load i8, ptr %427, align 2
  %429 = icmp eq i8 %428, 0
  br i1 %429, label %453, label %430, !prof !19

430:                                              ; preds = %424
  %431 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !20
  %432 = load i8, ptr %427, align 2
  %433 = zext i8 %432 to i32
  %434 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %435 = getelementptr [126 x i32], ptr %434, i32 0, i32 115
  %436 = ptrtoint ptr %435 to i32
  %437 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %438 = inttoptr i32 %437 to ptr
  %439 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %438) #16, !srcloc !25
  %440 = add i32 %439, %436
  %441 = inttoptr i32 %440 to ptr
  %442 = load i32, ptr %441, align 4
  %443 = add i32 %442, %433
  store i32 %443, ptr %441, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %431) #19, !srcloc !21
  store i8 0, ptr %427, align 2
  %444 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 86
  %445 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %444) #19
  %446 = icmp eq i32 %445, 1
  br i1 %446, label %447, label %453

447:                                              ; preds = %430
  %448 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %448) #19, !srcloc !13
  %449 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %448, ptr %448, i32 1, ptr elementtype(i32) %448) #19, !srcloc !17
  %450 = extractvalue { i32, i32, i32 } %449, 0
  %451 = icmp slt i32 %450, 2
  br i1 %451, label %452, label %453, !prof !18

452:                                              ; preds = %447
  tail call void @refcount_warn_saturate(ptr noundef %448, i32 noundef 4) #19
  br label %453

453:                                              ; preds = %452, %447, %430, %424
  %454 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %455 = load i32, ptr %454, align 8
  %456 = icmp eq i32 %455, %4
  br i1 %456, label %457, label %472, !prof !19

457:                                              ; preds = %453
  %458 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 1
  %459 = load i8, ptr %458, align 1
  %460 = icmp eq i8 %459, 0
  br i1 %460, label %469, label %461

461:                                              ; preds = %457
  %462 = zext i8 %459 to i16
  %463 = icmp ult i16 %426, %462
  br i1 %463, label %466, label %464

464:                                              ; preds = %461
  store i8 0, ptr %458, align 1
  %465 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 4
  store i32 4, ptr %465, align 4
  br label %469

466:                                              ; preds = %461
  %467 = trunc i16 %426 to i8
  %468 = sub i8 %459, %467
  store i8 %468, ptr %458, align 1
  br label %469

469:                                              ; preds = %466, %464, %457
  %470 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24
  store i8 0, ptr %470, align 4
  %471 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 3
  store i8 0, ptr %471, align 1
  br label %472

472:                                              ; preds = %469, %453, %415
  %473 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 5
  %474 = load i32, ptr %473, align 8
  %475 = icmp eq i32 %474, %110
  br i1 %475, label %528, label %476

476:                                              ; preds = %472
  %477 = load volatile i32, ptr @jiffies, align 64
  %478 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %479 = load i32, ptr %478, align 4
  %480 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 84
  %481 = load i32, ptr %480, align 4
  %482 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 83
  %483 = load i32, ptr %482, align 8
  %484 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 52
  %485 = load i32, ptr %484, align 8
  %486 = add i32 %481, %483
  %487 = sub i32 %479, %486
  %488 = sub i32 0, %485
  %489 = icmp eq i32 %487, %488
  br i1 %489, label %490, label %497

490:                                              ; preds = %476
  %491 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %492 = load ptr, ptr %491, align 4
  %493 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %492, i32 0, i32 3
  %494 = load ptr, ptr %493, align 4
  %495 = icmp eq ptr %494, null
  br i1 %495, label %497, label %496

496:                                              ; preds = %490
  tail call void %494(ptr noundef %0, i32 noundef 0) #19
  br label %497

497:                                              ; preds = %496, %490, %476
  %498 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 19
  %499 = load i32, ptr %498, align 8
  %500 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 6
  %501 = load i32, ptr %500, align 4
  %502 = sub i32 %499, %501
  %503 = icmp slt i32 %502, 0
  br i1 %503, label %504, label %515

504:                                              ; preds = %497
  %505 = sub i32 %477, %501
  %506 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 4
  %507 = load i32, ptr %506, align 4
  %508 = icmp ult i32 %505, %507
  br i1 %508, label %509, label %515

509:                                              ; preds = %504
  %510 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 24, i32 2
  %511 = load i8, ptr %510, align 2
  %512 = icmp eq i8 %511, -1
  br i1 %512, label %515, label %513

513:                                              ; preds = %509
  %514 = add nuw i8 %511, 1
  store i8 %514, ptr %510, align 2
  br label %515

515:                                              ; preds = %513, %509, %504, %497
  store i32 %477, ptr %498, align 8
  %516 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 3, i32 8
  %517 = load i16, ptr %516, align 8
  %518 = zext i16 %517 to i32
  %519 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 12
  %520 = load i32, ptr %519, align 4
  %521 = add i32 %520, %518
  store i32 %521, ptr %519, align 4
  %522 = load i32, ptr %473, align 8
  %523 = sub i32 %522, %110
  %524 = zext i32 %523 to i64
  %525 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 13
  %526 = load i64, ptr %525, align 8
  %527 = add i64 %526, %524
  store i64 %527, ptr %525, align 8
  br label %528

528:                                              ; preds = %515, %472
  %529 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %530 = load i32, ptr %529, align 4
  %531 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 3, i32 4
  %532 = load i32, ptr %531, align 4
  %533 = sub i32 %530, %532
  %534 = icmp slt i32 %533, 0
  br i1 %534, label %538, label %535

535:                                              ; preds = %528
  %536 = load i32, ptr %55, align 8
  %537 = icmp eq i32 %536, %532
  br i1 %537, label %538, label %553

538:                                              ; preds = %535, %528
  %539 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !20
  %540 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 3, i32 8
  %541 = load i16, ptr %540, align 8
  %542 = zext i16 %541 to i32
  %543 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %544 = getelementptr [16 x i32], ptr %543, i32 0, i32 11
  %545 = ptrtoint ptr %544 to i32
  %546 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %547 = inttoptr i32 %546 to ptr
  %548 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %547) #16, !srcloc !25
  %549 = add i32 %548, %545
  %550 = inttoptr i32 %549 to ptr
  %551 = load i32, ptr %550, align 4
  %552 = add i32 %551, %542
  store i32 %552, ptr %550, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %539) #19, !srcloc !21
  br label %553

553:                                              ; preds = %538, %535
  %554 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 3, i32 8
  %555 = load i16, ptr %554, align 8
  %556 = zext i16 %555 to i32
  %557 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 11
  %558 = load i32, ptr %557, align 8
  %559 = add i32 %558, %556
  store i32 %559, ptr %557, align 8
  %560 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 42
  %561 = load volatile i32, ptr %560, align 4
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %567, label %563

563:                                              ; preds = %553
  %564 = load i16, ptr %115, align 8
  %565 = or i16 %564, 256
  store i16 %565, ptr %115, align 8
  %566 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 13, i32 0, i32 7
  store i32 %561, ptr %566, align 8
  br label %567

567:                                              ; preds = %563, %553
  %568 = load i16, ptr %554, align 8
  %569 = load ptr, ptr %218, align 4
  %570 = getelementptr inbounds %struct.skb_shared_info, ptr %569, i32 0, i32 5
  store i16 %568, ptr %570, align 2
  %571 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 3, i32 10
  %572 = load i16, ptr %571, align 2
  %573 = load ptr, ptr %218, align 4
  %574 = getelementptr inbounds %struct.skb_shared_info, ptr %573, i32 0, i32 4
  store i16 %572, ptr %574, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %55, i8 0, i32 24, i1 false)
  %575 = load volatile i32, ptr @tcp_tx_delay_enabled, align 4
  %576 = icmp sgt i32 %575, 0
  br i1 %576, label %577, label %585, !prof !18

577:                                              ; preds = %567
  %578 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 41
  %579 = load i32, ptr %578, align 4
  %580 = zext i32 %579 to i64
  %581 = mul nuw nsw i64 %580, 1000
  %582 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 2
  %583 = load i64, ptr %582, align 8
  %584 = add i64 %581, %583
  store i64 %584, ptr %582, align 8
  br label %585

585:                                              ; preds = %577, %567
  %586 = load ptr, ptr %417, align 8
  %587 = load ptr, ptr %586, align 4
  %588 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 1
  %589 = tail call i32 %587(ptr noundef %0, ptr noundef nonnull %54, ptr noundef %588) #19
  %590 = icmp sgt i32 %589, 0
  br i1 %590, label %591, label %594, !prof !18

591:                                              ; preds = %585
  tail call void @tcp_enter_cwr(ptr noundef %0) #19
  %592 = icmp eq i32 %589, 2
  %593 = select i1 %592, i32 0, i32 %589
  br label %594

594:                                              ; preds = %591, %585
  %595 = phi i32 [ %593, %591 ], [ %589, %585 ]
  %596 = icmp eq i32 %595, 0
  %597 = icmp ne ptr %53, null
  %598 = and i1 %597, %596
  br i1 %598, label %599, label %642

599:                                              ; preds = %594
  %600 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 30
  %601 = load i32, ptr %600, align 8
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %633, label %603

603:                                              ; preds = %599
  %604 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 35
  %605 = load i32, ptr %604, align 4
  %606 = add i32 %605, -1
  %607 = icmp ult i32 %606, -2
  br i1 %607, label %608, label %633

608:                                              ; preds = %603
  %609 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 12
  %610 = load i32, ptr %609, align 4
  %611 = icmp ugt i32 %610, 9
  br i1 %611, label %612, label %633

612:                                              ; preds = %608
  %613 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 5
  %614 = load i32, ptr %613, align 8
  %615 = zext i32 %614 to i64
  %616 = mul nuw nsw i64 %615, 1000000000
  %617 = icmp ult i64 %616, 4294967296
  br i1 %617, label %618, label %622, !prof !19

618:                                              ; preds = %612
  %619 = trunc i64 %616 to i32
  %620 = udiv i32 %619, %605
  %621 = zext i32 %620 to i64
  br label %625

622:                                              ; preds = %612
  %623 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %605, i64 %616) #20, !srcloc !52
  %624 = extractvalue { i64, i64 } %623, 1
  br label %625

625:                                              ; preds = %622, %618
  %626 = phi i64 [ %621, %618 ], [ %624, %622 ]
  %627 = load i64, ptr %15, align 8
  %628 = sub i64 %627, %16
  %629 = lshr i64 %626, 1
  %630 = tail call i64 @llvm.umin.i64(i64 %629, i64 %628) #19
  %631 = add i64 %627, %626
  %632 = sub i64 %631, %630
  store i64 %632, ptr %15, align 8
  br label %633

633:                                              ; preds = %625, %608, %603, %599
  %634 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 4
  %635 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 24
  %636 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 4, i32 0, i32 1
  %637 = load ptr, ptr %636, align 4
  %638 = load ptr, ptr %634, align 4
  %639 = getelementptr inbounds %struct.list_head, ptr %638, i32 0, i32 1
  store ptr %637, ptr %639, align 4
  store volatile ptr %638, ptr %637, align 4
  %640 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 24, i32 1
  %641 = load ptr, ptr %640, align 4
  store ptr %634, ptr %640, align 4
  store ptr %635, ptr %634, align 4
  store ptr %641, ptr %636, align 4
  store volatile ptr %634, ptr %641, align 4
  tail call void @tcp_rate_skb_sent(ptr noundef %0, ptr noundef nonnull %53) #19
  br label %642

642:                                              ; preds = %633, %594, %47
  %643 = phi i32 [ -105, %47 ], [ 0, %633 ], [ %595, %594 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #19
  ret i32 %643
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_send_window_probe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %3 = load volatile i8, ptr %2, align 2
  %4 = icmp eq i8 %3, 1
  br i1 %4, label %5, label %55

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = add i32 %7, -1
  %9 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 25
  store i32 %8, ptr %9, align 8
  %10 = tail call i64 @ktime_get() #19
  %11 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 43
  store i64 %10, ptr %11, align 8
  %12 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %10, i32 0) #20, !srcloc !9
  %13 = extractvalue { i64, i32 } %12, 0
  %14 = extractvalue { i64, i32 } %12, 1
  %15 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %10, i64 %13, i32 %14) #20, !srcloc !10
  %16 = extractvalue { i64, i32 } %15, 0
  %17 = lshr i64 %16, 9
  %18 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 44
  store i64 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 41
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 131072
  %22 = or i32 %21, 10784
  %23 = tail call ptr @__alloc_skb(i32 noundef 320, i32 noundef %22, i32 noundef 0, i32 noundef -1) #19
  %24 = icmp eq ptr %23, null
  br i1 %24, label %55, label %25

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 17
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 320
  store ptr %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 14
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr i8, ptr %30, i32 320
  store ptr %31, ptr %29, align 8
  %32 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, -1
  %35 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 13
  %36 = load i16, ptr %35, align 8
  %37 = or i16 %36, 96
  store i16 %37, ptr %35, align 8
  %38 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 3
  %39 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 3, i32 12
  store i8 16, ptr %39, align 4
  %40 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 3, i32 8
  store i16 1, ptr %40, align 8
  store i32 %34, ptr %38, align 8
  %41 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 3, i32 4
  store i32 %34, ptr %41, align 4
  %42 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !20
  %43 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %44 = getelementptr [126 x i32], ptr %43, i32 0, i32 109
  %45 = ptrtoint ptr %44 to i32
  %46 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %47 = inttoptr i32 %46 to ptr
  %48 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %47) #16, !srcloc !25
  %49 = add i32 %48, %45
  %50 = inttoptr i32 %49 to ptr
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %42) #19, !srcloc !21
  %53 = load i32, ptr %6, align 8
  %54 = tail call fastcc i32 @__tcp_transmit_skb(ptr noundef %0, ptr noundef nonnull %23, i32 noundef 0, i32 noundef 0, i32 noundef %53) #19
  br label %55

55:                                               ; preds = %25, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_write_wakeup(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %4 = load volatile i8, ptr %3, align 2
  %5 = icmp eq i8 %4, 7
  br i1 %5, label %242, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  %10 = icmp eq ptr %8, null
  %11 = or i1 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %14 = load i32, ptr %13, align 4
  br label %161

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 3
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 26
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %19, %21
  %23 = sub i32 %17, %22
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %161

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %27 = load volatile ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 28
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq ptr %27, null
  br i1 %30, label %42, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.dst_entry, ptr %27, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.dst_ops, ptr %33, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 %35(ptr noundef nonnull %27) #19
  %37 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 9
  %38 = load i32, ptr %37, align 8
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %42, label %40

40:                                               ; preds = %31
  %41 = tail call i32 @tcp_sync_mss(ptr noundef %0, i32 noundef %36) #19
  br label %42

42:                                               ; preds = %40, %31, %25
  %43 = phi i32 [ %29, %25 ], [ %41, %40 ], [ %29, %31 ]
  %44 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %45 = load i24, ptr %44, align 4
  %46 = and i24 %45, 2
  %47 = icmp eq i24 %46, 0
  %48 = select i1 %47, i32 0, i32 12, !prof !18
  %49 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 5
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = zext i24 %45 to i32
  %53 = lshr i32 %52, 2
  %54 = and i32 %53, 1
  %55 = add nuw nsw i32 %54, %51
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %64, label %57, !prof !19

57:                                               ; preds = %42
  %58 = sub nuw nsw i32 36, %48
  %59 = lshr i32 %58, 3
  %60 = tail call i32 @llvm.umin.i32(i32 %55, i32 %59) #19
  %61 = shl nuw nsw i32 %60, 3
  %62 = add nuw nsw i32 %48, 4
  %63 = add nuw nsw i32 %62, %61
  br label %64

64:                                               ; preds = %57, %42
  %65 = phi i32 [ %63, %57 ], [ %48, %42 ]
  %66 = add nuw nsw i32 %65, 20
  %67 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 1
  %68 = load i16, ptr %67, align 8
  %69 = zext i16 %68 to i32
  %70 = icmp eq i32 %66, %69
  %71 = sub nsw i32 %69, %66
  %72 = select i1 %70, i32 0, i32 %71
  %73 = add i32 %72, %43
  %74 = load i32, ptr %18, align 4
  %75 = load i32, ptr %20, align 4
  %76 = add i32 %75, %74
  %77 = load i32, ptr %16, align 8
  %78 = sub i32 %76, %77
  %79 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 82
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 3, i32 4
  %82 = load i32, ptr %81, align 4
  %83 = sub i32 %80, %82
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %64
  store i32 %82, ptr %79, align 4
  %86 = load i32, ptr %81, align 4
  %87 = load i32, ptr %16, align 8
  br label %88

88:                                               ; preds = %85, %64
  %89 = phi i32 [ %87, %85 ], [ %77, %64 ]
  %90 = phi i32 [ %86, %85 ], [ %82, %64 ]
  %91 = sub i32 %90, %89
  %92 = icmp ult i32 %78, %91
  br i1 %92, label %97, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 5
  %95 = load i32, ptr %94, align 8
  %96 = icmp ugt i32 %95, %73
  br i1 %96, label %97, label %104

97:                                               ; preds = %93, %88
  %98 = tail call i32 @llvm.umin.i32(i32 %78, i32 %73)
  %99 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 3, i32 12
  %100 = load i8, ptr %99, align 4
  %101 = or i8 %100, 8
  store i8 %101, ptr %99, align 4
  %102 = tail call i32 @tcp_fragment(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %8, i32 noundef %98, i32 noundef %73, i32 noundef 2592)
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %110, label %242

104:                                              ; preds = %93
  %105 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 3, i32 8
  %106 = load i16, ptr %105, align 8
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  store i16 1, ptr %105, align 8
  %109 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 3, i32 10
  store i16 0, ptr %109, align 2
  br label %110

110:                                              ; preds = %108, %104, %97
  %111 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 3, i32 12
  %112 = load i8, ptr %111, align 4
  %113 = or i8 %112, 8
  store i8 %113, ptr %111, align 4
  %114 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %115 = load i32, ptr %114, align 8
  %116 = tail call fastcc i32 @__tcp_transmit_skb(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 2592, i32 noundef %115) #19
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %242

118:                                              ; preds = %110
  %119 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %120 = load i32, ptr %119, align 4
  %121 = load i32, ptr %81, align 4
  %122 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  store volatile i32 %121, ptr %122, align 4
  %123 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26, i32 1
  %124 = load i32, ptr %123, align 4
  %125 = add i32 %124, -1
  store volatile i32 %125, ptr %123, align 4
  %126 = load ptr, ptr %8, align 8
  %127 = getelementptr inbounds %struct.anon.43, ptr %8, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  store ptr null, ptr %127, align 4
  store ptr null, ptr %8, align 8
  %129 = getelementptr inbounds %struct.anon.43, ptr %126, i32 0, i32 1
  store volatile ptr %128, ptr %129, align 4
  store volatile ptr %126, ptr %128, align 8
  %130 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  tail call void @tcp_rbtree_insert(ptr noundef %130, ptr noundef nonnull %8) #19
  %131 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 94
  %132 = load ptr, ptr %131, align 8
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %118
  store ptr %8, ptr %131, align 8
  br label %135

135:                                              ; preds = %134, %118
  %136 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 3, i32 8
  %137 = load i16, ptr %136, align 8
  %138 = zext i16 %137 to i32
  %139 = load i32, ptr %119, align 4
  %140 = add i32 %139, %138
  store i32 %140, ptr %119, align 4
  %141 = icmp eq i32 %120, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 19
  %144 = load i8, ptr %143, align 2
  %145 = icmp eq i8 %144, 5
  br i1 %145, label %146, label %147

146:                                              ; preds = %142, %135
  tail call void @tcp_rearm_rto(ptr noundef %0) #19
  br label %147

147:                                              ; preds = %146, %142
  %148 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !20
  %149 = load i16, ptr %136, align 8
  %150 = zext i16 %149 to i32
  %151 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %152 = getelementptr [126 x i32], ptr %151, i32 0, i32 98
  %153 = ptrtoint ptr %152 to i32
  %154 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %155 = inttoptr i32 %154 to ptr
  %156 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %155) #16, !srcloc !25
  %157 = add i32 %156, %153
  %158 = inttoptr i32 %157 to ptr
  %159 = load i32, ptr %158, align 4
  %160 = add i32 %159, %150
  store i32 %160, ptr %158, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %148) #19, !srcloc !21
  br label %242

161:                                              ; preds = %15, %12
  %162 = phi i32 [ %14, %12 ], [ %19, %15 ]
  %163 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 60
  %164 = load i32, ptr %163, align 8
  %165 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 16
  %166 = xor i32 %162, -1
  %167 = add i32 %164, %166
  %168 = icmp ult i32 %167, 65535
  br i1 %168, label %169, label %205

169:                                              ; preds = %161
  %170 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 41
  %171 = load i32, ptr %170, align 8
  %172 = and i32 %171, 131072
  %173 = or i32 %172, 10784
  %174 = tail call ptr @__alloc_skb(i32 noundef 320, i32 noundef %173, i32 noundef 0, i32 noundef -1) #19
  %175 = icmp eq ptr %174, null
  br i1 %175, label %205, label %176

176:                                              ; preds = %169
  %177 = getelementptr inbounds %struct.sk_buff, ptr %174, i32 0, i32 17
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr i8, ptr %178, i32 320
  store ptr %179, ptr %177, align 4
  %180 = getelementptr inbounds %struct.sk_buff, ptr %174, i32 0, i32 14
  %181 = load ptr, ptr %180, align 8
  %182 = getelementptr i8, ptr %181, i32 320
  store ptr %182, ptr %180, align 8
  %183 = load i32, ptr %165, align 4
  %184 = getelementptr inbounds %struct.sk_buff, ptr %174, i32 0, i32 13
  %185 = load i16, ptr %184, align 8
  %186 = or i16 %185, 96
  store i16 %186, ptr %184, align 8
  %187 = getelementptr inbounds %struct.sk_buff, ptr %174, i32 0, i32 3
  %188 = getelementptr inbounds %struct.sk_buff, ptr %174, i32 0, i32 3, i32 12
  store i8 16, ptr %188, align 4
  %189 = getelementptr inbounds %struct.sk_buff, ptr %174, i32 0, i32 3, i32 8
  store i16 1, ptr %189, align 8
  store i32 %183, ptr %187, align 8
  %190 = getelementptr inbounds %struct.sk_buff, ptr %174, i32 0, i32 3, i32 4
  store i32 %183, ptr %190, align 4
  %191 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !20
  %192 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %193 = getelementptr [126 x i32], ptr %192, i32 0, i32 %1
  %194 = ptrtoint ptr %193 to i32
  %195 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %196 = inttoptr i32 %195 to ptr
  %197 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %196) #16, !srcloc !25
  %198 = add i32 %197, %194
  %199 = inttoptr i32 %198 to ptr
  %200 = load i32, ptr %199, align 4
  %201 = add i32 %200, 1
  store i32 %201, ptr %199, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %191) #19, !srcloc !21
  %202 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %203 = load i32, ptr %202, align 8
  %204 = tail call fastcc i32 @__tcp_transmit_skb(ptr noundef %0, ptr noundef nonnull %174, i32 noundef 0, i32 noundef 0, i32 noundef %203) #19
  br label %205

205:                                              ; preds = %176, %169, %161
  %206 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 41
  %207 = load i32, ptr %206, align 8
  %208 = and i32 %207, 131072
  %209 = or i32 %208, 10784
  %210 = tail call ptr @__alloc_skb(i32 noundef 320, i32 noundef %209, i32 noundef 0, i32 noundef -1) #19
  %211 = icmp eq ptr %210, null
  br i1 %211, label %242, label %212

212:                                              ; preds = %205
  %213 = getelementptr inbounds %struct.sk_buff, ptr %210, i32 0, i32 17
  %214 = load ptr, ptr %213, align 4
  %215 = getelementptr i8, ptr %214, i32 320
  store ptr %215, ptr %213, align 4
  %216 = getelementptr inbounds %struct.sk_buff, ptr %210, i32 0, i32 14
  %217 = load ptr, ptr %216, align 8
  %218 = getelementptr i8, ptr %217, i32 320
  store ptr %218, ptr %216, align 8
  %219 = load i32, ptr %165, align 4
  %220 = add i32 %219, -1
  %221 = getelementptr inbounds %struct.sk_buff, ptr %210, i32 0, i32 13
  %222 = load i16, ptr %221, align 8
  %223 = or i16 %222, 96
  store i16 %223, ptr %221, align 8
  %224 = getelementptr inbounds %struct.sk_buff, ptr %210, i32 0, i32 3
  %225 = getelementptr inbounds %struct.sk_buff, ptr %210, i32 0, i32 3, i32 12
  store i8 16, ptr %225, align 4
  %226 = getelementptr inbounds %struct.sk_buff, ptr %210, i32 0, i32 3, i32 8
  store i16 1, ptr %226, align 8
  store i32 %220, ptr %224, align 8
  %227 = getelementptr inbounds %struct.sk_buff, ptr %210, i32 0, i32 3, i32 4
  store i32 %220, ptr %227, align 4
  %228 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !20
  %229 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %230 = getelementptr [126 x i32], ptr %229, i32 0, i32 %1
  %231 = ptrtoint ptr %230 to i32
  %232 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %233 = inttoptr i32 %232 to ptr
  %234 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %233) #16, !srcloc !25
  %235 = add i32 %234, %231
  %236 = inttoptr i32 %235 to ptr
  %237 = load i32, ptr %236, align 4
  %238 = add i32 %237, 1
  store i32 %238, ptr %236, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %228) #19, !srcloc !21
  %239 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %240 = load i32, ptr %239, align 8
  %241 = tail call fastcc i32 @__tcp_transmit_skb(ptr noundef %0, ptr noundef nonnull %210, i32 noundef 0, i32 noundef 0, i32 noundef %240) #19
  br label %242

242:                                              ; preds = %212, %205, %147, %110, %97, %2
  %243 = phi i32 [ -1, %2 ], [ -1, %97 ], [ 0, %147 ], [ %116, %110 ], [ %241, %212 ], [ -1, %205 ]
  ret i32 %243
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_event_new_data_sent(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  store volatile i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  store volatile i32 %10, ptr %8, align 4
  %11 = load ptr, ptr %1, align 8
  %12 = getelementptr inbounds %struct.anon.43, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  store ptr null, ptr %12, align 4
  store ptr null, ptr %1, align 8
  %14 = getelementptr inbounds %struct.anon.43, ptr %11, i32 0, i32 1
  store volatile ptr %13, ptr %14, align 4
  store volatile ptr %11, ptr %13, align 8
  %15 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 25
  tail call void @tcp_rbtree_insert(ptr noundef %15, ptr noundef %1) #19
  %16 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 94
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store ptr %1, ptr %16, align 8
  br label %20

20:                                               ; preds = %19, %2
  %21 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %22 = load i16, ptr %21, align 8
  %23 = zext i16 %22 to i32
  %24 = load i32, ptr %3, align 4
  %25 = add i32 %24, %23
  store i32 %25, ptr %3, align 4
  %26 = icmp eq i32 %4, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 19
  %29 = load i8, ptr %28, align 2
  %30 = icmp eq i8 %29, 5
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %20
  tail call void @tcp_rearm_rto(ptr noundef %0) #19
  br label %32

32:                                               ; preds = %31, %27
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !20
  %34 = load i16, ptr %21, align 8
  %35 = zext i16 %34 to i32
  %36 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %37 = getelementptr [126 x i32], ptr %36, i32 0, i32 98
  %38 = ptrtoint ptr %37 to i32
  %39 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %40 = inttoptr i32 %39 to ptr
  %41 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %40) #16, !srcloc !25
  %42 = add i32 %41, %38
  %43 = inttoptr i32 %42 to ptr
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, %35
  store i32 %45, ptr %43, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %33) #19, !srcloc !21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_send_probe0(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @tcp_write_wakeup(ptr noundef %0, i32 noundef 109)
  %3 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 51
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 80
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %6, %1
  %13 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 22
  store i8 0, ptr %13, align 1
  %14 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 20
  store i8 0, ptr %14, align 1
  %15 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 26
  store i32 0, ptr %15, align 8
  br label %59

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 22
  %18 = load i8, ptr %17, align 1
  %19 = add i8 %18, 1
  store i8 %19, ptr %17, align 1
  %20 = icmp slt i32 %2, 1
  br i1 %20, label %21, label %39

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 20
  %23 = load i8, ptr %22, align 1
  %24 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 59), align 1
  %25 = icmp ult i8 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = add nuw i8 %23, 1
  store i8 %27, ptr %22, align 1
  br label %28

28:                                               ; preds = %26, %21
  %29 = phi i8 [ %27, %26 ], [ %23, %21 ]
  %30 = tail call i8 @llvm.umin.i8(i8 %29, i8 10) #19
  %31 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = tail call i32 @llvm.umax.i32(i32 %32, i32 20) #19
  %34 = zext i32 %33 to i64
  %35 = zext i8 %30 to i64
  %36 = shl nuw nsw i64 %34, %35
  %37 = tail call i64 @llvm.umin.i64(i64 %36, i64 12000) #19
  %38 = trunc i64 %37 to i32
  br label %39

39:                                               ; preds = %28, %16
  %40 = phi i32 [ %38, %28 ], [ 50, %16 ]
  %41 = tail call i32 @tcp_clamp_probe0_to_user_timeout(ptr noundef %0, i32 noundef %40) #19
  %42 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 42
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 43
  %45 = load i64, ptr %44, align 8
  %46 = sub i64 %43, %45
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = tail call i32 @nsecs_to_jiffies(i64 noundef %46) #19
  br label %50

50:                                               ; preds = %48, %39
  %51 = phi i32 [ %49, %48 ], [ 0, %39 ]
  %52 = add i32 %51, %41
  %53 = tail call i32 @llvm.umin.i32(i32 %52, i32 12000) #19
  %54 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 19
  store i8 3, ptr %54, align 2
  %55 = load volatile i32, ptr @jiffies, align 64
  %56 = add i32 %55, %53
  %57 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 3
  store i32 %56, ptr %57, align 8
  %58 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 4
  tail call void @sk_reset_timer(ptr noundef %0, ptr noundef %58, i32 noundef %56) #19
  br label %59

59:                                               ; preds = %50, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_clamp_probe0_to_user_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_rtx_synack(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.flowi, align 8
  %4 = getelementptr inbounds %struct.tcp_request_sock, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %3, i8 0, i32 88, i1 false), !annotation !62
  %6 = tail call i32 @prandom_u32() #19
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 1, i32 %6
  %9 = getelementptr inbounds %struct.tcp_request_sock, ptr %1, i32 0, i32 5
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.tcp_request_sock_ops, ptr %5, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 %11(ptr noundef %0, ptr noundef null, ptr noundef nonnull %3, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef null) #19
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %62

14:                                               ; preds = %2
  %15 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %16 = getelementptr [16 x i32], ptr %15, i32 0, i32 12
  %17 = ptrtoint ptr %16 to i32
  %18 = call i32 @llvm.read_register.i32(metadata !0) #19
  %19 = inttoptr i32 %18 to ptr
  %20 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #16, !srcloc !25
  %21 = add i32 %20, %17
  %22 = inttoptr i32 %21 to ptr
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4
  %25 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %26 = getelementptr [126 x i32], ptr %25, i32 0, i32 97
  %27 = ptrtoint ptr %26 to i32
  %28 = call i32 @llvm.read_register.i32(metadata !0) #19
  %29 = inttoptr i32 %28 to ptr
  %30 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %29) #16, !srcloc !25
  %31 = add i32 %30, %27
  %32 = inttoptr i32 %31 to ptr
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 4
  %35 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %36 = load volatile i8, ptr %35, align 2
  %37 = icmp eq i8 %36, 3
  br i1 %37, label %38, label %46

38:                                               ; preds = %14
  %39 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 116
  %40 = load volatile ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42, !prof !19

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 102
  %44 = load i32, ptr %43, align 8
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 8
  br label %46

46:                                               ; preds = %42, %38, %14
  %47 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tcp_retransmit_synack, i32 0, i32 1), align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = tail call ptr @llvm.thread.pointer() #19
  %51 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %52 = load i32, ptr %51, align 8
  %53 = lshr i32 %52, 5
  %54 = getelementptr i32, ptr @__cpu_online_mask, i32 %53
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %52, 31
  %57 = shl nuw i32 1, %56
  %58 = and i32 %57, %55
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %49
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !65
  %61 = call i32 @__traceiter_tcp_retransmit_synack(ptr noundef null, ptr noundef %0, ptr noundef %1) #19
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !66
  br label %62

62:                                               ; preds = %60, %49, %46, %2
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #19
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #15

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_pool_return_skb_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sk_mem_reclaim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsecs_to_jiffies(i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc i32 @tcp_init_tso_segs(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #17 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 8
  %4 = load i16, ptr %3, align 8
  switch i16 %4, label %5 [
    i16 0, label %10
    i16 1, label %24
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 10
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = icmp eq i32 %8, %1
  br i1 %9, label %24, label %10

10:                                               ; preds = %5, %2
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = icmp ugt i32 %12, %1
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = add i32 %1, -1
  %16 = add i32 %15, %12
  %17 = udiv i32 %16, %1
  %18 = trunc i32 %17 to i16
  %19 = trunc i32 %1 to i16
  br label %20

20:                                               ; preds = %14, %10
  %21 = phi i16 [ %18, %14 ], [ 1, %10 ]
  %22 = phi i16 [ %19, %14 ], [ 0, %10 ]
  store i16 %21, ptr %3, align 8
  %23 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 10
  store i16 %22, ptr %23, align 2
  br label %24

24:                                               ; preds = %20, %5, %2
  %25 = phi i16 [ %21, %20 ], [ %4, %5 ], [ %4, %2 ]
  %26 = zext i16 %25 to i32
  ret i32 %26
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_mtu_check_reprobe(ptr noundef %0) unnamed_addr #12 {
  %2 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 49), align 8
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 25, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = sub i32 %3, %5
  %7 = mul i32 %2, 100
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %28, label %9, !prof !19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 25
  %11 = tail call i32 @tcp_current_mss(ptr noundef %0)
  %12 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 25, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, -2147483648
  store i32 %14, ptr %12, align 8
  %15 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 7
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = add nuw nsw i32 %17, 20
  %19 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 11
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %20, i32 0, i32 6
  %22 = load i16, ptr %21, align 4
  %23 = zext i16 %22 to i32
  %24 = add nuw nsw i32 %18, %23
  store i32 %24, ptr %10, align 8
  %25 = tail call i32 @tcp_mss_to_mtu(ptr noundef %0, i32 noundef %11)
  %26 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 25, i32 1
  store i32 %25, ptr %26, align 4
  %27 = load volatile i32, ptr @jiffies, align 64
  store i32 %27, ptr %4, align 4
  br label %28

28:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tcp_can_coalesce_send_queue_head(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #18 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  %6 = select i1 %5, ptr null, ptr %4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %40, label %11

8:                                                ; preds = %30
  %9 = sub i32 %13, %16
  %10 = icmp eq ptr %14, %3
  br i1 %10, label %40, label %11

11:                                               ; preds = %8, %2
  %12 = phi ptr [ %14, %8 ], [ %6, %2 ]
  %13 = phi i32 [ %9, %8 ], [ %1, %2 ]
  %14 = load ptr, ptr %12, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 5
  %16 = load i32, ptr %15, align 8
  %17 = icmp ugt i32 %13, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 3, i32 15
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, 3
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %40, !prof !67

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 15
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.skb_shared_info, ptr %25, i32 0, i32 3
  %27 = load i8, ptr %26, align 1
  %28 = and i8 %27, 67
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load i8, ptr %25, align 8
  %32 = and i8 %31, 4
  %33 = icmp eq i8 %32, 0
  %34 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 15
  %35 = load ptr, ptr %34, align 4
  %36 = load i8, ptr %35, align 8
  %37 = and i8 %36, 4
  %38 = icmp ne i8 %37, 0
  %39 = xor i1 %33, %38
  br i1 %39, label %8, label %40

40:                                               ; preds = %30, %23, %18, %11, %8, %2
  %41 = phi i1 [ true, %2 ], [ true, %8 ], [ true, %11 ], [ false, %18 ], [ false, %23 ], [ false, %30 ]
  ret i1 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tcp_wmem_free_skb(ptr noundef %0, ptr noundef %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %6, %4
  store volatile i32 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = load i8, ptr %9, align 8
  %11 = and i8 %10, 4
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.proto, ptr %14, i32 0, i32 30
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %12, label %18, label %37

18:                                               ; preds = %2
  br i1 %17, label %62, label %19

19:                                               ; preds = %18
  %20 = load i32, ptr %3, align 8
  %21 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %20
  store i32 %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27, !prof !19

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %29 = load volatile i32, ptr %28, align 4
  %30 = add i32 %7, %29
  %31 = sub i32 %25, %30
  %32 = tail call i32 @llvm.smax.i32(i32 %31, i32 0) #19
  br label %33

33:                                               ; preds = %27, %19
  %34 = phi i32 [ %32, %27 ], [ 0, %19 ]
  %35 = sub i32 %23, %34
  %36 = icmp sgt i32 %35, 2097151
  br i1 %36, label %61, label %62, !prof !18

37:                                               ; preds = %2
  br i1 %17, label %62, label %38

38:                                               ; preds = %37
  %39 = ptrtoint ptr %9 to i32
  %40 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %41 = load ptr, ptr %40, align 8
  %42 = ptrtoint ptr %41 to i32
  %43 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %39, 448
  %46 = sub i32 %45, %42
  %47 = add i32 %46, %44
  store i32 %47, ptr %43, align 4
  %48 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 12
  %49 = load i32, ptr %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %57, label %51, !prof !19

51:                                               ; preds = %38
  %52 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %53 = load volatile i32, ptr %52, align 4
  %54 = add i32 %7, %53
  %55 = sub i32 %49, %54
  %56 = tail call i32 @llvm.smax.i32(i32 %55, i32 0) #19
  br label %57

57:                                               ; preds = %51, %38
  %58 = phi i32 [ %56, %51 ], [ 0, %38 ]
  %59 = sub i32 %47, %58
  %60 = icmp sgt i32 %59, 2097151
  br i1 %60, label %61, label %62, !prof !18

61:                                               ; preds = %57, %33
  tail call void @__sk_mem_reclaim(ptr noundef %0, i32 noundef 1048576) #19
  br label %62

62:                                               ; preds = %61, %57, %37, %33, %18
  tail call void @__kfree_skb(ptr noundef %1) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfree_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_skb_shift(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_copy_fclone(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tcp_retransmit_skb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tcp_send_reset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_initialize_rcv_mss(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_write_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_clear_retrans(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcp_ca_find_key(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tcp_fastopen_cookie_check(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tcp_syn_options(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 115
  %6 = load ptr, ptr %5, align 4
  store ptr null, ptr %3, align 4
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %8 = load volatile ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 32
  %10 = load i16, ptr %9, align 8
  %11 = zext i16 %10 to i32
  %12 = icmp eq ptr %8, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.dst_entry, ptr %8, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, -4
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr i32, ptr %17, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.dst_entry, ptr %8, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.dst_ops, ptr %23, i32 0, i32 4
  %25 = load ptr, ptr %24, align 16
  %26 = tail call i32 %25(ptr noundef nonnull %8) #19
  br label %27

27:                                               ; preds = %21, %13
  %28 = phi i32 [ %19, %13 ], [ %26, %21 ]
  %29 = icmp ult i32 %28, %11
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = trunc i32 %28 to i16
  store i16 %31, ptr %9, align 8
  br label %32

32:                                               ; preds = %30, %27, %4
  %33 = phi i32 [ %11, %4 ], [ %28, %30 ], [ %11, %27 ]
  %34 = trunc i32 %33 to i16
  %35 = getelementptr inbounds %struct.tcp_out_options, ptr %2, i32 0, i32 1
  store i16 %34, ptr %35, align 2
  %36 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 66), align 2
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %58, label %38, !prof !18

38:                                               ; preds = %32
  %39 = load ptr, ptr %3, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %58, !prof !19

41:                                               ; preds = %38
  %42 = load i16, ptr %2, align 4
  %43 = or i16 %42, 2
  store i16 %43, ptr %2, align 4
  %44 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 2
  %45 = load i64, ptr %44, align 8
  %46 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %45) #20, !srcloc !53
  %47 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %45, i64 %46, i32 0) #20, !srcloc !10
  %48 = extractvalue { i64, i32 } %47, 0
  %49 = lshr i64 %48, 18
  %50 = trunc i64 %49 to i32
  %51 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 22
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, %50
  %54 = getelementptr inbounds %struct.tcp_out_options, ptr %2, i32 0, i32 7
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.tcp_out_options, ptr %2, i32 0, i32 8
  store i32 %56, ptr %57, align 4
  br label %58

58:                                               ; preds = %41, %38, %32
  %59 = phi i32 [ 36, %32 ], [ 24, %41 ], [ 36, %38 ]
  %60 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 65), align 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %72, label %62, !prof !18

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %64 = load i24, ptr %63, align 4
  %65 = trunc i24 %64 to i16
  %66 = lshr i16 %65, 12
  %67 = trunc i16 %66 to i8
  %68 = getelementptr inbounds %struct.tcp_out_options, ptr %2, i32 0, i32 2
  store i8 %67, ptr %68, align 4
  %69 = load i16, ptr %2, align 4
  %70 = or i16 %69, 8
  store i16 %70, ptr %2, align 4
  %71 = add nsw i32 %59, -4
  br label %72

72:                                               ; preds = %62, %58
  %73 = phi i32 [ %59, %58 ], [ %71, %62 ]
  %74 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 64), align 4
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %83, label %76, !prof !18

76:                                               ; preds = %72
  %77 = load i16, ptr %2, align 4
  %78 = or i16 %77, 1
  store i16 %78, ptr %2, align 4
  %79 = and i16 %77, 2
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %81, label %83, !prof !18

81:                                               ; preds = %76
  %82 = add nsw i32 %73, -4
  br label %83

83:                                               ; preds = %81, %76, %72
  %84 = phi i32 [ %73, %72 ], [ %82, %81 ], [ %73, %76 ]
  %85 = icmp eq ptr %6, null
  br i1 %85, label %112, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %6, i32 0, i32 1
  %88 = load i8, ptr %87, align 8
  %89 = icmp sgt i8 %88, -1
  br i1 %89, label %90, label %112

90:                                               ; preds = %86
  %91 = zext i8 %88 to i32
  %92 = getelementptr inbounds %struct.tcp_fastopen_cookie, ptr %6, i32 0, i32 2
  %93 = load i8, ptr %92, align 1, !range !59
  %94 = icmp eq i8 %93, 0
  %95 = select i1 %94, i32 2, i32 4
  %96 = add nuw nsw i32 %91, 3
  %97 = add nuw nsw i32 %96, %95
  %98 = and i32 %97, 1020
  %99 = icmp ult i32 %84, %98
  br i1 %99, label %112, label %100

100:                                              ; preds = %90
  %101 = load i16, ptr %2, align 4
  %102 = or i16 %101, 256
  store i16 %102, ptr %2, align 4
  %103 = getelementptr inbounds %struct.tcp_out_options, ptr %2, i32 0, i32 9
  store ptr %6, ptr %103, align 4
  %104 = sub nsw i32 %84, %98
  %105 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 39
  %106 = load i8, ptr %105, align 1
  %107 = or i8 %106, 8
  store i8 %107, ptr %105, align 1
  %108 = load i8, ptr %92, align 1, !range !59
  %109 = shl nuw nsw i8 %108, 4
  %110 = and i8 %107, -17
  %111 = or i8 %109, %110
  store i8 %111, ptr %105, align 1
  br label %112

112:                                              ; preds = %100, %90, %86, %83
  %113 = phi i32 [ %84, %83 ], [ %84, %90 ], [ %104, %100 ], [ %84, %86 ]
  %114 = sub nsw i32 40, %113
  ret i32 %114
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_wfree(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_enter_cwr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tcp_retransmit_synack(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #13

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #16 = { nounwind readonly }
attributes #17 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { nounwind }
attributes #20 = { nounwind readnone }
attributes #21 = { nounwind readonly willreturn }
attributes #22 = { cold nounwind }

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
!9 = !{i64 1288833, i64 1288860, i64 1288882, i64 1288910}
!10 = !{i64 1289241, i64 1289268, i64 1289301, i64 1289322, i64 1289349, i64 1289375}
!11 = !{i32 0, i32 33}
!12 = !{i64 2157388152}
!13 = !{i64 854893, i64 2148344864, i64 2148344890, i64 2148344937, i64 2148344959, i64 2148344987, i64 2148345007}
!14 = !{i64 867064, i64 867085, i64 867108, i64 867127, i64 867146}
!15 = !{i64 2157388536}
!16 = !{i64 2148458756}
!17 = !{i64 2148360891, i64 2148360923, i64 2148360952, i64 2148360986, i64 2148361017, i64 2148361040}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 760571, i64 760632}
!21 = !{i64 763588}
!22 = !{i64 2157386846}
!23 = !{i64 2150124509}
!24 = !{i64 2154156907}
!25 = !{i64 779271}
!26 = !{i64 2154171556}
!27 = !{i64 2157396435}
!28 = !{i64 2157396816}
!29 = !{i64 2148358534, i64 2148358566, i64 2148358595, i64 2148358629, i64 2148358660, i64 2148358683}
!30 = !{i64 2149388184}
!31 = !{i64 2149384008}
!32 = !{i64 2149384083, i64 2149384110, i64 2149384157, i64 2149384179, i64 2149384207, i64 2149384227}
!33 = !{i64 2149411187}
!34 = !{!"branch_weights", i32 2146410443, i32 1073205}
!35 = !{i64 2153481984, i64 2153482472, i64 2153482021, i64 2153482077, i64 2153482111, i64 2153482135, i64 2153482176, i64 2153482197, i64 2153482225, i64 2153482259}
!36 = !{i64 2148457755}
!37 = !{i64 2148360117, i64 2148360149, i64 2148360178, i64 2148360212, i64 2148360243, i64 2148360266}
!38 = !{i64 2148457958}
!39 = !{i64 2157534758}
!40 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!41 = !{i64 2156903221}
!42 = !{i64 2157525633, i64 2157526120, i64 2157525670, i64 2157525726, i64 2157525760, i64 2157525784, i64 2157525825, i64 2157525846, i64 2157525874, i64 2157525908}
!43 = !{i64 2157489670, i64 2157490157, i64 2157489707, i64 2157489763, i64 2157489797, i64 2157489821, i64 2157489862, i64 2157489883, i64 2157489911, i64 2157489945}
!44 = !{i64 2157490721, i64 2157491208, i64 2157490758, i64 2157490814, i64 2157490848, i64 2157490872, i64 2157490913, i64 2157490934, i64 2157490962, i64 2157490996}
!45 = !{i64 2157525270}
!46 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!47 = !{i64 2157120725}
!48 = !{i64 2157120887}
!49 = !{i64 2157564252, i64 2157564739, i64 2157564289, i64 2157564345, i64 2157564379, i64 2157564403, i64 2157564444, i64 2157564465, i64 2157564493, i64 2157564527}
!50 = !{!"branch_weights", i32 -102759400, i32 4193255}
!51 = !{i64 2157569706, i64 2157570193, i64 2157569743, i64 2157569799, i64 2157569833, i64 2157569857, i64 2157569898, i64 2157569919, i64 2157569947, i64 2157569981}
!52 = !{i64 2148774377, i64 2148774657, i64 2148774991, i64 2148775325}
!53 = !{i64 1288546, i64 1288573}
!54 = !{i64 2148454922}
!55 = !{i64 2148357760, i64 2148357792, i64 2148357821, i64 2148357855, i64 2148357886, i64 2148357909}
!56 = !{i64 2148455125}
!57 = !{i64 2157141212}
!58 = !{i64 2157141366}
!59 = !{i8 0, i8 2}
!60 = !{i64 2149540888}
!61 = !{i64 2149541105}
!62 = !{!"auto-init"}
!63 = !{i64 2157401477, i64 2157401964, i64 2157401514, i64 2157401570, i64 2157401604, i64 2157401628, i64 2157401669, i64 2157401690, i64 2157401718, i64 2157401752}
!64 = !{i64 2153495342, i64 2153495830, i64 2153495379, i64 2153495435, i64 2153495469, i64 2153495493, i64 2153495534, i64 2153495555, i64 2153495583, i64 2153495617}
!65 = !{i64 2157209622}
!66 = !{i64 2157209790}
!67 = !{!"branch_weights", i32 2000, i32 2002}
