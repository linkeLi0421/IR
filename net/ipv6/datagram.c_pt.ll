; ModuleID = '/llk/IR/net/ipv6/datagram.c_pt.bc'
source_filename = "../net/ipv6/datagram.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_datagram_release_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_datagram_release_cb\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_datagram_release_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ip6_datagram_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22__ip6_datagram_connect\22\09\09\09\09\09"
module asm "__kstrtabns___ip6_datagram_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_datagram_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_datagram_connect\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_datagram_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_datagram_connect_v6_only:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_datagram_connect_v6_only\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_datagram_connect_v6_only:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_recv_error:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_recv_error\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_recv_error:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_datagram_recv_ctl:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_datagram_recv_ctl\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_datagram_recv_ctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6_datagram_send_ctl:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6_datagram_send_ctl\22\09\09\09\09\09"
module asm "__kstrtabns_ip6_datagram_send_ctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.in6_addr = type { %union.anon.115 }
%union.anon.115 = type { [4 x i32] }
%struct.static_key_false_deferred = type { %struct.static_key_false }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.136, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.136 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.173, [0 x i32], %union.anon.174, i16, i16, %union.anon.175, %struct.refcount_struct, [0 x i32], %union.anon.176 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.atomic64_t = type { i64 }
%union.anon.173 = type { i32 }
%union.anon.174 = type { %struct.hlist_node }
%union.anon.175 = type { i32 }
%union.anon.176 = type { i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.177, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.178, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.179, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.177 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.178 = type { ptr }
%union.anon.179 = type { ptr }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.131 }
%union.anon.131 = type { %struct.flowi6 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, i32, i32, i32, i32, i32, %union.anon.186, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.186 = type { %struct.anon.187 }
%struct.anon.187 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.anon.132 = type { i16, i16 }
%struct.ip6_flowlabel = type { ptr, i32, %struct.atomic_t, %struct.in6_addr, ptr, i32, %struct.callback_head, i8, %union.anon.185, i32, i32, ptr }
%union.anon.185 = type { ptr }
%struct.anon = type { i32, i32 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.172, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.172 = type { ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.netdevice_tracker = type {}
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.sock_reuseport = type { %struct.callback_head, i16, i16, i16, i32, i32, i8, ptr, [0 x ptr] }
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
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.188 }
%union.anon.188 = type { [1 x i32] }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.anon.191 = type { %struct.sock_extended_err, %struct.sockaddr_in6 }
%struct.sock_extended_err = type { i32, i8, i8, i8, i8, i32, %union.anon.190 }
%union.anon.190 = type { i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.171, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.169 }
%union.anon.4 = type { ptr }
%union.anon.169 = type { i64 }
%union.anon.171 = type { ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6_rt_hdr = type { i8, i8, i8, i8 }
%struct.ip6_mtuinfo = type { %struct.sockaddr_in6, i32 }
%struct.ipcm6_cookie = type { %struct.sockcm_cookie, i16, i16, i16, i8, ptr }
%struct.sockcm_cookie = type { i64, i32, i16 }
%struct.ipv6_txoptions = type { %struct.refcount_struct, i32, i16, i16, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.cmsghdr = type { i32, i32, i32 }
%struct.ipv6_opt_hdr = type { i8, i8 }

@__kstrtab_ip6_datagram_release_cb = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_datagram_release_cb = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_datagram_release_cb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_datagram_release_cb to i32), ptr @__kstrtab_ip6_datagram_release_cb, ptr @__kstrtabns_ip6_datagram_release_cb }, section "___ksymtab_gpl+ip6_datagram_release_cb", align 4
@in6addr_loopback = external dso_local local_unnamed_addr constant %struct.in6_addr, align 4
@__kstrtab___ip6_datagram_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns___ip6_datagram_connect = external dso_local constant [0 x i8], align 1
@__ksymtab___ip6_datagram_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ip6_datagram_connect to i32), ptr @__kstrtab___ip6_datagram_connect, ptr @__kstrtabns___ip6_datagram_connect }, section "___ksymtab_gpl+__ip6_datagram_connect", align 4
@__kstrtab_ip6_datagram_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_datagram_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_datagram_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_datagram_connect to i32), ptr @__kstrtab_ip6_datagram_connect, ptr @__kstrtabns_ip6_datagram_connect }, section "___ksymtab_gpl+ip6_datagram_connect", align 4
@__kstrtab_ip6_datagram_connect_v6_only = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_datagram_connect_v6_only = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_datagram_connect_v6_only = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_datagram_connect_v6_only to i32), ptr @__kstrtab_ip6_datagram_connect_v6_only, ptr @__kstrtabns_ip6_datagram_connect_v6_only }, section "___ksymtab_gpl+ip6_datagram_connect_v6_only", align 4
@__kstrtab_ipv6_recv_error = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_recv_error = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_recv_error = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_recv_error to i32), ptr @__kstrtab_ipv6_recv_error, ptr @__kstrtabns_ipv6_recv_error }, section "___ksymtab_gpl+ipv6_recv_error", align 4
@__kstrtab_ip6_datagram_recv_ctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_datagram_recv_ctl = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_datagram_recv_ctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_datagram_recv_ctl to i32), ptr @__kstrtab_ip6_datagram_recv_ctl, ptr @__kstrtabns_ip6_datagram_recv_ctl }, section "___ksymtab_gpl+ip6_datagram_recv_ctl", align 4
@__kstrtab_ip6_datagram_send_ctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6_datagram_send_ctl = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6_datagram_send_ctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6_datagram_send_ctl to i32), ptr @__kstrtab_ip6_datagram_send_ctl, ptr @__kstrtabns_ip6_datagram_send_ctl }, section "___ksymtab_gpl+ip6_datagram_send_ctl", align 4
@.str = private unnamed_addr constant [103 x i8] c"%5d: %08X%08X%08X%08X:%04X %08X%08X%08X%08X:%04X %02X %08X:%08X %02X:%08lX %08X %5u %8d %lu %d %pK %u\0A\00", align 1
@ipv6_flowlabel_exclusive = external dso_local global %struct.static_key_false_deferred, align 4
@init_net = external dso_local global %struct.net, align 64
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab___ip6_datagram_connect, ptr @__ksymtab_ip6_datagram_connect, ptr @__ksymtab_ip6_datagram_connect_v6_only, ptr @__ksymtab_ip6_datagram_recv_ctl, ptr @__ksymtab_ip6_datagram_release_cb, ptr @__ksymtab_ip6_datagram_send_ctl, ptr @__ksymtab_ipv6_recv_error], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_datagram_dst_update(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.in6_addr, align 4
  %4 = alloca %struct.flowi6, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %6 = load volatile i8, ptr %5, align 2
  %7 = zext i8 %6 to i32
  %8 = shl nuw i32 1, %7
  %9 = and i32 %8, -4161
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi ptr [ %13, %11 ], [ null, %2 ]
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #6
  %16 = getelementptr inbounds %struct.ipv6_pinfo, ptr %15, i32 0, i32 9
  %17 = load i16, ptr %16, align 2
  %18 = and i16 %17, 2
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.ipv6_pinfo, ptr %15, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, -61696
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %20
  %26 = load volatile i32, ptr @ipv6_flowlabel_exclusive, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %36, !prof !9

28:                                               ; preds = %25
  %29 = load volatile i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 17), align 16
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = tail call ptr @__fl6_sock_lookup(ptr noundef %0, i32 noundef %22) #6
  %33 = icmp eq ptr %32, null
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  %35 = or i1 %33, %34
  br i1 %35, label %140, label %36

36:                                               ; preds = %31, %28, %25, %20, %14
  %37 = phi ptr [ null, %20 ], [ null, %14 ], [ null, %28 ], [ null, %25 ], [ %32, %31 ]
  %38 = load volatile i8, ptr %5, align 2
  %39 = zext i8 %38 to i32
  %40 = shl nuw i32 1, %39
  %41 = and i32 %40, -4161
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8
  br label %46

46:                                               ; preds = %43, %36
  %47 = phi ptr [ %45, %43 ], [ null, %36 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %4, i8 0, i32 88, i1 false) #6
  %48 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %49 = load i16, ptr %48, align 4
  %50 = trunc i16 %49 to i8
  %51 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 5
  store i8 %50, ptr %51, align 2
  %52 = getelementptr inbounds %struct.flowi6, ptr %4, i32 0, i32 1
  %53 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %52, ptr noundef align 4 dereferenceable(16) %53, i32 16, i1 false) #6
  %54 = getelementptr inbounds %struct.flowi6, ptr %4, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %54, ptr noundef align 4 dereferenceable(16) %47, i32 16, i1 false) #6
  %55 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %56 = load i32, ptr %55, align 4
  store i32 %56, ptr %4, align 8
  %57 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 34
  %58 = load i32, ptr %57, align 8
  %59 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 2
  store i32 %58, ptr %59, align 8
  %60 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %61 = load i16, ptr %60, align 4
  %62 = getelementptr inbounds %struct.flowi6, ptr %4, i32 0, i32 4
  store i16 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 6
  %64 = load i16, ptr %63, align 8
  %65 = getelementptr inbounds %struct.anon.132, ptr %62, i32 0, i32 1
  store i16 %64, ptr %65, align 2
  %66 = getelementptr inbounds %struct.ipv6_pinfo, ptr %47, i32 0, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.flowi6, ptr %4, i32 0, i32 3
  store i32 %67, ptr %68, align 8
  %69 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 8
  %70 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 55
  %71 = load i32, ptr %70, align 4
  store i32 %71, ptr %69, align 4
  %72 = icmp eq i32 %56, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %46
  %74 = getelementptr inbounds %struct.ipv6_pinfo, ptr %47, i32 0, i32 1, i32 1
  %75 = load i32, ptr %74, align 4
  store i32 %75, ptr %4, align 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = load i32, ptr %52, align 8
  %79 = and i32 %78, 255
  %80 = icmp eq i32 %79, 255
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.ipv6_pinfo, ptr %47, i32 0, i32 7
  %83 = load i32, ptr %82, align 4
  store i32 %83, ptr %4, align 8
  br label %84

84:                                               ; preds = %81, %77, %73, %46
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  %85 = icmp eq ptr %37, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.ip6_flowlabel, ptr %37, i32 0, i32 4
  %88 = load ptr, ptr %87, align 4
  br label %92

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.ipv6_pinfo, ptr %15, i32 0, i32 17
  %91 = load volatile ptr, ptr %90, align 4
  br label %92

92:                                               ; preds = %89, %86
  %93 = phi ptr [ %88, %86 ], [ %91, %89 ]
  %94 = call ptr @fl6_update_dst(ptr noundef nonnull %4, ptr noundef %93, ptr noundef nonnull %3) #6
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  %95 = call ptr @ip6_dst_lookup_flow(ptr noundef nonnull @init_net, ptr noundef %0, ptr noundef nonnull %4, ptr noundef %94) #6
  %96 = icmp ugt ptr %95, inttoptr (i32 -4096 to ptr)
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = ptrtoint ptr %95 to i32
  br label %135

99:                                               ; preds = %92
  br i1 %1, label %100, label %134

100:                                              ; preds = %99
  %101 = load i32, ptr %15, align 4
  %102 = getelementptr [4 x i32], ptr %15, i32 0, i32 1
  %103 = load i32, ptr %102, align 4
  %104 = or i32 %103, %101
  %105 = getelementptr [4 x i32], ptr %15, i32 0, i32 2
  %106 = load i32, ptr %105, align 4
  %107 = or i32 %104, %106
  %108 = getelementptr [4 x i32], ptr %15, i32 0, i32 3
  %109 = load i32, ptr %108, align 4
  %110 = or i32 %107, %109
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %100
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %15, ptr noundef align 8 dereferenceable(16) %54, i32 16, i1 false)
  br label %113

113:                                              ; preds = %112, %100
  %114 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 11
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 1
  %117 = load i32, ptr %116, align 4
  %118 = or i32 %117, %115
  %119 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 2
  %120 = load i32, ptr %119, align 4
  %121 = or i32 %118, %120
  %122 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 3
  %123 = load i32, ptr %122, align 4
  %124 = or i32 %121, %123
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %113
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %114, ptr noundef align 8 dereferenceable(16) %54, i32 16, i1 false)
  %127 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  store i32 100663423, ptr %127, align 4
  %128 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %129 = load ptr, ptr %128, align 8
  %130 = getelementptr inbounds %struct.proto, ptr %129, i32 0, i32 22
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %126
  call void %131(ptr noundef %0) #6
  br label %134

134:                                              ; preds = %133, %126, %113, %99
  call void @ip6_sk_dst_store_flow(ptr noundef %0, ptr noundef %95, ptr noundef nonnull %4) #6
  br label %135

135:                                              ; preds = %134, %97
  %136 = phi i32 [ %98, %97 ], [ 0, %134 ]
  br i1 %85, label %140, label %137

137:                                              ; preds = %135
  %138 = getelementptr inbounds %struct.ip6_flowlabel, ptr %37, i32 0, i32 2
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %138) #6, !srcloc !12
  %139 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %138, ptr %138, i32 1, ptr elementtype(i32) %138) #6, !srcloc !13
  br label %140

140:                                              ; preds = %137, %135, %31
  %141 = phi i32 [ %136, %135 ], [ %136, %137 ], [ -22, %31 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  ret i32 %141
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fl6_update_dst(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_dst_lookup_flow(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_sk_dst_store_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip6_datagram_release_cb(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = or i32 %5, %3
  %7 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = xor i32 %8, -65536
  %10 = or i32 %6, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %43, label %12

12:                                               ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  %13 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %14 = load volatile ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %40, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.dst_entry, ptr %14, i32 0, i32 8
  %18 = load i16, ptr %17, align 2
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.dst_entry, ptr %14, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.dst_ops, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %26 = load volatile i8, ptr %25, align 2
  %27 = zext i8 %26 to i32
  %28 = shl nuw i32 1, %27
  %29 = and i32 %28, -4161
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8
  br label %34

34:                                               ; preds = %31, %20
  %35 = phi ptr [ %33, %31 ], [ null, %20 ]
  %36 = getelementptr inbounds %struct.ipv6_pinfo, ptr %35, i32 0, i32 13
  %37 = load i32, ptr %36, align 4
  %38 = tail call ptr %24(ptr noundef nonnull %14, i32 noundef %37) #6
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %34, %16, %12
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %43

41:                                               ; preds = %34
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  %42 = tail call i32 @ip6_datagram_dst_update(ptr noundef %0, i1 noundef zeroext false)
  br label %43

43:                                               ; preds = %41, %40, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ip6_datagram_connect(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca [4 x i32], align 4
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %7 = load volatile i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = shl nuw i32 1, %8
  %10 = and i32 %9, -4161
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  br label %15

15:                                               ; preds = %12, %3
  %16 = phi ptr [ %14, %12 ], [ null, %3 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  %17 = load i16, ptr %1, align 4
  %18 = icmp eq i16 %17, 2
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 5
  %21 = load i8, ptr %20, align 1
  %22 = and i8 %21, 32
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %199

24:                                               ; preds = %19
  %25 = tail call i32 @__ip4_datagram_connect(ptr noundef %0, ptr noundef %1, i32 noundef %2) #6
  br label %83

26:                                               ; preds = %15
  %27 = icmp slt i32 %2, 24
  br i1 %27, label %199, label %28

28:                                               ; preds = %26
  %29 = icmp eq i16 %17, 10
  br i1 %29, label %30, label %199

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.ipv6_pinfo, ptr %16, i32 0, i32 9
  %32 = load i16, ptr %31, align 2
  %33 = and i16 %32, 2
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, -241
  br label %39

39:                                               ; preds = %35, %30
  %40 = phi i32 [ %38, %35 ], [ 0, %30 ]
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
  %67 = tail call i32 @__ipv6_addr_type(ptr noundef %41) #6
  %68 = and i32 %67, 4096
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %140, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds i8, ptr %5, i32 8
  store i64 0, ptr %71, align 4, !annotation !8
  %72 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 5
  %73 = load i8, ptr %72, align 1
  %74 = and i8 %73, 32
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %199

76:                                               ; preds = %70
  store i16 2, ptr %5, align 4
  %77 = load i32, ptr %49, align 4
  %78 = getelementptr inbounds %struct.sockaddr_in, ptr %5, i32 0, i32 2
  store i32 %77, ptr %78, align 4
  %79 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 1
  %80 = load i16, ptr %79, align 2
  %81 = getelementptr inbounds %struct.sockaddr_in, ptr %5, i32 0, i32 1
  store i16 %80, ptr %81, align 2
  %82 = call i32 @__ip4_datagram_connect(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 16) #6
  br label %83

83:                                               ; preds = %76, %24
  %84 = phi i32 [ %25, %24 ], [ %82, %76 ]
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %199

86:                                               ; preds = %83
  %87 = load i32, ptr %0, align 8
  %88 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 10
  store i32 0, ptr %88, align 4
  %89 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 1
  store i32 0, ptr %89, align 4
  %90 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 2
  store i32 -65536, ptr %90, align 4
  %91 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 3
  store i32 %87, ptr %91, align 4
  %92 = load i32, ptr %16, align 4
  %93 = getelementptr [4 x i32], ptr %16, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = or i32 %94, %92
  %96 = getelementptr [4 x i32], ptr %16, i32 0, i32 2
  %97 = load i32, ptr %96, align 4
  %98 = or i32 %95, %97
  %99 = getelementptr [4 x i32], ptr %16, i32 0, i32 3
  %100 = load i32, ptr %99, align 4
  %101 = or i32 %98, %100
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %86
  %104 = xor i32 %97, -65536
  %105 = or i32 %104, %95
  %106 = icmp eq i32 %105, 0
  %107 = icmp eq i32 %100, 0
  %108 = select i1 %106, i1 %107, i1 false
  br i1 %108, label %109, label %112

109:                                              ; preds = %103, %86
  %110 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 2
  %111 = load i32, ptr %110, align 4
  store i32 0, ptr %16, align 4
  store i32 0, ptr %93, align 4
  store i32 -65536, ptr %96, align 4
  store i32 %111, ptr %99, align 4
  br label %112

112:                                              ; preds = %109, %103
  %113 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 11
  %114 = load i32, ptr %113, align 4
  %115 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 1
  %116 = load i32, ptr %115, align 4
  %117 = or i32 %116, %114
  %118 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 2
  %119 = load i32, ptr %118, align 4
  %120 = or i32 %117, %119
  %121 = getelementptr %struct.sock_common, ptr %0, i32 0, i32 11, i32 0, i32 0, i32 3
  %122 = load i32, ptr %121, align 4
  %123 = or i32 %120, %122
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %112
  %126 = xor i32 %119, -65536
  %127 = or i32 %126, %117
  %128 = icmp eq i32 %127, 0
  %129 = icmp eq i32 %122, 0
  %130 = select i1 %128, i1 %129, i1 false
  br i1 %130, label %131, label %199

131:                                              ; preds = %125, %112
  %132 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %133 = load i32, ptr %132, align 4
  store i32 0, ptr %113, align 4
  store i32 0, ptr %115, align 4
  store i32 -65536, ptr %118, align 4
  store i32 %133, ptr %121, align 4
  %134 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %135 = load ptr, ptr %134, align 8
  %136 = getelementptr inbounds %struct.proto, ptr %135, i32 0, i32 22
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %199, label %139

139:                                              ; preds = %131
  call void %137(ptr noundef %0) #6
  br label %199

140:                                              ; preds = %66
  %141 = and i32 %67, 32
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %140
  %144 = and i32 %67, 2
  %145 = icmp ne i32 %144, 0
  %146 = and i32 %67, 48
  %147 = icmp ne i32 %146, 0
  %148 = and i1 %145, %147
  br i1 %148, label %149, label %175

149:                                              ; preds = %143, %140
  %150 = icmp ugt i32 %2, 27
  br i1 %150, label %151, label %162

151:                                              ; preds = %149
  %152 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 4
  %153 = load i32, ptr %152, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %157 = load i32, ptr %156, align 4
  %158 = icmp eq i32 %157, 0
  %159 = icmp eq i32 %157, %153
  %160 = or i1 %158, %159
  br i1 %160, label %161, label %199

161:                                              ; preds = %155
  store i32 %153, ptr %156, align 4
  br label %162

162:                                              ; preds = %161, %151, %149
  %163 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %164 = load i32, ptr %163, align 4
  %165 = icmp ne i32 %164, 0
  %166 = and i32 %67, 2
  %167 = icmp eq i32 %166, 0
  %168 = select i1 %165, i1 true, i1 %167
  br i1 %168, label %172, label %169

169:                                              ; preds = %162
  %170 = getelementptr inbounds %struct.ipv6_pinfo, ptr %16, i32 0, i32 7
  %171 = load i32, ptr %170, align 4
  store i32 %171, ptr %163, align 4
  br label %172

172:                                              ; preds = %169, %162
  %173 = phi i32 [ %171, %169 ], [ %164, %162 ]
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %199, label %175

175:                                              ; preds = %172, %143
  %176 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef align 4 dereferenceable(16) %176, i32 16, i1 false)
  %177 = getelementptr inbounds %struct.ipv6_pinfo, ptr %16, i32 0, i32 3
  %178 = load i32, ptr %177, align 4
  %179 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %180 = load i16, ptr %179, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %176, ptr noundef align 4 dereferenceable(16) %41, i32 16, i1 false)
  store i32 %40, ptr %177, align 4
  %181 = getelementptr inbounds %struct.sockaddr_in6, ptr %1, i32 0, i32 1
  %182 = load i16, ptr %181, align 2
  store i16 %182, ptr %179, align 4
  %183 = tail call i32 @ip6_datagram_dst_update(ptr noundef %0, i1 noundef zeroext true)
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %175
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %176, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  store i32 %178, ptr %177, align 4
  store i16 %180, ptr %179, align 4
  br label %199

186:                                              ; preds = %175
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  %187 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 81
  %188 = load volatile ptr, ptr %187, align 4
  %189 = icmp eq ptr %188, null
  br i1 %189, label %194, label %190

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.sock_reuseport, ptr %188, i32 0, i32 6
  %192 = load i8, ptr %191, align 4
  %193 = or i8 %192, 2
  store i8 %193, ptr %191, align 4
  br label %194

194:                                              ; preds = %190, %186
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  store volatile i8 1, ptr %6, align 2
  %195 = tail call i32 @prandom_u32() #6
  %196 = icmp eq i32 %195, 0
  %197 = select i1 %196, i32 1, i32 %195
  %198 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 42
  store volatile i32 %197, ptr %198, align 4
  br label %199

199:                                              ; preds = %194, %185, %172, %155, %139, %131, %125, %83, %70, %28, %26, %19
  %200 = phi i32 [ -97, %19 ], [ -22, %26 ], [ -97, %28 ], [ %84, %83 ], [ 0, %139 ], [ 0, %131 ], [ %183, %185 ], [ 0, %194 ], [ -101, %70 ], [ -22, %155 ], [ -22, %172 ], [ 0, %125 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  ret i32 %200
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ip4_datagram_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_datagram_connect(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #6
  %4 = tail call i32 @__ip6_datagram_connect(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  tail call void @release_sock(ptr noundef %0) #6
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_datagram_connect_v6_only(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load i16, ptr %1, align 4
  %5 = icmp eq i16 %4, 10
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #6
  %7 = tail call i32 @__ip6_datagram_connect(ptr noundef %0, ptr noundef %1, i32 noundef %2) #6
  tail call void @release_sock(ptr noundef %0) #6
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ -97, %3 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipv6_icmp_error(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %8 = load volatile i8, ptr %7, align 2
  %9 = zext i8 %8 to i32
  %10 = shl nuw i32 1, %9
  %11 = and i32 %10, -4161
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  br label %16

16:                                               ; preds = %13, %6
  %17 = phi ptr [ %15, %13 ], [ null, %6 ]
  %18 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = getelementptr i8, ptr %19, i32 %22
  %24 = getelementptr inbounds %struct.ipv6_pinfo, ptr %17, i32 0, i32 9
  %25 = load i16, ptr %24, align 2
  %26 = and i16 %25, 1
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %108, label %28

28:                                               ; preds = %16
  %29 = tail call ptr @skb_clone(ptr noundef %1, i32 noundef 2592) #6
  %30 = icmp eq ptr %29, null
  br i1 %30, label %108, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 13, i32 0, i32 16
  store i16 -8826, ptr %32, align 8
  %33 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 3, i32 24
  store i32 %2, ptr %33, align 4
  %34 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 3, i32 28
  store i8 3, ptr %34, align 4
  %35 = load i8, ptr %23, align 4
  %36 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 3, i32 29
  store i8 %35, ptr %36, align 1
  %37 = getelementptr inbounds %struct.icmp6hdr, ptr %23, i32 0, i32 1
  %38 = load i8, ptr %37, align 1
  %39 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 3, i32 30
  store i8 %38, ptr %39, align 2
  %40 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 3, i32 31
  store i8 0, ptr %40, align 1
  %41 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 3, i32 32
  store i32 %4, ptr %41, align 4
  %42 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 3, i32 36
  store i32 0, ptr %42, align 4
  %43 = getelementptr %struct.icmp6hdr, ptr %23, i32 4
  %44 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 16
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 13, i32 0, i32 18
  %47 = load i16, ptr %46, align 4
  %48 = zext i16 %47 to i32
  %49 = getelementptr i8, ptr %45, i32 %48
  %50 = ptrtoint ptr %43 to i32
  %51 = ptrtoint ptr %49 to i32
  %52 = sub i32 %50, %51
  %53 = trunc i32 %52 to i16
  %54 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 3, i32 40
  store i16 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 3, i32 42
  store i16 %3, ptr %55, align 2
  %56 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 17
  %57 = load ptr, ptr %56, align 4
  %58 = ptrtoint ptr %5 to i32
  %59 = ptrtoint ptr %57 to i32
  %60 = sub i32 %58, %59
  %61 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 5
  %62 = load i32, ptr %61, align 8
  %63 = sub i32 %62, %60
  store i32 %63, ptr %61, align 8
  %64 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 6
  %65 = load i32, ptr %64, align 4
  %66 = icmp ult i32 %63, %65
  br i1 %66, label %67, label %68, !prof !9

67:                                               ; preds = %31
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #6, !srcloc !14
  unreachable

68:                                               ; preds = %31
  %69 = getelementptr i8, ptr %57, i32 %60
  store ptr %69, ptr %56, align 4
  %70 = load volatile i8, ptr %7, align 2
  %71 = zext i8 %70 to i32
  %72 = shl nuw i32 1, %71
  %73 = and i32 %72, -4161
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %77 = load ptr, ptr %76, align 8
  br label %78

78:                                               ; preds = %75, %68
  %79 = phi ptr [ %77, %75 ], [ null, %68 ]
  %80 = getelementptr inbounds %struct.ipv6_pinfo, ptr %79, i32 0, i32 9
  %81 = load i16, ptr %80, align 2
  %82 = and i16 %81, 16384
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %97, label %84

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 13, i32 0, i32 17
  %86 = load i16, ptr %85, align 2
  %87 = zext i16 %86 to i32
  %88 = getelementptr i8, ptr %45, i32 %87
  %89 = load i8, ptr %88, align 4
  switch i8 %89, label %97 [
    i8 3, label %90
    i8 1, label %90
  ]

90:                                               ; preds = %84, %84
  %91 = getelementptr inbounds %struct.icmp6hdr, ptr %88, i32 0, i32 3
  %92 = load i8, ptr %91, align 4
  %93 = zext i8 %92 to i32
  %94 = shl nuw nsw i32 %93, 3
  tail call void @ip_icmp_error_rfc4884(ptr noundef nonnull %29, ptr noundef %42, i32 noundef 8, i32 noundef %94) #6
  %95 = load ptr, ptr %56, align 4
  %96 = load ptr, ptr %44, align 8
  br label %97

97:                                               ; preds = %90, %84, %78
  %98 = phi ptr [ %96, %90 ], [ %45, %84 ], [ %45, %78 ]
  %99 = phi ptr [ %95, %90 ], [ %69, %84 ], [ %69, %78 ]
  %100 = ptrtoint ptr %99 to i32
  %101 = ptrtoint ptr %98 to i32
  %102 = sub i32 %100, %101
  %103 = trunc i32 %102 to i16
  %104 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 13, i32 0, i32 17
  store i16 %103, ptr %104, align 2
  %105 = tail call i32 @sock_queue_err_skb(ptr noundef %0, ptr noundef nonnull %29) #6
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %97
  tail call void @kfree_skb_reason(ptr noundef nonnull %29, i32 noundef 0) #6
  br label %108

108:                                              ; preds = %107, %97, %28, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipv6_local_error(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %6 = load volatile i8, ptr %5, align 2
  %7 = zext i8 %6 to i32
  %8 = shl nuw i32 1, %7
  %9 = and i32 %8, -4161
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  br label %14

14:                                               ; preds = %11, %4
  %15 = phi ptr [ %13, %11 ], [ null, %4 ]
  %16 = getelementptr inbounds %struct.ipv6_pinfo, ptr %15, i32 0, i32 9
  %17 = load i16, ptr %16, align 2
  %18 = and i16 %17, 1
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %81, label %20

20:                                               ; preds = %14
  %21 = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %81, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 13, i32 0, i32 16
  store i16 -8826, ptr %24, align 8
  %25 = tail call ptr @skb_put(ptr noundef nonnull %21, i32 noundef 40) #6
  %26 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 17
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 16
  %29 = load ptr, ptr %28, align 8
  %30 = ptrtoint ptr %27 to i32
  %31 = ptrtoint ptr %29 to i32
  %32 = sub i32 %30, %31
  %33 = trunc i32 %32 to i16
  %34 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 13, i32 0, i32 18
  store i16 %33, ptr %34, align 4
  %35 = and i32 %32, 65535
  %36 = getelementptr i8, ptr %29, i32 %35
  %37 = getelementptr inbounds %struct.ipv6hdr, ptr %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.flowi6, ptr %2, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %37, ptr noundef align 8 dereferenceable(16) %38, i32 16, i1 false)
  store i32 96, ptr %36, align 4
  %39 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3, i32 24
  store i32 %1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3, i32 28
  store i8 1, ptr %40, align 4
  %41 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3, i32 29
  store i8 0, ptr %41, align 1
  %42 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3, i32 30
  store i8 0, ptr %42, align 2
  %43 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3, i32 31
  store i8 0, ptr %43, align 1
  %44 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3, i32 32
  store i32 %3, ptr %44, align 4
  %45 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3, i32 36
  store i32 0, ptr %45, align 4
  %46 = load ptr, ptr %28, align 8
  %47 = load i16, ptr %34, align 4
  %48 = zext i16 %47 to i32
  %49 = getelementptr i8, ptr %46, i32 %48
  %50 = ptrtoint ptr %37 to i32
  %51 = ptrtoint ptr %49 to i32
  %52 = sub i32 %50, %51
  %53 = trunc i32 %52 to i16
  %54 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3, i32 40
  store i16 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.flowi6, ptr %2, i32 0, i32 4
  %56 = load i16, ptr %55, align 4
  %57 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3, i32 42
  store i16 %56, ptr %57, align 2
  %58 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 14
  %59 = load ptr, ptr %58, align 8
  %60 = load ptr, ptr %26, align 4
  %61 = ptrtoint ptr %59 to i32
  %62 = ptrtoint ptr %60 to i32
  %63 = sub i32 %61, %62
  %64 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 5
  %65 = load i32, ptr %64, align 8
  %66 = sub i32 %65, %63
  store i32 %66, ptr %64, align 8
  %67 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 6
  %68 = load i32, ptr %67, align 4
  %69 = icmp ult i32 %66, %68
  br i1 %69, label %70, label %71, !prof !9

70:                                               ; preds = %23
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #6, !srcloc !14
  unreachable

71:                                               ; preds = %23
  %72 = getelementptr i8, ptr %60, i32 %63
  store ptr %72, ptr %26, align 4
  %73 = ptrtoint ptr %72 to i32
  %74 = ptrtoint ptr %46 to i32
  %75 = sub i32 %73, %74
  %76 = trunc i32 %75 to i16
  %77 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 13, i32 0, i32 17
  store i16 %76, ptr %77, align 2
  %78 = tail call i32 @sock_queue_err_skb(ptr noundef %0, ptr noundef nonnull %21) #6
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %71
  tail call void @kfree_skb_reason(ptr noundef nonnull %21, i32 noundef 0) #6
  br label %81

81:                                               ; preds = %80, %71, %20, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipv6_local_rxpmtu(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %5 = load volatile i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = shl nuw i32 1, %6
  %8 = and i32 %7, -4161
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi ptr [ %12, %10 ], [ null, %3 ]
  %15 = getelementptr inbounds %struct.ipv6_pinfo, ptr %14, i32 0, i32 8
  %16 = load i16, ptr %15, align 4
  %17 = and i16 %16, 4096
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %74, label %19

19:                                               ; preds = %13
  %20 = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %74, label %22

22:                                               ; preds = %19
  %23 = tail call ptr @skb_put(ptr noundef nonnull %20, i32 noundef 40) #6
  %24 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 17
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 16
  %27 = load ptr, ptr %26, align 8
  %28 = ptrtoint ptr %25 to i32
  %29 = ptrtoint ptr %27 to i32
  %30 = sub i32 %28, %29
  %31 = trunc i32 %30 to i16
  %32 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 13, i32 0, i32 18
  store i16 %31, ptr %32, align 4
  %33 = and i32 %30, 65535
  %34 = getelementptr i8, ptr %27, i32 %33
  %35 = getelementptr inbounds %struct.ipv6hdr, ptr %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.flowi6, ptr %1, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %35, ptr noundef align 8 dereferenceable(16) %36, i32 16, i1 false)
  %37 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 3
  %38 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 3, i32 28
  store i32 %2, ptr %38, align 4
  store i16 10, ptr %37, align 4
  %39 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 3, i32 2
  store i16 0, ptr %39, align 2
  %40 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 3, i32 4
  store i32 0, ptr %40, align 4
  %41 = load i32, ptr %1, align 8
  %42 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 3, i32 24
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 3, i32 8
  %44 = load ptr, ptr %26, align 8
  %45 = load i16, ptr %32, align 4
  %46 = zext i16 %45 to i32
  %47 = getelementptr i8, ptr %44, i32 %46
  %48 = getelementptr inbounds %struct.ipv6hdr, ptr %47, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %43, ptr noundef align 4 dereferenceable(16) %48, i32 16, i1 false)
  %49 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 14
  %50 = load ptr, ptr %49, align 8
  %51 = load ptr, ptr %24, align 4
  %52 = ptrtoint ptr %50 to i32
  %53 = ptrtoint ptr %51 to i32
  %54 = sub i32 %52, %53
  %55 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 5
  %56 = load i32, ptr %55, align 8
  %57 = sub i32 %56, %54
  store i32 %57, ptr %55, align 8
  %58 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 6
  %59 = load i32, ptr %58, align 4
  %60 = icmp ult i32 %57, %59
  br i1 %60, label %61, label %62, !prof !9

61:                                               ; preds = %22
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #6, !srcloc !14
  unreachable

62:                                               ; preds = %22
  %63 = getelementptr i8, ptr %51, i32 %54
  store ptr %63, ptr %24, align 4
  %64 = ptrtoint ptr %63 to i32
  %65 = ptrtoint ptr %44 to i32
  %66 = sub i32 %64, %65
  %67 = trunc i32 %66 to i16
  %68 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 13, i32 0, i32 17
  store i16 %67, ptr %68, align 2
  %69 = getelementptr inbounds %struct.ipv6_pinfo, ptr %14, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !15
  %70 = ptrtoint ptr %20 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %69) #6, !srcloc !12
  %71 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %70, ptr %69) #6, !srcloc !16
  %72 = extractvalue { i32, i32 } %71, 0
  %73 = inttoptr i32 %72 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !17
  tail call void @kfree_skb_reason(ptr noundef %73, i32 noundef 0) #6
  br label %74

74:                                               ; preds = %62, %19, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipv6_recv_error(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca %struct.in6_pktinfo, align 4
  %6 = alloca %struct.anon.191, align 4
  %7 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %8 = load volatile i8, ptr %7, align 2
  %9 = zext i8 %8 to i32
  %10 = shl nuw i32 1, %9
  %11 = and i32 %10, -4161
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  br label %16

16:                                               ; preds = %13, %4
  %17 = phi ptr [ %15, %13 ], [ null, %4 ]
  %18 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %6) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %6, i8 0, i32 44, i1 false), !annotation !8
  %19 = tail call ptr @sock_dequeue_err_skb(ptr noundef %0) #6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %251, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 5
  %23 = load i32, ptr %22, align 8
  %24 = icmp sgt i32 %23, %2
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = or i32 %27, 32
  store i32 %28, ptr %26, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i32 [ %2, %25 ], [ %23, %21 ]
  %31 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %32 = tail call i32 @skb_copy_datagram_iter(ptr noundef nonnull %19, i32 noundef 0, ptr noundef %31, i32 noundef %30) #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34, !prof !18

34:                                               ; preds = %29
  tail call void @kfree_skb_reason(ptr noundef nonnull %19, i32 noundef 0) #6
  br label %251

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 2
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 15
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.skb_shared_info, ptr %39, i32 0, i32 7
  %41 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %42, 2048
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 65
  %47 = load i16, ptr %46, align 8
  %48 = zext i16 %47 to i32
  %49 = and i32 %48, 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = icmp eq i64 %37, 0
  %53 = and i32 %48, 16
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %52, i1 true, i1 %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i64, ptr %40, align 8
  %58 = icmp eq i64 %57, 0
  %59 = and i16 %47, 64
  %60 = icmp eq i16 %59, 0
  %61 = select i1 %58, i1 true, i1 %60
  br i1 %61, label %63, label %62

62:                                               ; preds = %56, %51, %45, %35
  tail call void @__sock_recv_timestamp(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %19) #6
  br label %73

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 64
  %65 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 64, i32 1
  tail call void @_raw_spin_lock(ptr noundef %65) #6
  %66 = load i32, ptr %64, align 4
  %67 = add i32 %66, 1
  store i32 %67, ptr %64, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !19
  %68 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 63
  store i64 %37, ptr %68, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !20
  %69 = load i32, ptr %64, align 4
  %70 = add i32 %69, 1
  store i32 %70, ptr %64, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !21
  %71 = load i16, ptr %65, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr %65, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !24
  br label %73

73:                                               ; preds = %63, %62
  %74 = load volatile i32, ptr %41, align 4
  %75 = and i32 %74, 524288
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 13
  %79 = load i16, ptr %78, align 8
  %80 = and i16 %79, 1024
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  tail call void @__sock_recv_wifi_status(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %19) #6
  br label %83

83:                                               ; preds = %82, %77, %73
  %84 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3
  %85 = icmp eq ptr %18, null
  br i1 %85, label %145, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3, i32 28
  %88 = load i8, ptr %87, align 4
  %89 = add i8 %88, -1
  %90 = icmp ult i8 %89, 3
  br i1 %90, label %95, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3, i32 42
  %93 = load i16, ptr %92, align 2
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %145, label %95

95:                                               ; preds = %91, %86
  %96 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 16
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 13, i32 0, i32 18
  %99 = load i16, ptr %98, align 4
  %100 = zext i16 %99 to i32
  %101 = getelementptr i8, ptr %97, i32 %100
  store i16 10, ptr %18, align 4
  %102 = getelementptr inbounds %struct.sockaddr_in6, ptr %18, i32 0, i32 2
  store i32 0, ptr %102, align 4
  %103 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3, i32 42
  %104 = load i16, ptr %103, align 2
  %105 = getelementptr inbounds %struct.sockaddr_in6, ptr %18, i32 0, i32 1
  store i16 %104, ptr %105, align 2
  %106 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 13, i32 0, i32 16
  %107 = load i16, ptr %106, align 8
  %108 = icmp eq i16 %107, -8826
  %109 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3, i32 40
  %110 = load i16, ptr %109, align 4
  %111 = zext i16 %110 to i32
  %112 = getelementptr i8, ptr %101, i32 %111
  br i1 %108, label %113, label %136

113:                                              ; preds = %95
  %114 = getelementptr i8, ptr %112, i32 -24
  %115 = getelementptr inbounds %struct.sockaddr_in6, ptr %18, i32 0, i32 3
  %116 = getelementptr inbounds %struct.ipv6hdr, ptr %114, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %115, ptr noundef align 4 dereferenceable(16) %116, i32 16, i1 false)
  %117 = getelementptr inbounds %struct.ipv6_pinfo, ptr %17, i32 0, i32 9
  %118 = load i16, ptr %117, align 2
  %119 = and i16 %118, 2
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %113
  %122 = load i32, ptr %114, align 4
  %123 = and i32 %122, -241
  store i32 %123, ptr %102, align 4
  br label %124

124:                                              ; preds = %121, %113
  %125 = load i32, ptr %84, align 8
  %126 = tail call i32 @__ipv6_addr_type(ptr noundef %115) #6
  %127 = and i32 %126, 32
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = and i32 %126, 2
  %131 = icmp ne i32 %130, 0
  %132 = and i32 %126, 48
  %133 = icmp ne i32 %132, 0
  %134 = and i1 %131, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %129, %124
  br label %142

136:                                              ; preds = %95
  %137 = load i32, ptr %112, align 4
  %138 = getelementptr inbounds %struct.sockaddr_in6, ptr %18, i32 0, i32 3
  store i32 0, ptr %138, align 4
  %139 = getelementptr %struct.sockaddr_in6, ptr %18, i32 0, i32 3, i32 0, i32 0, i32 1
  store i32 0, ptr %139, align 4
  %140 = getelementptr %struct.sockaddr_in6, ptr %18, i32 0, i32 3, i32 0, i32 0, i32 2
  store i32 -65536, ptr %140, align 4
  %141 = getelementptr %struct.sockaddr_in6, ptr %18, i32 0, i32 3, i32 0, i32 0, i32 3
  store i32 %137, ptr %141, align 4
  br label %142

142:                                              ; preds = %136, %135, %129
  %143 = phi i32 [ 0, %136 ], [ %125, %135 ], [ 0, %129 ]
  %144 = getelementptr inbounds %struct.sockaddr_in6, ptr %18, i32 0, i32 4
  store i32 %143, ptr %144, align 4
  store i32 28, ptr %3, align 4
  br label %145

145:                                              ; preds = %142, %91, %83
  %146 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3, i32 24
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef align 4 dereferenceable(16) %146, i32 16, i1 false)
  %147 = getelementptr inbounds %struct.anon.191, ptr %6, i32 0, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(28) %147, i8 0, i32 28, i1 false)
  %148 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3, i32 28
  %149 = load i8, ptr %148, align 4
  switch i8 %149, label %150 [
    i8 2, label %153
    i8 3, label %153
    i8 1, label %246
  ]

150:                                              ; preds = %145
  %151 = load i32, ptr %84, align 8
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %246, label %153

153:                                              ; preds = %150, %145, %145
  store i16 10, ptr %147, align 4
  %154 = getelementptr inbounds %struct.ipv6_pinfo, ptr %17, i32 0, i32 8
  %155 = load i16, ptr %154, align 4
  %156 = icmp eq i16 %155, 0
  br i1 %156, label %196, label %157

157:                                              ; preds = %153
  %158 = load volatile i8, ptr %7, align 2
  %159 = zext i8 %158 to i32
  %160 = shl nuw i32 1, %159
  %161 = and i32 %160, -4161
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %165 = load ptr, ptr %164, align 8
  br label %166

166:                                              ; preds = %163, %157
  %167 = phi ptr [ %165, %163 ], [ null, %157 ]
  %168 = getelementptr inbounds %struct.ipv6_pinfo, ptr %167, i32 0, i32 8
  %169 = load i16, ptr %168, align 4
  %170 = and i16 %169, 4
  %171 = icmp eq i16 %170, 0
  br i1 %171, label %196, label %172

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 13, i32 0, i32 16
  %174 = load i16, ptr %173, align 8
  %175 = icmp eq i16 %174, -8826
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 16, i1 false) #6, !annotation !8
  %176 = load i32, ptr %84, align 8
  %177 = getelementptr inbounds %struct.in6_pktinfo, ptr %5, i32 0, i32 1
  store i32 %176, ptr %177, align 4
  %178 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 16
  %179 = load ptr, ptr %178, align 8
  %180 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 13, i32 0, i32 18
  %181 = load i16, ptr %180, align 4
  %182 = zext i16 %181 to i32
  %183 = getelementptr i8, ptr %179, i32 %182
  br i1 %175, label %184, label %186

184:                                              ; preds = %172
  %185 = getelementptr inbounds %struct.ipv6hdr, ptr %183, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef align 4 dereferenceable(16) %185, i32 16, i1 false) #6
  br label %191

186:                                              ; preds = %172
  %187 = getelementptr inbounds %struct.iphdr, ptr %183, i32 0, i32 9
  %188 = load i32, ptr %187, align 4
  %189 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 2
  store i32 -65536, ptr %189, align 4
  %190 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 3
  store i32 %188, ptr %190, align 4
  br label %191

191:                                              ; preds = %186, %184
  %192 = icmp sgt i32 %176, -1
  br i1 %192, label %193, label %195

193:                                              ; preds = %191
  %194 = call i32 @put_cmsg(ptr noundef %1, i32 noundef 41, i32 noundef 50, i32 noundef 20, ptr noundef nonnull %5) #6
  br label %195

195:                                              ; preds = %193, %191
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #6
  br label %196

196:                                              ; preds = %195, %166, %153
  %197 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 13, i32 0, i32 16
  %198 = load i16, ptr %197, align 8
  %199 = icmp eq i16 %198, -8826
  br i1 %199, label %200, label %227

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.anon.191, ptr %6, i32 0, i32 1, i32 3
  %202 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 16
  %203 = load ptr, ptr %202, align 8
  %204 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 13, i32 0, i32 18
  %205 = load i16, ptr %204, align 4
  %206 = zext i16 %205 to i32
  %207 = getelementptr i8, ptr %203, i32 %206
  %208 = getelementptr inbounds %struct.ipv6hdr, ptr %207, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %201, ptr noundef align 4 dereferenceable(16) %208, i32 16, i1 false)
  %209 = load i16, ptr %154, align 4
  %210 = icmp eq i16 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %200
  call void @ip6_datagram_recv_specific_ctl(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %19)
  br label %212

212:                                              ; preds = %211, %200
  %213 = load i32, ptr %84, align 8
  %214 = call i32 @__ipv6_addr_type(ptr noundef %201) #6
  %215 = and i32 %214, 32
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %212
  %218 = and i32 %214, 2
  %219 = icmp ne i32 %218, 0
  %220 = and i32 %214, 48
  %221 = icmp ne i32 %220, 0
  %222 = and i1 %219, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %217, %212
  br label %224

224:                                              ; preds = %223, %217
  %225 = phi i32 [ %213, %223 ], [ 0, %217 ]
  %226 = getelementptr inbounds %struct.anon.191, ptr %6, i32 0, i32 1, i32 4
  store i32 %225, ptr %226, align 4
  br label %246

227:                                              ; preds = %196
  %228 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 16
  %229 = load ptr, ptr %228, align 8
  %230 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 13, i32 0, i32 18
  %231 = load i16, ptr %230, align 4
  %232 = zext i16 %231 to i32
  %233 = getelementptr i8, ptr %229, i32 %232
  %234 = getelementptr inbounds %struct.iphdr, ptr %233, i32 0, i32 8
  %235 = load i32, ptr %234, align 4
  %236 = getelementptr inbounds %struct.anon.191, ptr %6, i32 0, i32 1, i32 3
  store i32 0, ptr %236, align 4
  %237 = getelementptr inbounds %struct.anon.191, ptr %6, i32 0, i32 1, i32 3, i32 0, i32 0, i32 1
  store i32 0, ptr %237, align 4
  %238 = getelementptr inbounds %struct.anon.191, ptr %6, i32 0, i32 1, i32 3, i32 0, i32 0, i32 2
  store i32 -65536, ptr %238, align 4
  %239 = getelementptr inbounds %struct.anon.191, ptr %6, i32 0, i32 1, i32 3, i32 0, i32 0, i32 3
  store i32 %235, ptr %239, align 4
  %240 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 4
  %241 = load i16, ptr %240, align 2
  %242 = icmp eq i16 %241, 0
  br i1 %242, label %246, label %243

243:                                              ; preds = %227
  %244 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 1
  %245 = load ptr, ptr %244, align 4
  call void @ip_cmsg_recv_offset(ptr noundef %1, ptr noundef %245, ptr noundef nonnull %19, i32 noundef 0, i32 noundef 0) #6
  br label %246

246:                                              ; preds = %243, %227, %224, %150, %145
  %247 = call i32 @put_cmsg(ptr noundef %1, i32 noundef 41, i32 noundef 25, i32 noundef 44, ptr noundef nonnull %6) #6
  %248 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %249 = load i32, ptr %248, align 4
  %250 = or i32 %249, 8192
  store i32 %250, ptr %248, align 4
  call void @consume_skb(ptr noundef nonnull %19) #6
  br label %251

251:                                              ; preds = %246, %34, %16
  %252 = phi i32 [ %32, %34 ], [ %30, %246 ], [ -11, %16 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %6) #6
  ret i32 %252
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_dequeue_err_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip6_datagram_recv_common_ctl(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.in6_pktinfo, align 4
  %5 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %6 = load volatile i8, ptr %5, align 2
  %7 = zext i8 %6 to i32
  %8 = shl nuw i32 1, %7
  %9 = and i32 %8, -4161
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  br label %14

14:                                               ; preds = %11, %3
  %15 = phi ptr [ %13, %11 ], [ null, %3 ]
  %16 = getelementptr inbounds %struct.ipv6_pinfo, ptr %15, i32 0, i32 8
  %17 = load i16, ptr %16, align 4
  %18 = and i16 %17, 4
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %46, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 16
  %22 = load i16, ptr %21, align 8
  %23 = icmp eq i16 %22, -8826
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !8
  %24 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.in6_pktinfo, ptr %4, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 18
  %30 = load i16, ptr %29, align 4
  %31 = zext i16 %30 to i32
  %32 = getelementptr i8, ptr %28, i32 %31
  br i1 %23, label %33, label %35

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.ipv6hdr, ptr %32, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef align 4 dereferenceable(16) %34, i32 16, i1 false)
  br label %41

35:                                               ; preds = %20
  %36 = getelementptr inbounds %struct.iphdr, ptr %32, i32 0, i32 9
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds i32, ptr %4, i32 1
  store i32 0, ptr %38, align 4
  %39 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 2
  store i32 -65536, ptr %39, align 4
  %40 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 3
  store i32 %37, ptr %40, align 4
  br label %41

41:                                               ; preds = %35, %33
  %42 = icmp sgt i32 %25, -1
  br i1 %42, label %43, label %45

43:                                               ; preds = %41
  %44 = call i32 @put_cmsg(ptr noundef %1, i32 noundef 41, i32 noundef 50, i32 noundef 20, ptr noundef nonnull %4) #6
  br label %45

45:                                               ; preds = %43, %41
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #6
  br label %46

46:                                               ; preds = %45, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip6_datagram_recv_specific_ctl(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.in6_pktinfo, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in6, align 4
  %10 = alloca [2 x i16], align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %13 = load volatile i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, -4161
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  br label %21

21:                                               ; preds = %18, %3
  %22 = phi ptr [ %20, %18 ], [ null, %3 ]
  %23 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3
  %24 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 18
  %27 = load i16, ptr %26, align 4
  %28 = zext i16 %27 to i32
  %29 = getelementptr i8, ptr %25, i32 %28
  %30 = getelementptr inbounds %struct.ipv6_pinfo, ptr %22, i32 0, i32 8
  %31 = load i16, ptr %30, align 4
  %32 = and i16 %31, 16
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %35 = getelementptr inbounds %struct.ipv6hdr, ptr %29, i32 0, i32 4
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  store i32 %37, ptr %4, align 4
  %38 = call i32 @put_cmsg(ptr noundef %1, i32 noundef 41, i32 noundef 52, i32 noundef 4, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %39 = load i16, ptr %30, align 4
  br label %40

40:                                               ; preds = %34, %21
  %41 = phi i16 [ %39, %34 ], [ %31, %21 ]
  %42 = and i16 %41, 2048
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %45 = load ptr, ptr %24, align 8
  %46 = load i16, ptr %26, align 4
  %47 = zext i16 %46 to i32
  %48 = getelementptr i8, ptr %45, i32 %47
  %49 = load i16, ptr %48, align 2
  %50 = call i16 @llvm.bswap.i16(i16 %49) #6
  %51 = lshr i16 %50, 4
  %52 = and i16 %51, 255
  %53 = zext i16 %52 to i32
  store i32 %53, ptr %5, align 4
  %54 = call i32 @put_cmsg(ptr noundef %1, i32 noundef 41, i32 noundef 67, i32 noundef 4, ptr noundef nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  %55 = load i16, ptr %30, align 4
  br label %56

56:                                               ; preds = %44, %40
  %57 = phi i16 [ %55, %44 ], [ %41, %40 ]
  %58 = and i16 %57, 1024
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !annotation !8
  %61 = load i32, ptr %29, align 4
  %62 = and i32 %61, -241
  store i32 %62, ptr %6, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = call i32 @put_cmsg(ptr noundef %1, i32 noundef 41, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %6) #6
  %66 = load i16, ptr %30, align 4
  br label %67

67:                                               ; preds = %64, %60
  %68 = phi i16 [ %66, %64 ], [ %57, %60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  br label %69

69:                                               ; preds = %67, %56
  %70 = phi i16 [ %68, %67 ], [ %57, %56 ]
  %71 = and i16 %70, 64
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %86, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 16
  %75 = load i16, ptr %74, align 4
  %76 = and i16 %75, 32
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %73
  %79 = getelementptr i8, ptr %29, i32 40
  %80 = getelementptr i8, ptr %29, i32 41
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = shl nuw nsw i32 %82, 3
  %84 = add nuw nsw i32 %83, 8
  %85 = call i32 @put_cmsg(ptr noundef %1, i32 noundef 41, i32 noundef 54, i32 noundef %84, ptr noundef %79) #6
  br label %86

86:                                               ; preds = %78, %73, %69
  %87 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 12
  %88 = load i16, ptr %87, align 4
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %152, label %90

90:                                               ; preds = %86
  %91 = load i16, ptr %30, align 4
  %92 = and i16 %91, 257
  %93 = icmp eq i16 %92, 0
  %94 = icmp ult i16 %88, 40
  %95 = select i1 %93, i1 true, i1 %94
  br i1 %95, label %152, label %96

96:                                               ; preds = %90
  %97 = load ptr, ptr %24, align 8
  %98 = load i16, ptr %26, align 4
  %99 = zext i16 %98 to i32
  %100 = getelementptr i8, ptr %97, i32 %99
  %101 = getelementptr inbounds %struct.ipv6hdr, ptr %100, i32 0, i32 3
  %102 = load i8, ptr %101, align 2
  br label %103

103:                                              ; preds = %145, %96
  %104 = phi i32 [ %148, %145 ], [ 40, %96 ]
  %105 = phi i8 [ %146, %145 ], [ %102, %96 ]
  %106 = getelementptr i8, ptr %29, i32 %104
  switch i8 %105, label %138 [
    i8 60, label %107
    i8 43, label %119
    i8 51, label %131
  ]

107:                                              ; preds = %103
  %108 = load i8, ptr %106, align 1
  %109 = getelementptr i8, ptr %106, i32 1
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i32
  %112 = shl nuw nsw i32 %111, 3
  %113 = add nuw nsw i32 %112, 8
  %114 = load i16, ptr %30, align 4
  %115 = and i16 %114, 256
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %145, label %117

117:                                              ; preds = %107
  %118 = call i32 @put_cmsg(ptr noundef %1, i32 noundef 41, i32 noundef 59, i32 noundef %113, ptr noundef %106) #6
  br label %145

119:                                              ; preds = %103
  %120 = load i8, ptr %106, align 1
  %121 = getelementptr i8, ptr %106, i32 1
  %122 = load i8, ptr %121, align 1
  %123 = zext i8 %122 to i32
  %124 = shl nuw nsw i32 %123, 3
  %125 = add nuw nsw i32 %124, 8
  %126 = load i16, ptr %30, align 4
  %127 = and i16 %126, 1
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %145, label %129

129:                                              ; preds = %119
  %130 = call i32 @put_cmsg(ptr noundef %1, i32 noundef 41, i32 noundef 57, i32 noundef %125, ptr noundef %106) #6
  br label %145

131:                                              ; preds = %103
  %132 = load i8, ptr %106, align 1
  %133 = getelementptr i8, ptr %106, i32 1
  %134 = load i8, ptr %133, align 1
  %135 = zext i8 %134 to i32
  %136 = shl nuw nsw i32 %135, 2
  %137 = add nuw nsw i32 %136, 8
  br label %145

138:                                              ; preds = %103
  %139 = load i8, ptr %106, align 1
  %140 = getelementptr i8, ptr %106, i32 1
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i32
  %143 = shl nuw nsw i32 %142, 3
  %144 = add nuw nsw i32 %143, 8
  br label %145

145:                                              ; preds = %138, %131, %129, %119, %117, %107
  %146 = phi i8 [ %139, %138 ], [ %132, %131 ], [ %120, %129 ], [ %120, %119 ], [ %108, %117 ], [ %108, %107 ]
  %147 = phi i32 [ %144, %138 ], [ %137, %131 ], [ %125, %129 ], [ %125, %119 ], [ %113, %117 ], [ %113, %107 ]
  %148 = add i32 %147, %104
  %149 = load i16, ptr %87, align 4
  %150 = zext i16 %149 to i32
  %151 = icmp ugt i32 %148, %150
  br i1 %151, label %152, label %103

152:                                              ; preds = %145, %90, %86
  %153 = load i16, ptr %30, align 4
  %154 = and i16 %153, 8
  %155 = icmp eq i16 %154, 0
  br i1 %155, label %166, label %156

156:                                              ; preds = %152
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #6
  %157 = load i32, ptr %23, align 4
  %158 = getelementptr inbounds %struct.in6_pktinfo, ptr %7, i32 0, i32 1
  store i32 %157, ptr %158, align 4
  %159 = load ptr, ptr %24, align 8
  %160 = load i16, ptr %26, align 4
  %161 = zext i16 %160 to i32
  %162 = getelementptr i8, ptr %159, i32 %161
  %163 = getelementptr inbounds %struct.ipv6hdr, ptr %162, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef align 4 dereferenceable(16) %163, i32 16, i1 false)
  %164 = call i32 @put_cmsg(ptr noundef %1, i32 noundef 41, i32 noundef 2, i32 noundef 20, ptr noundef nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #6
  %165 = load i16, ptr %30, align 4
  br label %166

166:                                              ; preds = %156, %152
  %167 = phi i16 [ %165, %156 ], [ %153, %152 ]
  %168 = and i16 %167, 32
  %169 = icmp eq i16 %168, 0
  br i1 %169, label %180, label %170

170:                                              ; preds = %166
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  %171 = load ptr, ptr %24, align 8
  %172 = load i16, ptr %26, align 4
  %173 = zext i16 %172 to i32
  %174 = getelementptr i8, ptr %171, i32 %173
  %175 = getelementptr inbounds %struct.ipv6hdr, ptr %174, i32 0, i32 4
  %176 = load i8, ptr %175, align 1
  %177 = zext i8 %176 to i32
  store i32 %177, ptr %8, align 4
  %178 = call i32 @put_cmsg(ptr noundef %1, i32 noundef 41, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  %179 = load i16, ptr %30, align 4
  br label %180

180:                                              ; preds = %170, %166
  %181 = phi i16 [ %179, %170 ], [ %167, %166 ]
  %182 = and i16 %181, 128
  %183 = icmp eq i16 %182, 0
  br i1 %183, label %198, label %184

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 16
  %186 = load i16, ptr %185, align 4
  %187 = and i16 %186, 32
  %188 = icmp eq i16 %187, 0
  br i1 %188, label %198, label %189

189:                                              ; preds = %184
  %190 = getelementptr i8, ptr %29, i32 40
  %191 = getelementptr i8, ptr %29, i32 41
  %192 = load i8, ptr %191, align 1
  %193 = zext i8 %192 to i32
  %194 = shl nuw nsw i32 %193, 3
  %195 = add nuw nsw i32 %194, 8
  %196 = call i32 @put_cmsg(ptr noundef %1, i32 noundef 41, i32 noundef 3, i32 noundef %195, ptr noundef %190) #6
  %197 = load i16, ptr %30, align 4
  br label %198

198:                                              ; preds = %189, %184, %180
  %199 = phi i16 [ %197, %189 ], [ %181, %184 ], [ %181, %180 ]
  %200 = and i16 %199, 512
  %201 = icmp eq i16 %200, 0
  br i1 %201, label %216, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 6
  %204 = load i16, ptr %203, align 2
  %205 = icmp eq i16 %204, 0
  br i1 %205, label %216, label %206

206:                                              ; preds = %202
  %207 = zext i16 %204 to i32
  %208 = getelementptr i8, ptr %29, i32 %207
  %209 = getelementptr i8, ptr %208, i32 1
  %210 = load i8, ptr %209, align 1
  %211 = zext i8 %210 to i32
  %212 = shl nuw nsw i32 %211, 3
  %213 = add nuw nsw i32 %212, 8
  %214 = call i32 @put_cmsg(ptr noundef %1, i32 noundef 41, i32 noundef 4, i32 noundef %213, ptr noundef %208) #6
  %215 = load i16, ptr %30, align 4
  br label %216

216:                                              ; preds = %206, %202, %198
  %217 = phi i16 [ %215, %206 ], [ %199, %202 ], [ %199, %198 ]
  %218 = and i16 %217, 2
  %219 = icmp eq i16 %218, 0
  br i1 %219, label %234, label %220

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 8
  %222 = load i16, ptr %221, align 4
  %223 = icmp eq i16 %222, 0
  br i1 %223, label %234, label %224

224:                                              ; preds = %220
  %225 = zext i16 %222 to i32
  %226 = getelementptr i8, ptr %29, i32 %225
  %227 = getelementptr inbounds %struct.ipv6_rt_hdr, ptr %226, i32 0, i32 1
  %228 = load i8, ptr %227, align 1
  %229 = zext i8 %228 to i32
  %230 = shl nuw nsw i32 %229, 3
  %231 = add nuw nsw i32 %230, 8
  %232 = call i32 @put_cmsg(ptr noundef %1, i32 noundef 41, i32 noundef 5, i32 noundef %231, ptr noundef %226) #6
  %233 = load i16, ptr %30, align 4
  br label %234

234:                                              ; preds = %224, %220, %216
  %235 = phi i16 [ %233, %224 ], [ %217, %220 ], [ %217, %216 ]
  %236 = and i16 %235, 512
  %237 = icmp eq i16 %236, 0
  br i1 %237, label %252, label %238

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 10
  %240 = load i16, ptr %239, align 2
  %241 = icmp eq i16 %240, 0
  br i1 %241, label %252, label %242

242:                                              ; preds = %238
  %243 = zext i16 %240 to i32
  %244 = getelementptr i8, ptr %29, i32 %243
  %245 = getelementptr i8, ptr %244, i32 1
  %246 = load i8, ptr %245, align 1
  %247 = zext i8 %246 to i32
  %248 = shl nuw nsw i32 %247, 3
  %249 = add nuw nsw i32 %248, 8
  %250 = call i32 @put_cmsg(ptr noundef %1, i32 noundef 41, i32 noundef 4, i32 noundef %249, ptr noundef %244) #6
  %251 = load i16, ptr %30, align 4
  br label %252

252:                                              ; preds = %242, %238, %234
  %253 = phi i16 [ %251, %242 ], [ %235, %238 ], [ %235, %234 ]
  %254 = and i16 %253, 8192
  %255 = icmp eq i16 %254, 0
  br i1 %255, label %313, label %256

256:                                              ; preds = %252
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #6
  store i32 0, ptr %10, align 4, !annotation !8
  %257 = load ptr, ptr %24, align 8
  %258 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 17
  %259 = load i16, ptr %258, align 2
  %260 = zext i16 %259 to i32
  %261 = getelementptr i8, ptr %257, i32 %260
  %262 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %263 = load ptr, ptr %262, align 4
  %264 = ptrtoint ptr %261 to i32
  %265 = ptrtoint ptr %263 to i32
  %266 = sub i32 %264, %265
  %267 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %268 = load i32, ptr %267, align 8
  %269 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 6
  %270 = load i32, ptr %269, align 4
  %271 = add i32 %270, %266
  %272 = sub i32 %268, %271
  %273 = icmp sgt i32 %272, 3
  br i1 %273, label %281, label %274, !prof !18

274:                                              ; preds = %256
  %275 = icmp eq ptr %2, null
  br i1 %275, label %311, label %276

276:                                              ; preds = %274
  %277 = call i32 @skb_copy_bits(ptr noundef nonnull %2, i32 noundef %266, ptr noundef nonnull %10, i32 noundef 4) #6
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %311, label %279

279:                                              ; preds = %276
  %280 = load ptr, ptr %24, align 8
  br label %284

281:                                              ; preds = %256
  %282 = getelementptr i8, ptr %263, i32 %266
  %283 = icmp eq ptr %282, null
  br i1 %283, label %311, label %284

284:                                              ; preds = %281, %279
  %285 = phi ptr [ %257, %281 ], [ %280, %279 ]
  %286 = phi ptr [ %282, %281 ], [ %10, %279 ]
  store i16 10, ptr %9, align 4
  %287 = getelementptr inbounds %struct.sockaddr_in6, ptr %9, i32 0, i32 3
  %288 = load i16, ptr %26, align 4
  %289 = zext i16 %288 to i32
  %290 = getelementptr i8, ptr %285, i32 %289
  %291 = getelementptr inbounds %struct.ipv6hdr, ptr %290, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %287, ptr noundef align 4 dereferenceable(16) %291, i32 16, i1 false)
  %292 = getelementptr i16, ptr %286, i32 1
  %293 = load i16, ptr %292, align 2
  %294 = getelementptr inbounds %struct.sockaddr_in6, ptr %9, i32 0, i32 1
  store i16 %293, ptr %294, align 2
  %295 = getelementptr inbounds %struct.sockaddr_in6, ptr %9, i32 0, i32 2
  store i32 0, ptr %295, align 4
  %296 = load i32, ptr %23, align 4
  %297 = call i32 @__ipv6_addr_type(ptr noundef %291) #6
  %298 = and i32 %297, 32
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %306

300:                                              ; preds = %284
  %301 = and i32 %297, 2
  %302 = icmp ne i32 %301, 0
  %303 = and i32 %297, 48
  %304 = icmp ne i32 %303, 0
  %305 = and i1 %302, %304
  br i1 %305, label %306, label %307

306:                                              ; preds = %300, %284
  br label %307

307:                                              ; preds = %306, %300
  %308 = phi i32 [ %296, %306 ], [ 0, %300 ]
  %309 = getelementptr inbounds %struct.sockaddr_in6, ptr %9, i32 0, i32 4
  store i32 %308, ptr %309, align 4
  %310 = call i32 @put_cmsg(ptr noundef %1, i32 noundef 41, i32 noundef 74, i32 noundef 28, ptr noundef nonnull %9) #6
  br label %311

311:                                              ; preds = %307, %281, %276, %274
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #6
  %312 = load i16, ptr %30, align 4
  br label %313

313:                                              ; preds = %311, %252
  %314 = phi i16 [ %312, %311 ], [ %253, %252 ]
  %315 = and i16 %314, 16384
  %316 = icmp eq i16 %315, 0
  br i1 %316, label %324, label %317

317:                                              ; preds = %313
  %318 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 20
  %319 = load i16, ptr %318, align 4
  %320 = icmp eq i16 %319, 0
  br i1 %320, label %324, label %321

321:                                              ; preds = %317
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #6
  %322 = zext i16 %319 to i32
  store i32 %322, ptr %11, align 4
  %323 = call i32 @put_cmsg(ptr noundef %1, i32 noundef 41, i32 noundef 77, i32 noundef 4, ptr noundef nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #6
  br label %324

324:                                              ; preds = %321, %317, %313
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_cmsg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipv6_recv_rxpmtu(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ip6_mtuinfo, align 4
  %6 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %7 = load volatile i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = shl nuw i32 1, %8
  %10 = and i32 %9, -4161
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  br label %15

15:                                               ; preds = %12, %4
  %16 = phi ptr [ %14, %12 ], [ null, %4 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !8
  %17 = load ptr, ptr %1, align 8
  %18 = getelementptr inbounds %struct.ipv6_pinfo, ptr %16, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #6, !srcloc !12
  %19 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %18) #6, !srcloc !16
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = inttoptr i32 %20 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !26
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %99, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 5
  %25 = load i32, ptr %24, align 8
  %26 = icmp sgt i32 %25, %2
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, 32
  store i32 %30, ptr %28, align 4
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i32 [ %2, %27 ], [ %25, %23 ]
  %33 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %34 = tail call i32 @skb_copy_datagram_iter(ptr noundef nonnull %21, i32 noundef 0, ptr noundef %33, i32 noundef %32) #6
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %97

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 2
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 15
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.skb_shared_info, ptr %40, i32 0, i32 7
  %42 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 2048
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 65
  %48 = load i16, ptr %47, align 8
  %49 = zext i16 %48 to i32
  %50 = and i32 %49, 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %46
  %53 = icmp eq i64 %38, 0
  %54 = and i32 %49, 16
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %53, i1 true, i1 %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i64, ptr %41, align 8
  %59 = icmp eq i64 %58, 0
  %60 = and i16 %48, 64
  %61 = icmp eq i16 %60, 0
  %62 = select i1 %59, i1 true, i1 %61
  br i1 %62, label %64, label %63

63:                                               ; preds = %57, %52, %46, %36
  tail call void @__sock_recv_timestamp(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %21) #6
  br label %74

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 64
  %66 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 64, i32 1
  tail call void @_raw_spin_lock(ptr noundef %66) #6
  %67 = load i32, ptr %65, align 4
  %68 = add i32 %67, 1
  store i32 %68, ptr %65, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !19
  %69 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 63
  store i64 %38, ptr %69, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !20
  %70 = load i32, ptr %65, align 4
  %71 = add i32 %70, 1
  store i32 %71, ptr %65, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !21
  %72 = load i16, ptr %66, align 4
  %73 = add i16 %72, 1
  store i16 %73, ptr %66, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !24
  br label %74

74:                                               ; preds = %64, %63
  %75 = load volatile i32, ptr %42, align 4
  %76 = and i32 %75, 524288
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 13
  %80 = load i16, ptr %79, align 8
  %81 = and i16 %80, 1024
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %78
  tail call void @__sock_recv_wifi_status(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %21) #6
  br label %84

84:                                               ; preds = %83, %78, %74
  %85 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, ptr noundef align 8 dereferenceable(32) %85, i32 32, i1 false)
  %86 = icmp eq ptr %17, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %84
  store i16 10, ptr %17, align 4
  %88 = getelementptr inbounds %struct.sockaddr_in6, ptr %17, i32 0, i32 2
  store i32 0, ptr %88, align 4
  %89 = getelementptr inbounds %struct.sockaddr_in6, ptr %17, i32 0, i32 1
  store i16 0, ptr %89, align 2
  %90 = getelementptr inbounds %struct.sockaddr_in6, ptr %5, i32 0, i32 4
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.sockaddr_in6, ptr %17, i32 0, i32 4
  store i32 %91, ptr %92, align 4
  %93 = getelementptr inbounds %struct.sockaddr_in6, ptr %17, i32 0, i32 3
  %94 = getelementptr inbounds %struct.sockaddr_in6, ptr %5, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %93, ptr noundef align 4 dereferenceable(16) %94, i32 16, i1 false)
  store i32 28, ptr %3, align 4
  br label %95

95:                                               ; preds = %87, %84
  %96 = call i32 @put_cmsg(ptr noundef %1, i32 noundef 41, i32 noundef 61, i32 noundef 32, ptr noundef nonnull %5) #6
  br label %97

97:                                               ; preds = %95, %31
  %98 = phi i32 [ %34, %31 ], [ %32, %95 ]
  call void @kfree_skb_reason(ptr noundef nonnull %21, i32 noundef 0) #6
  br label %99

99:                                               ; preds = %97, %15
  %100 = phi i32 [ %98, %97 ], [ -11, %15 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #6
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip6_datagram_recv_ctl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.in6_pktinfo, align 4
  %5 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %6 = load volatile i8, ptr %5, align 2
  %7 = zext i8 %6 to i32
  %8 = shl nuw i32 1, %7
  %9 = and i32 %8, -4161
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  br label %14

14:                                               ; preds = %11, %3
  %15 = phi ptr [ %13, %11 ], [ null, %3 ]
  %16 = getelementptr inbounds %struct.ipv6_pinfo, ptr %15, i32 0, i32 8
  %17 = load i16, ptr %16, align 4
  %18 = and i16 %17, 4
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %45, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 16
  %22 = load i16, ptr %21, align 8
  %23 = icmp eq i16 %22, -8826
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 16, i1 false) #6, !annotation !8
  %24 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.in6_pktinfo, ptr %4, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 18
  %30 = load i16, ptr %29, align 4
  %31 = zext i16 %30 to i32
  %32 = getelementptr i8, ptr %28, i32 %31
  br i1 %23, label %33, label %35

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.ipv6hdr, ptr %32, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef align 4 dereferenceable(16) %34, i32 16, i1 false) #6
  br label %40

35:                                               ; preds = %20
  %36 = getelementptr inbounds %struct.iphdr, ptr %32, i32 0, i32 9
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 2
  store i32 -65536, ptr %38, align 4
  %39 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 3
  store i32 %37, ptr %39, align 4
  br label %40

40:                                               ; preds = %35, %33
  %41 = icmp sgt i32 %25, -1
  br i1 %41, label %42, label %44

42:                                               ; preds = %40
  %43 = call i32 @put_cmsg(ptr noundef %1, i32 noundef 41, i32 noundef 50, i32 noundef 20, ptr noundef nonnull %4) #6
  br label %44

44:                                               ; preds = %42, %40
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #6
  br label %45

45:                                               ; preds = %44, %14
  call void @ip6_datagram_recv_specific_ctl(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_datagram_send_ctl(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.ipcm6_cookie, ptr %4, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.msghdr, ptr %2, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  %10 = icmp ugt i32 %9, 11
  br i1 %10, label %11, label %251

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.msghdr, ptr %2, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %251, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.msghdr, ptr %2, i32 0, i32 3
  %17 = getelementptr inbounds %struct.ipcm6_cookie, ptr %4, i32 0, i32 4
  %18 = getelementptr inbounds %struct.ipcm6_cookie, ptr %4, i32 0, i32 2
  %19 = getelementptr inbounds %struct.ipcm6_cookie, ptr %4, i32 0, i32 1
  %20 = getelementptr inbounds %struct.ipv6_txoptions, ptr %7, i32 0, i32 3
  %21 = getelementptr inbounds %struct.ipv6_txoptions, ptr %7, i32 0, i32 6
  %22 = getelementptr inbounds %struct.ipv6_txoptions, ptr %7, i32 0, i32 7
  %23 = getelementptr inbounds %struct.ipv6_txoptions, ptr %7, i32 0, i32 5
  %24 = getelementptr inbounds %struct.ipv6_txoptions, ptr %7, i32 0, i32 2
  %25 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 11
  %26 = getelementptr inbounds %struct.ipv6_txoptions, ptr %7, i32 0, i32 4
  %27 = getelementptr inbounds %struct.flowi6, ptr %3, i32 0, i32 3
  %28 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 1, i32 25
  %29 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 12
  %30 = getelementptr inbounds %struct.flowi6, ptr %3, i32 0, i32 2
  br label %31

31:                                               ; preds = %237, %15
  %32 = phi i32 [ %9, %15 ], [ %239, %237 ]
  %33 = phi ptr [ %13, %15 ], [ %243, %237 ]
  %34 = load i32, ptr %33, align 4
  %35 = icmp ugt i32 %34, 11
  br i1 %35, label %36, label %251

36:                                               ; preds = %31
  %37 = load ptr, ptr %16, align 8
  %38 = ptrtoint ptr %33 to i32
  %39 = ptrtoint ptr %37 to i32
  %40 = sub i32 %32, %38
  %41 = add i32 %40, %39
  %42 = icmp ugt i32 %34, %41
  br i1 %42, label %251, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.cmsghdr, ptr %33, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  switch i32 %45, label %237 [
    i32 1, label %46
    i32 41, label %49
  ]

46:                                               ; preds = %43
  %47 = tail call i32 @__sock_cmsg_send(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %33, ptr noundef %4) #6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %237, label %251

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.cmsghdr, ptr %33, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  switch i32 %51, label %251 [
    i32 50, label %52
    i32 2, label %52
    i32 11, label %96
    i32 3, label %110
    i32 54, label %110
    i32 4, label %131
    i32 59, label %152
    i32 55, label %152
    i32 5, label %177
    i32 57, label %177
    i32 8, label %211
    i32 52, label %211
    i32 67, label %220
    i32 62, label %229
  ]

52:                                               ; preds = %49, %49
  %53 = icmp ult i32 %34, 32
  br i1 %53, label %251, label %54

54:                                               ; preds = %52
  %55 = getelementptr i8, ptr %33, i32 12
  %56 = getelementptr i8, ptr %33, i32 28
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  %60 = load i32, ptr %3, align 8
  %61 = icmp eq i32 %60, 0
  %62 = icmp eq i32 %57, %60
  %63 = select i1 %61, i1 true, i1 %62
  br i1 %63, label %64, label %251

64:                                               ; preds = %59
  store i32 %57, ptr %3, align 8
  br label %65

65:                                               ; preds = %64, %54
  %66 = tail call i32 @__ipv6_addr_type(ptr noundef %55) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  %67 = load i32, ptr %3, align 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = tail call ptr @dev_get_by_index_rcu(ptr noundef %0, i32 noundef %67) #6
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %251

73:                                               ; preds = %65
  %74 = and i32 %66, 32
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %251

77:                                               ; preds = %73, %69
  %78 = phi ptr [ %70, %69 ], [ null, %73 ]
  %79 = icmp eq i32 %66, 0
  br i1 %79, label %95, label %80

80:                                               ; preds = %77
  %81 = load i8, ptr %28, align 1
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  %84 = load i16, ptr %29, align 8
  %85 = and i16 %84, 36
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = icmp sgt i32 %66, 196607
  %89 = tail call i32 @ipv6_chk_addr_and_flags(ptr noundef %0, ptr noundef %55, ptr noundef %78, i1 noundef zeroext %88, i32 noundef 0, i32 noundef 64) #6
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = tail call zeroext i1 @ipv6_chk_acast_addr_src(ptr noundef %0, ptr noundef %78, ptr noundef %55) #6
  br i1 %92, label %94, label %93

93:                                               ; preds = %91
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %251

94:                                               ; preds = %91, %87, %83, %80
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %30, ptr noundef align 4 dereferenceable(16) %55, i32 16, i1 false)
  br label %95

95:                                               ; preds = %94, %77
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  br label %237

96:                                               ; preds = %49
  %97 = icmp ult i32 %34, 16
  br i1 %97, label %251, label %98

98:                                               ; preds = %96
  %99 = load i32, ptr %27, align 8
  %100 = and i32 %99, -241
  %101 = icmp eq i32 %100, 0
  %102 = getelementptr i8, ptr %33, i32 12
  %103 = load i32, ptr %102, align 4
  br i1 %101, label %108, label %104

104:                                              ; preds = %98
  %105 = xor i32 %103, %99
  %106 = and i32 %105, 240
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %251

108:                                              ; preds = %104, %98
  %109 = and i32 %103, -241
  store i32 %109, ptr %27, align 8
  br label %237

110:                                              ; preds = %49, %49
  %111 = load ptr, ptr %26, align 4
  %112 = icmp ne ptr %111, null
  %113 = icmp ult i32 %34, 14
  %114 = select i1 %112, i1 true, i1 %113
  br i1 %114, label %251, label %115

115:                                              ; preds = %110
  %116 = getelementptr i8, ptr %33, i32 12
  %117 = getelementptr i8, ptr %33, i32 13
  %118 = load i8, ptr %117, align 1
  %119 = zext i8 %118 to i32
  %120 = shl nuw nsw i32 %119, 3
  %121 = add nuw nsw i32 %120, 20
  %122 = icmp ult i32 %34, %121
  br i1 %122, label %251, label %123

123:                                              ; preds = %115
  %124 = load ptr, ptr %25, align 4
  %125 = tail call zeroext i1 @ns_capable(ptr noundef %124, i32 noundef 13) #6
  br i1 %125, label %126, label %251

126:                                              ; preds = %123
  %127 = load i16, ptr %20, align 2
  %128 = trunc i32 %120 to i16
  %129 = add nuw nsw i16 %128, 8
  %130 = add i16 %129, %127
  store i16 %130, ptr %20, align 2
  store ptr %116, ptr %26, align 4
  br label %237

131:                                              ; preds = %49
  %132 = icmp ult i32 %34, 14
  br i1 %132, label %251, label %133

133:                                              ; preds = %131
  %134 = getelementptr i8, ptr %33, i32 12
  %135 = getelementptr i8, ptr %33, i32 13
  %136 = load i8, ptr %135, align 1
  %137 = zext i8 %136 to i32
  %138 = shl nuw nsw i32 %137, 3
  %139 = add nuw nsw i32 %138, 20
  %140 = icmp ult i32 %34, %139
  br i1 %140, label %251, label %141

141:                                              ; preds = %133
  %142 = load ptr, ptr %25, align 4
  %143 = tail call zeroext i1 @ns_capable(ptr noundef %142, i32 noundef 13) #6
  br i1 %143, label %144, label %251

144:                                              ; preds = %141
  %145 = load ptr, ptr %22, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %251

147:                                              ; preds = %144
  %148 = load i16, ptr %24, align 4
  %149 = trunc i32 %138 to i16
  %150 = add nuw nsw i16 %149, 8
  %151 = add i16 %150, %148
  store i16 %151, ptr %24, align 4
  store ptr %134, ptr %22, align 4
  br label %237

152:                                              ; preds = %49, %49
  %153 = icmp ult i32 %34, 14
  br i1 %153, label %251, label %154

154:                                              ; preds = %152
  %155 = getelementptr i8, ptr %33, i32 12
  %156 = getelementptr i8, ptr %33, i32 13
  %157 = load i8, ptr %156, align 1
  %158 = zext i8 %157 to i32
  %159 = shl nuw nsw i32 %158, 3
  %160 = add nuw nsw i32 %159, 8
  %161 = add nuw nsw i32 %159, 20
  %162 = icmp ult i32 %34, %161
  br i1 %162, label %251, label %163

163:                                              ; preds = %154
  %164 = load ptr, ptr %25, align 4
  %165 = tail call zeroext i1 @ns_capable(ptr noundef %164, i32 noundef 13) #6
  br i1 %165, label %166, label %251

166:                                              ; preds = %163
  %167 = load i32, ptr %50, align 4
  %168 = icmp eq i32 %167, 59
  br i1 %168, label %169, label %173

169:                                              ; preds = %166
  %170 = load i16, ptr %24, align 4
  %171 = trunc i32 %160 to i16
  %172 = add i16 %170, %171
  store i16 %172, ptr %24, align 4
  store ptr %155, ptr %22, align 4
  br label %237

173:                                              ; preds = %166
  %174 = load i16, ptr %20, align 2
  %175 = trunc i32 %160 to i16
  %176 = add i16 %174, %175
  store i16 %176, ptr %20, align 2
  store ptr %155, ptr %23, align 4
  br label %237

177:                                              ; preds = %49, %49
  %178 = icmp ult i32 %34, 16
  br i1 %178, label %251, label %179

179:                                              ; preds = %177
  %180 = getelementptr i8, ptr %33, i32 12
  %181 = getelementptr i8, ptr %33, i32 14
  %182 = load i8, ptr %181, align 1
  %183 = icmp eq i8 %182, 2
  br i1 %183, label %184, label %251

184:                                              ; preds = %179
  %185 = getelementptr i8, ptr %33, i32 13
  %186 = load i8, ptr %185, align 1
  %187 = icmp eq i8 %186, 2
  br i1 %187, label %188, label %251

188:                                              ; preds = %184
  %189 = getelementptr i8, ptr %33, i32 15
  %190 = load i8, ptr %189, align 1
  %191 = icmp ne i8 %190, 1
  %192 = icmp ult i32 %34, 36
  %193 = select i1 %191, i1 true, i1 %192
  br i1 %193, label %251, label %194

194:                                              ; preds = %188
  %195 = load i16, ptr %20, align 2
  %196 = add i16 %195, 24
  store i16 %196, ptr %20, align 2
  store ptr %180, ptr %21, align 4
  %197 = load i32, ptr %50, align 4
  %198 = icmp eq i32 %197, 5
  br i1 %198, label %199, label %237

199:                                              ; preds = %194
  %200 = load ptr, ptr %22, align 4
  %201 = icmp eq ptr %200, null
  br i1 %201, label %237, label %202

202:                                              ; preds = %199
  %203 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %200, i32 0, i32 1
  %204 = load i8, ptr %203, align 1
  %205 = zext i8 %204 to i16
  %206 = shl nuw nsw i16 %205, 3
  %207 = add nuw nsw i16 %206, 8
  %208 = add i16 %207, %196
  store i16 %208, ptr %20, align 2
  store ptr %200, ptr %23, align 4
  store ptr null, ptr %22, align 4
  %209 = load i16, ptr %24, align 4
  %210 = sub i16 %209, %207
  store i16 %210, ptr %24, align 4
  br label %237

211:                                              ; preds = %49, %49
  %212 = icmp eq i32 %34, 16
  br i1 %212, label %213, label %251

213:                                              ; preds = %211
  %214 = getelementptr i8, ptr %33, i32 12
  %215 = load i32, ptr %214, align 4
  %216 = trunc i32 %215 to i16
  store i16 %216, ptr %19, align 8
  %217 = shl i32 %215, 16
  %218 = add i32 %217, -16711681
  %219 = icmp ult i32 %218, -16777217
  br i1 %219, label %251, label %237

220:                                              ; preds = %49
  %221 = icmp eq i32 %34, 16
  br i1 %221, label %222, label %251

222:                                              ; preds = %220
  %223 = getelementptr i8, ptr %33, i32 12
  %224 = load i32, ptr %223, align 4
  %225 = add i32 %224, -256
  %226 = icmp ult i32 %225, -257
  br i1 %226, label %251, label %227

227:                                              ; preds = %222
  %228 = trunc i32 %224 to i16
  store i16 %228, ptr %18, align 2
  br label %237

229:                                              ; preds = %49
  %230 = icmp eq i32 %34, 16
  br i1 %230, label %231, label %251

231:                                              ; preds = %229
  %232 = getelementptr i8, ptr %33, i32 12
  %233 = load i32, ptr %232, align 4
  %234 = icmp ugt i32 %233, 1
  br i1 %234, label %251, label %235

235:                                              ; preds = %231
  %236 = trunc i32 %233 to i8
  store i8 %236, ptr %17, align 2
  br label %237

237:                                              ; preds = %235, %227, %213, %202, %199, %194, %173, %169, %147, %126, %108, %95, %46, %43
  %238 = load ptr, ptr %16, align 8
  %239 = load i32, ptr %8, align 8
  %240 = load i32, ptr %33, align 4
  %241 = add i32 %240, 3
  %242 = and i32 %241, -4
  %243 = getelementptr i8, ptr %33, i32 %242
  %244 = getelementptr %struct.cmsghdr, ptr %243, i32 1
  %245 = ptrtoint ptr %244 to i32
  %246 = ptrtoint ptr %238 to i32
  %247 = sub i32 %245, %246
  %248 = icmp ugt i32 %247, %239
  %249 = icmp eq ptr %243, null
  %250 = select i1 %248, i1 true, i1 %249
  br i1 %250, label %251, label %31

251:                                              ; preds = %237, %231, %229, %222, %220, %213, %211, %188, %184, %179, %177, %163, %154, %152, %144, %141, %133, %131, %123, %115, %110, %104, %96, %93, %76, %72, %59, %52, %49, %46, %36, %31, %11, %5
  %252 = phi i32 [ -19, %72 ], [ -22, %76 ], [ -22, %93 ], [ 0, %11 ], [ 0, %5 ], [ -22, %59 ], [ %47, %46 ], [ -22, %52 ], [ -22, %231 ], [ -22, %229 ], [ -22, %222 ], [ -22, %220 ], [ -22, %49 ], [ -22, %213 ], [ -22, %211 ], [ -22, %179 ], [ -22, %184 ], [ -22, %188 ], [ -22, %177 ], [ -1, %163 ], [ -22, %154 ], [ -22, %152 ], [ -22, %144 ], [ -1, %141 ], [ -22, %133 ], [ -22, %131 ], [ -1, %123 ], [ -22, %115 ], [ -22, %110 ], [ -22, %104 ], [ -22, %96 ], [ -22, %31 ], [ -22, %36 ], [ 0, %237 ]
  ret i32 %252
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sock_cmsg_send(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_addr_and_flags(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_chk_acast_addr_src(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__ip6_dgram_sock_seq_show(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 10
  %8 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = zext i16 %2 to i32
  %17 = load i32, ptr %7, align 4
  %18 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr %struct.sock_common, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = zext i16 %3 to i32
  %25 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %26 = load volatile i8, ptr %25, align 2
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 23
  %29 = load volatile i32, ptr %28, align 4
  %30 = add i32 %29, -1
  %31 = tail call i32 @sock_i_uid(ptr noundef %1) #6
  %32 = icmp eq i32 %31, -1
  %33 = load i32, ptr @overflowuid, align 4
  %34 = select i1 %32, i32 %33, i32 %31
  %35 = tail call i32 @sock_i_ino(ptr noundef %1) #6
  %36 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %37 = load volatile i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 5
  %39 = load volatile i32, ptr %38, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %5, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %24, i32 noundef %27, i32 noundef %30, i32 noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %34, i32 noundef 0, i32 noundef %35, i32 noundef %37, ptr noundef %1, i32 noundef %39) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_uid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_ino(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__fl6_sock_lookup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_icmp_error_rfc4884(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_timestamp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_wifi_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_cmsg_recv_offset(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2149069095}
!11 = !{i64 2149069312}
!12 = !{i64 475205, i64 2147965176, i64 2147965202, i64 2147965249, i64 2147965271, i64 2147965299, i64 2147965319}
!13 = !{i64 2147979745, i64 2147979771, i64 2147979800, i64 2147979834, i64 2147979865, i64 2147979888}
!14 = !{i64 2153434279, i64 2153434767, i64 2153434316, i64 2153434372, i64 2153434406, i64 2153434430, i64 2153434471, i64 2153434492, i64 2153434520, i64 2153434554}
!15 = !{i64 2156868596}
!16 = !{i64 484652, i64 484669, i64 484693, i64 484719, i64 484737}
!17 = !{i64 2156868915}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2149694791}
!20 = !{i64 2149695092}
!21 = !{i64 2149295294}
!22 = !{i64 2149291118}
!23 = !{i64 2149291193, i64 2149291220, i64 2149291267, i64 2149291289, i64 2149291317, i64 2149291337}
!24 = !{i64 2149318297}
!25 = !{i64 2156876877}
!26 = !{i64 2156877204}
