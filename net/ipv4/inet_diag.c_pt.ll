; ModuleID = '/llk/IR/net/ipv4/inet_diag.c_pt.bc'
source_filename = "../net/ipv4/inet_diag.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_diag_msg_common_fill:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_diag_msg_common_fill\22\09\09\09\09\09"
module asm "__kstrtabns_inet_diag_msg_common_fill:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_diag_msg_attrs_fill:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_diag_msg_attrs_fill\22\09\09\09\09\09"
module asm "__kstrtabns_inet_diag_msg_attrs_fill:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_sk_diag_fill:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_sk_diag_fill\22\09\09\09\09\09"
module asm "__kstrtabns_inet_sk_diag_fill:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_diag_find_one_icsk:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_diag_find_one_icsk\22\09\09\09\09\09"
module asm "__kstrtabns_inet_diag_find_one_icsk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_diag_dump_one_icsk:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_diag_dump_one_icsk\22\09\09\09\09\09"
module asm "__kstrtabns_inet_diag_dump_one_icsk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_diag_bc_sk:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_diag_bc_sk\22\09\09\09\09\09"
module asm "__kstrtabns_inet_diag_bc_sk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_diag_dump_icsk:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_diag_dump_icsk\22\09\09\09\09\09"
module asm "__kstrtabns_inet_diag_dump_icsk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_diag_register:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_diag_register\22\09\09\09\09\09"
module asm "__kstrtabns_inet_diag_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet_diag_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22inet_diag_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_inet_diag_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.sock_diag_handler = type { i8, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.130, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.130 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netlink_dump_control = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.167, [0 x i32], %union.anon.168, i16, i16, %union.anon.169, %struct.refcount_struct, [0 x i32], %union.anon.170 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.116 }
%union.anon.116 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.167 = type { i32 }
%union.anon.168 = type { %struct.hlist_node }
%union.anon.169 = type { i32 }
%union.anon.170 = type { i32 }
%struct.anon.2 = type { i16, i16 }
%struct.inet_diag_msg = type { i8, i8, i8, i8, %struct.inet_diag_sockid, i32, i32, i32, i32, i32 }
%struct.inet_diag_sockid = type { i16, i16, [4 x i32], [4 x i32], i32, [2 x i32] }
%struct.anon = type { i32, i32 }
%struct.inet_diag_sockopt = type { i16 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.171, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.172, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.173, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.171 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.172 = type { ptr }
%union.anon.173 = type { ptr }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.125 }
%union.anon.125 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, i32, i32, i32, i32, i32, %union.anon.179, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.179 = type { %struct.anon.180 }
%struct.anon.180 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.inet_diag_meminfo = type { i32, i32, i32, i32 }
%union.tcp_cc_info = type { %struct.tcp_bbr_info }
%struct.tcp_bbr_info = type { i32, i32, i32, i32, i32 }
%struct.inet_diag_req_v2 = type { i8, i8, i8, i8, i32, %struct.inet_diag_sockid }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.69 }
%union.anon.69 = type { [6 x i32], [24 x i8] }
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
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.inet_diag_handler = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i16 }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.182, %struct.anon.183, i32, i32, [13 x i64] }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.182 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.183 = type { i32, i32, i32, i32 }
%struct.tcp_congestion_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.list_head, i32, i32, ptr, ptr, [40 x i8] }
%struct.inet_timewait_sock = type { %struct.sock_common, i32, i8, i8, i16, i32, i32, i32, %struct.timer_list, ptr }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%struct.inet_request_sock = type { %struct.request_sock, i16, i32, %union.anon.184 }
%union.anon.184 = type { %struct.anon.185 }
%struct.anon.185 = type { ptr, ptr }
%struct.inet_diag_bc_op = type { i8, i8, i16 }
%struct.inet_hashinfo = type { ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, [28 x i8], [32 x %struct.inet_listen_hashbucket] }
%struct.inet_listen_hashbucket = type { %struct.spinlock, i32, %union.anon.122 }
%union.anon.122 = type { %struct.hlist_head }
%struct.inet_ehash_bucket = type { %struct.hlist_nulls_head }
%struct.hlist_nulls_head = type { ptr }
%struct.inet_diag_dump_data = type { [4 x ptr], ptr }
%struct.nlattr = type { i16, i16 }

@__kstrtab_inet_diag_msg_common_fill = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_diag_msg_common_fill = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_diag_msg_common_fill = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_diag_msg_common_fill to i32), ptr @__kstrtab_inet_diag_msg_common_fill, ptr @__kstrtabns_inet_diag_msg_common_fill }, section "___ksymtab_gpl+inet_diag_msg_common_fill", align 4
@__kstrtab_inet_diag_msg_attrs_fill = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_diag_msg_attrs_fill = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_diag_msg_attrs_fill = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_diag_msg_attrs_fill to i32), ptr @__kstrtab_inet_diag_msg_attrs_fill, ptr @__kstrtabns_inet_diag_msg_attrs_fill }, section "___ksymtab_gpl+inet_diag_msg_attrs_fill", align 4
@inet_diag_table = internal unnamed_addr global ptr null, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [21 x i8] c"net/ipv4/inet_diag.c\00", align 1
@__kstrtab_inet_sk_diag_fill = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_sk_diag_fill = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_sk_diag_fill = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_sk_diag_fill to i32), ptr @__kstrtab_inet_sk_diag_fill, ptr @__kstrtabns_inet_sk_diag_fill }, section "___ksymtab_gpl+inet_sk_diag_fill", align 4
@__kstrtab_inet_diag_find_one_icsk = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_diag_find_one_icsk = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_diag_find_one_icsk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_diag_find_one_icsk to i32), ptr @__kstrtab_inet_diag_find_one_icsk, ptr @__kstrtabns_inet_diag_find_one_icsk }, section "___ksymtab_gpl+inet_diag_find_one_icsk", align 4
@__kstrtab_inet_diag_dump_one_icsk = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_diag_dump_one_icsk = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_diag_dump_one_icsk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_diag_dump_one_icsk to i32), ptr @__kstrtab_inet_diag_dump_one_icsk, ptr @__kstrtabns_inet_diag_dump_one_icsk }, section "___ksymtab_gpl+inet_diag_dump_one_icsk", align 4
@__kstrtab_inet_diag_bc_sk = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_diag_bc_sk = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_diag_bc_sk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_diag_bc_sk to i32), ptr @__kstrtab_inet_diag_bc_sk, ptr @__kstrtabns_inet_diag_bc_sk }, section "___ksymtab_gpl+inet_diag_bc_sk", align 4
@__kstrtab_inet_diag_dump_icsk = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_diag_dump_icsk = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_diag_dump_icsk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_diag_dump_icsk to i32), ptr @__kstrtab_inet_diag_dump_icsk, ptr @__kstrtabns_inet_diag_dump_icsk }, section "___ksymtab_gpl+inet_diag_dump_icsk", align 4
@inet_diag_table_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @inet_diag_table_mutex, i64 12), ptr getelementptr (i8, ptr @inet_diag_table_mutex, i64 12) } }, align 4
@__kstrtab_inet_diag_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_diag_register = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_diag_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_diag_register to i32), ptr @__kstrtab_inet_diag_register, ptr @__kstrtabns_inet_diag_register }, section "___ksymtab_gpl+inet_diag_register", align 4
@__kstrtab_inet_diag_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet_diag_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_inet_diag_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet_diag_unregister to i32), ptr @__kstrtab_inet_diag_unregister, ptr @__kstrtabns_inet_diag_unregister }, section "___ksymtab_gpl+inet_diag_unregister", align 4
@inet6_diag_handler = internal constant %struct.sock_diag_handler { i8 10, ptr @inet_diag_handler_cmd, ptr @inet_diag_handler_get_info, ptr @inet_diag_handler_cmd }, align 4
@inet_diag_handler = internal constant %struct.sock_diag_handler { i8 2, ptr @inet_diag_handler_cmd, ptr @inet_diag_handler_get_info, ptr @inet_diag_handler_cmd }, align 4
@__initcall__kmod_inet_diag__546_1480_inet_diag_init6 = internal global ptr @inet_diag_init, section ".initcall6.init", align 4
@__exitcall_inet_diag_exit = internal global ptr @inet_diag_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file547 = internal constant [34 x i8] c"inet_diag.file=net/ipv4/inet_diag\00", section ".modinfo", align 1
@__UNIQUE_ID_license548 = internal constant [22 x i8] c"inet_diag.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias549 = internal constant [41 x i8] c"inet_diag.alias=net-pf-16-proto-4-type-2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias550 = internal constant [42 x i8] c"inet_diag.alias=net-pf-16-proto-4-type-10\00", section ".modinfo", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"include/net/netlink.h\00", align 1
@init_net = external dso_local global %struct.net, align 64
@__const.inet_diag_handler_cmd.c = private unnamed_addr constant %struct.netlink_dump_control { ptr @inet_diag_dump_start, ptr @inet_diag_dump, ptr @inet_diag_dump_done, ptr null, ptr null, i32 0 }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__const.inet_diag_rcv_msg_compat.c = private unnamed_addr constant %struct.netlink_dump_control { ptr @inet_diag_dump_start_compat, ptr @inet_diag_dump_compat, ptr @inet_diag_dump_done, ptr null, ptr null, i32 0 }, align 4
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_alias549, ptr @__UNIQUE_ID_alias550, ptr @__UNIQUE_ID_file547, ptr @__UNIQUE_ID_license548, ptr @__exitcall_inet_diag_exit, ptr @__initcall__kmod_inet_diag__546_1480_inet_diag_init6, ptr @__ksymtab_inet_diag_bc_sk, ptr @__ksymtab_inet_diag_dump_icsk, ptr @__ksymtab_inet_diag_dump_one_icsk, ptr @__ksymtab_inet_diag_find_one_icsk, ptr @__ksymtab_inet_diag_msg_attrs_fill, ptr @__ksymtab_inet_diag_msg_common_fill, ptr @__ksymtab_inet_diag_register, ptr @__ksymtab_inet_diag_unregister, ptr @__ksymtab_inet_sk_diag_fill, ptr @inet_diag_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_diag_msg_common_fill(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 3
  %4 = load i16, ptr %3, align 8
  %5 = trunc i16 %4 to i8
  store i8 %5, ptr %0, align 4
  %6 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 2
  %7 = getelementptr inbounds %struct.anon.2, ptr %6, i32 0, i32 1
  %8 = load i16, ptr %7, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %10 = getelementptr inbounds %struct.inet_diag_msg, ptr %0, i32 0, i32 4
  store i16 %9, ptr %10, align 4
  %11 = load i16, ptr %6, align 4
  %12 = getelementptr inbounds %struct.inet_diag_msg, ptr %0, i32 0, i32 4, i32 1
  store i16 %11, ptr %12, align 2
  %13 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.inet_diag_msg, ptr %0, i32 0, i32 4, i32 4
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.inet_diag_msg, ptr %0, i32 0, i32 4, i32 5
  tail call void @sock_diag_save_cookie(ptr noundef %1, ptr noundef %16) #12
  %17 = load i16, ptr %3, align 8
  %18 = icmp eq i16 %17, 10
  %19 = getelementptr inbounds %struct.inet_diag_msg, ptr %0, i32 0, i32 4, i32 2
  br i1 %18, label %20, label %24

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %19, ptr noundef align 4 dereferenceable(16) %21, i32 16, i1 false)
  %22 = getelementptr inbounds %struct.inet_diag_msg, ptr %0, i32 0, i32 4, i32 3
  %23 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %22, ptr noundef align 4 dereferenceable(16) %23, i32 16, i1 false)
  br label %29

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.inet_diag_msg, ptr %0, i32 0, i32 4, i32 3
  %26 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(32) %19, i8 0, i64 32, i1 false)
  %27 = load i32, ptr %26, align 4
  store i32 %27, ptr %19, align 4
  %28 = load i32, ptr %1, align 8
  store i32 %28, ptr %25, align 4
  br label %29

29:                                               ; preds = %24, %20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_diag_save_cookie(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_diag_msg_attrs_fill(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture readnone %4, i1 noundef zeroext %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca %struct.inet_diag_sockopt, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #12
  %14 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 66
  %15 = load i8, ptr %14, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #12
  store i8 %15, ptr %12, align 1
  %16 = call i32 @nla_put(ptr noundef %1, i32 noundef 8, i32 noundef 1, ptr noundef nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %89

18:                                               ; preds = %6
  %19 = and i32 %3, 16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %23 = load i8, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #12
  store i8 %23, ptr %11, align 1
  %24 = call i32 @nla_put(ptr noundef %1, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #12
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %89, label %26

26:                                               ; preds = %21, %18
  %27 = load i8, ptr %2, align 4
  %28 = icmp eq i8 %27, 10
  br i1 %28, label %29, label %62

29:                                               ; preds = %26
  %30 = and i32 %3, 32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %34 = load volatile i8, ptr %33, align 2
  %35 = zext i8 %34 to i32
  %36 = shl nuw i32 1, %35
  %37 = and i32 %36, -4161
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8
  br label %42

42:                                               ; preds = %39, %32
  %43 = phi ptr [ %41, %39 ], [ null, %32 ]
  %44 = getelementptr inbounds %struct.ipv6_pinfo, ptr %43, i32 0, i32 11
  %45 = load i8, ptr %44, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #12
  store i8 %45, ptr %10, align 1
  %46 = call i32 @nla_put(ptr noundef %1, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #12
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %89, label %48

48:                                               ; preds = %42, %29
  %49 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %50 = load volatile i8, ptr %49, align 2
  %51 = zext i8 %50 to i32
  %52 = shl nuw i32 1, %51
  %53 = and i32 %52, 1152
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 5
  %57 = load i8, ptr %56, align 1
  %58 = lshr i8 %57, 5
  %59 = and i8 %58, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #12
  store i8 %59, ptr %9, align 1
  %60 = call i32 @nla_put(ptr noundef %1, i32 noundef 11, i32 noundef 1, ptr noundef nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #12
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %89

62:                                               ; preds = %55, %48, %26
  br i1 %5, label %63, label %68

63:                                               ; preds = %62
  %64 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 34
  %65 = load i32, ptr %64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 %65, ptr %8, align 4
  %66 = call i32 @nla_put(ptr noundef %1, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %63, %62
  %69 = and i32 %3, 65568
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 33
  %73 = load i32, ptr %72, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 %73, ptr %7, align 4
  %74 = call i32 @nla_put(ptr noundef %1, i32 noundef 17, i32 noundef 4, ptr noundef nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %71, %68
  %77 = call i32 @sock_i_uid(ptr noundef %0) #12
  %78 = icmp eq i32 %77, -1
  %79 = load i32, ptr @overflowuid, align 4
  %80 = select i1 %78, i32 %79, i32 %77
  %81 = getelementptr inbounds %struct.inet_diag_msg, ptr %2, i32 0, i32 8
  store i32 %80, ptr %81, align 4
  %82 = call i32 @sock_i_ino(ptr noundef %0) #12
  %83 = getelementptr inbounds %struct.inet_diag_msg, ptr %2, i32 0, i32 9
  store i32 %82, ptr %83, align 4
  %84 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %85 = load i16, ptr %84, align 8
  %86 = and i16 %85, 2047
  store i16 %86, ptr %13, align 2
  %87 = call i32 @nla_put(ptr noundef %1, i32 noundef 22, i32 noundef 2, ptr noundef nonnull %13) #12
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %76, %71, %63, %55, %42, %21, %6
  br label %90

90:                                               ; preds = %89, %76
  %91 = phi i32 [ 1, %89 ], [ 0, %76 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #12
  ret i32 %91
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_uid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_ino(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_sk_diag_fill(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i16 noundef zeroext %5, i1 noundef zeroext %6) #0 {
  %8 = alloca i8, align 1
  %9 = alloca %struct.inet_diag_meminfo, align 4
  %10 = alloca %union.tcp_cc_info, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %4, i32 0, i32 2
  %13 = load i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.netlink_callback, ptr %3, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr @inet_diag_table, align 4
  %18 = getelementptr [4 x ptr], ptr %16, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %7
  %22 = getelementptr i8, ptr %19, i32 4
  %23 = load i32, ptr %22, align 4
  br label %28

24:                                               ; preds = %7
  %25 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %4, i32 0, i32 1
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i32 [ %23, %21 ], [ %27, %24 ]
  %30 = getelementptr ptr, ptr %17, i32 %29
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34, !prof !8

33:                                               ; preds = %28
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/inet_diag.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 250, 0\0A.popsection", ""() #12, !srcloc !9
  unreachable

34:                                               ; preds = %28
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 3, i32 12
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.netlink_callback, ptr %3, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.nlmsghdr, ptr %39, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nlmsghdr, ptr %39, i32 0, i32 1
  %43 = load i16, ptr %42, align 4
  %44 = zext i16 %43 to i32
  %45 = zext i16 %5 to i32
  %46 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 6
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %243

49:                                               ; preds = %34
  %50 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 15
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 14
  %53 = load ptr, ptr %52, align 8
  %54 = ptrtoint ptr %51 to i32
  %55 = ptrtoint ptr %53 to i32
  %56 = sub i32 %54, %55
  %57 = icmp slt i32 %56, 88
  br i1 %57, label %243, label %58, !prof !8

58:                                               ; preds = %49
  %59 = tail call ptr @__nlmsg_put(ptr noundef %2, i32 noundef %37, i32 noundef %41, i32 noundef %44, i32 noundef 72, i32 noundef %45) #12
  %60 = icmp eq ptr %59, null
  br i1 %60, label %243, label %61

61:                                               ; preds = %58
  %62 = getelementptr i8, ptr %59, i32 16
  %63 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %64 = load volatile i8, ptr %63, align 2
  %65 = zext i8 %64 to i32
  %66 = shl nuw i32 1, %65
  %67 = and i32 %66, -4161
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70, !prof !8

69:                                               ; preds = %61
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/inet_diag.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 258, 0\0A.popsection", ""() #12, !srcloc !10
  unreachable

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %72 = load i16, ptr %71, align 8
  %73 = trunc i16 %72 to i8
  store i8 %73, ptr %62, align 4
  %74 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %75 = getelementptr inbounds %struct.anon.2, ptr %74, i32 0, i32 1
  %76 = load i16, ptr %75, align 2
  %77 = tail call i16 @llvm.bswap.i16(i16 %76) #12
  %78 = getelementptr i8, ptr %59, i32 20
  store i16 %77, ptr %78, align 4
  %79 = load i16, ptr %74, align 4
  %80 = getelementptr i8, ptr %59, i32 22
  store i16 %79, ptr %80, align 2
  %81 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr i8, ptr %59, i32 56
  store i32 %82, ptr %83, align 4
  %84 = getelementptr i8, ptr %59, i32 60
  tail call void @sock_diag_save_cookie(ptr noundef %0, ptr noundef %84) #12
  %85 = load i16, ptr %71, align 8
  %86 = icmp eq i16 %85, 10
  %87 = getelementptr i8, ptr %59, i32 24
  br i1 %86, label %88, label %92

88:                                               ; preds = %70
  %89 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %87, ptr noundef align 4 dereferenceable(16) %89, i32 16, i1 false) #12
  %90 = getelementptr i8, ptr %59, i32 40
  %91 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %90, ptr noundef align 4 dereferenceable(16) %91, i32 16, i1 false) #12
  br label %97

92:                                               ; preds = %70
  %93 = getelementptr i8, ptr %59, i32 40
  %94 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(32) %87, i8 0, i64 32, i1 false) #12
  %95 = load i32, ptr %94, align 4
  store i32 %95, ptr %87, align 4
  %96 = load i32, ptr %0, align 8
  store i32 %96, ptr %93, align 4
  br label %97

97:                                               ; preds = %92, %88
  %98 = load volatile i8, ptr %63, align 2
  %99 = getelementptr i8, ptr %59, i32 17
  store i8 %98, ptr %99, align 1
  %100 = getelementptr i8, ptr %59, i32 18
  store i8 0, ptr %100, align 2
  %101 = getelementptr i8, ptr %59, i32 19
  store i8 0, ptr %101, align 1
  %102 = getelementptr i8, ptr %59, i32 68
  store i32 0, ptr %102, align 4
  %103 = tail call i32 @inet_diag_msg_attrs_fill(ptr noundef %0, ptr noundef %2, ptr noundef %62, i32 noundef %14, ptr undef, i1 noundef zeroext %6)
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %232

105:                                              ; preds = %97
  %106 = and i32 %14, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %123, label %108

108:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #12
  %109 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 9
  %110 = load volatile i32, ptr %109, align 4
  store i32 %110, ptr %9, align 4
  %111 = getelementptr inbounds %struct.inet_diag_meminfo, ptr %9, i32 0, i32 1
  %112 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 22
  %113 = load volatile i32, ptr %112, align 4
  store i32 %113, ptr %111, align 4
  %114 = getelementptr inbounds %struct.inet_diag_meminfo, ptr %9, i32 0, i32 2
  %115 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 11
  %116 = load i32, ptr %115, align 4
  store i32 %116, ptr %114, align 4
  %117 = getelementptr inbounds %struct.inet_diag_meminfo, ptr %9, i32 0, i32 3
  %118 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 23
  %119 = load volatile i32, ptr %118, align 4
  %120 = add i32 %119, -1
  store i32 %120, ptr %117, align 4
  %121 = call i32 @nla_put(ptr noundef %2, i32 noundef 1, i32 noundef 16, ptr noundef nonnull %9) #12
  %122 = icmp slt i32 %121, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #12
  br i1 %122, label %232, label %123

123:                                              ; preds = %108, %105
  %124 = and i32 %14, 64
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %123
  %127 = call i32 @sock_diag_put_meminfo(ptr noundef %0, ptr noundef %2, i32 noundef 7) #12
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %232

129:                                              ; preds = %126, %123
  %130 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %131 = load i16, ptr %130, align 2
  %132 = icmp eq i16 %131, 3
  br i1 %132, label %133, label %139

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %135 = load i16, ptr %134, align 4
  %136 = trunc i16 %135 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #12
  store i8 %136, ptr %8, align 1
  %137 = call i32 @nla_put(ptr noundef %2, i32 noundef 10, i32 noundef 1, ptr noundef nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #12
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %232

139:                                              ; preds = %133, %129
  %140 = icmp eq ptr %1, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %139
  %142 = getelementptr inbounds %struct.inet_diag_handler, ptr %31, i32 0, i32 2
  %143 = load ptr, ptr %142, align 4
  call void %143(ptr noundef %0, ptr noundef %62, ptr noundef null) #12
  br label %227

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 19
  %146 = load i8, ptr %145, align 2
  switch i8 %146, label %155 [
    i8 1, label %147
    i8 6, label %147
    i8 5, label %147
    i8 3, label %151
  ]

147:                                              ; preds = %144, %144, %144
  store i8 1, ptr %100, align 2
  %148 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 18
  %149 = load i8, ptr %148, align 1
  store i8 %149, ptr %101, align 1
  %150 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 3
  br label %163

151:                                              ; preds = %144
  store i8 4, ptr %100, align 2
  %152 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 22
  %153 = load i8, ptr %152, align 1
  store i8 %153, ptr %101, align 1
  %154 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 3
  br label %163

155:                                              ; preds = %144
  %156 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 32, i32 0, i32 1
  %157 = load volatile ptr, ptr %156, align 4
  %158 = icmp eq ptr %157, null
  br i1 %158, label %170, label %159

159:                                              ; preds = %155
  store i8 2, ptr %100, align 2
  %160 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 22
  %161 = load i8, ptr %160, align 1
  store i8 %161, ptr %101, align 1
  %162 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 32, i32 1
  br label %163

163:                                              ; preds = %159, %151, %147
  %164 = phi ptr [ %154, %151 ], [ %162, %159 ], [ %150, %147 ]
  %165 = load i32, ptr %164, align 8
  %166 = load volatile i32, ptr @jiffies, align 64
  %167 = sub i32 %165, %166
  %168 = call i32 @llvm.smax.i32(i32 %167, i32 0) #12
  %169 = call i32 @jiffies_to_msecs(i32 noundef %168) #12
  store i32 %169, ptr %102, align 4
  br label %170

170:                                              ; preds = %163, %155
  %171 = and i32 %14, 2
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %183, label %173

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.inet_diag_handler, ptr %31, i32 0, i32 7
  %175 = load i16, ptr %174, align 2
  %176 = icmp eq i16 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %173
  %178 = zext i16 %175 to i32
  %179 = call ptr @nla_reserve_64bit(ptr noundef %2, i32 noundef 2, i32 noundef %178, i32 noundef 14) #12
  %180 = icmp eq ptr %179, null
  br i1 %180, label %232, label %181

181:                                              ; preds = %177
  %182 = getelementptr i8, ptr %179, i32 4
  br label %183

183:                                              ; preds = %181, %173, %170
  %184 = phi ptr [ %182, %181 ], [ null, %173 ], [ null, %170 ]
  %185 = and i32 %14, 8
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %196, label %187

187:                                              ; preds = %183
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %188 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 10
  %189 = load volatile ptr, ptr %188, align 4
  %190 = icmp eq ptr %189, null
  br i1 %190, label %195, label %191

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %189, i32 0, i32 11
  %193 = call fastcc i32 @nla_put_string(ptr noundef %2, ptr noundef %192)
  %194 = icmp slt i32 %193, 0
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  br i1 %194, label %232, label %196

195:                                              ; preds = %187
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  br label %196

196:                                              ; preds = %195, %191, %183
  %197 = getelementptr inbounds %struct.inet_diag_handler, ptr %31, i32 0, i32 2
  %198 = load ptr, ptr %197, align 4
  call void %198(ptr noundef %0, ptr noundef %62, ptr noundef %184) #12
  br i1 %172, label %206, label %199

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.inet_diag_handler, ptr %31, i32 0, i32 3
  %201 = load ptr, ptr %200, align 4
  %202 = icmp eq ptr %201, null
  br i1 %202, label %206, label %203

203:                                              ; preds = %199
  %204 = call i32 %201(ptr noundef %0, i1 noundef zeroext %6, ptr noundef %2) #12
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %232, label %206

206:                                              ; preds = %203, %199, %196
  %207 = load volatile i8, ptr %63, align 2
  %208 = icmp ult i8 %207, 6
  br i1 %208, label %209, label %227

209:                                              ; preds = %206
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %10) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %10, i8 0, i32 20, i1 false), !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #12
  store i32 0, ptr %11, align 4, !annotation !13
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %210 = getelementptr inbounds %struct.inet_connection_sock, ptr %1, i32 0, i32 10
  %211 = load volatile ptr, ptr %210, align 4
  %212 = icmp eq ptr %211, null
  br i1 %212, label %217, label %213

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.tcp_congestion_ops, ptr %211, i32 0, i32 10
  %215 = load ptr, ptr %214, align 8
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %218

217:                                              ; preds = %213, %209
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  br label %225

218:                                              ; preds = %213
  %219 = call i32 %215(ptr noundef %0, i32 noundef %14, ptr noundef nonnull %11, ptr noundef nonnull %10) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %225, label %221

221:                                              ; preds = %218
  %222 = load i32, ptr %11, align 4
  %223 = call i32 @nla_put(ptr noundef %2, i32 noundef %222, i32 noundef %219, ptr noundef nonnull %10) #12
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %221, %218, %217
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %10) #12
  br label %227

226:                                              ; preds = %221
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %10) #12
  br label %232

227:                                              ; preds = %225, %206, %141
  %228 = load ptr, ptr %52, align 8
  %229 = ptrtoint ptr %228 to i32
  %230 = ptrtoint ptr %59 to i32
  %231 = sub i32 %229, %230
  store i32 %231, ptr %59, align 4
  br label %243

232:                                              ; preds = %226, %203, %191, %177, %133, %126, %108, %97
  %233 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %234 = load ptr, ptr %233, align 4
  %235 = icmp ugt ptr %234, %59
  br i1 %235, label %236, label %238, !prof !8

236:                                              ; preds = %232
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  %237 = load ptr, ptr %233, align 4
  br label %238

238:                                              ; preds = %236, %232
  %239 = phi ptr [ %237, %236 ], [ %234, %232 ]
  %240 = ptrtoint ptr %59 to i32
  %241 = ptrtoint ptr %239 to i32
  %242 = sub i32 %240, %241
  call void @skb_trim(ptr noundef %2, i32 noundef %242) #12
  br label %243

243:                                              ; preds = %238, %227, %58, %49, %34
  %244 = phi i32 [ -90, %238 ], [ 0, %227 ], [ -90, %58 ], [ -90, %49 ], [ -90, %34 ]
  ret i32 %244
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_diag_put_meminfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve_64bit(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nla_put_string(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = tail call i32 @strlen(ptr noundef %1)
  %4 = add i32 %3, 1
  %5 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef %4, ptr noundef %1) #12
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @inet_diag_find_one_icsk(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %4 = load i8, ptr %2, align 4
  switch i8 %4, label %117 [
    i8 2, label %5
    i8 10, label %46
  ]

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %2, i32 0, i32 5
  %7 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %2, i32 0, i32 5, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %2, i32 0, i32 5, i32 1
  %10 = load i16, ptr %9, align 2
  %11 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %2, i32 0, i32 5, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = load i16, ptr %6, align 4
  %14 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %2, i32 0, i32 5, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = tail call i16 @llvm.bswap.i16(i16 %13) #12
  %17 = tail call ptr @__inet_lookup_established(ptr noundef %0, ptr noundef %1, i32 noundef %8, i16 noundef zeroext %10, i32 noundef %12, i16 noundef zeroext %16, i32 noundef %15, i32 noundef 0) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %119

19:                                               ; preds = %5
  %20 = tail call ptr @__inet_lookup_listener(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef %8, i16 noundef zeroext %10, i32 noundef %12, i16 noundef zeroext %16, i32 noundef %15, i32 noundef 0) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %118, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.sock_common, ptr %20, i32 0, i32 19
  %24 = load volatile i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %36, %22
  %27 = phi i32 [ %34, %36 ], [ %24, %22 ]
  %28 = add i32 %27, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #12, !srcloc !14
  br label %29

29:                                               ; preds = %29, %26
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 %27, i32 %28, ptr elementtype(i32) %23) #12, !srcloc !15
  %31 = extractvalue { i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %29

33:                                               ; preds = %29
  %34 = extractvalue { i32, i32 } %30, 1
  %35 = icmp eq i32 %34, %27
  br i1 %35, label %38, label %36, !prof !16

36:                                               ; preds = %33
  %37 = icmp eq i32 %34, 0
  br i1 %37, label %38, label %26

38:                                               ; preds = %36, %33, %22
  %39 = phi i32 [ 0, %22 ], [ %27, %33 ], [ 0, %36 ]
  %40 = add i32 %39, 1
  %41 = or i32 %40, %39
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %44, label %43, !prof !16

43:                                               ; preds = %38
  tail call void @refcount_warn_saturate(ptr noundef %23, i32 noundef 0) #12
  br label %44

44:                                               ; preds = %43, %38
  %45 = icmp eq i32 %39, 0
  br i1 %45, label %118, label %121

46:                                               ; preds = %3
  %47 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %2, i32 0, i32 5
  %48 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %2, i32 0, i32 5, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr %struct.inet_diag_req_v2, ptr %2, i32 0, i32 5, i32 3, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = or i32 %51, %49
  %53 = getelementptr %struct.inet_diag_req_v2, ptr %2, i32 0, i32 5, i32 3, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = xor i32 %54, -65536
  %56 = or i32 %52, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %109

58:                                               ; preds = %46
  %59 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %2, i32 0, i32 5, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr %struct.inet_diag_req_v2, ptr %2, i32 0, i32 5, i32 2, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = or i32 %62, %60
  %64 = getelementptr %struct.inet_diag_req_v2, ptr %2, i32 0, i32 5, i32 2, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = xor i32 %65, -65536
  %67 = or i32 %63, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %109

69:                                               ; preds = %58
  %70 = getelementptr %struct.inet_diag_req_v2, ptr %2, i32 0, i32 5, i32 3, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %2, i32 0, i32 5, i32 1
  %73 = load i16, ptr %72, align 2
  %74 = getelementptr %struct.inet_diag_req_v2, ptr %2, i32 0, i32 5, i32 2, i32 3
  %75 = load i32, ptr %74, align 4
  %76 = load i16, ptr %47, align 4
  %77 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %2, i32 0, i32 5, i32 4
  %78 = load i32, ptr %77, align 4
  %79 = tail call i16 @llvm.bswap.i16(i16 %76) #12
  %80 = tail call ptr @__inet_lookup_established(ptr noundef %0, ptr noundef %1, i32 noundef %71, i16 noundef zeroext %73, i32 noundef %75, i16 noundef zeroext %79, i32 noundef %78, i32 noundef 0) #12
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %119

82:                                               ; preds = %69
  %83 = tail call ptr @__inet_lookup_listener(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef %71, i16 noundef zeroext %73, i32 noundef %75, i16 noundef zeroext %79, i32 noundef %78, i32 noundef 0) #12
  %84 = icmp eq ptr %83, null
  br i1 %84, label %118, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.sock_common, ptr %83, i32 0, i32 19
  %87 = load volatile i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %101, label %89

89:                                               ; preds = %99, %85
  %90 = phi i32 [ %97, %99 ], [ %87, %85 ]
  %91 = add i32 %90, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %86) #12, !srcloc !14
  br label %92

92:                                               ; preds = %92, %89
  %93 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %86, ptr %86, i32 %90, i32 %91, ptr elementtype(i32) %86) #12, !srcloc !15
  %94 = extractvalue { i32, i32 } %93, 0
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %92

96:                                               ; preds = %92
  %97 = extractvalue { i32, i32 } %93, 1
  %98 = icmp eq i32 %97, %90
  br i1 %98, label %101, label %99, !prof !16

99:                                               ; preds = %96
  %100 = icmp eq i32 %97, 0
  br i1 %100, label %101, label %89

101:                                              ; preds = %99, %96, %85
  %102 = phi i32 [ 0, %85 ], [ %90, %96 ], [ 0, %99 ]
  %103 = add i32 %102, 1
  %104 = or i32 %103, %102
  %105 = icmp sgt i32 %104, -1
  br i1 %105, label %107, label %106, !prof !16

106:                                              ; preds = %101
  tail call void @refcount_warn_saturate(ptr noundef %86, i32 noundef 0) #12
  br label %107

107:                                              ; preds = %106, %101
  %108 = icmp eq i32 %102, 0
  br i1 %108, label %118, label %121

109:                                              ; preds = %58, %46
  %110 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %2, i32 0, i32 5, i32 1
  %111 = load i16, ptr %110, align 2
  %112 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %2, i32 0, i32 5, i32 2
  %113 = load i16, ptr %47, align 4
  %114 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %2, i32 0, i32 5, i32 4
  %115 = load i32, ptr %114, align 4
  %116 = tail call ptr @inet6_lookup(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef %48, i16 noundef zeroext %111, ptr noundef %112, i16 noundef zeroext %113, i32 noundef %115) #12
  br label %121

117:                                              ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  br label %130

118:                                              ; preds = %107, %82, %44, %19
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  br label %130

119:                                              ; preds = %69, %5
  %120 = phi ptr [ %80, %69 ], [ %17, %5 ]
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  br label %124

121:                                              ; preds = %109, %107, %44
  %122 = phi ptr [ %116, %109 ], [ %20, %44 ], [ %83, %107 ]
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !12
  %123 = icmp eq ptr %122, null
  br i1 %123, label %130, label %124

124:                                              ; preds = %121, %119
  %125 = phi ptr [ %120, %119 ], [ %122, %121 ]
  %126 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %2, i32 0, i32 5, i32 5
  %127 = tail call i32 @sock_diag_check_cookie(ptr noundef nonnull %125, ptr noundef %126) #12
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %124
  tail call void @sock_gen_put(ptr noundef nonnull %125) #12
  br label %130

130:                                              ; preds = %129, %124, %121, %118, %117
  %131 = phi ptr [ inttoptr (i32 -2 to ptr), %129 ], [ inttoptr (i32 -22 to ptr), %117 ], [ %125, %124 ], [ inttoptr (i32 -2 to ptr), %118 ], [ inttoptr (i32 -2 to ptr), %121 ]
  ret ptr %131
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet6_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_diag_check_cookie(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_gen_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_diag_dump_one_icsk(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = tail call zeroext i1 @netlink_net_capable(ptr noundef %4, i32 noundef 12) #12
  %6 = tail call ptr @inet_diag_find_one_icsk(ptr noundef nonnull @init_net, ptr noundef %0, ptr noundef %2)
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = ptrtoint ptr %6 to i32
  br label %47

10:                                               ; preds = %3
  %11 = load ptr, ptr @inet_diag_table, align 4
  %12 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %2, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr ptr, ptr %11, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.inet_diag_handler, ptr %16, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = tail call i32 %20(ptr noundef %6, i1 noundef zeroext %5) #12
  %24 = add i32 %23, 551
  %25 = and i32 %24, -4
  br label %26

26:                                               ; preds = %22, %18, %10
  %27 = phi i32 [ %25, %22 ], [ 548, %18 ], [ 548, %10 ]
  %28 = tail call ptr @__alloc_skb(i32 noundef %27, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %26
  %31 = tail call fastcc i32 @sk_diag_fill(ptr noundef %6, ptr noundef nonnull %28, ptr noundef %1, ptr noundef %2, i16 noundef zeroext 0, i1 noundef zeroext %5)
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = icmp eq i32 %31, -90
  br i1 %34, label %35, label %36, !prof !8

35:                                               ; preds = %33
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 577, i32 noundef 9, ptr noundef null) #12
  br label %36

36:                                               ; preds = %35, %33
  tail call void @kfree_skb_reason(ptr noundef nonnull %28, i32 noundef 0) #12
  br label %43

37:                                               ; preds = %30
  %38 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 44), align 4
  %39 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3, i32 12
  %40 = load i32, ptr %39, align 4
  %41 = tail call i32 @netlink_unicast(ptr noundef %38, ptr noundef nonnull %28, i32 noundef %40, i32 noundef 64) #12
  %42 = tail call i32 @llvm.smin.i32(i32 %41, i32 0) #12
  br label %43

43:                                               ; preds = %37, %36, %26
  %44 = phi i32 [ %31, %36 ], [ %42, %37 ], [ -12, %26 ]
  %45 = icmp eq ptr %6, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call void @sock_gen_put(ptr noundef nonnull %6) #12
  br label %47

47:                                               ; preds = %46, %43, %8
  %48 = phi i32 [ %9, %8 ], [ %44, %46 ], [ %44, %43 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_net_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sk_diag_fill(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i16 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %10 = load volatile i8, ptr %9, align 2
  %11 = icmp eq i8 %10, 6
  br i1 %11, label %12, label %106

12:                                               ; preds = %6
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 3, i32 12
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.netlink_callback, ptr %2, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nlmsghdr, ptr %17, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nlmsghdr, ptr %17, i32 0, i32 1
  %21 = load i16, ptr %20, align 4
  %22 = zext i16 %21 to i32
  %23 = zext i16 %4 to i32
  %24 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %201

27:                                               ; preds = %12
  %28 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %31 = load ptr, ptr %30, align 8
  %32 = ptrtoint ptr %29 to i32
  %33 = ptrtoint ptr %31 to i32
  %34 = sub i32 %32, %33
  %35 = icmp slt i32 %34, 88
  br i1 %35, label %201, label %36, !prof !8

36:                                               ; preds = %27
  %37 = tail call ptr @__nlmsg_put(ptr noundef %1, i32 noundef %15, i32 noundef %19, i32 noundef %22, i32 noundef 72, i32 noundef %23) #12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %201, label %39

39:                                               ; preds = %36
  %40 = load volatile i8, ptr %9, align 2
  %41 = icmp eq i8 %40, 6
  br i1 %41, label %43, label %42, !prof !16

42:                                               ; preds = %39
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/inet_diag.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 431, 0\0A.popsection", ""() #12, !srcloc !17
  unreachable

43:                                               ; preds = %39
  %44 = getelementptr i8, ptr %37, i32 16
  %45 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %46 = load i16, ptr %45, align 8
  %47 = trunc i16 %46 to i8
  store i8 %47, ptr %44, align 4
  %48 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %49 = getelementptr inbounds %struct.anon.2, ptr %48, i32 0, i32 1
  %50 = load i16, ptr %49, align 2
  %51 = tail call i16 @llvm.bswap.i16(i16 %50) #12
  %52 = getelementptr i8, ptr %37, i32 20
  store i16 %51, ptr %52, align 4
  %53 = load i16, ptr %48, align 4
  %54 = getelementptr i8, ptr %37, i32 22
  store i16 %53, ptr %54, align 2
  %55 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr i8, ptr %37, i32 56
  store i32 %56, ptr %57, align 4
  %58 = getelementptr i8, ptr %37, i32 60
  tail call void @sock_diag_save_cookie(ptr noundef %0, ptr noundef %58) #12
  %59 = load i16, ptr %45, align 8
  %60 = icmp eq i16 %59, 10
  %61 = getelementptr i8, ptr %37, i32 24
  br i1 %60, label %62, label %66

62:                                               ; preds = %43
  %63 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %61, ptr noundef align 4 dereferenceable(16) %63, i32 16, i1 false) #12
  %64 = getelementptr i8, ptr %37, i32 40
  %65 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %64, ptr noundef align 4 dereferenceable(16) %65, i32 16, i1 false) #12
  br label %71

66:                                               ; preds = %43
  %67 = getelementptr i8, ptr %37, i32 40
  %68 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(32) %61, i8 0, i64 32, i1 false) #12
  %69 = load i32, ptr %68, align 4
  store i32 %69, ptr %61, align 4
  %70 = load i32, ptr %0, align 8
  store i32 %70, ptr %67, align 4
  br label %71

71:                                               ; preds = %66, %62
  %72 = getelementptr i8, ptr %37, i32 19
  store i8 0, ptr %72, align 1
  %73 = getelementptr inbounds %struct.inet_timewait_sock, ptr %0, i32 0, i32 2
  %74 = load volatile i8, ptr %73, align 4
  %75 = getelementptr i8, ptr %37, i32 17
  store i8 %74, ptr %75, align 1
  %76 = getelementptr i8, ptr %37, i32 18
  store i8 3, ptr %76, align 2
  %77 = getelementptr inbounds %struct.inet_timewait_sock, ptr %0, i32 0, i32 8, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = load volatile i32, ptr @jiffies, align 64
  %80 = sub i32 %78, %79
  %81 = tail call i32 @llvm.smax.i32(i32 %80, i32 0) #12
  %82 = tail call i32 @jiffies_to_msecs(i32 noundef %81) #12
  %83 = getelementptr i8, ptr %37, i32 68
  store i32 %82, ptr %83, align 4
  %84 = getelementptr i8, ptr %37, i32 72
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %84, i8 0, i64 16, i1 false) #12
  br i1 %5, label %85, label %101

85:                                               ; preds = %71
  %86 = getelementptr inbounds %struct.inet_timewait_sock, ptr %0, i32 0, i32 1
  %87 = load i32, ptr %86, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 %87, ptr %8, align 4
  %88 = call i32 @nla_put(ptr noundef %1, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %92 = load ptr, ptr %91, align 4
  %93 = icmp ugt ptr %92, %37
  br i1 %93, label %94, label %96, !prof !8

94:                                               ; preds = %90
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  %95 = load ptr, ptr %91, align 4
  br label %96

96:                                               ; preds = %94, %90
  %97 = phi ptr [ %95, %94 ], [ %92, %90 ]
  %98 = ptrtoint ptr %37 to i32
  %99 = ptrtoint ptr %97 to i32
  %100 = sub i32 %98, %99
  call void @skb_trim(ptr noundef %1, i32 noundef %100) #12
  br label %201

101:                                              ; preds = %85, %71
  %102 = load ptr, ptr %30, align 8
  %103 = ptrtoint ptr %102 to i32
  %104 = ptrtoint ptr %37 to i32
  %105 = sub i32 %103, %104
  store i32 %105, ptr %37, align 4
  br label %201

106:                                              ; preds = %6
  %107 = load volatile i8, ptr %9, align 2
  %108 = icmp eq i8 %107, 12
  br i1 %108, label %109, label %199

109:                                              ; preds = %106
  %110 = load ptr, ptr %2, align 4
  %111 = getelementptr inbounds %struct.sk_buff, ptr %110, i32 0, i32 3, i32 12
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr inbounds %struct.netlink_callback, ptr %2, i32 0, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.nlmsghdr, ptr %114, i32 0, i32 3
  %116 = load i32, ptr %115, align 4
  %117 = getelementptr inbounds %struct.nlmsghdr, ptr %114, i32 0, i32 1
  %118 = load i16, ptr %117, align 4
  %119 = zext i16 %118 to i32
  %120 = zext i16 %4 to i32
  %121 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %201

124:                                              ; preds = %109
  %125 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %128 = load ptr, ptr %127, align 8
  %129 = ptrtoint ptr %126 to i32
  %130 = ptrtoint ptr %128 to i32
  %131 = sub i32 %129, %130
  %132 = icmp slt i32 %131, 88
  br i1 %132, label %201, label %133, !prof !8

133:                                              ; preds = %124
  %134 = tail call ptr @__nlmsg_put(ptr noundef %1, i32 noundef %112, i32 noundef %116, i32 noundef %119, i32 noundef 72, i32 noundef %120) #12
  %135 = icmp eq ptr %134, null
  br i1 %135, label %201, label %136

136:                                              ; preds = %133
  %137 = getelementptr i8, ptr %134, i32 16
  %138 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 3
  %139 = load i16, ptr %138, align 8
  %140 = trunc i16 %139 to i8
  store i8 %140, ptr %137, align 4
  %141 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %142 = getelementptr inbounds %struct.anon.2, ptr %141, i32 0, i32 1
  %143 = load i16, ptr %142, align 2
  %144 = tail call i16 @llvm.bswap.i16(i16 %143) #12
  %145 = getelementptr i8, ptr %134, i32 20
  store i16 %144, ptr %145, align 4
  %146 = load i16, ptr %141, align 4
  %147 = getelementptr i8, ptr %134, i32 22
  store i16 %146, ptr %147, align 2
  %148 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %149 = load i32, ptr %148, align 4
  %150 = getelementptr i8, ptr %134, i32 56
  store i32 %149, ptr %150, align 4
  %151 = getelementptr i8, ptr %134, i32 60
  tail call void @sock_diag_save_cookie(ptr noundef %0, ptr noundef %151) #12
  %152 = load i16, ptr %138, align 8
  %153 = icmp eq i16 %152, 10
  %154 = getelementptr i8, ptr %134, i32 24
  br i1 %153, label %155, label %159

155:                                              ; preds = %136
  %156 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %154, ptr noundef align 4 dereferenceable(16) %156, i32 16, i1 false) #12
  %157 = getelementptr i8, ptr %134, i32 40
  %158 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %157, ptr noundef align 4 dereferenceable(16) %158, i32 16, i1 false) #12
  br label %164

159:                                              ; preds = %136
  %160 = getelementptr i8, ptr %134, i32 40
  %161 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(32) %154, i8 0, i64 32, i1 false) #12
  %162 = load i32, ptr %161, align 4
  store i32 %162, ptr %154, align 4
  %163 = load i32, ptr %0, align 8
  store i32 %163, ptr %160, align 4
  br label %164

164:                                              ; preds = %159, %155
  %165 = getelementptr i8, ptr %134, i32 17
  store i8 3, ptr %165, align 1
  %166 = getelementptr i8, ptr %134, i32 18
  store i8 1, ptr %166, align 2
  %167 = getelementptr inbounds %struct.request_sock, ptr %0, i32 0, i32 3
  %168 = load i8, ptr %167, align 2
  %169 = getelementptr i8, ptr %134, i32 19
  store i8 %168, ptr %169, align 1
  %170 = getelementptr inbounds %struct.request_sock, ptr %0, i32 0, i32 6, i32 1
  %171 = load i32, ptr %170, align 4
  %172 = load volatile i32, ptr @jiffies, align 64
  %173 = sub i32 %171, %172
  %174 = tail call i32 @llvm.smax.i32(i32 %173, i32 0) #12
  %175 = tail call i32 @jiffies_to_msecs(i32 noundef %174) #12
  %176 = getelementptr i8, ptr %134, i32 68
  store i32 %175, ptr %176, align 4
  %177 = getelementptr i8, ptr %134, i32 72
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %177, i8 0, i64 16, i1 false) #12
  br i1 %5, label %178, label %194

178:                                              ; preds = %164
  %179 = getelementptr inbounds %struct.inet_request_sock, ptr %0, i32 0, i32 2
  %180 = load i32, ptr %179, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 %180, ptr %7, align 4
  %181 = call i32 @nla_put(ptr noundef %1, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %194, label %183

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %185 = load ptr, ptr %184, align 4
  %186 = icmp ugt ptr %185, %134
  br i1 %186, label %187, label %189, !prof !8

187:                                              ; preds = %183
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  %188 = load ptr, ptr %184, align 4
  br label %189

189:                                              ; preds = %187, %183
  %190 = phi ptr [ %188, %187 ], [ %185, %183 ]
  %191 = ptrtoint ptr %134 to i32
  %192 = ptrtoint ptr %190 to i32
  %193 = sub i32 %191, %192
  call void @skb_trim(ptr noundef %1, i32 noundef %193) #12
  br label %201

194:                                              ; preds = %178, %164
  %195 = load ptr, ptr %127, align 8
  %196 = ptrtoint ptr %195 to i32
  %197 = ptrtoint ptr %134 to i32
  %198 = sub i32 %196, %197
  store i32 %198, ptr %134, align 4
  br label %201

199:                                              ; preds = %106
  %200 = tail call i32 @inet_sk_diag_fill(ptr noundef %0, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef zeroext %4, i1 noundef zeroext %5)
  br label %201

201:                                              ; preds = %199, %194, %189, %133, %124, %109, %101, %96, %36, %27, %12
  %202 = phi i32 [ %200, %199 ], [ -90, %96 ], [ 0, %101 ], [ -90, %36 ], [ -90, %27 ], [ -90, %12 ], [ -90, %189 ], [ 0, %194 ], [ -90, %133 ], [ -90, %124 ], [ -90, %109 ]
  ret i32 %202
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_diag_bc_sk(ptr noundef readonly %0, ptr noundef %1) #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %212, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 3
  %6 = load i16, ptr %5, align 8
  %7 = icmp eq i16 %6, 10
  %8 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 11
  %9 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 10
  %10 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %11 = select i1 %7, ptr %8, ptr %10
  %12 = select i1 %7, ptr %9, ptr %1
  %13 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 2
  %14 = getelementptr inbounds %struct.anon.2, ptr %13, i32 0, i32 1
  %15 = load i16, ptr %14, align 2
  %16 = load i16, ptr %13, align 4
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %18 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %21 = load volatile i8, ptr %20, align 2
  %22 = zext i8 %21 to i32
  %23 = shl nuw i32 1, %22
  %24 = and i32 %23, -4161
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 43
  %28 = load i8, ptr %27, align 8
  %29 = xor i8 %28, -1
  %30 = lshr i8 %29, 7
  %31 = zext i8 %30 to i32
  br label %32

32:                                               ; preds = %26, %4
  %33 = phi i32 [ %31, %26 ], [ 1, %4 ]
  %34 = load volatile i8, ptr %20, align 2
  %35 = zext i8 %34 to i32
  %36 = shl nuw i32 1, %35
  %37 = and i32 %36, -4161
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 34
  %41 = load i32, ptr %40, align 8
  br label %54

42:                                               ; preds = %32
  %43 = load volatile i8, ptr %20, align 2
  %44 = icmp eq i8 %43, 12
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.inet_request_sock, ptr %1, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  br label %54

48:                                               ; preds = %42
  %49 = load volatile i8, ptr %20, align 2
  %50 = icmp eq i8 %49, 6
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.inet_timewait_sock, ptr %1, i32 0, i32 1
  %53 = load i32, ptr %52, align 8
  br label %54

54:                                               ; preds = %51, %48, %45, %39
  %55 = phi i32 [ %41, %39 ], [ %47, %45 ], [ %53, %51 ], [ 0, %48 ]
  %56 = load i16, ptr %0, align 2
  %57 = zext i16 %56 to i32
  %58 = add nsw i32 %57, -4
  %59 = icmp ugt i16 %56, 4
  br i1 %59, label %60, label %208

60:                                               ; preds = %54
  %61 = getelementptr i8, ptr %0, i32 4
  br label %62

62:                                               ; preds = %203, %60
  %63 = phi ptr [ %61, %60 ], [ %205, %203 ]
  %64 = phi i32 [ %58, %60 ], [ %206, %203 ]
  %65 = load i8, ptr %63, align 2
  switch i8 %65, label %195 [
    i8 10, label %185
    i8 1, label %199
    i8 11, label %66
    i8 2, label %71
    i8 3, label %76
    i8 12, label %81
    i8 4, label %86
    i8 5, label %91
    i8 6, label %192
    i8 7, label %96
    i8 8, label %96
    i8 9, label %181
  ]

66:                                               ; preds = %62
  %67 = getelementptr %struct.inet_diag_bc_op, ptr %63, i32 1, i32 2
  %68 = load i16, ptr %67, align 2
  %69 = icmp eq i16 %15, %68
  %70 = zext i1 %69 to i32
  br label %192

71:                                               ; preds = %62
  %72 = getelementptr %struct.inet_diag_bc_op, ptr %63, i32 1, i32 2
  %73 = load i16, ptr %72, align 2
  %74 = icmp uge i16 %15, %73
  %75 = zext i1 %74 to i32
  br label %192

76:                                               ; preds = %62
  %77 = getelementptr %struct.inet_diag_bc_op, ptr %63, i32 1, i32 2
  %78 = load i16, ptr %77, align 2
  %79 = icmp ule i16 %15, %78
  %80 = zext i1 %79 to i32
  br label %192

81:                                               ; preds = %62
  %82 = getelementptr %struct.inet_diag_bc_op, ptr %63, i32 1, i32 2
  %83 = load i16, ptr %82, align 2
  %84 = icmp eq i16 %17, %83
  %85 = zext i1 %84 to i32
  br label %192

86:                                               ; preds = %62
  %87 = getelementptr %struct.inet_diag_bc_op, ptr %63, i32 1, i32 2
  %88 = load i16, ptr %87, align 2
  %89 = icmp uge i16 %17, %88
  %90 = zext i1 %89 to i32
  br label %192

91:                                               ; preds = %62
  %92 = getelementptr %struct.inet_diag_bc_op, ptr %63, i32 1, i32 2
  %93 = load i16, ptr %92, align 2
  %94 = icmp ule i16 %17, %93
  %95 = zext i1 %94 to i32
  br label %192

96:                                               ; preds = %62, %62
  %97 = getelementptr %struct.inet_diag_bc_op, ptr %63, i32 1
  %98 = getelementptr %struct.inet_diag_bc_op, ptr %63, i32 2
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = icmp eq i8 %65, 7
  %103 = select i1 %102, i16 %15, i16 %17
  %104 = zext i16 %103 to i32
  %105 = icmp eq i32 %99, %104
  br i1 %105, label %106, label %199

106:                                              ; preds = %101, %96
  %107 = icmp eq i8 %65, 7
  %108 = select i1 %107, ptr %11, ptr %12
  %109 = load i8, ptr %97, align 4
  %110 = icmp eq i8 %109, 0
  %111 = zext i8 %109 to i16
  %112 = icmp eq i16 %6, %111
  %113 = select i1 %110, i1 true, i1 %112
  br i1 %113, label %154, label %114

114:                                              ; preds = %106
  %115 = icmp eq i8 %109, 2
  %116 = select i1 %7, i1 %115, i1 false
  br i1 %116, label %117, label %199

117:                                              ; preds = %114
  %118 = load i32, ptr %108, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %199

120:                                              ; preds = %117
  %121 = getelementptr i32, ptr %108, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %199

124:                                              ; preds = %120
  %125 = getelementptr i32, ptr %108, i32 2
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq i32 %126, -65536
  br i1 %127, label %128, label %199

128:                                              ; preds = %124
  %129 = getelementptr i32, ptr %108, i32 3
  %130 = getelementptr %struct.inet_diag_bc_op, ptr %63, i32 3
  %131 = getelementptr %struct.inet_diag_bc_op, ptr %63, i32 1, i32 1
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i32
  %134 = lshr i32 %133, 5
  %135 = and i32 %133, 31
  %136 = icmp ult i8 %132, 32
  br i1 %136, label %141, label %137

137:                                              ; preds = %128
  %138 = shl nuw nsw i32 %134, 2
  %139 = tail call i32 @bcmp(ptr %129, ptr %130, i32 %138) #12
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %199

141:                                              ; preds = %137, %128
  %142 = icmp eq i32 %135, 0
  br i1 %142, label %195, label %143

143:                                              ; preds = %141
  %144 = getelementptr i32, ptr %129, i32 %134
  %145 = load i32, ptr %144, align 4
  %146 = getelementptr i32, ptr %130, i32 %134
  %147 = load i32, ptr %146, align 4
  %148 = sub nuw nsw i32 32, %135
  %149 = shl nsw i32 -1, %148
  %150 = tail call i32 @llvm.bswap.i32(i32 %149) #12
  %151 = xor i32 %147, %145
  %152 = and i32 %151, %150
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %195, label %199

154:                                              ; preds = %106
  %155 = getelementptr %struct.inet_diag_bc_op, ptr %63, i32 1, i32 1
  %156 = load i8, ptr %155, align 1
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %195, label %158

158:                                              ; preds = %154
  %159 = zext i8 %156 to i32
  %160 = getelementptr %struct.inet_diag_bc_op, ptr %63, i32 3
  %161 = lshr i32 %159, 5
  %162 = and i32 %159, 31
  %163 = icmp ult i8 %156, 32
  br i1 %163, label %168, label %164

164:                                              ; preds = %158
  %165 = shl nuw nsw i32 %161, 2
  %166 = tail call i32 @bcmp(ptr %108, ptr %160, i32 %165) #12
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %199

168:                                              ; preds = %164, %158
  %169 = icmp eq i32 %162, 0
  br i1 %169, label %195, label %170

170:                                              ; preds = %168
  %171 = getelementptr i32, ptr %108, i32 %161
  %172 = load i32, ptr %171, align 4
  %173 = getelementptr i32, ptr %160, i32 %161
  %174 = load i32, ptr %173, align 4
  %175 = sub nuw nsw i32 32, %162
  %176 = shl nsw i32 -1, %175
  %177 = tail call i32 @llvm.bswap.i32(i32 %176) #12
  %178 = xor i32 %174, %172
  %179 = and i32 %178, %177
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %195, label %199

181:                                              ; preds = %62
  %182 = getelementptr %struct.inet_diag_bc_op, ptr %63, i32 1
  %183 = load i32, ptr %182, align 4
  %184 = icmp eq i32 %183, %19
  br i1 %184, label %195, label %199

185:                                              ; preds = %62
  %186 = getelementptr %struct.inet_diag_bc_op, ptr %63, i32 1
  %187 = getelementptr %struct.inet_diag_bc_op, ptr %63, i32 2
  %188 = load i32, ptr %187, align 4
  %189 = and i32 %188, %55
  %190 = load i32, ptr %186, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %195, label %199

192:                                              ; preds = %91, %86, %81, %76, %71, %66, %62
  %193 = phi i32 [ %95, %91 ], [ %90, %86 ], [ %85, %81 ], [ %80, %76 ], [ %75, %71 ], [ %70, %66 ], [ %33, %62 ]
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %192, %185, %181, %170, %168, %154, %143, %141, %62
  %196 = getelementptr inbounds %struct.inet_diag_bc_op, ptr %63, i32 0, i32 1
  %197 = load i8, ptr %196, align 1
  %198 = zext i8 %197 to i32
  br label %203

199:                                              ; preds = %192, %185, %181, %170, %164, %143, %137, %124, %120, %117, %114, %101, %62
  %200 = getelementptr inbounds %struct.inet_diag_bc_op, ptr %63, i32 0, i32 2
  %201 = load i16, ptr %200, align 2
  %202 = zext i16 %201 to i32
  br label %203

203:                                              ; preds = %199, %195
  %204 = phi i32 [ %198, %195 ], [ %202, %199 ]
  %205 = getelementptr i8, ptr %63, i32 %204
  %206 = sub nsw i32 %64, %204
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %62, label %208

208:                                              ; preds = %203, %54
  %209 = phi i32 [ %58, %54 ], [ %206, %203 ]
  %210 = icmp eq i32 %209, 0
  %211 = zext i1 %210 to i32
  br label %212

212:                                              ; preds = %208, %2
  %213 = phi i32 [ %211, %208 ], [ 1, %2 ]
  ret i32 %213
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_diag_dump_icsk(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca [16 x ptr], align 4
  %6 = alloca [16 x i32], align 4
  %7 = load ptr, ptr %2, align 4
  %8 = tail call zeroext i1 @netlink_net_capable(ptr noundef %7, i32 noundef 12) #12
  %9 = getelementptr inbounds %struct.netlink_callback, ptr %2, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %3, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr [4 x ptr], ptr %10, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = shl i32 %12, 9
  %16 = and i32 %15, 4096
  %17 = or i32 %16, %12
  %18 = getelementptr inbounds %struct.netlink_callback, ptr %2, i32 0, i32 13
  %19 = getelementptr %struct.netlink_callback, ptr %2, i32 0, i32 13, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr %struct.netlink_callback, ptr %2, i32 0, i32 13, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %18, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %85

25:                                               ; preds = %4
  %26 = and i32 %12, 1024
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %84, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %3, i32 0, i32 5
  %30 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %3, i32 0, i32 5, i32 1
  %31 = load i16, ptr %30, align 2
  %32 = icmp eq i16 %31, 0
  %33 = icmp slt i32 %20, 32
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %84

35:                                               ; preds = %79, %28
  %36 = phi i32 [ %82, %79 ], [ %20, %28 ]
  %37 = phi i32 [ 0, %79 ], [ %22, %28 ]
  %38 = getelementptr %struct.inet_hashinfo, ptr %0, i32 0, i32 10, i32 %36
  tail call void @_raw_spin_lock(ptr noundef %38) #12
  %39 = getelementptr %struct.inet_hashinfo, ptr %0, i32 0, i32 10, i32 %36, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = ptrtoint ptr %40 to i32
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %79

44:                                               ; preds = %70, %35
  %45 = phi ptr [ %72, %70 ], [ %40, %35 ]
  %46 = phi i32 [ %71, %70 ], [ 0, %35 ]
  %47 = getelementptr i8, ptr %45, i32 -84
  %48 = icmp slt i32 %46, %37
  br i1 %48, label %70, label %49

49:                                               ; preds = %44
  %50 = load i8, ptr %3, align 4
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = getelementptr i8, ptr %45, i32 -68
  %54 = load i16, ptr %53, align 8
  %55 = zext i8 %50 to i16
  %56 = icmp eq i16 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %52, %49
  %58 = load i16, ptr %29, align 4
  %59 = getelementptr i8, ptr %45, i32 452
  %60 = load i16, ptr %59, align 8
  %61 = icmp eq i16 %58, %60
  %62 = icmp eq i16 %58, 0
  %63 = or i1 %62, %61
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = tail call i32 @inet_diag_bc_sk(ptr noundef %14, ptr noundef %47)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = tail call i32 @inet_sk_diag_fill(ptr noundef %47, ptr noundef %47, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef zeroext 2, i1 noundef zeroext %8)
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %67, %64, %57, %52, %44
  %71 = add i32 %46, 1
  %72 = load ptr, ptr %45, align 4
  %73 = ptrtoint ptr %72 to i32
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %44, label %79

76:                                               ; preds = %67
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  %77 = load i16, ptr %38, align 4
  %78 = add i16 %77, 1
  store i16 %78, ptr %38, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !21
  br label %255

79:                                               ; preds = %70, %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  %80 = load i16, ptr %38, align 4
  %81 = add i16 %80, 1
  store i16 %81, ptr %38, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !21
  %82 = add nsw i32 %36, 1
  %83 = icmp eq i32 %82, 32
  br i1 %83, label %84, label %35

84:                                               ; preds = %79, %28, %25
  store i32 1, ptr %18, align 4
  br label %85

85:                                               ; preds = %84, %4
  %86 = phi i32 [ 0, %84 ], [ %20, %4 ]
  %87 = phi i32 [ 0, %84 ], [ %22, %4 ]
  %88 = and i32 %17, -1025
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %258, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.inet_hashinfo, ptr %0, i32 0, i32 2
  %92 = load i32, ptr %91, align 8
  %93 = icmp ugt i32 %86, %92
  br i1 %93, label %255, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.inet_hashinfo, ptr %0, i32 0, i32 1
  %96 = getelementptr inbounds %struct.inet_hashinfo, ptr %0, i32 0, i32 3
  %97 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %3, i32 0, i32 5
  %98 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %3, i32 0, i32 5, i32 1
  br label %99

99:                                               ; preds = %249, %94
  %100 = phi i32 [ %92, %94 ], [ %250, %249 ]
  %101 = phi i32 [ %86, %94 ], [ %253, %249 ]
  %102 = phi i32 [ %87, %94 ], [ %252, %249 ]
  %103 = phi i32 [ %87, %94 ], [ %251, %249 ]
  %104 = load ptr, ptr %0, align 64
  %105 = getelementptr %struct.inet_ehash_bucket, ptr %104, i32 %101
  %106 = load ptr, ptr %95, align 4
  %107 = load i32, ptr %96, align 4
  %108 = and i32 %107, %101
  %109 = getelementptr %struct.spinlock, ptr %106, i32 %108
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %6, i8 0, i32 64, i1 false), !annotation !13
  %110 = load volatile ptr, ptr %105, align 4
  %111 = ptrtoint ptr %110 to i32
  %112 = and i32 %111, 1
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %249

114:                                              ; preds = %99
  %115 = icmp sgt i32 %101, %86
  %116 = select i1 %115, i32 0, i32 %103
  tail call void @_raw_spin_lock_bh(ptr noundef %109) #12
  %117 = load ptr, ptr %105, align 4
  %118 = ptrtoint ptr %117 to i32
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %238, %114
  %122 = phi ptr [ %240, %238 ], [ %117, %114 ]
  %123 = phi i32 [ %239, %238 ], [ %116, %114 ]
  br label %126

124:                                              ; preds = %238, %114
  %125 = phi i32 [ %116, %114 ], [ %239, %238 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %109) #12
  br label %229

126:                                              ; preds = %199, %121
  %127 = phi ptr [ %202, %199 ], [ %122, %121 ]
  %128 = phi i32 [ %200, %199 ], [ 0, %121 ]
  %129 = phi i32 [ %201, %199 ], [ 0, %121 ]
  %130 = getelementptr i8, ptr %127, i32 -84
  %131 = icmp slt i32 %129, %123
  br i1 %131, label %199, label %132

132:                                              ; preds = %126
  %133 = getelementptr i8, ptr %127, i32 -66
  %134 = load volatile i8, ptr %133, align 2
  %135 = icmp eq i8 %134, 6
  %136 = getelementptr i8, ptr %127, i32 32
  %137 = select i1 %135, ptr %136, ptr %133
  %138 = load volatile i8, ptr %137, align 2
  %139 = zext i8 %138 to i32
  %140 = shl nuw i32 1, %139
  %141 = and i32 %140, %17
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %199, label %143

143:                                              ; preds = %132
  %144 = load i8, ptr %3, align 4
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %143
  %147 = getelementptr i8, ptr %127, i32 -68
  %148 = load i16, ptr %147, align 8
  %149 = zext i8 %144 to i16
  %150 = icmp eq i16 %148, %149
  br i1 %150, label %151, label %199

151:                                              ; preds = %146, %143
  %152 = load i16, ptr %97, align 4
  %153 = getelementptr i8, ptr %127, i32 -70
  %154 = load i16, ptr %153, align 2
  %155 = tail call i16 @llvm.bswap.i16(i16 %154)
  %156 = icmp eq i16 %152, %155
  %157 = icmp eq i16 %152, 0
  %158 = or i1 %157, %156
  br i1 %158, label %159, label %199

159:                                              ; preds = %151
  %160 = getelementptr i8, ptr %127, i32 -72
  %161 = load i16, ptr %98, align 2
  %162 = load i16, ptr %160, align 4
  %163 = icmp eq i16 %161, %162
  %164 = icmp eq i16 %161, 0
  %165 = or i1 %164, %163
  br i1 %165, label %166, label %199

166:                                              ; preds = %159
  %167 = tail call i32 @inet_diag_bc_sk(ptr noundef %14, ptr noundef %130)
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %199, label %169

169:                                              ; preds = %166
  %170 = getelementptr i8, ptr %127, i32 16
  %171 = load volatile i32, ptr %170, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %185, label %173

173:                                              ; preds = %183, %169
  %174 = phi i32 [ %181, %183 ], [ %171, %169 ]
  %175 = add i32 %174, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %170) #12, !srcloc !14
  br label %176

176:                                              ; preds = %176, %173
  %177 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %170, ptr %170, i32 %174, i32 %175, ptr elementtype(i32) %170) #12, !srcloc !15
  %178 = extractvalue { i32, i32 } %177, 0
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %176

180:                                              ; preds = %176
  %181 = extractvalue { i32, i32 } %177, 1
  %182 = icmp eq i32 %181, %174
  br i1 %182, label %185, label %183, !prof !16

183:                                              ; preds = %180
  %184 = icmp eq i32 %181, 0
  br i1 %184, label %185, label %173

185:                                              ; preds = %183, %180, %169
  %186 = phi i32 [ 0, %169 ], [ 0, %183 ], [ %174, %180 ]
  %187 = add i32 %186, 1
  %188 = or i32 %187, %186
  %189 = icmp sgt i32 %188, -1
  br i1 %189, label %191, label %190, !prof !16

190:                                              ; preds = %185
  tail call void @refcount_warn_saturate(ptr noundef %170, i32 noundef 0) #12
  br label %191

191:                                              ; preds = %190, %185
  %192 = icmp eq i32 %186, 0
  br i1 %192, label %199, label %193

193:                                              ; preds = %191
  %194 = getelementptr [16 x i32], ptr %6, i32 0, i32 %128
  store i32 %129, ptr %194, align 4
  %195 = getelementptr [16 x ptr], ptr %5, i32 0, i32 %128
  store ptr %130, ptr %195, align 4
  %196 = add i32 %128, 1
  %197 = icmp eq i32 %196, 16
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  tail call void @_raw_spin_unlock_bh(ptr noundef %109) #12
  br label %208

199:                                              ; preds = %193, %191, %166, %159, %151, %146, %132, %126
  %200 = phi i32 [ %128, %126 ], [ %128, %146 ], [ %196, %193 ], [ %128, %191 ], [ %128, %166 ], [ %128, %132 ], [ %128, %151 ], [ %128, %159 ]
  %201 = add i32 %129, 1
  %202 = load ptr, ptr %127, align 4
  %203 = ptrtoint ptr %202 to i32
  %204 = and i32 %203, 1
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %126, label %206

206:                                              ; preds = %199
  tail call void @_raw_spin_unlock_bh(ptr noundef %109) #12
  %207 = icmp sgt i32 %200, 0
  br i1 %207, label %208, label %229

208:                                              ; preds = %206, %198
  %209 = phi i32 [ 16, %198 ], [ %200, %206 ]
  %210 = phi i32 [ %129, %198 ], [ %201, %206 ]
  br label %211

211:                                              ; preds = %224, %208
  %212 = phi i32 [ %226, %224 ], [ 0, %208 ]
  %213 = phi i32 [ %227, %224 ], [ 0, %208 ]
  %214 = phi i32 [ %225, %224 ], [ %210, %208 ]
  %215 = icmp sgt i32 %212, -1
  %216 = getelementptr [16 x ptr], ptr %5, i32 0, i32 %213
  %217 = load ptr, ptr %216, align 4
  br i1 %215, label %218, label %224

218:                                              ; preds = %211
  %219 = tail call fastcc i32 @sk_diag_fill(ptr noundef %217, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef zeroext 2, i1 noundef zeroext %8)
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %218
  %222 = getelementptr [16 x i32], ptr %6, i32 0, i32 %213
  %223 = load i32, ptr %222, align 4
  br label %224

224:                                              ; preds = %221, %218, %211
  %225 = phi i32 [ %223, %221 ], [ %214, %218 ], [ %214, %211 ]
  %226 = phi i32 [ %219, %221 ], [ %219, %218 ], [ %212, %211 ]
  tail call void @sock_gen_put(ptr noundef %217) #12
  %227 = add nuw nsw i32 %213, 1
  %228 = icmp eq i32 %227, %209
  br i1 %228, label %233, label %211

229:                                              ; preds = %206, %124
  %230 = phi i32 [ %125, %124 ], [ %123, %206 ]
  %231 = phi i32 [ 0, %124 ], [ %201, %206 ]
  %232 = tail call i32 @__cond_resched() #12
  br label %245

233:                                              ; preds = %224
  %234 = icmp slt i32 %226, 0
  br i1 %234, label %244, label %235

235:                                              ; preds = %233
  %236 = tail call i32 @__cond_resched() #12
  %237 = icmp eq i32 %209, 16
  br i1 %237, label %238, label %245

238:                                              ; preds = %235
  %239 = add i32 %225, 1
  tail call void @_raw_spin_lock_bh(ptr noundef %109) #12
  %240 = load ptr, ptr %105, align 4
  %241 = ptrtoint ptr %240 to i32
  %242 = and i32 %241, 1
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %121, label %124

244:                                              ; preds = %233
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #12
  br label %255

245:                                              ; preds = %235, %229
  %246 = phi i32 [ %230, %229 ], [ %123, %235 ]
  %247 = phi i32 [ %231, %229 ], [ %225, %235 ]
  %248 = load i32, ptr %91, align 8
  br label %249

249:                                              ; preds = %245, %99
  %250 = phi i32 [ %100, %99 ], [ %248, %245 ]
  %251 = phi i32 [ %103, %99 ], [ %246, %245 ]
  %252 = phi i32 [ %102, %99 ], [ %247, %245 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #12
  %253 = add i32 %101, 1
  %254 = icmp ugt i32 %253, %250
  br i1 %254, label %255, label %99

255:                                              ; preds = %249, %244, %90, %76
  %256 = phi i32 [ %225, %244 ], [ %46, %76 ], [ %87, %90 ], [ %252, %249 ]
  %257 = phi i32 [ %101, %244 ], [ %36, %76 ], [ %86, %90 ], [ %253, %249 ]
  store i32 %257, ptr %19, align 4
  store i32 %256, ptr %21, align 4
  br label %258

258:                                              ; preds = %255, %85
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inet_diag_register(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.inet_diag_handler, ptr %0, i32 0, i32 6
  %3 = load i16, ptr %2, align 4
  %4 = icmp ugt i16 %3, 262
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = zext i16 %3 to i32
  tail call void @mutex_lock(ptr noundef nonnull @inet_diag_table_mutex) #12
  %7 = load ptr, ptr @inet_diag_table, align 4
  %8 = getelementptr ptr, ptr %7, i32 %6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  store ptr %0, ptr %8, align 4
  br label %12

12:                                               ; preds = %11, %5
  %13 = phi i32 [ -17, %5 ], [ 0, %11 ]
  tail call void @mutex_unlock(ptr noundef nonnull @inet_diag_table_mutex) #12
  br label %14

14:                                               ; preds = %12, %1
  %15 = phi i32 [ -22, %1 ], [ %13, %12 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet_diag_unregister(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.inet_diag_handler, ptr %0, i32 0, i32 6
  %3 = load i16, ptr %2, align 4
  %4 = icmp ugt i16 %3, 262
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = zext i16 %3 to i32
  tail call void @mutex_lock(ptr noundef nonnull @inet_diag_table_mutex) #12
  %7 = load ptr, ptr @inet_diag_table, align 4
  %8 = getelementptr ptr, ptr %7, i32 %6
  store ptr null, ptr %8, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @inet_diag_table_mutex) #12
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @inet_diag_exit() #8 section ".exit.text" {
  tail call void @sock_diag_unregister(ptr noundef nonnull @inet6_diag_handler) #12
  tail call void @sock_diag_unregister(ptr noundef nonnull @inet_diag_handler) #12
  tail call void @sock_diag_unregister_inet_compat(ptr noundef nonnull @inet_diag_rcv_msg_compat) #12
  %1 = load ptr, ptr @inet_diag_table, align 4
  tail call void @kfree(ptr noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_diag_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_diag_unregister_inet_compat(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet_diag_rcv_msg_compat(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.inet_diag_req_v2, align 4
  %4 = alloca %struct.netlink_dump_control, align 4
  %5 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = icmp ugt i16 %6, 23
  br i1 %7, label %38, label %8

8:                                                ; preds = %2
  %9 = load i32, ptr %1, align 4
  %10 = add i32 %9, -16
  %11 = icmp slt i32 %10, 60
  br i1 %11, label %38, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 2
  %14 = load i16, ptr %13, align 2
  %15 = and i16 %14, 768
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(24) @__const.inet_diag_rcv_msg_compat.c, i32 24, i1 false)
  %18 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 44), align 4
  %19 = getelementptr inbounds %struct.netlink_dump_control, ptr %4, i32 0, i32 4
  store ptr null, ptr %19, align 4
  %20 = call i32 @__netlink_dump_start(ptr noundef %18, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  br label %38

21:                                               ; preds = %12
  %22 = getelementptr i8, ptr %1, i32 16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !13
  %23 = load i8, ptr %22, align 4
  store i8 %23, ptr %3, align 4
  %24 = icmp eq i16 %6, 19
  %25 = icmp eq i16 %6, 18
  %26 = select i1 %24, i8 33, i8 0
  %27 = select i1 %25, i8 6, i8 %26
  %28 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %3, i32 0, i32 1
  store i8 %27, ptr %28, align 1
  %29 = getelementptr i8, ptr %1, i32 19
  %30 = load i8, ptr %29, align 1
  %31 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %3, i32 0, i32 2
  store i8 %30, ptr %31, align 2
  %32 = getelementptr i8, ptr %1, i32 68
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %3, i32 0, i32 4
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %3, i32 0, i32 5
  %36 = getelementptr i8, ptr %1, i32 20
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %35, ptr noundef align 4 dereferenceable(48) %36, i32 48, i1 false) #12
  %37 = call fastcc i32 @inet_diag_cmd_exact(i32 noundef 20, ptr noundef %0, ptr noundef %1, i32 noundef 60, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #12
  br label %38

38:                                               ; preds = %21, %17, %8, %2
  %39 = phi i32 [ %20, %17 ], [ %37, %21 ], [ -22, %8 ], [ -22, %2 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @inet_diag_init() #8 section ".init.text" {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1052) #13
  store ptr %2, ptr @inet_diag_table, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %0
  %5 = tail call i32 @sock_diag_register(ptr noundef nonnull @inet_diag_handler) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = tail call i32 @sock_diag_register(ptr noundef nonnull @inet6_diag_handler) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  tail call void @sock_diag_register_inet_compat(ptr noundef nonnull @inet_diag_rcv_msg_compat) #12
  br label %11

11:                                               ; preds = %14, %10, %0
  %12 = phi i32 [ %15, %14 ], [ 0, %10 ], [ -12, %0 ]
  ret i32 %12

13:                                               ; preds = %7
  tail call void @sock_diag_unregister(ptr noundef nonnull @inet_diag_handler) #12
  br label %14

14:                                               ; preds = %13, %4
  %15 = phi i32 [ %5, %4 ], [ %8, %13 ]
  %16 = load ptr, ptr @inet_diag_table, align 4
  tail call void @kfree(ptr noundef %16) #12
  br label %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__inet_lookup_established(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__inet_lookup_listener(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet_diag_handler_cmd(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.netlink_dump_control, align 4
  %4 = load i32, ptr %1, align 4
  %5 = add i32 %4, -16
  %6 = icmp slt i32 %5, 56
  br i1 %6, label %24, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 1
  %9 = load i16, ptr %8, align 4
  %10 = icmp eq i16 %9, 20
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 2
  %13 = load i16, ptr %12, align 2
  %14 = and i16 %13, 768
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(24) @__const.inet_diag_handler_cmd.c, i32 24, i1 false)
  %17 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 44), align 4
  %18 = getelementptr inbounds %struct.netlink_dump_control, ptr %3, i32 0, i32 4
  store ptr null, ptr %18, align 4
  %19 = call i32 @__netlink_dump_start(ptr noundef %17, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  br label %24

20:                                               ; preds = %11, %7
  %21 = zext i16 %9 to i32
  %22 = getelementptr i8, ptr %1, i32 16
  %23 = tail call fastcc i32 @inet_diag_cmd_exact(i32 noundef %21, ptr noundef %0, ptr noundef %1, i32 noundef 56, ptr noundef %22)
  br label %24

24:                                               ; preds = %20, %16, %2
  %25 = phi i32 [ %19, %16 ], [ %23, %20 ], [ -22, %2 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet_diag_handler_get_info(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %125

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %11 = load ptr, ptr %10, align 8
  %12 = ptrtoint ptr %9 to i32
  %13 = ptrtoint ptr %11 to i32
  %14 = sub i32 %12, %13
  %15 = icmp slt i32 %14, 88
  br i1 %15, label %125, label %16, !prof !8

16:                                               ; preds = %7
  %17 = tail call ptr @__nlmsg_put(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 20, i32 noundef 72, i32 noundef 0) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %125, label %19

19:                                               ; preds = %16
  %20 = getelementptr i8, ptr %17, i32 16
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(72) %20, i8 0, i32 72, i1 false)
  %21 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 3
  %22 = load i16, ptr %21, align 8
  %23 = trunc i16 %22 to i8
  store i8 %23, ptr %20, align 4
  %24 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 2
  %25 = getelementptr inbounds %struct.anon.2, ptr %24, i32 0, i32 1
  %26 = load i16, ptr %25, align 2
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #12
  %28 = getelementptr i8, ptr %17, i32 20
  store i16 %27, ptr %28, align 4
  %29 = load i16, ptr %24, align 4
  %30 = getelementptr i8, ptr %17, i32 22
  store i16 %29, ptr %30, align 2
  %31 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr i8, ptr %17, i32 56
  store i32 %32, ptr %33, align 4
  %34 = getelementptr i8, ptr %17, i32 60
  tail call void @sock_diag_save_cookie(ptr noundef %1, ptr noundef %34) #12
  %35 = load i16, ptr %21, align 8
  %36 = icmp eq i16 %35, 10
  %37 = getelementptr i8, ptr %17, i32 24
  br i1 %36, label %38, label %42

38:                                               ; preds = %19
  %39 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %37, ptr noundef align 4 dereferenceable(16) %39, i32 16, i1 false) #12
  %40 = getelementptr i8, ptr %17, i32 40
  %41 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %40, ptr noundef align 4 dereferenceable(16) %41, i32 16, i1 false) #12
  br label %47

42:                                               ; preds = %19
  %43 = getelementptr i8, ptr %17, i32 40
  %44 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(32) %37, i8 0, i64 32, i1 false) #12
  %45 = load i32, ptr %44, align 4
  store i32 %45, ptr %37, align 4
  %46 = load i32, ptr %1, align 8
  store i32 %46, ptr %43, align 4
  br label %47

47:                                               ; preds = %42, %38
  %48 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %49 = load i16, ptr %48, align 2
  %50 = add i16 %49, -1
  %51 = icmp ult i16 %50, 2
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 6
  %54 = load i16, ptr %53, align 8
  store i16 %54, ptr %28, align 4
  br label %55

55:                                               ; preds = %52, %47
  %56 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %57 = load volatile i8, ptr %56, align 2
  %58 = getelementptr i8, ptr %17, i32 17
  store i8 %57, ptr %58, align 1
  %59 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 46
  %60 = load i16, ptr %59, align 4
  %61 = trunc i16 %60 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  store i8 %61, ptr %3, align 1
  %62 = call i32 @nla_put(ptr noundef %0, i32 noundef 10, i32 noundef 1, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %66 = load ptr, ptr %65, align 4
  %67 = icmp ugt ptr %66, %17
  br i1 %67, label %68, label %70, !prof !8

68:                                               ; preds = %64
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  %69 = load ptr, ptr %65, align 4
  br label %70

70:                                               ; preds = %68, %64
  %71 = phi ptr [ %69, %68 ], [ %66, %64 ]
  %72 = ptrtoint ptr %17 to i32
  %73 = ptrtoint ptr %71 to i32
  %74 = sub i32 %72, %73
  call void @skb_trim(ptr noundef %0, i32 noundef %74) #12
  br label %125

75:                                               ; preds = %55
  %76 = load i16, ptr %59, align 4
  %77 = zext i16 %76 to i32
  %78 = icmp ugt i16 %76, 262
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  call void @mutex_lock(ptr noundef nonnull @inet_diag_table_mutex) #12
  br label %94

80:                                               ; preds = %75
  %81 = load ptr, ptr @inet_diag_table, align 4
  %82 = getelementptr ptr, ptr %81, i32 %77
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = call i32 @sock_load_diag_module(i32 noundef 2, i32 noundef %77) #12
  br label %87

87:                                               ; preds = %85, %80
  call void @mutex_lock(ptr noundef nonnull @inet_diag_table_mutex) #12
  %88 = load ptr, ptr @inet_diag_table, align 4
  %89 = getelementptr ptr, ptr %88, i32 %77
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %87
  %93 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  br i1 %93, label %94, label %107

94:                                               ; preds = %92, %87, %79
  %95 = phi ptr [ %90, %92 ], [ inttoptr (i32 -2 to ptr), %79 ], [ inttoptr (i32 -2 to ptr), %87 ]
  call void @mutex_unlock(ptr noundef nonnull @inet_diag_table_mutex) #12
  %96 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %97 = load ptr, ptr %96, align 4
  %98 = icmp ugt ptr %97, %17
  br i1 %98, label %99, label %101, !prof !8

99:                                               ; preds = %94
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  %100 = load ptr, ptr %96, align 4
  br label %101

101:                                              ; preds = %99, %94
  %102 = phi ptr [ %100, %99 ], [ %97, %94 ]
  %103 = ptrtoint ptr %17 to i32
  %104 = ptrtoint ptr %102 to i32
  %105 = sub i32 %103, %104
  call void @skb_trim(ptr noundef %0, i32 noundef %105) #12
  %106 = ptrtoint ptr %95 to i32
  br label %125

107:                                              ; preds = %92
  %108 = getelementptr inbounds %struct.inet_diag_handler, ptr %90, i32 0, i32 7
  %109 = load i16, ptr %108, align 2
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %107
  %112 = zext i16 %109 to i32
  %113 = call ptr @nla_reserve_64bit(ptr noundef %0, i32 noundef 2, i32 noundef %112, i32 noundef 14) #12
  %114 = icmp eq ptr %113, null
  %115 = getelementptr i8, ptr %113, i32 4
  %116 = select i1 %114, ptr null, ptr %115
  br label %117

117:                                              ; preds = %111, %107
  %118 = phi ptr [ null, %107 ], [ %116, %111 ]
  %119 = getelementptr inbounds %struct.inet_diag_handler, ptr %90, i32 0, i32 2
  %120 = load ptr, ptr %119, align 4
  call void %120(ptr noundef %1, ptr noundef %20, ptr noundef %118) #12
  call void @mutex_unlock(ptr noundef nonnull @inet_diag_table_mutex) #12
  %121 = load ptr, ptr %10, align 8
  %122 = ptrtoint ptr %121 to i32
  %123 = ptrtoint ptr %17 to i32
  %124 = sub i32 %122, %123
  store i32 %124, ptr %17, align 4
  br label %125

125:                                              ; preds = %117, %101, %70, %16, %7, %2
  %126 = phi i32 [ %62, %70 ], [ %106, %101 ], [ 0, %117 ], [ -12, %16 ], [ -12, %7 ], [ -12, %2 ]
  ret i32 %126
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet_diag_dump_start(ptr nocapture noundef %0) #0 {
  %2 = tail call fastcc i32 @__inet_diag_dump_start(ptr noundef %0, i32 noundef 56)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet_diag_dump(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 16
  %6 = tail call fastcc i32 @__inet_diag_dump(ptr noundef %0, ptr noundef %1, ptr noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet_diag_dump_done(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @inet_diag_cmd_exact(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.inet_diag_dump_data, align 4
  %7 = alloca %struct.netlink_callback, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #12
  %8 = add i32 %3, 3
  %9 = and i32 %8, -4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i64 20, i1 false)
  %10 = load i32, ptr %2, align 4
  %11 = sub i32 -16, %9
  %12 = add i32 %10, %11
  %13 = icmp sgt i32 %12, 3
  br i1 %13, label %14, label %47

14:                                               ; preds = %5
  %15 = getelementptr i8, ptr %2, i32 16
  %16 = getelementptr i8, ptr %15, i32 %9
  br label %17

17:                                               ; preds = %37, %14
  %18 = phi ptr [ %41, %37 ], [ %16, %14 ]
  %19 = phi i32 [ %40, %37 ], [ %12, %14 ]
  %20 = load i16, ptr %18, align 2
  %21 = icmp ult i16 %20, 4
  %22 = zext i16 %20 to i32
  %23 = icmp ult i32 %19, %22
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %43, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.nlattr, ptr %18, i32 0, i32 1
  %27 = load i16, ptr %26, align 2
  %28 = and i16 %27, 16383
  %29 = zext i16 %28 to i32
  %30 = icmp eq i16 %28, 3
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = icmp eq i16 %20, 8
  br i1 %32, label %35, label %90

33:                                               ; preds = %25
  %34 = icmp ult i16 %28, 4
  br i1 %34, label %35, label %37

35:                                               ; preds = %33, %31
  %36 = getelementptr ptr, ptr %6, i32 %29
  store ptr %18, ptr %36, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = add nuw nsw i32 %22, 3
  %39 = and i32 %38, 131068
  %40 = sub nsw i32 %19, %39
  %41 = getelementptr i8, ptr %18, i32 %39
  %42 = icmp sgt i32 %40, 3
  br i1 %42, label %17, label %43

43:                                               ; preds = %37, %17
  %44 = getelementptr inbounds [4 x ptr], ptr %6, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %43, %5
  %48 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %4, i32 0, i32 1
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  br label %56

51:                                               ; preds = %43
  %52 = getelementptr i8, ptr %45, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = icmp ugt i32 %53, 262
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  tail call void @mutex_lock(ptr noundef nonnull @inet_diag_table_mutex) #12
  br label %71

56:                                               ; preds = %51, %47
  %57 = phi i32 [ %50, %47 ], [ %53, %51 ]
  %58 = load ptr, ptr @inet_diag_table, align 4
  %59 = getelementptr ptr, ptr %58, i32 %57
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = tail call i32 @sock_load_diag_module(i32 noundef 2, i32 noundef %57) #12
  br label %64

64:                                               ; preds = %62, %56
  tail call void @mutex_lock(ptr noundef nonnull @inet_diag_table_mutex) #12
  %65 = load ptr, ptr @inet_diag_table, align 4
  %66 = getelementptr ptr, ptr %65, i32 %57
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %71, label %74

71:                                               ; preds = %69, %64, %55
  %72 = phi ptr [ %67, %69 ], [ inttoptr (i32 -2 to ptr), %55 ], [ inttoptr (i32 -2 to ptr), %64 ]
  %73 = ptrtoint ptr %72 to i32
  br label %88

74:                                               ; preds = %69
  switch i32 %0, label %88 [
    i32 20, label %75
    i32 21, label %82
  ]

75:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #12
  %76 = getelementptr inbounds i8, ptr %7, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(88) %76, i8 0, i64 88, i1 false)
  store ptr %1, ptr %7, align 4
  %77 = getelementptr inbounds %struct.netlink_callback, ptr %7, i32 0, i32 1
  store ptr %2, ptr %77, align 4
  %78 = getelementptr inbounds %struct.netlink_callback, ptr %7, i32 0, i32 4
  store ptr %6, ptr %78, align 4
  %79 = getelementptr inbounds %struct.inet_diag_handler, ptr %67, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = call i32 %80(ptr noundef nonnull %7, ptr noundef %4) #12
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #12
  br label %88

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.inet_diag_handler, ptr %67, i32 0, i32 5
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = tail call i32 %84(ptr noundef %1, ptr noundef %4) #12
  br label %88

88:                                               ; preds = %86, %82, %75, %74, %71
  %89 = phi i32 [ %73, %71 ], [ %81, %75 ], [ %87, %86 ], [ -95, %74 ], [ -95, %82 ]
  call void @mutex_unlock(ptr noundef nonnull @inet_diag_table_mutex) #12
  br label %90

90:                                               ; preds = %88, %31
  %91 = phi i32 [ %89, %88 ], [ -22, %31 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #12
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__inet_diag_dump_start(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 20) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %155, label %9

9:                                                ; preds = %2
  %10 = add i32 %1, 3
  %11 = and i32 %10, -4
  %12 = load i32, ptr %4, align 4
  %13 = sub i32 -16, %11
  %14 = add i32 %12, %13
  %15 = icmp sgt i32 %14, 3
  br i1 %15, label %16, label %49

16:                                               ; preds = %9
  %17 = getelementptr i8, ptr %4, i32 16
  %18 = getelementptr i8, ptr %17, i32 %11
  br label %19

19:                                               ; preds = %41, %16
  %20 = phi ptr [ %46, %41 ], [ %18, %16 ]
  %21 = phi i32 [ %45, %41 ], [ %14, %16 ]
  %22 = load i16, ptr %20, align 2
  %23 = icmp ult i16 %22, 4
  %24 = zext i16 %22 to i32
  %25 = icmp ult i32 %21, %24
  %26 = select i1 %23, i1 true, i1 %25
  br i1 %26, label %49, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.nlattr, ptr %20, i32 0, i32 1
  %29 = load i16, ptr %28, align 2
  %30 = and i16 %29, 16383
  %31 = zext i16 %30 to i32
  %32 = icmp eq i16 %30, 3
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = icmp eq i16 %22, 8
  br i1 %34, label %37, label %48

35:                                               ; preds = %27
  %36 = icmp ult i16 %30, 4
  br i1 %36, label %37, label %41

37:                                               ; preds = %35, %33
  %38 = getelementptr ptr, ptr %7, i32 %31
  store ptr %20, ptr %38, align 4
  %39 = load i16, ptr %20, align 2
  %40 = zext i16 %39 to i32
  br label %41

41:                                               ; preds = %37, %35
  %42 = phi i32 [ %40, %37 ], [ %24, %35 ]
  %43 = add nuw nsw i32 %42, 3
  %44 = and i32 %43, 131068
  %45 = sub nsw i32 %21, %44
  %46 = getelementptr i8, ptr %20, i32 %44
  %47 = icmp sgt i32 %45, 3
  br i1 %47, label %19, label %49

48:                                               ; preds = %33
  tail call void @kfree(ptr noundef nonnull %7) #12
  br label %155

49:                                               ; preds = %41, %19, %9
  %50 = getelementptr [4 x ptr], ptr %7, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %147, label %53

53:                                               ; preds = %49
  %54 = tail call zeroext i1 @netlink_net_capable(ptr noundef %5, i32 noundef 12) #12
  %55 = load i16, ptr %51, align 2
  %56 = zext i16 %55 to i32
  %57 = add nsw i32 %56, -4
  %58 = icmp ult i32 %57, 4
  br i1 %58, label %145, label %59

59:                                               ; preds = %53
  %60 = getelementptr i8, ptr %51, i32 4
  %61 = icmp ugt i16 %55, 4
  br i1 %61, label %62, label %145

62:                                               ; preds = %139, %59
  %63 = phi i32 [ %141, %139 ], [ %57, %59 ]
  %64 = phi ptr [ %140, %139 ], [ %60, %59 ]
  %65 = load i8, ptr %64, align 2
  switch i8 %65, label %145 [
    i8 7, label %68
    i8 8, label %68
    i8 9, label %85
    i8 11, label %87
    i8 2, label %87
    i8 3, label %87
    i8 12, label %87
    i8 4, label %87
    i8 5, label %87
    i8 10, label %89
    i8 0, label %66
    i8 1, label %92
    i8 6, label %92
  ]

66:                                               ; preds = %62
  %67 = add i32 %63, 4
  br label %127

68:                                               ; preds = %62, %62
  %69 = icmp ult i32 %63, 12
  br i1 %69, label %145, label %70

70:                                               ; preds = %68
  %71 = getelementptr %struct.inet_diag_bc_op, ptr %64, i32 1
  %72 = load i8, ptr %71, align 4
  switch i8 %72, label %145 [
    i8 0, label %75
    i8 2, label %73
    i8 10, label %74
  ]

73:                                               ; preds = %70
  br label %75

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %74, %73, %70
  %76 = phi i32 [ 16, %74 ], [ 4, %73 ], [ 0, %70 ]
  %77 = add nuw nsw i32 %76, 12
  %78 = icmp ugt i32 %77, %63
  br i1 %78, label %145, label %79

79:                                               ; preds = %75
  %80 = getelementptr %struct.inet_diag_bc_op, ptr %64, i32 1, i32 1
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = shl nuw nsw i32 %76, 3
  %84 = icmp ult i32 %83, %82
  br i1 %84, label %145, label %92

85:                                               ; preds = %62
  %86 = icmp ugt i32 %63, 7
  br i1 %86, label %92, label %145

87:                                               ; preds = %62, %62, %62, %62, %62, %62
  %88 = icmp ugt i32 %63, 7
  br i1 %88, label %92, label %145

89:                                               ; preds = %62
  br i1 %54, label %90, label %145

90:                                               ; preds = %89
  %91 = icmp ugt i32 %63, 11
  br i1 %91, label %92, label %145

92:                                               ; preds = %90, %87, %85, %79, %62, %62
  %93 = phi i32 [ %77, %79 ], [ 8, %85 ], [ 8, %87 ], [ 12, %90 ], [ 4, %62 ], [ 4, %62 ]
  %94 = getelementptr inbounds %struct.inet_diag_bc_op, ptr %64, i32 0, i32 2
  %95 = load i16, ptr %94, align 2
  %96 = zext i16 %95 to i32
  %97 = icmp ule i32 %93, %96
  %98 = add i32 %63, 4
  %99 = icmp sge i32 %98, %96
  %100 = select i1 %97, i1 %99, i1 false
  %101 = and i32 %96, 3
  %102 = icmp eq i32 %101, 0
  %103 = and i1 %100, %102
  br i1 %103, label %104, label %145

104:                                              ; preds = %92
  %105 = icmp sgt i32 %63, %96
  br i1 %105, label %106, label %127

106:                                              ; preds = %104
  %107 = sub nsw i32 %63, %96
  %108 = icmp slt i32 %57, %107
  br i1 %108, label %145, label %109

109:                                              ; preds = %121, %106
  %110 = phi i32 [ %122, %121 ], [ %57, %106 ]
  %111 = phi ptr [ %123, %121 ], [ %60, %106 ]
  %112 = icmp eq i32 %110, %107
  br i1 %112, label %127, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.inet_diag_bc_op, ptr %111, i32 0, i32 1
  %115 = load i8, ptr %114, align 1
  %116 = zext i8 %115 to i32
  %117 = icmp ugt i8 %115, 3
  %118 = and i32 %116, 3
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %117, i1 %119, i1 false
  br i1 %120, label %121, label %145

121:                                              ; preds = %113
  %122 = sub nsw i32 %110, %116
  %123 = getelementptr i8, ptr %111, i32 %116
  %124 = icmp slt i32 %122, 0
  %125 = icmp slt i32 %122, %107
  %126 = or i1 %124, %125
  br i1 %126, label %145, label %109

127:                                              ; preds = %109, %104, %66
  %128 = phi i32 [ %67, %66 ], [ %98, %104 ], [ %98, %109 ]
  %129 = phi i32 [ 4, %66 ], [ %93, %104 ], [ %93, %109 ]
  %130 = getelementptr inbounds %struct.inet_diag_bc_op, ptr %64, i32 0, i32 1
  %131 = load i8, ptr %130, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp sle i32 %129, %132
  %134 = icmp sge i32 %128, %132
  %135 = select i1 %133, i1 %134, i1 false
  %136 = and i32 %132, 3
  %137 = icmp eq i32 %136, 0
  %138 = and i1 %135, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %127
  %140 = getelementptr i8, ptr %64, i32 %132
  %141 = sub i32 %63, %132
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %62, label %143

143:                                              ; preds = %139
  %144 = icmp eq i32 %141, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %143, %127, %121, %113, %106, %92, %90, %89, %87, %85, %79, %75, %70, %68, %62, %59, %53
  %146 = phi i32 [ -22, %143 ], [ -22, %59 ], [ -22, %53 ], [ -22, %121 ], [ -22, %113 ], [ -22, %106 ], [ -22, %75 ], [ -22, %70 ], [ -22, %68 ], [ -22, %79 ], [ -22, %85 ], [ -22, %87 ], [ -1, %89 ], [ -22, %90 ], [ -22, %62 ], [ -22, %92 ], [ -22, %127 ]
  tail call void @kfree(ptr noundef nonnull %7) #12
  br label %155

147:                                              ; preds = %143, %49
  %148 = getelementptr [4 x ptr], ptr %7, i32 0, i32 2
  %149 = load ptr, ptr %148, align 8
  %150 = icmp eq ptr %149, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.inet_diag_dump_data, ptr %7, i32 0, i32 1
  store ptr null, ptr %152, align 8
  br label %153

153:                                              ; preds = %151, %147
  %154 = getelementptr inbounds %struct.netlink_callback, ptr %0, i32 0, i32 4
  store ptr %7, ptr %154, align 4
  br label %155

155:                                              ; preds = %153, %145, %48, %2
  %156 = phi i32 [ -22, %48 ], [ %146, %145 ], [ 0, %153 ], [ -12, %2 ]
  ret i32 %156
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__inet_diag_dump(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr [4 x ptr], ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %7, i32 4
  %11 = load i32, ptr %10, align 4
  br label %16

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %2, i32 0, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  br label %16

16:                                               ; preds = %12, %9
  %17 = phi i32 [ %11, %9 ], [ %15, %12 ]
  %18 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 9
  %19 = icmp ugt i32 %17, 262
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  br label %21

21:                                               ; preds = %50, %16
  %22 = load i32, ptr %18, align 4
  br i1 %19, label %23, label %24

23:                                               ; preds = %21
  tail call void @mutex_lock(ptr noundef nonnull @inet_diag_table_mutex) #12
  br label %40

24:                                               ; preds = %21
  %25 = load ptr, ptr @inet_diag_table, align 4
  %26 = getelementptr ptr, ptr %25, i32 %17
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = tail call i32 @sock_load_diag_module(i32 noundef 2, i32 noundef %17) #12
  br label %31

31:                                               ; preds = %29, %24
  tail call void @mutex_lock(ptr noundef nonnull @inet_diag_table_mutex) #12
  %32 = load ptr, ptr @inet_diag_table, align 4
  %33 = getelementptr ptr, ptr %32, i32 %17
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %40, label %38

38:                                               ; preds = %36
  %39 = load ptr, ptr %34, align 4
  tail call void %39(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %43

40:                                               ; preds = %36, %31, %23
  %41 = phi ptr [ %34, %36 ], [ inttoptr (i32 -2 to ptr), %23 ], [ inttoptr (i32 -2 to ptr), %31 ]
  %42 = ptrtoint ptr %41 to i32
  br label %43

43:                                               ; preds = %40, %38
  %44 = phi i32 [ %42, %40 ], [ 0, %38 ]
  tail call void @mutex_unlock(ptr noundef nonnull @inet_diag_table_mutex) #12
  %45 = load i32, ptr %20, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i32, ptr %18, align 4
  %49 = icmp ugt i32 %48, %22
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef 0, i32 noundef %48, i32 noundef 3264) #12
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %21, label %56

53:                                               ; preds = %47, %43
  %54 = icmp eq i32 %44, 0
  %55 = select i1 %54, i32 %45, i32 %44
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi i32 [ %55, %53 ], [ %51, %50 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_load_diag_module(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__netlink_dump_start(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet_diag_dump_start_compat(ptr nocapture noundef %0) #0 {
  %2 = tail call fastcc i32 @__inet_diag_dump_start(ptr noundef %0, i32 noundef 60)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet_diag_dump_compat(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.inet_diag_req_v2, align 4
  %4 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #12
  %6 = getelementptr inbounds %struct.nlmsghdr, ptr %5, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %7 = load i16, ptr %6, align 4
  %8 = icmp eq i16 %7, 19
  %9 = icmp eq i16 %7, 18
  %10 = select i1 %8, i8 33, i8 0
  %11 = select i1 %9, i8 6, i8 %10
  %12 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %3, i32 0, i32 1
  store i8 %11, ptr %12, align 1
  %13 = getelementptr i8, ptr %5, i32 19
  %14 = load i8, ptr %13, align 1
  %15 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %3, i32 0, i32 2
  store i8 %14, ptr %15, align 2
  %16 = getelementptr i8, ptr %5, i32 68
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %3, i32 0, i32 4
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.inet_diag_req_v2, ptr %3, i32 0, i32 5
  %20 = getelementptr i8, ptr %5, i32 20
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %19, ptr noundef align 4 dereferenceable(48) %20, i32 48, i1 false)
  %21 = call fastcc i32 @__inet_diag_dump(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #12
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_diag_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_diag_register_inet_compat(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }

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
!9 = !{i64 2157004649, i64 2157005134, i64 2157004686, i64 2157004742, i64 2157004776, i64 2157004800, i64 2157004841, i64 2157004862, i64 2157004890, i64 2157004924}
!10 = !{i64 2157005730, i64 2157006215, i64 2157005767, i64 2157005823, i64 2157005857, i64 2157005881, i64 2157005922, i64 2157005943, i64 2157005971, i64 2157006005}
!11 = !{i64 2149078930}
!12 = !{i64 2149079147}
!13 = !{!"auto-init"}
!14 = !{i64 444657, i64 2147934628, i64 2147934654, i64 2147934701, i64 2147934723, i64 2147934751, i64 2147934771}
!15 = !{i64 430720, i64 430744, i64 430765, i64 430782, i64 430799}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2157023417, i64 2157023902, i64 2157023454, i64 2157023510, i64 2157023544, i64 2157023568, i64 2157023609, i64 2157023630, i64 2157023658, i64 2157023692}
!18 = !{i64 2148960575}
!19 = !{i64 2148956399}
!20 = !{i64 2148956474, i64 2148956501, i64 2148956548, i64 2148956570, i64 2148956598, i64 2148956618}
!21 = !{i64 2148983578}
