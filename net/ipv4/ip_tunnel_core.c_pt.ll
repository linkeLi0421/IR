; ModuleID = '/llk/IR/net/ipv4/ip_tunnel_core.c_pt.bc'
source_filename = "../net/ipv4/ip_tunnel_core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iptun_encaps:\09\09\09\09\09"
module asm "\09.asciz \09\22iptun_encaps\22\09\09\09\09\09"
module asm "__kstrtabns_iptun_encaps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip6tun_encaps:\09\09\09\09\09"
module asm "\09.asciz \09\22ip6tun_encaps\22\09\09\09\09\09"
module asm "__kstrtabns_ip6tun_encaps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iptunnel_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22iptunnel_xmit\22\09\09\09\09\09"
module asm "__kstrtabns_iptunnel_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___iptunnel_pull_header:\09\09\09\09\09"
module asm "\09.asciz \09\22__iptunnel_pull_header\22\09\09\09\09\09"
module asm "__kstrtabns___iptunnel_pull_header:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iptunnel_metadata_reply:\09\09\09\09\09"
module asm "\09.asciz \09\22iptunnel_metadata_reply\22\09\09\09\09\09"
module asm "__kstrtabns_iptunnel_metadata_reply:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iptunnel_handle_offloads:\09\09\09\09\09"
module asm "\09.asciz \09\22iptunnel_handle_offloads\22\09\09\09\09\09"
module asm "__kstrtabns_iptunnel_handle_offloads:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_tunnel_check_pmtu:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_tunnel_check_pmtu\22\09\09\09\09\09"
module asm "__kstrtabns_skb_tunnel_check_pmtu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_tunnel_metadata_cnt:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_tunnel_metadata_cnt\22\09\09\09\09\09"
module asm "__kstrtabns_ip_tunnel_metadata_cnt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_tunnel_need_metadata:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_tunnel_need_metadata\22\09\09\09\09\09"
module asm "__kstrtabns_ip_tunnel_need_metadata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_tunnel_unneed_metadata:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_tunnel_unneed_metadata\22\09\09\09\09\09"
module asm "__kstrtabns_ip_tunnel_unneed_metadata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_tunnel_parse_protocol:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_tunnel_parse_protocol\22\09\09\09\09\09"
module asm "__kstrtabns_ip_tunnel_parse_protocol:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_tunnel_header_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_tunnel_header_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ip_tunnel_header_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ctl_table_header = type { %union.anon.36, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.70, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.70 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.sk_buff = type { %union.anon, %union.anon.127, %union.anon.128, [48 x i8], %union.anon.129, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.131, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.127 = type { ptr }
%union.anon.128 = type { i64 }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type { i32, ptr }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.133, i32, i32, i32, i16, i16, %union.anon.135, %union.anon.136, %union.anon.137, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.133 = type { i32 }
%union.anon.135 = type { i32 }
%union.anon.136 = type { i32 }
%union.anon.137 = type { i16 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.66, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.callback_head = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%union.anon.66 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.54 }
%union.anon.54 = type { [4 x i32] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.126, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.126 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.pcpu_sw_netstats = type { i64, i64, i64, i64, %struct.u64_stats_sync, [28 x i8] }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.metadata_dst = type { %struct.dst_entry, i32, %union.anon.148 }
%union.anon.148 = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.149, i16, i8, i8, i32, i16, i16 }
%union.anon.149 = type { %struct.anon.151 }
%struct.anon.151 = type { %struct.in6_addr, %struct.in6_addr }
%struct.dst_cache = type { ptr, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }

@iptun_encaps = dso_local global [8 x ptr] zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab_iptun_encaps = external dso_local constant [0 x i8], align 1
@__kstrtabns_iptun_encaps = external dso_local constant [0 x i8], align 1
@__ksymtab_iptun_encaps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iptun_encaps to i32), ptr @__kstrtab_iptun_encaps, ptr @__kstrtabns_iptun_encaps }, section "___ksymtab+iptun_encaps", align 4
@ip6tun_encaps = dso_local global [8 x ptr] zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab_ip6tun_encaps = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip6tun_encaps = external dso_local constant [0 x i8], align 1
@__ksymtab_ip6tun_encaps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip6tun_encaps to i32), ptr @__kstrtab_ip6tun_encaps, ptr @__kstrtabns_ip6tun_encaps }, section "___ksymtab+ip6tun_encaps", align 4
@__kstrtab_iptunnel_xmit = external dso_local constant [0 x i8], align 1
@__kstrtabns_iptunnel_xmit = external dso_local constant [0 x i8], align 1
@__ksymtab_iptunnel_xmit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iptunnel_xmit to i32), ptr @__kstrtab_iptunnel_xmit, ptr @__kstrtabns_iptunnel_xmit }, section "___ksymtab_gpl+iptunnel_xmit", align 4
@__kstrtab___iptunnel_pull_header = external dso_local constant [0 x i8], align 1
@__kstrtabns___iptunnel_pull_header = external dso_local constant [0 x i8], align 1
@__ksymtab___iptunnel_pull_header = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__iptunnel_pull_header to i32), ptr @__kstrtab___iptunnel_pull_header, ptr @__kstrtabns___iptunnel_pull_header }, section "___ksymtab_gpl+__iptunnel_pull_header", align 4
@__kstrtab_iptunnel_metadata_reply = external dso_local constant [0 x i8], align 1
@__kstrtabns_iptunnel_metadata_reply = external dso_local constant [0 x i8], align 1
@__ksymtab_iptunnel_metadata_reply = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iptunnel_metadata_reply to i32), ptr @__kstrtab_iptunnel_metadata_reply, ptr @__kstrtabns_iptunnel_metadata_reply }, section "___ksymtab_gpl+iptunnel_metadata_reply", align 4
@__kstrtab_iptunnel_handle_offloads = external dso_local constant [0 x i8], align 1
@__kstrtabns_iptunnel_handle_offloads = external dso_local constant [0 x i8], align 1
@__ksymtab_iptunnel_handle_offloads = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iptunnel_handle_offloads to i32), ptr @__kstrtab_iptunnel_handle_offloads, ptr @__kstrtabns_iptunnel_handle_offloads }, section "___ksymtab_gpl+iptunnel_handle_offloads", align 4
@__kstrtab_skb_tunnel_check_pmtu = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_tunnel_check_pmtu = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_tunnel_check_pmtu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_tunnel_check_pmtu to i32), ptr @__kstrtab_skb_tunnel_check_pmtu, ptr @__kstrtabns_skb_tunnel_check_pmtu }, section "___ksymtab+skb_tunnel_check_pmtu", align 4
@ip_tunnel_metadata_cnt = dso_local global %struct.static_key_false zeroinitializer, align 4
@__kstrtab_ip_tunnel_metadata_cnt = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_tunnel_metadata_cnt = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_tunnel_metadata_cnt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_tunnel_metadata_cnt to i32), ptr @__kstrtab_ip_tunnel_metadata_cnt, ptr @__kstrtabns_ip_tunnel_metadata_cnt }, section "___ksymtab+ip_tunnel_metadata_cnt", align 4
@__kstrtab_ip_tunnel_need_metadata = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_tunnel_need_metadata = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_tunnel_need_metadata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_tunnel_need_metadata to i32), ptr @__kstrtab_ip_tunnel_need_metadata, ptr @__kstrtabns_ip_tunnel_need_metadata }, section "___ksymtab_gpl+ip_tunnel_need_metadata", align 4
@__kstrtab_ip_tunnel_unneed_metadata = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_tunnel_unneed_metadata = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_tunnel_unneed_metadata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_tunnel_unneed_metadata to i32), ptr @__kstrtab_ip_tunnel_unneed_metadata, ptr @__kstrtabns_ip_tunnel_unneed_metadata }, section "___ksymtab_gpl+ip_tunnel_unneed_metadata", align 4
@__kstrtab_ip_tunnel_parse_protocol = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_tunnel_parse_protocol = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_tunnel_parse_protocol = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_tunnel_parse_protocol to i32), ptr @__kstrtab_ip_tunnel_parse_protocol, ptr @__kstrtabns_ip_tunnel_parse_protocol }, section "___ksymtab+ip_tunnel_parse_protocol", align 4
@ip_tunnel_header_ops = dso_local constant %struct.header_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip_tunnel_parse_protocol }, align 4
@__kstrtab_ip_tunnel_header_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_tunnel_header_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_tunnel_header_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_tunnel_header_ops to i32), ptr @__kstrtab_ip_tunnel_header_ops, ptr @__kstrtabns_ip_tunnel_header_ops }, section "___ksymtab+ip_tunnel_header_ops", align 4
@init_net = external dso_local global %struct.net, align 64
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"include/linux/jump_label.h\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_slow_inc = private unnamed_addr constant [20 x i8] c"static_key_slow_inc\00", align 1
@__func__.static_key_slow_dec = private unnamed_addr constant [20 x i8] c"static_key_slow_dec\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab___iptunnel_pull_header, ptr @__ksymtab_ip6tun_encaps, ptr @__ksymtab_ip_tunnel_header_ops, ptr @__ksymtab_ip_tunnel_metadata_cnt, ptr @__ksymtab_ip_tunnel_need_metadata, ptr @__ksymtab_ip_tunnel_parse_protocol, ptr @__ksymtab_ip_tunnel_unneed_metadata, ptr @__ksymtab_iptun_encaps, ptr @__ksymtab_iptunnel_handle_offloads, ptr @__ksymtab_iptunnel_metadata_reply, ptr @__ksymtab_iptunnel_xmit, ptr @__ksymtab_skb_tunnel_check_pmtu], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iptunnel_xmit(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i16 noundef zeroext %8, i1 noundef zeroext %9) #0 {
  %11 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 14
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = getelementptr i8, ptr %14, i32 %17
  %19 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %20 = load ptr, ptr %19, align 4
  %21 = ptrtoint ptr %18 to i32
  %22 = ptrtoint ptr %20 to i32
  %23 = sub i32 %22, %21
  %24 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  tail call void @skb_scrub_packet(ptr noundef %2, i1 noundef zeroext %9) #10
  %26 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13
  %27 = load i16, ptr %26, align 8
  %28 = and i16 %27, 256
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %10
  %31 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 7
  store i32 0, ptr %31, align 8
  %32 = and i16 %27, -769
  store i16 %32, ptr %26, align 8
  br label %33

33:                                               ; preds = %30, %10
  %34 = icmp ne ptr %1, null
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 3
  %37 = load i16, ptr %36, align 2
  %38 = lshr i16 %37, 14
  %39 = trunc i16 %38 to i8
  %40 = and i8 %39, 1
  %41 = or i8 %40, %35
  %42 = zext i8 %41 to i16
  %43 = shl nuw nsw i16 %42, 14
  %44 = and i16 %37, -16385
  %45 = or i16 %43, %44
  store i16 %45, ptr %36, align 2
  %46 = ptrtoint ptr %1 to i32
  %47 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 4
  store i32 %46, ptr %47, align 8
  %48 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %48, i8 0, i32 24, i1 false)
  %49 = tail call ptr @skb_push(ptr noundef %2, i32 noundef 20) #10
  %50 = load ptr, ptr %19, align 4
  %51 = load ptr, ptr %13, align 8
  %52 = ptrtoint ptr %50 to i32
  %53 = ptrtoint ptr %51 to i32
  %54 = sub i32 %52, %53
  %55 = trunc i32 %54 to i16
  %56 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 18
  store i16 %55, ptr %56, align 4
  %57 = and i32 %54, 65535
  %58 = getelementptr i8, ptr %51, i32 %57
  store i8 69, ptr %58, align 4
  %59 = getelementptr inbounds %struct.rtable, ptr %1, i32 0, i32 9
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %33
  %64 = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, -4
  %67 = inttoptr i32 %66 to ptr
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 4
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %70, i16 %8, i16 0
  br label %72

72:                                               ; preds = %63, %33
  %73 = phi i16 [ 0, %33 ], [ %71, %63 ]
  %74 = getelementptr inbounds %struct.iphdr, ptr %58, i32 0, i32 4
  store i16 %73, ptr %74, align 2
  %75 = getelementptr inbounds %struct.iphdr, ptr %58, i32 0, i32 6
  store i8 %5, ptr %75, align 1
  %76 = getelementptr inbounds %struct.iphdr, ptr %58, i32 0, i32 1
  store i8 %6, ptr %76, align 1
  %77 = getelementptr inbounds %struct.iphdr, ptr %58, i32 0, i32 9
  store i32 %4, ptr %77, align 4
  %78 = getelementptr inbounds %struct.iphdr, ptr %58, i32 0, i32 8
  store i32 %3, ptr %78, align 4
  %79 = getelementptr inbounds %struct.iphdr, ptr %58, i32 0, i32 5
  store i8 %7, ptr %79, align 4
  %80 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 15
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.skb_shared_info, ptr %81, i32 0, i32 5
  %83 = load i16, ptr %82, align 2
  %84 = icmp eq i16 %83, 0
  %85 = select i1 %84, i16 1, i16 %83
  %86 = zext i16 %85 to i32
  tail call void @__ip_select_ident(ptr noundef nonnull @init_net, ptr noundef %58, i32 noundef %86) #10
  %87 = tail call i32 @ip_local_out(ptr noundef nonnull @init_net, ptr noundef %0, ptr noundef %2) #10
  %88 = icmp eq ptr %25, null
  br i1 %88, label %129, label %89

89:                                               ; preds = %72
  %90 = add i32 %23, %12
  %91 = and i32 %87, -3
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %125, !prof !9

93:                                               ; preds = %89
  %94 = icmp sgt i32 %90, 0
  br i1 %94, label %95, label %116

95:                                               ; preds = %93
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  %96 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 110
  %97 = load ptr, ptr %96, align 8
  %98 = ptrtoint ptr %97 to i32
  %99 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %100 = inttoptr i32 %99 to ptr
  %101 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %100) #8, !srcloc !11
  %102 = add i32 %101, %98
  %103 = inttoptr i32 %102 to ptr
  %104 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %103, i32 0, i32 4
  %105 = load i32, ptr %104, align 4
  %106 = add i32 %105, 1
  store i32 %106, ptr %104, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !12
  %107 = zext i32 %90 to i64
  %108 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %103, i32 0, i32 3
  %109 = load i64, ptr %108, align 8
  %110 = add i64 %109, %107
  store i64 %110, ptr %108, align 8
  %111 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %103, i32 0, i32 2
  %112 = load i64, ptr %111, align 16
  %113 = add i64 %112, 1
  store i64 %113, ptr %111, align 16
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !13
  %114 = load i32, ptr %104, align 4
  %115 = add i32 %114, 1
  store i32 %115, ptr %104, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  br label %129

116:                                              ; preds = %93
  %117 = icmp slt i32 %90, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 36, i32 5
  %120 = load i32, ptr %119, align 4
  %121 = add i32 %120, 1
  store i32 %121, ptr %119, align 4
  %122 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 36, i32 16
  %123 = load i32, ptr %122, align 4
  %124 = add i32 %123, 1
  store i32 %124, ptr %122, align 4
  br label %129

125:                                              ; preds = %116, %89
  %126 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 36, i32 7
  %127 = load i32, ptr %126, align 4
  %128 = add i32 %127, 1
  store i32 %128, ptr %126, align 4
  br label %129

129:                                              ; preds = %125, %118, %95, %72
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_scrub_packet(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ip_select_ident(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_local_out(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__iptunnel_pull_header(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) #0 {
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 %7, %9
  %11 = icmp ult i32 %10, %1
  br i1 %11, label %12, label %18, !prof !15

12:                                               ; preds = %5
  %13 = icmp ult i32 %7, %1
  br i1 %13, label %86, label %14, !prof !15

14:                                               ; preds = %12
  %15 = sub i32 %1, %10
  %16 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %15) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %86, label %18, !prof !15

18:                                               ; preds = %14, %5
  %19 = tail call ptr @skb_pull_rcsum(ptr noundef %0, i32 noundef %1) #10
  %20 = icmp ne i16 %2, 22629
  %21 = or i1 %20, %3
  br i1 %21, label %43, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr %6, align 8
  %24 = load i32, ptr %8, align 4
  %25 = sub i32 %23, %24
  %26 = icmp ult i32 %25, 14
  br i1 %26, label %27, label %33, !prof !15

27:                                               ; preds = %22
  %28 = icmp ult i32 %23, 14
  br i1 %28, label %86, label %29, !prof !15

29:                                               ; preds = %27
  %30 = sub nuw nsw i32 14, %25
  %31 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %30) #10
  %32 = icmp eq ptr %31, null
  br i1 %32, label %86, label %33, !prof !15

33:                                               ; preds = %29, %22
  %34 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ethhdr, ptr %35, i32 0, i32 2
  %37 = load i16, ptr %36, align 1
  %38 = and i16 %37, 254
  %39 = icmp ugt i16 %38, 5
  %40 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  br i1 %39, label %41, label %42, !prof !9

41:                                               ; preds = %33
  store i16 %37, ptr %40, align 8
  br label %45

42:                                               ; preds = %33
  store i16 1024, ptr %40, align 8
  br label %45

43:                                               ; preds = %18
  %44 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  store i16 %2, ptr %44, align 8
  br label %45

45:                                               ; preds = %43, %42, %41
  %46 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %47 = load i16, ptr %46, align 8
  %48 = and i16 %47, 256
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 7
  store i32 0, ptr %51, align 8
  %52 = and i16 %47, -769
  store i16 %52, ptr %46, align 8
  br label %53

53:                                               ; preds = %50, %45
  %54 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %55 = load i16, ptr %54, align 2
  %56 = and i16 %55, -2
  store i16 %56, ptr %54, align 2
  %57 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 9
  store i16 0, ptr %57, align 4
  tail call void @skb_scrub_packet(ptr noundef %0, i1 noundef zeroext %4) #10
  %58 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.skb_shared_info, ptr %59, i32 0, i32 4
  %61 = load i16, ptr %60, align 4
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %83, label %63

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %65 = load i8, ptr %64, align 2
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.skb_shared_info, ptr %59, i32 0, i32 10
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %70, 65535
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #10
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %86, !prof !9

76:                                               ; preds = %73
  %77 = load ptr, ptr %58, align 4
  br label %78

78:                                               ; preds = %76, %68, %63
  %79 = phi ptr [ %77, %76 ], [ %59, %68 ], [ %59, %63 ]
  %80 = getelementptr inbounds %struct.skb_shared_info, ptr %79, i32 0, i32 8
  %81 = load i32, ptr %80, align 8
  %82 = and i32 %81, -4033
  store i32 %82, ptr %80, align 8
  br label %83

83:                                               ; preds = %78, %53
  %84 = load i16, ptr %46, align 8
  %85 = and i16 %84, -8193
  store i16 %85, ptr %46, align 8
  br label %86

86:                                               ; preds = %83, %73, %29, %27, %14, %12
  %87 = phi i32 [ -12, %14 ], [ 0, %83 ], [ %74, %73 ], [ -12, %12 ], [ -12, %27 ], [ -12, %29 ]
  ret i32 %87
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pskb_may_pull(ptr noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %4, %6
  %8 = icmp ult i32 %7, %1
  br i1 %8, label %9, label %15, !prof !15

9:                                                ; preds = %2
  %10 = icmp ult i32 %4, %1
  br i1 %10, label %15, label %11, !prof !15

11:                                               ; preds = %9
  %12 = sub i32 %1, %7
  %13 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %12) #10
  %14 = icmp ne ptr %13, null
  br label %15

15:                                               ; preds = %11, %9, %2
  %16 = phi i1 [ %14, %11 ], [ true, %2 ], [ false, %9 ]
  ret i1 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull_rcsum(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @iptunnel_metadata_reply(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %46, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.metadata_dst, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %46

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.metadata_dst, ptr %0, i32 0, i32 2
  %10 = getelementptr inbounds %struct.metadata_dst, ptr %0, i32 0, i32 2, i32 0, i32 3
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.metadata_dst, ptr %0, i32 0, i32 2, i32 0, i32 2
  %16 = load i8, ptr %15, align 8
  %17 = tail call ptr @metadata_dst_alloc(i8 noundef zeroext %16, i32 noundef 0, i32 noundef %1) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %46, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.metadata_dst, ptr %17, i32 0, i32 2
  %21 = load i64, ptr %9, align 8
  store i64 %21, ptr %20, align 8
  %22 = load i8, ptr %10, align 1
  %23 = and i8 %22, 2
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.metadata_dst, ptr %17, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 1
  %27 = getelementptr inbounds %struct.metadata_dst, ptr %0, i32 0, i32 2, i32 0, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %26, ptr noundef align 8 dereferenceable(16) %27, i32 16, i1 false)
  br label %32

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.metadata_dst, ptr %0, i32 0, i32 2, i32 0, i32 0, i32 1
  %30 = load i32, ptr %29, align 8
  %31 = getelementptr inbounds %struct.metadata_dst, ptr %17, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  store i32 %30, ptr %31, align 4
  br label %32

32:                                               ; preds = %28, %25
  %33 = getelementptr inbounds %struct.metadata_dst, ptr %0, i32 0, i32 2, i32 0, i32 0, i32 2
  %34 = load i16, ptr %33, align 8
  %35 = getelementptr inbounds %struct.metadata_dst, ptr %17, i32 0, i32 2, i32 0, i32 0, i32 2
  store i16 %34, ptr %35, align 8
  %36 = load i8, ptr %10, align 1
  %37 = or i8 %36, 1
  %38 = getelementptr inbounds %struct.metadata_dst, ptr %17, i32 0, i32 2, i32 0, i32 3
  store i8 %37, ptr %38, align 1
  %39 = load i8, ptr %15, align 8
  %40 = getelementptr inbounds %struct.metadata_dst, ptr %17, i32 0, i32 2, i32 0, i32 2
  store i8 %39, ptr %40, align 8
  %41 = icmp eq i8 %39, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %32
  %43 = zext i8 %39 to i32
  %44 = getelementptr %struct.metadata_dst, ptr %0, i32 1
  %45 = getelementptr %struct.metadata_dst, ptr %17, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %45, ptr align 1 %44, i32 %43, i1 false) #10
  br label %46

46:                                               ; preds = %42, %32, %14, %8, %4, %2
  %47 = phi ptr [ null, %8 ], [ null, %4 ], [ null, %2 ], [ null, %14 ], [ %17, %32 ], [ %17, %42 ]
  ret ptr %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @metadata_dst_alloc(i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iptunnel_handle_offloads(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 8192
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %18, !prof !9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %9 = load i16, ptr %8, align 2
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 15
  store i16 %9, ptr %10, align 2
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %12 = load i16, ptr %11, align 4
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 14
  store i16 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %15 = load i16, ptr %14, align 2
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 13
  store i16 %15, ptr %16, align 2
  %17 = or i16 %4, 8192
  store i16 %17, ptr %3, align 8
  br label %18

18:                                               ; preds = %7, %2
  %19 = phi i16 [ %17, %7 ], [ %4, %2 ]
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.skb_shared_info, ptr %21, i32 0, i32 4
  %23 = load i16, ptr %22, align 4
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %47, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %27 = load i8, ptr %26, align 2
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.skb_shared_info, ptr %21, i32 0, i32 10
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 65535
  %34 = ashr i32 %32, 16
  %35 = sub nsw i32 %33, %34
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = tail call i32 @pskb_expand_head(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #10
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %52, !prof !9

40:                                               ; preds = %37
  %41 = load ptr, ptr %20, align 4
  br label %42

42:                                               ; preds = %40, %30, %25
  %43 = phi ptr [ %41, %40 ], [ %21, %25 ], [ %21, %30 ]
  %44 = getelementptr inbounds %struct.skb_shared_info, ptr %43, i32 0, i32 8
  %45 = load i32, ptr %44, align 8
  %46 = or i32 %45, %1
  store i32 %46, ptr %44, align 8
  br label %52

47:                                               ; preds = %18
  %48 = and i16 %19, 96
  %49 = icmp eq i16 %48, 96
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = and i16 %19, -8289
  store i16 %51, ptr %3, align 8
  br label %52

52:                                               ; preds = %50, %47, %42, %37
  %53 = phi i32 [ 0, %42 ], [ %38, %37 ], [ 0, %50 ], [ 0, %47 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @skb_tunnel_check_pmtu(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  %7 = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dst_ops, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %1) #10
  %12 = sub i32 %11, %2
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.skb_shared_info, ptr %14, i32 0, i32 4
  %16 = load i16, ptr %15, align 4
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %4
  %19 = tail call zeroext i1 @skb_gso_validate_network_len(ptr noundef %0, i32 noundef %12) #10
  br i1 %19, label %161, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %13, align 4
  %22 = getelementptr inbounds %struct.skb_shared_info, ptr %21, i32 0, i32 4
  %23 = load i16, ptr %22, align 4
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %20, %4
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %29 = load i16, ptr %28, align 4
  %30 = zext i16 %29 to i32
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = sub i32 %27, %30
  %35 = add i32 %34, %33
  %36 = icmp ugt i32 %35, %12
  br i1 %36, label %37, label %161

37:                                               ; preds = %25, %20
  %38 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, -2
  %41 = inttoptr i32 %40 to ptr
  %42 = icmp eq i32 %40, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.dst_entry, ptr %41, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.dst_ops, ptr %45, i32 0, i32 11
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  tail call void %47(ptr noundef nonnull %41, ptr noundef null, ptr noundef %0, i32 noundef %12, i1 noundef zeroext false) #10
  br label %50

50:                                               ; preds = %49, %43, %37
  br i1 %3, label %51, label %161

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %53 = load i16, ptr %52, align 8
  %54 = and i16 %53, 7
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %161, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %58 = load i16, ptr %57, align 8
  switch i16 %58, label %161 [
    i16 8, label %59
    i16 -8826, label %103
  ]

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %63 = load i16, ptr %62, align 2
  %64 = zext i16 %63 to i32
  %65 = getelementptr i8, ptr %61, i32 %64
  %66 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %67 = load i16, ptr %66, align 4
  %68 = zext i16 %67 to i32
  %69 = getelementptr i8, ptr %61, i32 %68
  %70 = icmp slt i32 %12, 576
  br i1 %70, label %161, label %71

71:                                               ; preds = %59
  %72 = getelementptr inbounds %struct.iphdr, ptr %69, i32 0, i32 4
  %73 = load i16, ptr %72, align 2
  %74 = icmp eq i16 %73, 64
  br i1 %74, label %75, label %161

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.iphdr, ptr %69, i32 0, i32 9
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, -1
  %79 = and i32 %77, 240
  %80 = icmp eq i32 %79, 224
  %81 = or i1 %78, %80
  br i1 %81, label %161, label %82

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.iphdr, ptr %69, i32 0, i32 8
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 255
  %86 = icmp eq i32 %85, 127
  %87 = add i32 %84, 1
  %88 = icmp ult i32 %87, 2
  %89 = or i1 %88, %86
  %90 = and i32 %84, 240
  %91 = icmp eq i32 %90, 224
  %92 = or i1 %91, %89
  br i1 %92, label %161, label %93

93:                                               ; preds = %82
  %94 = getelementptr inbounds %struct.iphdr, ptr %69, i32 0, i32 6
  %95 = load i8, ptr %94, align 1
  %96 = icmp eq i8 %95, 1
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load i8, ptr %65, align 4
  %99 = add i8 %98, -3
  %100 = icmp ult i8 %99, 10
  br i1 %100, label %156, label %101

101:                                              ; preds = %156, %97, %93
  %102 = tail call fastcc i32 @iptunnel_pmtud_build_icmp(ptr noundef %0, i32 noundef %12) #10
  br label %161

103:                                              ; preds = %56
  %104 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %107 = load i16, ptr %106, align 4
  %108 = zext i16 %107 to i32
  %109 = getelementptr i8, ptr %105, i32 %108
  %110 = getelementptr inbounds %struct.ipv6hdr, ptr %109, i32 0, i32 5
  %111 = tail call i32 @__ipv6_addr_type(ptr noundef %110) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  %112 = getelementptr inbounds %struct.ipv6hdr, ptr %109, i32 0, i32 3
  %113 = load i8, ptr %112, align 2
  store i8 %113, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  store i16 0, ptr %6, align 2, !annotation !16
  %114 = icmp slt i32 %12, 1280
  br i1 %114, label %154, label %115

115:                                              ; preds = %103
  %116 = trunc i32 %111 to i16
  switch i16 %116, label %117 [
    i16 16, label %154
    i16 2, label %154
    i16 0, label %154
  ]

117:                                              ; preds = %115
  %118 = call i32 @ipv6_skip_exthdr(ptr noundef %0, i32 noundef 40, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %154, label %120

120:                                              ; preds = %117
  %121 = load i16, ptr %6, align 2
  %122 = and i16 %121, -1793
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %124, label %154

124:                                              ; preds = %120
  %125 = load i8, ptr %5, align 1
  %126 = icmp eq i8 %125, 58
  br i1 %126, label %127, label %152

127:                                              ; preds = %124
  %128 = load ptr, ptr %104, align 8
  %129 = load i16, ptr %106, align 4
  %130 = zext i16 %129 to i32
  %131 = getelementptr i8, ptr %128, i32 %130
  %132 = getelementptr i8, ptr %131, i32 %118
  %133 = getelementptr i8, ptr %132, i32 1
  %134 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %135 = load ptr, ptr %134, align 4
  %136 = ptrtoint ptr %133 to i32
  %137 = ptrtoint ptr %135 to i32
  %138 = sub i32 %136, %137
  %139 = call fastcc zeroext i1 @pskb_may_pull(ptr noundef %0, i32 noundef %138) #10
  br i1 %139, label %140, label %154

140:                                              ; preds = %127
  %141 = load ptr, ptr %104, align 8
  %142 = load i16, ptr %106, align 4
  %143 = zext i16 %142 to i32
  %144 = getelementptr i8, ptr %141, i32 %143
  %145 = getelementptr i8, ptr %144, i32 %118
  %146 = load i8, ptr %145, align 4
  %147 = zext i8 %146 to i32
  %148 = add nsw i32 %147, -1
  %149 = icmp ult i32 %148, 4
  %150 = icmp eq i8 %146, -119
  %151 = select i1 %149, i1 true, i1 %150
  br i1 %151, label %154, label %152

152:                                              ; preds = %140, %124
  %153 = call fastcc i32 @iptunnel_pmtud_build_icmpv6(ptr noundef %0, i32 noundef %12) #10
  br label %154

154:                                              ; preds = %152, %140, %127, %120, %117, %115, %115, %115, %103
  %155 = phi i32 [ %153, %152 ], [ 0, %103 ], [ 0, %115 ], [ 0, %115 ], [ 0, %115 ], [ 0, %120 ], [ 0, %117 ], [ 0, %140 ], [ 0, %127 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  br label %161

156:                                              ; preds = %97
  %157 = zext i8 %99 to i16
  %158 = lshr i16 775, %157
  %159 = and i16 %158, 1
  %160 = icmp eq i16 %159, 0
  br i1 %160, label %101, label %161

161:                                              ; preds = %156, %154, %101, %82, %75, %71, %59, %56, %51, %50, %25, %18
  %162 = phi i32 [ %155, %154 ], [ 0, %25 ], [ 0, %18 ], [ 0, %51 ], [ 0, %50 ], [ 0, %56 ], [ %102, %101 ], [ 0, %71 ], [ 0, %59 ], [ 0, %82 ], [ 0, %75 ], [ 0, %156 ]
  ret i32 %162
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_gso_validate_network_len(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync)
define dso_local void @ip_tunnel_core_init() local_unnamed_addr #6 section ".init.text" {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_tunnel_need_metadata() #0 {
  %1 = load i8, ptr @static_key_initialized, align 1, !range !17
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %4, !prof !15

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 290, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.static_key_slow_inc, ptr noundef nonnull @ip_tunnel_metadata_cnt) #10
  br label %4

4:                                                ; preds = %3, %0
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @ip_tunnel_metadata_cnt) #10, !srcloc !18
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ip_tunnel_metadata_cnt, ptr nonnull @ip_tunnel_metadata_cnt, i32 1, ptr nonnull elementtype(i32) @ip_tunnel_metadata_cnt) #10, !srcloc !19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_tunnel_unneed_metadata() #0 {
  %1 = load i8, ptr @static_key_initialized, align 1, !range !17
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %4, !prof !15

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 296, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.static_key_slow_dec, ptr noundef nonnull @ip_tunnel_metadata_cnt) #10
  br label %4

4:                                                ; preds = %3, %0
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @ip_tunnel_metadata_cnt) #10, !srcloc !18
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ip_tunnel_metadata_cnt, ptr nonnull @ip_tunnel_metadata_cnt, i32 1, ptr nonnull elementtype(i32) @ip_tunnel_metadata_cnt) #10, !srcloc !20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @ip_tunnel_parse_protocol(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = getelementptr i8, ptr %3, i32 %6
  %8 = icmp ult ptr %7, %3
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %7, i32 20
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %12 = load ptr, ptr %11, align 8
  %13 = icmp ugt ptr %10, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = load i8, ptr %7, align 4
  %16 = and i8 %15, -16
  %17 = icmp eq i8 %16, 64
  br i1 %17, label %26, label %18

18:                                               ; preds = %14, %9
  %19 = getelementptr i8, ptr %7, i32 40
  %20 = icmp ugt ptr %19, %12
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load i8, ptr %7, align 4
  %23 = and i8 %22, -16
  %24 = icmp eq i8 %23, 96
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %18, %1
  br label %26

26:                                               ; preds = %25, %21, %14
  %27 = phi i16 [ 0, %25 ], [ 8, %14 ], [ -8826, %21 ]
  ret i16 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @iptunnel_pmtud_build_icmp(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ethhdr, align 1
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %3, i8 0, i32 14, i1 false), !annotation !16
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %11, %13
  %15 = icmp ult i32 %14, 34
  br i1 %15, label %16, label %24, !prof !15

16:                                               ; preds = %2
  %17 = icmp ult i32 %11, 34
  br i1 %17, label %171, label %18, !prof !15

18:                                               ; preds = %16
  %19 = sub nuw nsw i32 34, %14
  %20 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %19) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %171, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %4, align 8
  br label %24

24:                                               ; preds = %22, %2
  %25 = phi ptr [ %23, %22 ], [ %5, %2 ]
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %27 = load i16, ptr %26, align 2
  %28 = zext i16 %27 to i32
  %29 = getelementptr i8, ptr %25, i32 %28
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %31 = load ptr, ptr %30, align 4
  %32 = ptrtoint ptr %29 to i32
  %33 = ptrtoint ptr %31 to i32
  %34 = sub i32 %32, %33
  %35 = call i32 @skb_copy_bits(ptr noundef %0, i32 noundef %34, ptr noundef nonnull %3, i32 noundef 14) #10
  %36 = load i32, ptr %10, align 8
  %37 = icmp ult i32 %36, 14
  br i1 %37, label %38, label %45, !prof !15

38:                                               ; preds = %24
  %39 = load ptr, ptr %30, align 4
  %40 = load ptr, ptr %4, align 8
  %41 = ptrtoint ptr %39 to i32
  %42 = ptrtoint ptr %40 to i32
  %43 = sub i32 %41, %42
  %44 = trunc i32 %43 to i16
  store i16 %44, ptr %6, align 4
  br label %79

45:                                               ; preds = %24
  %46 = load i32, ptr %12, align 4
  %47 = sub i32 %36, %46
  %48 = icmp ult i32 %47, 14
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = sub nuw nsw i32 14, %47
  %51 = call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %50) #10
  %52 = icmp eq ptr %51, null
  %53 = load i32, ptr %10, align 8
  br i1 %52, label %59, label %54

54:                                               ; preds = %49, %45
  %55 = phi i32 [ %36, %45 ], [ %53, %49 ]
  %56 = add i32 %55, -14
  store i32 %56, ptr %10, align 8
  %57 = load ptr, ptr %30, align 4
  %58 = getelementptr i8, ptr %57, i32 14
  store ptr %58, ptr %30, align 4
  br label %59

59:                                               ; preds = %54, %49
  %60 = phi i32 [ %56, %54 ], [ %53, %49 ]
  %61 = load ptr, ptr %30, align 4
  %62 = load ptr, ptr %4, align 8
  %63 = ptrtoint ptr %61 to i32
  %64 = ptrtoint ptr %62 to i32
  %65 = sub i32 %63, %64
  %66 = trunc i32 %65 to i16
  store i16 %66, ptr %6, align 4
  %67 = icmp ugt i32 %60, 548
  br i1 %67, label %68, label %79

68:                                               ; preds = %59
  %69 = load i32, ptr %12, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  store i32 548, ptr %10, align 8
  %72 = getelementptr i8, ptr %61, i32 548
  %73 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  store ptr %72, ptr %73, align 8
  br label %79

74:                                               ; preds = %68
  %75 = call i32 @___pskb_trim(ptr noundef %0, i32 noundef 548) #10
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %171

77:                                               ; preds = %74
  %78 = load i32, ptr %10, align 8
  br label %79

79:                                               ; preds = %77, %71, %59, %38
  %80 = phi i32 [ %78, %77 ], [ 548, %71 ], [ %60, %59 ], [ %36, %38 ]
  %81 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %82 = load i8, ptr %81, align 2
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.skb_shared_info, ptr %87, i32 0, i32 10
  %89 = load volatile i32, ptr %88, align 4
  %90 = and i32 %89, 65535
  %91 = icmp ne i32 %90, 1
  %92 = zext i1 %91 to i32
  br label %93

93:                                               ; preds = %85, %79
  %94 = phi i32 [ 0, %79 ], [ %92, %85 ]
  %95 = load ptr, ptr %30, align 4
  %96 = load ptr, ptr %4, align 8
  %97 = ptrtoint ptr %95 to i32
  %98 = ptrtoint ptr %96 to i32
  %99 = sub i32 %97, %98
  %100 = call i32 @llvm.usub.sat.i32(i32 42, i32 %99) #10
  %101 = or i32 %100, %94
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %93
  %104 = add nuw nsw i32 %100, 63
  %105 = and i32 %104, 64
  %106 = call i32 @pskb_expand_head(ptr noundef %0, i32 noundef %105, i32 noundef 0, i32 noundef 2592) #10
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %171

108:                                              ; preds = %103, %93
  %109 = add i32 %80, 8
  %110 = call ptr @skb_push(ptr noundef %0, i32 noundef 8) #10
  %111 = trunc i32 %1 to i16
  %112 = call i16 @llvm.bswap.i16(i16 %111)
  store i8 3, ptr %110, align 4
  %113 = getelementptr inbounds i8, ptr %110, i32 1
  store i8 4, ptr %113, align 1
  %114 = getelementptr inbounds i8, ptr %110, i32 2
  store i16 0, ptr %114, align 2
  %115 = getelementptr inbounds i8, ptr %110, i32 4
  store i16 0, ptr %115, align 4
  %116 = getelementptr inbounds i8, ptr %110, i32 6
  store i16 %112, ptr %116, align 2
  %117 = call i32 @csum_partial(ptr noundef %110, i32 noundef %109, i32 noundef 0) #10
  %118 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %117) #11, !srcloc !21
  %119 = xor i32 %118, -1
  %120 = lshr i32 %119, 16
  %121 = trunc i32 %120 to i16
  store i16 %121, ptr %114, align 2
  %122 = load ptr, ptr %30, align 4
  %123 = load ptr, ptr %4, align 8
  %124 = ptrtoint ptr %122 to i32
  %125 = ptrtoint ptr %123 to i32
  %126 = sub i32 %124, %125
  %127 = trunc i32 %126 to i16
  %128 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  store i16 %127, ptr %128, align 2
  %129 = call ptr @skb_push(ptr noundef %0, i32 noundef 20) #10
  %130 = trunc i32 %80 to i16
  %131 = add i16 %130, 28
  %132 = call i16 @llvm.bswap.i16(i16 %131)
  %133 = getelementptr inbounds %struct.iphdr, ptr %9, i32 0, i32 5
  %134 = load i8, ptr %133, align 4
  %135 = getelementptr inbounds %struct.iphdr, ptr %9, i32 0, i32 9
  %136 = load i32, ptr %135, align 4
  %137 = getelementptr inbounds %struct.iphdr, ptr %9, i32 0, i32 8
  %138 = load i32, ptr %137, align 4
  store i8 69, ptr %129, align 4
  %139 = getelementptr inbounds i8, ptr %129, i32 1
  store i8 0, ptr %139, align 1
  %140 = getelementptr inbounds i8, ptr %129, i32 2
  store i16 %132, ptr %140, align 2
  %141 = getelementptr inbounds i8, ptr %129, i32 4
  store i16 0, ptr %141, align 4
  %142 = getelementptr inbounds i8, ptr %129, i32 6
  store i16 64, ptr %142, align 2
  %143 = getelementptr inbounds i8, ptr %129, i32 8
  store i8 %134, ptr %143, align 4
  %144 = getelementptr inbounds i8, ptr %129, i32 9
  store i8 1, ptr %144, align 1
  %145 = getelementptr inbounds i8, ptr %129, i32 10
  store i16 0, ptr %145, align 2
  %146 = getelementptr inbounds i8, ptr %129, i32 12
  store i32 %136, ptr %146, align 4
  %147 = getelementptr inbounds i8, ptr %129, i32 16
  store i32 %138, ptr %147, align 4
  call void @ip_send_check(ptr noundef %129) #10
  %148 = load ptr, ptr %30, align 4
  %149 = load ptr, ptr %4, align 8
  %150 = ptrtoint ptr %148 to i32
  %151 = ptrtoint ptr %149 to i32
  %152 = sub i32 %150, %151
  %153 = trunc i32 %152 to i16
  store i16 %153, ptr %6, align 4
  %154 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %155 = load i16, ptr %154, align 8
  %156 = and i16 %155, -97
  store i16 %156, ptr %154, align 8
  %157 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %158 = load ptr, ptr %157, align 8
  %159 = getelementptr inbounds %struct.ethhdr, ptr %3, i32 0, i32 2
  %160 = load i16, ptr %159, align 1
  %161 = call i16 @llvm.bswap.i16(i16 %160)
  %162 = getelementptr inbounds %struct.ethhdr, ptr %3, i32 0, i32 1
  %163 = call i32 @eth_header(ptr noundef %0, ptr noundef %158, i16 noundef zeroext %161, ptr noundef %162, ptr noundef nonnull %3, i32 noundef 0) #10
  %164 = load ptr, ptr %30, align 4
  %165 = load ptr, ptr %4, align 8
  %166 = ptrtoint ptr %164 to i32
  %167 = ptrtoint ptr %165 to i32
  %168 = sub i32 %166, %167
  %169 = trunc i32 %168 to i16
  store i16 %169, ptr %26, align 2
  %170 = load i32, ptr %10, align 8
  br label %171

171:                                              ; preds = %108, %103, %74, %18, %16
  %172 = phi i32 [ %170, %108 ], [ -22, %18 ], [ %75, %74 ], [ %106, %103 ], [ -22, %16 ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %3) #10
  ret i32 %172
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_send_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_header(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @iptunnel_pmtud_build_icmpv6(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ethhdr, align 1
  %4 = alloca [2 x i8], align 2
  %5 = alloca [4 x i32], align 4
  %6 = alloca [4 x i32], align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %8, i32 %11
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %3, i8 0, i32 14, i1 false), !annotation !16
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 %14, %16
  %18 = icmp ult i32 %17, 54
  br i1 %18, label %19, label %27, !prof !15

19:                                               ; preds = %2
  %20 = icmp ult i32 %14, 54
  br i1 %20, label %170, label %21, !prof !15

21:                                               ; preds = %19
  %22 = sub nuw nsw i32 54, %17
  %23 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %22) #10
  %24 = icmp eq ptr %23, null
  br i1 %24, label %170, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %7, align 8
  br label %27

27:                                               ; preds = %25, %2
  %28 = phi ptr [ %26, %25 ], [ %8, %2 ]
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %30 = load i16, ptr %29, align 2
  %31 = zext i16 %30 to i32
  %32 = getelementptr i8, ptr %28, i32 %31
  %33 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %34 = load ptr, ptr %33, align 4
  %35 = ptrtoint ptr %32 to i32
  %36 = ptrtoint ptr %34 to i32
  %37 = sub i32 %35, %36
  %38 = call i32 @skb_copy_bits(ptr noundef %0, i32 noundef %37, ptr noundef nonnull %3, i32 noundef 14) #10
  %39 = load i32, ptr %13, align 8
  %40 = icmp ult i32 %39, 14
  br i1 %40, label %41, label %48, !prof !15

41:                                               ; preds = %27
  %42 = load ptr, ptr %33, align 4
  %43 = load ptr, ptr %7, align 8
  %44 = ptrtoint ptr %42 to i32
  %45 = ptrtoint ptr %43 to i32
  %46 = sub i32 %44, %45
  %47 = trunc i32 %46 to i16
  store i16 %47, ptr %9, align 4
  br label %82

48:                                               ; preds = %27
  %49 = load i32, ptr %15, align 4
  %50 = sub i32 %39, %49
  %51 = icmp ult i32 %50, 14
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = sub nuw nsw i32 14, %50
  %54 = call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %53) #10
  %55 = icmp eq ptr %54, null
  %56 = load i32, ptr %13, align 8
  br i1 %55, label %62, label %57

57:                                               ; preds = %52, %48
  %58 = phi i32 [ %39, %48 ], [ %56, %52 ]
  %59 = add i32 %58, -14
  store i32 %59, ptr %13, align 8
  %60 = load ptr, ptr %33, align 4
  %61 = getelementptr i8, ptr %60, i32 14
  store ptr %61, ptr %33, align 4
  br label %62

62:                                               ; preds = %57, %52
  %63 = phi i32 [ %59, %57 ], [ %56, %52 ]
  %64 = load ptr, ptr %33, align 4
  %65 = load ptr, ptr %7, align 8
  %66 = ptrtoint ptr %64 to i32
  %67 = ptrtoint ptr %65 to i32
  %68 = sub i32 %66, %67
  %69 = trunc i32 %68 to i16
  store i16 %69, ptr %9, align 4
  %70 = icmp ugt i32 %63, 1232
  br i1 %70, label %71, label %82

71:                                               ; preds = %62
  %72 = load i32, ptr %15, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  store i32 1232, ptr %13, align 8
  %75 = getelementptr i8, ptr %64, i32 1232
  %76 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  store ptr %75, ptr %76, align 8
  br label %82

77:                                               ; preds = %71
  %78 = call i32 @___pskb_trim(ptr noundef %0, i32 noundef 1232) #10
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %170

80:                                               ; preds = %77
  %81 = load i32, ptr %13, align 8
  br label %82

82:                                               ; preds = %80, %74, %62, %41
  %83 = phi i32 [ %81, %80 ], [ 1232, %74 ], [ %63, %62 ], [ %39, %41 ]
  %84 = add i32 %83, 8
  %85 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 11
  %86 = load i8, ptr %85, align 2
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.skb_shared_info, ptr %91, i32 0, i32 10
  %93 = load volatile i32, ptr %92, align 4
  %94 = and i32 %93, 65535
  %95 = icmp ne i32 %94, 1
  %96 = zext i1 %95 to i32
  br label %97

97:                                               ; preds = %89, %82
  %98 = phi i32 [ 0, %82 ], [ %96, %89 ]
  %99 = load ptr, ptr %33, align 4
  %100 = load ptr, ptr %7, align 8
  %101 = ptrtoint ptr %99 to i32
  %102 = ptrtoint ptr %100 to i32
  %103 = sub i32 %101, %102
  %104 = call i32 @llvm.usub.sat.i32(i32 62, i32 %103) #10
  %105 = or i32 %104, %98
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %97
  %108 = add nuw nsw i32 %104, 63
  %109 = and i32 %108, 64
  %110 = call i32 @pskb_expand_head(ptr noundef %0, i32 noundef %109, i32 noundef 0, i32 noundef 2592) #10
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %170

112:                                              ; preds = %107, %97
  %113 = call ptr @skb_push(ptr noundef %0, i32 noundef 8) #10
  %114 = call i32 @llvm.bswap.i32(i32 %1)
  store i8 2, ptr %113, align 4
  %115 = getelementptr inbounds i8, ptr %113, i32 1
  store i8 0, ptr %115, align 1
  %116 = getelementptr inbounds i8, ptr %113, i32 2
  store i16 0, ptr %116, align 2
  %117 = getelementptr inbounds i8, ptr %113, i32 4
  store i32 %114, ptr %117, align 4
  %118 = load ptr, ptr %33, align 4
  %119 = load ptr, ptr %7, align 8
  %120 = ptrtoint ptr %118 to i32
  %121 = ptrtoint ptr %119 to i32
  %122 = sub i32 %120, %121
  %123 = trunc i32 %122 to i16
  %124 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  store i16 %123, ptr %124, align 2
  %125 = call ptr @skb_push(ptr noundef %0, i32 noundef 40) #10
  store i16 0, ptr %4, align 2
  %126 = trunc i32 %84 to i16
  %127 = call i16 @llvm.bswap.i16(i16 %126)
  %128 = getelementptr inbounds %struct.ipv6hdr, ptr %12, i32 0, i32 4
  %129 = load i8, ptr %128, align 1
  %130 = getelementptr inbounds %struct.ipv6hdr, ptr %12, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef align 4 dereferenceable(16) %130, i32 16, i1 false)
  %131 = getelementptr inbounds %struct.ipv6hdr, ptr %12, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef align 4 dereferenceable(16) %131, i32 16, i1 false)
  store i8 96, ptr %125, align 4
  %132 = getelementptr inbounds i8, ptr %125, i32 1
  store i8 0, ptr %132, align 1
  %133 = getelementptr inbounds i8, ptr %125, i32 2
  %134 = load i16, ptr %4, align 2
  store i16 %134, ptr %133, align 2
  %135 = getelementptr inbounds i8, ptr %125, i32 4
  store i16 %127, ptr %135, align 4
  %136 = getelementptr inbounds i8, ptr %125, i32 6
  store i8 58, ptr %136, align 2
  %137 = getelementptr inbounds i8, ptr %125, i32 7
  store i8 %129, ptr %137, align 1
  %138 = getelementptr inbounds i8, ptr %125, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %138, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 16, i1 false)
  %139 = getelementptr inbounds i8, ptr %125, i32 24
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %139, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  %140 = load ptr, ptr %33, align 4
  %141 = load ptr, ptr %7, align 8
  %142 = ptrtoint ptr %140 to i32
  %143 = ptrtoint ptr %141 to i32
  %144 = sub i32 %142, %143
  %145 = trunc i32 %144 to i16
  store i16 %145, ptr %9, align 4
  %146 = call i32 @csum_partial(ptr noundef %113, i32 noundef %84, i32 noundef 0) #10
  %147 = call i32 @llvm.bswap.i32(i32 %84) #10
  %148 = call i32 @__csum_ipv6_magic(ptr noundef %138, ptr noundef %139, i32 noundef %147, i32 noundef 973078528, i32 noundef %146) #10
  %149 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %148) #11, !srcloc !21
  %150 = xor i32 %149, -1
  %151 = lshr i32 %150, 16
  %152 = trunc i32 %151 to i16
  store i16 %152, ptr %116, align 2
  %153 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %154 = load i16, ptr %153, align 8
  %155 = and i16 %154, -97
  store i16 %155, ptr %153, align 8
  %156 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %157 = load ptr, ptr %156, align 8
  %158 = getelementptr inbounds %struct.ethhdr, ptr %3, i32 0, i32 2
  %159 = load i16, ptr %158, align 1
  %160 = call i16 @llvm.bswap.i16(i16 %159)
  %161 = getelementptr inbounds %struct.ethhdr, ptr %3, i32 0, i32 1
  %162 = call i32 @eth_header(ptr noundef %0, ptr noundef %157, i16 noundef zeroext %160, ptr noundef %161, ptr noundef nonnull %3, i32 noundef 0) #10
  %163 = load ptr, ptr %33, align 4
  %164 = load ptr, ptr %7, align 8
  %165 = ptrtoint ptr %163 to i32
  %166 = ptrtoint ptr %164 to i32
  %167 = sub i32 %165, %166
  %168 = trunc i32 %167 to i16
  store i16 %168, ptr %29, align 2
  %169 = load i32, ptr %13, align 8
  br label %170

170:                                              ; preds = %112, %107, %77, %21, %19
  %171 = phi i32 [ %169, %112 ], [ -22, %21 ], [ %78, %77 ], [ %110, %107 ], [ -22, %19 ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %3) #10
  ret i32 %171
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2156472144}
!11 = !{i64 352064}
!12 = !{i64 2149683172}
!13 = !{i64 2149683473}
!14 = !{i64 2156472984}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{!"auto-init"}
!17 = !{i8 0, i8 2}
!18 = !{i64 438125, i64 2147928096, i64 2147928122, i64 2147928169, i64 2147928191, i64 2147928219, i64 2147928239}
!19 = !{i64 2147940308, i64 2147940334, i64 2147940363, i64 2147940397, i64 2147940428, i64 2147940451}
!20 = !{i64 2147942665, i64 2147942691, i64 2147942720, i64 2147942754, i64 2147942785, i64 2147942808}
!21 = !{i64 5200946}
