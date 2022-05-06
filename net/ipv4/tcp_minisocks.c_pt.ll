; ModuleID = '/llk/IR/net/ipv4/tcp_minisocks.c_pt.bc'
source_filename = "../net/ipv4/tcp_minisocks.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_timewait_state_process:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_timewait_state_process\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_timewait_state_process:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_time_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_time_wait\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_time_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_twsk_destructor:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_twsk_destructor\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_twsk_destructor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_openreq_init_rwin:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_openreq_init_rwin\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_openreq_init_rwin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_ca_openreq_child:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_ca_openreq_child\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_ca_openreq_child:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_create_openreq_child:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_create_openreq_child\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_create_openreq_child:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_check_req:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_check_req\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_check_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_child_process:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_child_process\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_child_process:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.inet_hashinfo = type { ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, [28 x i8], [32 x %struct.inet_listen_hashbucket] }
%struct.inet_listen_hashbucket = type { %struct.spinlock, i32, %union.anon.131 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%union.anon.131 = type { %struct.hlist_head }
%struct.hlist_head = type { ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.134, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
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
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.tcp_timewait_sock = type { %struct.inet_timewait_sock, i32, i32, i32, i32, i32, i32 }
%struct.inet_timewait_sock = type { %struct.sock_common, i32, i8, i8, i16, i32, i32, i32, %struct.timer_list, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.171, [0 x i32], %union.anon.172, i16, i16, %union.anon.173, %struct.refcount_struct, [0 x i32], %union.anon.174 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.115 }
%union.anon.115 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.171 = type { i32 }
%union.anon.172 = type { %struct.hlist_node }
%union.anon.173 = type { i32 }
%union.anon.174 = type { i32 }
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
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.191, %struct.anon.192, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.175, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.176, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.177, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.175 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.176 = type { ptr }
%union.anon.177 = type { ptr }
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
%struct.flowi = type { %union.anon.120 }
%union.anon.120 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.191 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.192 = type { i32, i32, i32, i32 }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.193, %struct.anon.194, %struct.anon.195, i32, ptr, ptr, ptr }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.193 = type { i32, i32, i64 }
%struct.anon.194 = type { i32, i32, i64 }
%struct.anon.195 = type { i32, i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, i32, i32, i32, i32, i32, %union.anon.188, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.188 = type { %struct.anon.189 }
%struct.anon.189 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.netdevice_tracker = type {}
%struct.inet_request_sock = type { %struct.request_sock, i16, i32, %union.anon.199 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%union.anon.199 = type { %struct.anon.200 }
%struct.anon.200 = type { ptr, ptr }
%struct.tcp_congestion_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.list_head, i32, i32, ptr, ptr, [40 x i8] }
%struct.tcp_request_sock = type { %struct.inet_request_sock, ptr, i64, i8, i8, i32, i32, i32, i32, i32, i32, i8 }
%struct.request_sock_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inet_connection_sock_af_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, ptr, ptr, ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@__kstrtab_tcp_timewait_state_process = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_timewait_state_process = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_timewait_state_process = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_timewait_state_process to i32), ptr @__kstrtab_tcp_timewait_state_process, ptr @__kstrtabns_tcp_timewait_state_process }, section "___ksymtab+tcp_timewait_state_process", align 4
@tcp_hashinfo = external dso_local global %struct.inet_hashinfo, align 64
@__kstrtab_tcp_time_wait = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_time_wait = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_time_wait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_time_wait to i32), ptr @__kstrtab_tcp_time_wait, ptr @__kstrtabns_tcp_time_wait }, section "___ksymtab+tcp_time_wait", align 4
@__kstrtab_tcp_twsk_destructor = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_twsk_destructor = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_twsk_destructor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_twsk_destructor to i32), ptr @__kstrtab_tcp_twsk_destructor, ptr @__kstrtabns_tcp_twsk_destructor }, section "___ksymtab_gpl+tcp_twsk_destructor", align 4
@__kstrtab_tcp_openreq_init_rwin = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_openreq_init_rwin = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_openreq_init_rwin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_openreq_init_rwin to i32), ptr @__kstrtab_tcp_openreq_init_rwin, ptr @__kstrtabns_tcp_openreq_init_rwin }, section "___ksymtab+tcp_openreq_init_rwin", align 4
@__kstrtab_tcp_ca_openreq_child = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_ca_openreq_child = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_ca_openreq_child = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_ca_openreq_child to i32), ptr @__kstrtab_tcp_ca_openreq_child, ptr @__kstrtabns_tcp_ca_openreq_child }, section "___ksymtab_gpl+tcp_ca_openreq_child", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_tcp_create_openreq_child = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_create_openreq_child = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_create_openreq_child = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_create_openreq_child to i32), ptr @__kstrtab_tcp_create_openreq_child, ptr @__kstrtabns_tcp_create_openreq_child }, section "___ksymtab+tcp_create_openreq_child", align 4
@__kstrtab_tcp_check_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_check_req = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_check_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_check_req to i32), ptr @__kstrtab_tcp_check_req, ptr @__kstrtabns_tcp_check_req }, section "___ksymtab+tcp_check_req", align 4
@__kstrtab_tcp_child_process = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_child_process = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_child_process = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_child_process to i32), ptr @__kstrtab_tcp_child_process, ptr @__kstrtabns_tcp_child_process }, section "___ksymtab+tcp_child_process", align 4
@init_net = external dso_local global %struct.net, align 64
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_tcp_ca_openreq_child, ptr @__ksymtab_tcp_check_req, ptr @__ksymtab_tcp_child_process, ptr @__ksymtab_tcp_create_openreq_child, ptr @__ksymtab_tcp_openreq_init_rwin, ptr @__ksymtab_tcp_time_wait, ptr @__ksymtab_tcp_timewait_state_process, ptr @__ksymtab_tcp_twsk_destructor], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_timewait_state_process(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.tcp_options_received, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  %5 = getelementptr inbounds %struct.tcp_options_received, ptr %4, i32 0, i32 4
  %6 = getelementptr inbounds %struct.tcphdr, ptr %2, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 224
  %9 = icmp ugt i16 %8, 80
  br i1 %9, label %10, label %56

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tcp_timewait_sock, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %56, label %14

14:                                               ; preds = %10
  call void @tcp_parse_options(ptr noundef nonnull @init_net, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 0, ptr noundef null) #10
  %15 = load i24, ptr %5, align 4
  %16 = and i24 %15, 1
  %17 = icmp eq i24 %16, 0
  br i1 %17, label %56, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.tcp_options_received, ptr %4, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.tcp_timewait_sock, ptr %0, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = sub i32 %20, %24
  store i32 %25, ptr %19, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = getelementptr inbounds %struct.tcp_timewait_sock, ptr %0, i32 0, i32 3
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr inbounds %struct.tcp_options_received, ptr %4, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  %30 = load i32, ptr %11, align 8
  store i32 %30, ptr %4, align 4
  %31 = load i16, ptr %6, align 4
  %32 = getelementptr inbounds %struct.tcp_options_received, ptr %4, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = sub i32 %28, %33
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %56, label %36

36:                                               ; preds = %26
  %37 = call i64 @ktime_get_seconds() #10
  %38 = trunc i64 %37 to i32
  %39 = load i32, ptr %4, align 4
  %40 = sub i32 -2073600, %39
  %41 = add i32 %40, %38
  %42 = icmp sgt i32 %41, -1
  %43 = load i32, ptr %29, align 4
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %42, i1 true, i1 %44
  br i1 %45, label %56, label %46, !prof !9

46:                                               ; preds = %36
  %47 = and i16 %31, 1024
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %46
  %50 = call i64 @ktime_get_seconds() #10
  %51 = trunc i64 %50 to i32
  %52 = load i32, ptr %4, align 4
  %53 = sub i32 -60, %52
  %54 = add i32 %53, %51
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %49, %36, %26, %14, %10, %3
  %57 = getelementptr inbounds %struct.inet_timewait_sock, ptr %0, i32 0, i32 2
  %58 = load volatile i8, ptr %57, align 4
  %59 = icmp eq i8 %58, 5
  %60 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %61 = load i32, ptr %60, align 8
  br i1 %59, label %66, label %126

62:                                               ; preds = %49, %46
  %63 = getelementptr inbounds %struct.inet_timewait_sock, ptr %0, i32 0, i32 2
  %64 = load volatile i8, ptr %63, align 4
  %65 = icmp eq i8 %64, 5
  br i1 %65, label %84, label %187

66:                                               ; preds = %56
  %67 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 18
  %70 = load i32, ptr %69, align 8
  %71 = getelementptr inbounds %struct.tcp_timewait_sock, ptr %0, i32 0, i32 1
  %72 = load i32, ptr %71, align 8
  %73 = add i32 %72, %70
  %74 = icmp eq i32 %61, %70
  br i1 %74, label %88, label %75

75:                                               ; preds = %66
  %76 = sub i32 %70, %68
  %77 = sub i32 %61, %73
  %78 = and i32 %77, %76
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %75
  %81 = icmp eq i32 %61, %73
  %82 = icmp eq i32 %61, %68
  %83 = and i1 %82, %81
  br i1 %83, label %88, label %84

84:                                               ; preds = %80, %62
  %85 = getelementptr inbounds %struct.tcp_timewait_sock, ptr %0, i32 0, i32 4
  %86 = call zeroext i1 @tcp_oow_rate_limited(ptr noundef nonnull @init_net, ptr noundef %1, i32 noundef 106, ptr noundef %85) #10
  br i1 %86, label %87, label %214

87:                                               ; preds = %84
  call void @inet_twsk_put(ptr noundef %0) #10
  br label %214

88:                                               ; preds = %80, %75, %66
  %89 = load i16, ptr %6, align 4
  %90 = and i16 %89, 1024
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %92, label %144

92:                                               ; preds = %88
  %93 = and i16 %89, 512
  %94 = icmp eq i16 %93, 0
  %95 = sub i32 %61, %70
  %96 = icmp slt i32 %95, 0
  %97 = select i1 %94, i1 true, i1 %96
  br i1 %97, label %98, label %214

98:                                               ; preds = %92
  %99 = and i16 %89, 4096
  %100 = icmp eq i16 %99, 0
  %101 = sub i32 %70, %68
  %102 = icmp sgt i32 %101, -1
  %103 = select i1 %100, i1 true, i1 %102
  %104 = icmp eq i32 %68, %61
  %105 = select i1 %103, i1 true, i1 %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  call void @inet_twsk_put(ptr noundef %0) #10
  br label %214

107:                                              ; preds = %98
  %108 = and i16 %89, 256
  %109 = icmp ne i16 %108, 0
  %110 = add i32 %70, 1
  %111 = icmp eq i32 %68, %110
  %112 = select i1 %109, i1 %111, i1 false
  br i1 %112, label %113, label %214

113:                                              ; preds = %107
  store volatile i8 6, ptr %57, align 4
  %114 = load i32, ptr %67, align 4
  store i32 %114, ptr %69, align 8
  %115 = load i24, ptr %5, align 4
  %116 = and i24 %115, 1
  %117 = icmp eq i24 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %113
  %119 = call i64 @ktime_get_seconds() #10
  %120 = trunc i64 %119 to i32
  %121 = getelementptr inbounds %struct.tcp_timewait_sock, ptr %0, i32 0, i32 5
  store i32 %120, ptr %121, align 8
  %122 = getelementptr inbounds %struct.tcp_options_received, ptr %4, i32 0, i32 2
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr inbounds %struct.tcp_timewait_sock, ptr %0, i32 0, i32 3
  store i32 %123, ptr %124, align 8
  br label %125

125:                                              ; preds = %118, %113
  call void @__inet_twsk_schedule(ptr noundef %0, i32 noundef 6000, i1 noundef zeroext true) #10
  br label %214

126:                                              ; preds = %56
  %127 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 18
  %128 = load i32, ptr %127, align 8
  %129 = icmp eq i32 %61, %128
  br i1 %129, label %130, label %158

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %132 = load i32, ptr %131, align 4
  %133 = icmp ne i32 %61, %132
  %134 = load i16, ptr %6, align 4
  %135 = and i16 %134, 1024
  %136 = icmp eq i16 %135, 0
  %137 = select i1 %133, i1 %136, i1 false
  br i1 %137, label %158, label %138

138:                                              ; preds = %130
  %139 = and i16 %134, 1024
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %138
  %142 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 73), align 1
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %141, %88
  call void @inet_twsk_deschedule_put(ptr noundef %0) #10
  br label %214

145:                                              ; preds = %138
  call void @__inet_twsk_schedule(ptr noundef %0, i32 noundef 6000, i1 noundef zeroext true) #10
  br label %146

146:                                              ; preds = %145, %141
  %147 = load i24, ptr %5, align 4
  %148 = and i24 %147, 1
  %149 = icmp eq i24 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.tcp_options_received, ptr %4, i32 0, i32 2
  %152 = load i32, ptr %151, align 4
  %153 = getelementptr inbounds %struct.tcp_timewait_sock, ptr %0, i32 0, i32 3
  store i32 %152, ptr %153, align 8
  %154 = call i64 @ktime_get_seconds() #10
  %155 = trunc i64 %154 to i32
  %156 = getelementptr inbounds %struct.tcp_timewait_sock, ptr %0, i32 0, i32 5
  store i32 %155, ptr %156, align 8
  br label %157

157:                                              ; preds = %150, %146
  call void @inet_twsk_put(ptr noundef %0) #10
  br label %214

158:                                              ; preds = %130, %126
  %159 = load i16, ptr %6, align 4
  %160 = and i16 %159, 5632
  %161 = icmp eq i16 %160, 512
  br i1 %161, label %162, label %199

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 18
  %164 = load i32, ptr %163, align 8
  %165 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %166 = load i32, ptr %165, align 8
  %167 = sub i32 %164, %166
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %180, label %169

169:                                              ; preds = %162
  %170 = load i24, ptr %5, align 4
  %171 = and i24 %170, 1
  %172 = icmp eq i24 %171, 0
  br i1 %172, label %199, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.tcp_timewait_sock, ptr %0, i32 0, i32 3
  %175 = load i32, ptr %174, align 8
  %176 = getelementptr inbounds %struct.tcp_options_received, ptr %4, i32 0, i32 2
  %177 = load i32, ptr %176, align 4
  %178 = sub i32 %175, %177
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %199

180:                                              ; preds = %173, %162
  %181 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 21
  %182 = load i32, ptr %181, align 8
  %183 = add i32 %182, 65537
  %184 = icmp eq i32 %183, 0
  %185 = select i1 %184, i32 1, i32 %183
  %186 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  store i32 %185, ptr %186, align 8
  br label %214

187:                                              ; preds = %62
  %188 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %189 = getelementptr [126 x i32], ptr %188, i32 0, i32 15
  %190 = ptrtoint ptr %189 to i32
  %191 = call i32 @llvm.read_register.i32(metadata !0) #10
  %192 = inttoptr i32 %191 to ptr
  %193 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %192) #8, !srcloc !10
  %194 = add i32 %193, %190
  %195 = inttoptr i32 %194 to ptr
  %196 = load i32, ptr %195, align 4
  %197 = add i32 %196, 1
  store i32 %197, ptr %195, align 4
  %198 = load i16, ptr %6, align 4
  br label %199

199:                                              ; preds = %187, %173, %169, %158
  %200 = phi i1 [ false, %187 ], [ true, %158 ], [ true, %173 ], [ true, %169 ]
  %201 = phi i16 [ %198, %187 ], [ %159, %158 ], [ %159, %173 ], [ %159, %169 ]
  %202 = and i16 %201, 1024
  %203 = icmp eq i16 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %199
  %205 = and i16 %201, 4096
  %206 = icmp eq i16 %205, 0
  %207 = select i1 %200, i1 %206, i1 false
  br i1 %207, label %209, label %208

208:                                              ; preds = %204
  call void @__inet_twsk_schedule(ptr noundef %0, i32 noundef 6000, i1 noundef zeroext true) #10
  br label %209

209:                                              ; preds = %208, %204
  %210 = getelementptr inbounds %struct.tcp_timewait_sock, ptr %0, i32 0, i32 4
  %211 = call zeroext i1 @tcp_oow_rate_limited(ptr noundef nonnull @init_net, ptr noundef %1, i32 noundef 107, ptr noundef %210) #10
  br i1 %211, label %212, label %214

212:                                              ; preds = %209
  call void @inet_twsk_put(ptr noundef %0) #10
  br label %214

213:                                              ; preds = %199
  call void @inet_twsk_put(ptr noundef %0) #10
  br label %214

214:                                              ; preds = %213, %212, %209, %180, %157, %144, %125, %107, %106, %92, %87, %84
  %215 = phi i32 [ 0, %144 ], [ 0, %106 ], [ 2, %125 ], [ 0, %213 ], [ 3, %180 ], [ 0, %157 ], [ 1, %107 ], [ 0, %87 ], [ 2, %84 ], [ 0, %212 ], [ 2, %209 ], [ 1, %92 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret i32 %215
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_parse_options(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_twsk_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_seconds() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_twsk_deschedule_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_time_wait(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @inet_twsk_alloc(ptr noundef %0, ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35), i32 noundef %1) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %111, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 2
  %10 = lshr i32 %8, 1
  %11 = sub i32 %9, %10
  %12 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %13 = load i16, ptr %12, align 8
  %14 = getelementptr inbounds %struct.inet_timewait_sock, ptr %4, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = lshr i16 %13, 4
  %17 = and i16 %16, 2
  %18 = zext i16 %17 to i32
  %19 = and i32 %15, -3
  %20 = or i32 %19, %18
  store i32 %20, ptr %14, align 8
  %21 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 34
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.inet_timewait_sock, ptr %4, i32 0, i32 1
  store i32 %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 33
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.inet_timewait_sock, ptr %4, i32 0, i32 7
  store i32 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61
  %28 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 4
  %29 = load i24, ptr %28, align 4
  %30 = trunc i24 %29 to i16
  %31 = lshr i16 %30, 12
  %32 = trunc i16 %31 to i8
  %33 = getelementptr inbounds %struct.inet_timewait_sock, ptr %4, i32 0, i32 3
  store i8 %32, ptr %33, align 1
  %34 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 7
  %35 = load i32, ptr %34, align 8
  %36 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 18
  store i32 %35, ptr %36, align 8
  %37 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 10
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 21
  store i32 %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 9
  %41 = load i32, ptr %40, align 8
  %42 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 79
  %43 = load i32, ptr %42, align 8
  %44 = add i32 %43, %41
  %45 = load i32, ptr %34, align 8
  %46 = sub i32 %44, %45
  %47 = tail call i32 @llvm.smax.i32(i32 %46, i32 0) #10
  %48 = getelementptr inbounds %struct.tcp_timewait_sock, ptr %4, i32 0, i32 1
  store i32 %47, ptr %48, align 8
  %49 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 61, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.tcp_timewait_sock, ptr %4, i32 0, i32 3
  store i32 %50, ptr %51, align 8
  %52 = load i32, ptr %27, align 4
  %53 = getelementptr inbounds %struct.tcp_timewait_sock, ptr %4, i32 0, i32 5
  store i32 %52, ptr %53, align 8
  %54 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 22
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.tcp_timewait_sock, ptr %4, i32 0, i32 2
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.tcp_timewait_sock, ptr %4, i32 0, i32 4
  store i32 0, ptr %57, align 4
  %58 = getelementptr inbounds %struct.tcp_sock, ptr %0, i32 0, i32 41
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.tcp_timewait_sock, ptr %4, i32 0, i32 6
  store i32 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 3
  %62 = load i16, ptr %61, align 8
  %63 = icmp eq i16 %62, 10
  br i1 %63, label %64, label %103

64:                                               ; preds = %6
  %65 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %66 = load volatile i8, ptr %65, align 2
  %67 = zext i8 %66 to i32
  %68 = shl nuw i32 1, %67
  %69 = and i32 %68, -4161
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %73 = load ptr, ptr %72, align 8
  br label %74

74:                                               ; preds = %71, %64
  %75 = phi ptr [ %73, %71 ], [ null, %64 ]
  %76 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 10
  %77 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %76, ptr noundef align 4 dereferenceable(16) %77, i32 16, i1 false)
  %78 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 11
  %79 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %78, ptr noundef align 4 dereferenceable(16) %79, i32 16, i1 false)
  %80 = getelementptr inbounds %struct.ipv6_pinfo, ptr %75, i32 0, i32 11
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = shl nuw i32 %82, 24
  %84 = and i32 %20, 16777215
  %85 = or i32 %83, %84
  store i32 %85, ptr %14, align 8
  %86 = getelementptr inbounds %struct.ipv6_pinfo, ptr %75, i32 0, i32 3
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, -61696
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  %90 = shl nuw nsw i32 %89, 2
  %91 = and i32 %85, -4194301
  %92 = or i32 %90, %91
  store i32 %92, ptr %14, align 8
  %93 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 42
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.inet_timewait_sock, ptr %4, i32 0, i32 6
  store i32 %94, ptr %95, align 4
  %96 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 5
  %97 = load i8, ptr %96, align 1
  %98 = and i8 %97, 32
  %99 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 5
  %100 = load i8, ptr %99, align 1
  %101 = and i8 %100, -33
  %102 = or i8 %101, %98
  store i8 %102, ptr %99, align 1
  br label %103

103:                                              ; preds = %74, %6
  %104 = tail call i32 @llvm.smax.i32(i32 %11, i32 %2)
  %105 = icmp eq i32 %1, 6
  %106 = select i1 %105, i32 6000, i32 %104
  %107 = tail call ptr @llvm.thread.pointer() #10
  %108 = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 1
  %109 = load volatile i32, ptr %108, align 4
  %110 = add i32 %109, 512
  store volatile i32 %110, ptr %108, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  tail call void @__inet_twsk_schedule(ptr noundef nonnull %4, i32 noundef %106, i1 noundef zeroext false) #10
  tail call void @inet_twsk_hashdance(ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull @tcp_hashinfo) #10
  tail call fastcc void @local_bh_enable()
  br label %123

111:                                              ; preds = %3
  %112 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !12
  %113 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %114 = getelementptr [126 x i32], ptr %113, i32 0, i32 73
  %115 = ptrtoint ptr %114 to i32
  %116 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %117 = inttoptr i32 %116 to ptr
  %118 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %117) #8, !srcloc !10
  %119 = add i32 %118, %115
  %120 = inttoptr i32 %119 to ptr
  %121 = load i32, ptr %120, align 4
  %122 = add i32 %121, 1
  store i32 %122, ptr %120, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %112) #10, !srcloc !13
  br label %123

123:                                              ; preds = %111, %103
  tail call void @tcp_update_metrics(ptr noundef %0) #10
  tail call void @tcp_done(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_twsk_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_twsk_hashdance(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_update_metrics(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @tcp_twsk_destructor(ptr nocapture %0) #7 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_openreq_init_rwin(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 15
  %6 = load volatile i32, ptr %5, align 4
  %7 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 77), align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1, !annotation !14
  %8 = getelementptr inbounds %struct.dst_entry, ptr %2, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, -4
  %11 = inttoptr i32 %10 to ptr
  %12 = getelementptr i32, ptr %11, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.dst_entry, ptr %2, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dst_ops, ptr %17, i32 0, i32 4
  %19 = load ptr, ptr %18, align 16
  %20 = tail call i32 %19(ptr noundef %2) #10
  br label %21

21:                                               ; preds = %15, %3
  %22 = phi i32 [ %13, %3 ], [ %20, %15 ]
  %23 = getelementptr inbounds %struct.tcp_sock, ptr %1, i32 0, i32 61, i32 6
  %24 = load volatile i16, ptr %23, align 4
  %25 = getelementptr inbounds %struct.tcp_sock, ptr %1, i32 0, i32 29
  %26 = load volatile i32, ptr %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load i32, ptr %8, align 4
  %30 = and i32 %29, -4
  %31 = inttoptr i32 %30 to ptr
  %32 = getelementptr i32, ptr %31, i32 2
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %28, %21
  %35 = phi i32 [ %33, %28 ], [ %26, %21 ]
  %36 = icmp slt i32 %7, 1
  %37 = sub i32 0, %7
  %38 = ashr i32 %6, %37
  %39 = ashr i32 %6, %7
  %40 = sub i32 %6, %39
  %41 = select i1 %36, i32 %38, i32 %40
  %42 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 21
  store i32 %35, ptr %42, align 8
  %43 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 43
  %44 = load i8, ptr %43, align 8
  %45 = and i8 %44, 32
  %46 = icmp eq i8 %45, 0
  %47 = add i32 %35, -1
  %48 = icmp ult i32 %47, %41
  %49 = select i1 %46, i1 true, i1 %48
  %50 = select i1 %49, i32 %35, i32 %41
  store i32 %50, ptr %42, align 8
  %51 = icmp ne i16 %24, 0
  %52 = trunc i32 %22 to i16
  %53 = icmp ult i16 %24, %52
  %54 = and i1 %51, %53
  %55 = select i1 %54, i16 %24, i16 %52
  %56 = zext i16 %55 to i32
  %57 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %58 = load volatile i8, ptr %57, align 2
  %59 = load i32, ptr %8, align 4
  %60 = and i32 %59, -4
  %61 = inttoptr i32 %60 to ptr
  %62 = getelementptr i32, ptr %61, i32 13
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.inet_request_sock, ptr %0, i32 0, i32 1
  %65 = load i16, ptr %64, align 8
  %66 = and i16 %65, 256
  %67 = icmp eq i16 %66, 0
  %68 = select i1 %67, i32 0, i32 -12
  %69 = add nsw i32 %68, %56
  %70 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 18
  %71 = lshr i16 %65, 10
  %72 = and i16 %71, 1
  %73 = zext i16 %72 to i32
  call void @tcp_select_initial_window(ptr noundef %1, i32 noundef %41, i32 noundef %69, ptr noundef %70, ptr noundef %42, i32 noundef %73, ptr noundef nonnull %4, i32 noundef %63) #10
  %74 = load i8, ptr %4, align 1
  %75 = load i16, ptr %64, align 8
  %76 = shl i8 %74, 4
  %77 = zext i8 %76 to i16
  %78 = and i16 %75, -241
  %79 = or i16 %78, %77
  store i16 %79, ptr %64, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_select_initial_window(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tcp_ca_openreq_child(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, -4
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr i32, ptr %6, i32 15
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %11 = tail call ptr @tcp_ca_find_key(i32 noundef %8) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13, !prof !16

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %11, i32 0, i32 12
  %15 = load ptr, ptr %14, align 4
  %16 = tail call zeroext i1 @try_module_get(ptr noundef %15) #10
  br i1 %16, label %17, label %30, !prof !17

17:                                               ; preds = %13
  %18 = load i32, ptr %3, align 4
  %19 = and i32 %18, -4
  %20 = inttoptr i32 %19 to ptr
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %23 = load i8, ptr %22, align 4
  %24 = lshr i32 %21, 9
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, -128
  %27 = and i8 %23, 127
  %28 = or i8 %26, %27
  store i8 %28, ptr %22, align 4
  %29 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  store ptr %11, ptr %29, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  br label %43

30:                                               ; preds = %13, %10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  br label %31

31:                                               ; preds = %30, %2
  %32 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %33 = load i8, ptr %32, align 4
  %34 = and i8 %33, 64
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %38, i32 0, i32 12
  %40 = load ptr, ptr %39, align 4
  %41 = tail call zeroext i1 @try_module_get(ptr noundef %40) #10
  br i1 %41, label %43, label %42

42:                                               ; preds = %36, %31
  tail call void @tcp_assign_congestion_control(ptr noundef %0) #10
  br label %43

43:                                               ; preds = %42, %36, %17
  %44 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 10
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  tail call void %47(ptr noundef %0, i8 noundef zeroext 0) #10
  br label %50

50:                                               ; preds = %49, %43
  %51 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 17
  %52 = load i8, ptr %51, align 4
  %53 = and i8 %52, -32
  store i8 %53, ptr %51, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcp_ca_find_key(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_assign_congestion_control(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tcp_create_openreq_child(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @inet_csk_clone_lock(ptr noundef %0, ptr noundef %1, i32 noundef 2592) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %187, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 3
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.tcp_request_sock, ptr %1, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %9, 1
  %11 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 9
  store i32 %10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 8
  store volatile i32 %10, ptr %12, align 4
  %13 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 7
  store volatile i32 %10, ptr %13, align 8
  %14 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 5
  store i32 1, ptr %14, align 8
  %15 = getelementptr inbounds %struct.tcp_request_sock, ptr %1, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1
  %18 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 16
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 17
  store i32 %17, ptr %19, align 8
  %20 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 10
  store volatile i32 %17, ptr %20, align 4
  %21 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 60
  store i32 %17, ptr %21, align 8
  %22 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 23
  store volatile ptr %22, ptr %22, align 4
  %23 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 23, i32 1
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 24
  store volatile ptr %24, ptr %24, align 4
  %25 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 24, i32 1
  store ptr %24, ptr %25, align 4
  %26 = load i32, ptr %8, align 8
  %27 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 25
  store i32 %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 50
  %29 = load volatile i32, ptr @jiffies, align 64
  %30 = getelementptr %struct.tcp_sock, ptr %4, i32 0, i32 50, i32 0, i32 2
  %31 = getelementptr %struct.tcp_sock, ptr %4, i32 0, i32 50, i32 0, i32 1
  store i32 %29, ptr %28, align 4
  %32 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 50, i32 0, i32 0, i32 1
  store i32 -1, ptr %32, align 4
  %33 = load i64, ptr %28, align 4
  store i64 %33, ptr %31, align 4
  store i64 %33, ptr %30, align 4
  %34 = load volatile i32, ptr @jiffies, align 64
  %35 = getelementptr inbounds %struct.inet_connection_sock, ptr %4, i32 0, i32 24, i32 6
  store i32 %34, ptr %35, align 4
  %36 = load volatile i32, ptr @jiffies, align 64
  %37 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 19
  store i32 %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.tcp_request_sock, ptr %1, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 42
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.request_sock, ptr %1, i32 0, i32 3
  %42 = load i8, ptr %41, align 2
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 102
  store i32 %43, ptr %44, align 8
  tail call void @tcp_init_xmit_timers(ptr noundef nonnull %4) #10
  %45 = load i32, ptr %15, align 4
  %46 = add i32 %45, 1
  %47 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 82
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 80
  store volatile i32 %46, ptr %48, align 4
  %49 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 13
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %50, 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %6
  %54 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 104
  %55 = load i32, ptr %54, align 8
  %56 = icmp eq i32 %55, 0
  %57 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 50), align 4
  %58 = select i1 %56, i32 %57, i32 %55
  tail call void @inet_csk_reset_keepalive_timer(ptr noundef nonnull %4, i32 noundef %58) #10
  br label %59

59:                                               ; preds = %53, %6
  %60 = getelementptr inbounds %struct.inet_request_sock, ptr %1, i32 0, i32 1
  %61 = load i16, ptr %60, align 8
  %62 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 61
  %63 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 61, i32 4
  %64 = load i24, ptr %63, align 4
  %65 = lshr i16 %61, 7
  %66 = and i16 %65, 2
  %67 = zext i16 %66 to i24
  %68 = and i24 %64, -3
  %69 = or i24 %68, %67
  store i24 %69, ptr %63, align 4
  %70 = load i16, ptr %60, align 8
  %71 = lshr i16 %70, 5
  %72 = and i16 %71, 16
  %73 = zext i16 %72 to i24
  %74 = and i24 %69, -113
  %75 = or i24 %74, %73
  store i24 %75, ptr %63, align 4
  %76 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 21
  %77 = load i32, ptr %76, align 8
  %78 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 29
  store i32 %77, ptr %78, align 8
  %79 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 18
  %80 = load i32, ptr %79, align 8
  %81 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 30
  store i32 %80, ptr %81, align 4
  %82 = load i32, ptr %79, align 8
  %83 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 79
  store i32 %82, ptr %83, align 8
  %84 = load i16, ptr %60, align 8
  %85 = lshr i16 %84, 7
  %86 = and i16 %85, 8
  %87 = zext i16 %86 to i24
  %88 = and i24 %75, -105
  %89 = or i24 %88, %87
  store i24 %89, ptr %63, align 4
  %90 = icmp eq i16 %86, 0
  br i1 %90, label %104, label %91

91:                                               ; preds = %59
  %92 = load i16, ptr %60, align 8
  %93 = shl i16 %92, 8
  %94 = and i16 %93, 3840
  %95 = zext i16 %94 to i24
  %96 = and i24 %89, -3937
  %97 = or i24 %96, %95
  store i24 %97, ptr %63, align 4
  %98 = load i16, ptr %60, align 8
  %99 = shl i16 %98, 8
  %100 = and i16 %99, -4096
  %101 = zext i16 %100 to i24
  %102 = and i24 %97, -61537
  %103 = or i24 %102, %101
  store i24 %103, ptr %63, align 4
  br label %107

104:                                              ; preds = %59
  %105 = and i24 %89, -65377
  store i24 %105, ptr %63, align 4
  %106 = tail call i32 @llvm.umin.i32(i32 %77, i32 65535)
  store i32 %106, ptr %78, align 8
  br label %107

107:                                              ; preds = %104, %91
  %108 = phi i24 [ %105, %104 ], [ %103, %91 ]
  %109 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %110 = load ptr, ptr %109, align 8
  %111 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 17
  %112 = load i16, ptr %111, align 2
  %113 = zext i16 %112 to i32
  %114 = getelementptr i8, ptr %110, i32 %113
  %115 = getelementptr inbounds %struct.tcphdr, ptr %114, i32 0, i32 5
  %116 = load i16, ptr %115, align 2
  %117 = tail call i16 @llvm.bswap.i16(i16 %116)
  %118 = zext i16 %117 to i32
  %119 = zext i24 %108 to i32
  %120 = lshr i32 %119, 8
  %121 = and i32 %120, 15
  %122 = shl nuw nsw i32 %118, %121
  %123 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 26
  store i32 %122, ptr %123, align 4
  %124 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 27
  store i32 %122, ptr %124, align 8
  %125 = and i24 %108, 2
  %126 = icmp eq i24 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %107
  %128 = getelementptr inbounds %struct.request_sock, ptr %1, i32 0, i32 5
  %129 = load i32, ptr %128, align 8
  %130 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 61, i32 1
  store i32 %129, ptr %130, align 4
  %131 = tail call i64 @ktime_get_seconds() #10
  %132 = trunc i64 %131 to i32
  br label %133

133:                                              ; preds = %127, %107
  %134 = phi i32 [ %132, %127 ], [ 0, %107 ]
  %135 = phi i16 [ 32, %127 ], [ 20, %107 ]
  store i32 %134, ptr %62, align 4
  %136 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 1
  store i16 %135, ptr %136, align 8
  %137 = getelementptr inbounds %struct.request_sock, ptr %1, i32 0, i32 4
  %138 = load i8, ptr %137, align 1
  %139 = icmp ult i8 %138, 2
  br i1 %139, label %153, label %140

140:                                              ; preds = %133
  %141 = load i32, ptr %15, align 4
  %142 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 99
  store i32 %141, ptr %142, align 4
  %143 = getelementptr inbounds %struct.tcp_request_sock, ptr %1, i32 0, i32 2
  %144 = load i64, ptr %143, align 8
  %145 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %144, i32 0) #11, !srcloc !19
  %146 = extractvalue { i64, i32 } %145, 0
  %147 = extractvalue { i64, i32 } %145, 1
  %148 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %144, i64 %146, i32 %147) #11, !srcloc !20
  %149 = extractvalue { i64, i32 } %148, 0
  %150 = lshr i64 %149, 9
  %151 = trunc i64 %150 to i32
  %152 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 98
  store i32 %151, ptr %152, align 8
  br label %153

153:                                              ; preds = %140, %133
  %154 = getelementptr inbounds %struct.tcp_request_sock, ptr %1, i32 0, i32 8
  %155 = load i32, ptr %154, align 8
  %156 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 22
  store i32 %155, ptr %156, align 4
  %157 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %158 = load i32, ptr %157, align 8
  %159 = add nuw nsw i16 %135, 536
  %160 = zext i16 %159 to i32
  %161 = icmp ult i32 %158, %160
  br i1 %161, label %166, label %162

162:                                              ; preds = %153
  %163 = trunc i32 %158 to i16
  %164 = sub i16 %163, %135
  %165 = getelementptr inbounds %struct.inet_connection_sock, ptr %4, i32 0, i32 24, i32 7
  store i16 %164, ptr %165, align 4
  br label %166

166:                                              ; preds = %162, %153
  %167 = getelementptr inbounds %struct.request_sock, ptr %1, i32 0, i32 2
  %168 = load i16, ptr %167, align 4
  %169 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 61, i32 7
  store i16 %168, ptr %169, align 2
  %170 = load i16, ptr %60, align 8
  %171 = lshr i16 %170, 11
  %172 = trunc i16 %171 to i8
  %173 = and i8 %172, 1
  %174 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 56
  store i8 %173, ptr %174, align 2
  %175 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 115
  store ptr null, ptr %175, align 4
  %176 = getelementptr inbounds %struct.tcp_sock, ptr %4, i32 0, i32 116
  store volatile ptr null, ptr %176, align 8
  %177 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %178 = getelementptr [16 x i32], ptr %177, i32 0, i32 6
  %179 = ptrtoint ptr %178 to i32
  %180 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %181 = inttoptr i32 %180 to ptr
  %182 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %181) #8, !srcloc !10
  %183 = add i32 %182, %179
  %184 = inttoptr i32 %183 to ptr
  %185 = load i32, ptr %184, align 4
  %186 = add i32 %185, 1
  store i32 %186, ptr %184, align 4
  br label %187

187:                                              ; preds = %166, %3
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_csk_clone_lock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_init_xmit_timers(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_csk_reset_keepalive_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tcp_check_req(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = alloca %struct.tcp_options_received, align 4
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !14
  %8 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = getelementptr i8, ptr %9, i32 %12
  %14 = getelementptr [5 x i32], ptr %13, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 5632
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1, !annotation !14
  %17 = getelementptr inbounds %struct.tcp_options_received, ptr %6, i32 0, i32 4
  store i24 0, ptr %17, align 4
  %18 = load i16, ptr %14, align 4
  %19 = and i16 %18, 224
  %20 = icmp ugt i16 %19, 80
  br i1 %20, label %21, label %72

21:                                               ; preds = %5
  call void @tcp_parse_options(ptr noundef nonnull @init_net, ptr noundef %1, ptr noundef nonnull %6, i32 noundef 0, ptr noundef null) #10
  %22 = load i24, ptr %17, align 4
  %23 = and i24 %22, 1
  %24 = icmp eq i24 %23, 0
  br i1 %24, label %72, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.request_sock, ptr %2, i32 0, i32 5
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds %struct.tcp_options_received, ptr %6, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.tcp_options_received, ptr %6, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.tcp_request_sock, ptr %2, i32 0, i32 8
  %34 = load i32, ptr %33, align 8
  %35 = sub i32 %30, %34
  store i32 %35, ptr %29, align 4
  br label %36

36:                                               ; preds = %32, %25
  %37 = call i64 @ktime_get_seconds() #10
  %38 = getelementptr inbounds %struct.request_sock, ptr %2, i32 0, i32 4
  %39 = load i8, ptr %38, align 1
  %40 = lshr i8 %39, 1
  %41 = zext i8 %40 to i32
  %42 = shl nsw i32 -1, %41
  %43 = trunc i64 %37 to i32
  %44 = add i32 %42, %43
  store i32 %44, ptr %6, align 4
  %45 = load i16, ptr %14, align 4
  %46 = load i32, ptr %28, align 4
  %47 = getelementptr inbounds %struct.tcp_options_received, ptr %6, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = sub i32 %46, %48
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %72, label %51

51:                                               ; preds = %36
  %52 = call i64 @ktime_get_seconds() #10
  %53 = trunc i64 %52 to i32
  %54 = load i32, ptr %6, align 4
  %55 = sub i32 -2073600, %54
  %56 = add i32 %55, %53
  %57 = icmp sgt i32 %56, -1
  %58 = load i32, ptr %28, align 4
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %57, i1 true, i1 %59
  br i1 %60, label %72, label %61, !prof !9

61:                                               ; preds = %51
  %62 = and i16 %45, 1024
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %61
  %65 = call i64 @ktime_get_seconds() #10
  %66 = trunc i64 %65 to i32
  %67 = load i32, ptr %6, align 4
  %68 = sub i32 -60, %67
  %69 = add i32 %68, %66
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64, %61
  br label %72

72:                                               ; preds = %71, %64, %51, %36, %21, %5
  %73 = phi i1 [ false, %21 ], [ false, %5 ], [ true, %71 ], [ false, %64 ], [ false, %36 ], [ false, %51 ]
  %74 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %75 = load i32, ptr %74, align 8
  %76 = getelementptr inbounds %struct.tcp_request_sock, ptr %2, i32 0, i32 6
  %77 = load i32, ptr %76, align 8
  %78 = icmp ne i32 %75, %77
  %79 = icmp ne i32 %16, 512
  %80 = select i1 %78, i1 true, i1 %79
  %81 = or i1 %73, %80
  br i1 %81, label %102, label %82

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.tcp_request_sock, ptr %2, i32 0, i32 9
  %84 = call zeroext i1 @tcp_oow_rate_limited(ptr noundef nonnull @init_net, ptr noundef %1, i32 noundef 103, ptr noundef %83) #10
  br i1 %84, label %282, label %85

85:                                               ; preds = %82
  %86 = call i32 @inet_rtx_syn_ack(ptr noundef %0, ptr noundef %2) #10
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %282

88:                                               ; preds = %85
  %89 = load volatile i32, ptr @jiffies, align 64
  %90 = getelementptr inbounds %struct.request_sock, ptr %2, i32 0, i32 4
  %91 = load i8, ptr %90, align 1
  %92 = lshr i8 %91, 1
  %93 = zext i8 %92 to i32
  %94 = shl i32 100, %93
  %95 = call i32 @llvm.umin.i32(i32 %94, i32 12000)
  %96 = add i32 %95, %89
  br i1 %3, label %100, label %97

97:                                               ; preds = %88
  %98 = getelementptr inbounds %struct.request_sock, ptr %2, i32 0, i32 6
  %99 = call i32 @mod_timer_pending(ptr noundef %98, i32 noundef %96) #10
  br label %282

100:                                              ; preds = %88
  %101 = getelementptr inbounds %struct.request_sock, ptr %2, i32 0, i32 6, i32 1
  store i32 %96, ptr %101, align 4
  br label %282

102:                                              ; preds = %72
  %103 = and i32 %15, 4096
  %104 = icmp eq i32 %103, 0
  %105 = or i1 %104, %3
  br i1 %105, label %113, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 16
  %108 = load i32, ptr %107, align 8
  %109 = getelementptr inbounds %struct.tcp_request_sock, ptr %2, i32 0, i32 7
  %110 = load i32, ptr %109, align 4
  %111 = add i32 %110, 1
  %112 = icmp eq i32 %108, %111
  br i1 %112, label %113, label %282

113:                                              ; preds = %106, %102
  br i1 %73, label %132, label %114

114:                                              ; preds = %113
  %115 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %116 = load i32, ptr %115, align 4
  %117 = getelementptr inbounds %struct.tcp_request_sock, ptr %2, i32 0, i32 10
  %118 = load i32, ptr %117, align 8
  %119 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 18
  %120 = load i32, ptr %119, align 8
  %121 = add i32 %120, %118
  %122 = icmp eq i32 %118, %75
  br i1 %122, label %155, label %123

123:                                              ; preds = %114
  %124 = sub i32 %118, %116
  %125 = sub i32 %75, %121
  %126 = and i32 %125, %124
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %155, label %128

128:                                              ; preds = %123
  %129 = icmp eq i32 %75, %121
  %130 = icmp eq i32 %75, %116
  %131 = and i1 %130, %129
  br i1 %131, label %155, label %132

132:                                              ; preds = %128, %113
  %133 = and i32 %15, 1024
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.tcp_request_sock, ptr %2, i32 0, i32 9
  %137 = call zeroext i1 @tcp_oow_rate_limited(ptr noundef nonnull @init_net, ptr noundef %1, i32 noundef 103, ptr noundef %136) #10
  br i1 %137, label %143, label %138

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.request_sock, ptr %2, i32 0, i32 7
  %140 = load ptr, ptr %139, align 8
  %141 = getelementptr inbounds %struct.request_sock_ops, ptr %140, i32 0, i32 5
  %142 = load ptr, ptr %141, align 4
  call void %142(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %143

143:                                              ; preds = %138, %135, %132
  br i1 %73, label %144, label %282

144:                                              ; preds = %143
  %145 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %146 = getelementptr [126 x i32], ptr %145, i32 0, i32 15
  %147 = ptrtoint ptr %146 to i32
  %148 = call i32 @llvm.read_register.i32(metadata !0) #10
  %149 = inttoptr i32 %148 to ptr
  %150 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %149) #8, !srcloc !10
  %151 = add i32 %150, %147
  %152 = inttoptr i32 %151 to ptr
  %153 = load i32, ptr %152, align 4
  %154 = add i32 %153, 1
  store i32 %154, ptr %152, align 4
  br label %282

155:                                              ; preds = %128, %123, %114
  %156 = load i24, ptr %17, align 4
  %157 = and i24 %156, 1
  %158 = icmp eq i24 %157, 0
  %159 = sub i32 %118, %75
  %160 = icmp slt i32 %159, 0
  %161 = select i1 %158, i1 true, i1 %160
  br i1 %161, label %167, label %162

162:                                              ; preds = %155
  %163 = getelementptr inbounds %struct.tcp_options_received, ptr %6, i32 0, i32 2
  %164 = load i32, ptr %163, align 4
  %165 = getelementptr inbounds %struct.request_sock, ptr %2, i32 0, i32 5
  store i32 %164, ptr %165, align 8
  %166 = load i32, ptr %74, align 8
  br label %167

167:                                              ; preds = %162, %155
  %168 = phi i32 [ %166, %162 ], [ %75, %155 ]
  %169 = icmp eq i32 %168, %77
  %170 = and i32 %15, 5120
  %171 = select i1 %169, i32 %170, i32 %16
  %172 = and i32 %171, 1536
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %185, label %174

174:                                              ; preds = %167
  %175 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 2), align 32
  %176 = getelementptr [16 x i32], ptr %175, i32 0, i32 7
  %177 = ptrtoint ptr %176 to i32
  %178 = call i32 @llvm.read_register.i32(metadata !0) #10
  %179 = inttoptr i32 %178 to ptr
  %180 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %179) #8, !srcloc !10
  %181 = add i32 %180, %177
  %182 = inttoptr i32 %181 to ptr
  %183 = load i32, ptr %182, align 4
  %184 = add i32 %183, 1
  store i32 %184, ptr %182, align 4
  br label %256

185:                                              ; preds = %167
  %186 = and i32 %171, 4096
  %187 = icmp eq i32 %186, 0
  %188 = or i1 %187, %3
  %189 = select i1 %187, ptr null, ptr %0
  br i1 %188, label %282, label %190

190:                                              ; preds = %185
  %191 = getelementptr inbounds %struct.request_sock, ptr %2, i32 0, i32 4
  %192 = load i8, ptr %191, align 1
  %193 = lshr i8 %192, 1
  %194 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 1, i32 1
  %195 = load i8, ptr %194, align 4
  %196 = icmp ult i8 %193, %195
  br i1 %196, label %197, label %215

197:                                              ; preds = %190
  %198 = load i32, ptr %115, align 4
  %199 = add i32 %77, 1
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %215

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.inet_request_sock, ptr %2, i32 0, i32 1
  %203 = load i16, ptr %202, align 8
  %204 = or i16 %203, 4096
  store i16 %204, ptr %202, align 8
  %205 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %206 = getelementptr [126 x i32], ptr %205, i32 0, i32 71
  %207 = ptrtoint ptr %206 to i32
  %208 = call i32 @llvm.read_register.i32(metadata !0) #10
  %209 = inttoptr i32 %208 to ptr
  %210 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %209) #8, !srcloc !10
  %211 = add i32 %210, %207
  %212 = inttoptr i32 %211 to ptr
  %213 = load i32, ptr %212, align 4
  %214 = add i32 %213, 1
  store i32 %214, ptr %212, align 4
  br label %282

215:                                              ; preds = %197, %190
  %216 = getelementptr inbounds %struct.inet_connection_sock, ptr %0, i32 0, i32 11
  %217 = load ptr, ptr %216, align 8
  %218 = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %217, i32 0, i32 5
  %219 = load ptr, ptr %218, align 4
  %220 = call ptr %219(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef %2, ptr noundef nonnull %7) #10
  %221 = icmp eq ptr %220, null
  br i1 %221, label %234, label %222

222:                                              ; preds = %215
  %223 = getelementptr inbounds %struct.sock_common, ptr %220, i32 0, i32 21
  %224 = load i32, ptr %223, align 8
  %225 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 7
  %226 = load i32, ptr %225, align 8
  %227 = icmp eq i32 %224, %226
  br i1 %227, label %229, label %228, !prof !17

228:                                              ; preds = %222
  store i32 %226, ptr %223, align 8
  br label %229

229:                                              ; preds = %228, %222
  call void @tcp_synack_rtt_meas(ptr noundef nonnull %220, ptr noundef %2) #10
  %230 = load i8, ptr %7, align 1, !range !21
  %231 = xor i8 %230, 1
  store i8 %231, ptr %4, align 1
  %232 = icmp ne i8 %230, 0
  %233 = call ptr @inet_csk_complete_hashdance(ptr noundef %0, ptr noundef nonnull %220, ptr noundef %2, i1 noundef zeroext %232) #10
  br label %282

234:                                              ; preds = %215
  %235 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 13
  %236 = load ptr, ptr %235, align 8
  %237 = icmp eq ptr %236, %0
  br i1 %237, label %249, label %238

238:                                              ; preds = %234
  %239 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %240 = getelementptr [126 x i32], ptr %239, i32 0, i32 125
  %241 = ptrtoint ptr %240 to i32
  %242 = call i32 @llvm.read_register.i32(metadata !0) #10
  %243 = inttoptr i32 %242 to ptr
  %244 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %243) #8, !srcloc !10
  %245 = add i32 %244, %241
  %246 = inttoptr i32 %245 to ptr
  %247 = load i32, ptr %246, align 4
  %248 = add i32 %247, 1
  store i32 %248, ptr %246, align 4
  br label %249

249:                                              ; preds = %238, %234
  %250 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 74), align 2
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %249
  %253 = getelementptr inbounds %struct.inet_request_sock, ptr %2, i32 0, i32 1
  %254 = load i16, ptr %253, align 8
  %255 = or i16 %254, 4096
  store i16 %255, ptr %253, align 8
  br label %282

256:                                              ; preds = %249, %174
  %257 = and i32 %171, 1024
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %256
  %260 = getelementptr inbounds %struct.request_sock, ptr %2, i32 0, i32 7
  %261 = load ptr, ptr %260, align 8
  %262 = getelementptr inbounds %struct.request_sock_ops, ptr %261, i32 0, i32 6
  %263 = load ptr, ptr %262, align 4
  call void %263(ptr noundef %0, ptr noundef %1) #10
  br i1 %3, label %282, label %266

264:                                              ; preds = %256
  br i1 %3, label %265, label %266

265:                                              ; preds = %264
  call void @reqsk_fastopen_remove(ptr noundef %0, ptr noundef %2, i1 noundef zeroext true) #10
  call void @tcp_reset(ptr noundef %0, ptr noundef %1) #10
  br label %282

266:                                              ; preds = %264, %259
  %267 = call zeroext i1 @inet_csk_reqsk_queue_drop(ptr noundef %0, ptr noundef %2) #10
  br i1 %267, label %268, label %279

268:                                              ; preds = %266
  %269 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 3), align 4
  %270 = getelementptr [126 x i32], ptr %269, i32 0, i32 4
  %271 = ptrtoint ptr %270 to i32
  %272 = call i32 @llvm.read_register.i32(metadata !0) #10
  %273 = inttoptr i32 %272 to ptr
  %274 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %273) #8, !srcloc !10
  %275 = add i32 %274, %271
  %276 = inttoptr i32 %275 to ptr
  %277 = load i32, ptr %276, align 4
  %278 = add i32 %277, 1
  store i32 %278, ptr %276, align 4
  br label %279

279:                                              ; preds = %268, %266
  %280 = xor i1 %267, true
  %281 = zext i1 %280 to i8
  store i8 %281, ptr %4, align 1
  br label %282

282:                                              ; preds = %279, %265, %259, %252, %229, %201, %185, %144, %143, %106, %100, %97, %85, %82
  %283 = phi ptr [ null, %201 ], [ %233, %229 ], [ null, %252 ], [ null, %97 ], [ null, %100 ], [ null, %85 ], [ null, %82 ], [ %0, %106 ], [ null, %144 ], [ null, %143 ], [ %189, %185 ], [ null, %265 ], [ null, %279 ], [ null, %259 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  ret ptr %283
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tcp_oow_rate_limited(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_rtx_syn_ack(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer_pending(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_synack_rtt_meas(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_csk_complete_hashdance(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @reqsk_fastopen_remove(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_reset(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inet_csk_reqsk_queue_drop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tcp_child_process(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %5 = load volatile i8, ptr %4, align 2
  %6 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 10
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 14
  store volatile i32 %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 9
  %10 = load i16, ptr %9, align 4
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = add i16 %10, -1
  %14 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 17
  store volatile i16 %13, ptr %14, align 2
  br label %15

15:                                               ; preds = %12, %3
  %16 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 5
  %19 = load i16, ptr %18, align 2
  %20 = icmp eq i16 %19, 0
  %21 = select i1 %20, i16 1, i16 %19
  %22 = getelementptr inbounds %struct.tcp_sock, ptr %1, i32 0, i32 5
  %23 = load i32, ptr %22, align 8
  %24 = zext i16 %21 to i32
  %25 = add i32 %23, %24
  store volatile i32 %25, ptr %22, align 8
  %26 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 17
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  %33 = getelementptr i8, ptr %29, i32 %32
  %34 = getelementptr inbounds %struct.tcphdr, ptr %33, i32 0, i32 4
  %35 = load i16, ptr %34, align 4
  %36 = lshr i16 %35, 2
  %37 = and i16 %36, 60
  %38 = zext i16 %37 to i32
  %39 = icmp ugt i32 %27, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %15
  %41 = getelementptr inbounds %struct.tcp_sock, ptr %1, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, %24
  store volatile i32 %43, ptr %41, align 4
  br label %44

44:                                               ; preds = %40, %15
  %45 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = tail call i32 @tcp_rcv_state_process(ptr noundef %1, ptr noundef %2) #10
  %50 = icmp eq i8 %5, 3
  br i1 %50, label %51, label %95

51:                                               ; preds = %48
  %52 = load volatile i8, ptr %4, align 2
  %53 = icmp eq i8 %52, 3
  br i1 %53, label %95, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 76
  %56 = load ptr, ptr %55, align 8
  tail call void %56(ptr noundef %0) #10
  br label %95

57:                                               ; preds = %44
  %58 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 4
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  %62 = icmp ugt i32 %59, 1
  %63 = and i1 %62, %61
  br i1 %63, label %64, label %87

64:                                               ; preds = %57
  %65 = and i32 %59, -2
  %66 = inttoptr i32 %65 to ptr
  %67 = getelementptr inbounds %struct.dst_entry, ptr %66, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %67) #10, !srcloc !23
  %68 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %67, ptr %67, i32 0, i32 1, ptr elementtype(i32) %67) #10, !srcloc !24
  %69 = extractvalue { i32, i32, i32 } %68, 0
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !25
  br label %72

72:                                               ; preds = %71, %64
  %73 = phi ptr [ null, %64 ], [ %66, %71 ]
  %74 = ptrtoint ptr %73 to i32
  store i32 %74, ptr %58, align 8
  %75 = icmp ne ptr %73, null
  %76 = zext i1 %75 to i8
  %77 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 3
  %78 = load i16, ptr %77, align 2
  %79 = lshr i16 %78, 14
  %80 = trunc i16 %79 to i8
  %81 = and i8 %80, 1
  %82 = or i8 %81, %76
  %83 = zext i8 %82 to i16
  %84 = shl nuw nsw i16 %83, 14
  %85 = and i16 %78, -16385
  %86 = or i16 %84, %85
  store i16 %86, ptr %77, align 2
  br label %87

87:                                               ; preds = %72, %57
  %88 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 9, i32 3
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 9, i32 2
  store volatile ptr %2, ptr %92, align 8
  br label %94

93:                                               ; preds = %87
  store ptr %2, ptr %89, align 8
  br label %94

94:                                               ; preds = %93, %91
  store volatile ptr %2, ptr %88, align 4
  store ptr null, ptr %2, align 8
  br label %95

95:                                               ; preds = %94, %54, %51, %48
  %96 = phi i32 [ 0, %94 ], [ %49, %54 ], [ %49, %51 ], [ %49, %48 ]
  %97 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !26
  %98 = load i16, ptr %97, align 4
  %99 = add i16 %98, 1
  store i16 %99, ptr %97, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !27
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !29
  %100 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %100) #10, !srcloc !23
  %101 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %100, ptr %100, i32 1, ptr elementtype(i32) %100) #10, !srcloc !31
  %102 = extractvalue { i32, i32, i32 } %101, 0
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %107, label %104

104:                                              ; preds = %95
  %105 = icmp sgt i32 %102, 0
  br i1 %105, label %108, label %106, !prof !17

106:                                              ; preds = %104
  tail call void @refcount_warn_saturate(ptr noundef %100, i32 noundef 3) #10
  br label %108

107:                                              ; preds = %95
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !32
  tail call void @sk_free(ptr noundef %1) #10
  br label %108

108:                                              ; preds = %107, %106, %104
  ret i32 %96
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_rcv_state_process(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__inet_twsk_schedule(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 2002, i32 2000}
!10 = !{i64 685495}
!11 = !{i64 2149124437}
!12 = !{i64 666795, i64 666856}
!13 = !{i64 669812}
!14 = !{!"auto-init"}
!15 = !{i64 2149447112}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2149447329}
!19 = !{i64 1195057, i64 1195084, i64 1195106, i64 1195134}
!20 = !{i64 1195465, i64 1195492, i64 1195525, i64 1195546, i64 1195573, i64 1195599}
!21 = !{i8 0, i8 2}
!22 = !{i64 2148262807}
!23 = !{i64 761117, i64 2148251088, i64 2148251114, i64 2148251161, i64 2148251183, i64 2148251211, i64 2148251231}
!24 = !{i64 747686, i64 747711, i64 747733, i64 747749, i64 747761, i64 747781, i64 747805, i64 747821, i64 747833}
!25 = !{i64 2148262933}
!26 = !{i64 2149294408}
!27 = !{i64 2149290232}
!28 = !{i64 2149290307, i64 2149290334, i64 2149290381, i64 2149290403, i64 2149290431, i64 2149290451}
!29 = !{i64 2149317411}
!30 = !{i64 2148364980}
!31 = !{i64 2148267115, i64 2148267147, i64 2148267176, i64 2148267210, i64 2148267241, i64 2148267264}
!32 = !{i64 2150030733}
