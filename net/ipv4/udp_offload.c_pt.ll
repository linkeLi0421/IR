; ModuleID = '/llk/IR/net/ipv4/udp_offload.c_pt.bc'
source_filename = "../net/ipv4/udp_offload.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_udp_tunnel_segment:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_udp_tunnel_segment\22\09\09\09\09\09"
module asm "__kstrtabns_skb_udp_tunnel_segment:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___udp_gso_segment:\09\09\09\09\09"
module asm "\09.asciz \09\22__udp_gso_segment\22\09\09\09\09\09"
module asm "__kstrtabns___udp_gso_segment:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_gro_receive:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_gro_receive\22\09\09\09\09\09"
module asm "__kstrtabns_udp_gro_receive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_gro_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_gro_complete\22\09\09\09\09\09"
module asm "__kstrtabns_udp_gro_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net_offload = type { %struct.offload_callbacks, i32 }
%struct.offload_callbacks = type { ptr, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.udp_table = type { ptr, ptr, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.60, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.60 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.sk_buff = type { %union.anon, %union.anon.115, %union.anon.116, [48 x i8], %union.anon.117, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.119, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.115 = type { ptr }
%union.anon.116 = type { i64 }
%union.anon.117 = type { %struct.anon.118 }
%struct.anon.118 = type { i32, ptr }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.121, i32, i32, i32, i16, i16, %union.anon.123, %union.anon.124, %union.anon.125, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.121 = type { i32 }
%union.anon.123 = type { i32 }
%union.anon.124 = type { i32 }
%union.anon.125 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.callback_head = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.114, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type {}
%union.anon.114 = type { ptr }
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
%struct.anon.122 = type { i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.100, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.101, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.102, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon.11, %union.anon.13, %union.anon.14, i16, i8, i8, i32, %union.anon.16, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.96, [0 x i32], %union.anon.97, i16, i16, %union.anon.98, %struct.refcount_struct, [0 x i32], %union.anon.99 }
%union.anon.11 = type { i64 }
%union.anon.13 = type { i32 }
%union.anon.14 = type { i32 }
%union.anon.16 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.54 }
%union.anon.54 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.96 = type { i32 }
%union.anon.97 = type { %struct.hlist_node }
%union.anon.98 = type { i32 }
%union.anon.99 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.anon.100 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.101 = type { ptr }
%union.anon.102 = type { ptr }
%struct.sk_buff_head = type { %union.anon.5, i32, %struct.spinlock }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.netns_tracker = type {}
%struct.udp_sock = type { %struct.inet_sock, i32, i32, i8, i8, i16, i16, i16, i16, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, [20 x i8], %struct.sk_buff_head, i32, [44 x i8] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.55 }
%union.anon.55 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.140, i32, %struct.list_head, ptr }
%union.anon.140 = type { %struct.in6_addr }

@inet6_offloads = external dso_local global [256 x ptr], align 4
@inet_offloads = external dso_local global [256 x ptr], align 4
@__kstrtab_skb_udp_tunnel_segment = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_udp_tunnel_segment = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_udp_tunnel_segment = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_udp_tunnel_segment to i32), ptr @__kstrtab_skb_udp_tunnel_segment, ptr @__kstrtabns_skb_udp_tunnel_segment }, section "___ksymtab+skb_udp_tunnel_segment", align 4
@__udp_gso_segment.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [23 x i8] c"net/ipv4/udp_offload.c\00", align 1
@__kstrtab___udp_gso_segment = external dso_local constant [0 x i8], align 1
@__kstrtabns___udp_gso_segment = external dso_local constant [0 x i8], align 1
@__ksymtab___udp_gso_segment = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__udp_gso_segment to i32), ptr @__kstrtab___udp_gso_segment, ptr @__kstrtabns___udp_gso_segment }, section "___ksymtab_gpl+__udp_gso_segment", align 4
@__kstrtab_udp_gro_receive = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_gro_receive = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_gro_receive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_gro_receive to i32), ptr @__kstrtab_udp_gro_receive, ptr @__kstrtabns_udp_gro_receive }, section "___ksymtab+udp_gro_receive", align 4
@__kstrtab_udp_gro_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_gro_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_gro_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_gro_complete to i32), ptr @__kstrtab_udp_gro_complete, ptr @__kstrtabns_udp_gro_complete }, section "___ksymtab+udp_gro_complete", align 4
@udpv4_offload = internal constant %struct.net_offload { %struct.offload_callbacks { ptr @udp4_ufo_fragment, ptr @udp4_gro_receive, ptr @udp4_gro_complete }, i32 0 }, align 4
@udp_encap_needed_key = external dso_local global %struct.static_key_false, align 4
@udp_table = external dso_local global %struct.udp_table, align 4
@init_net = external dso_local global %struct.net, align 64
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab___udp_gso_segment, ptr @__ksymtab_skb_udp_tunnel_segment, ptr @__ksymtab_udp_gro_complete, ptr @__ksymtab_udp_gro_receive], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @skb_udp_tunnel_segment(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %5 = load i16, ptr %4, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %7 = load i16, ptr %6, align 2
  %8 = and i16 %7, 512
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 12
  %12 = load i16, ptr %11, align 8
  br label %24

13:                                               ; preds = %3
  %14 = select i1 %2, ptr @inet6_offloads, ptr @inet_offloads
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 12
  %16 = load i8, ptr %15, align 8
  %17 = zext i8 %16 to i32
  %18 = getelementptr ptr, ptr %14, i32 %17
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %313, label %21

21:                                               ; preds = %13
  %22 = load ptr, ptr %19, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %313, label %24

24:                                               ; preds = %21, %10
  %25 = phi ptr [ @skb_mac_gso_segment, %10 ], [ %22, %21 ]
  %26 = phi i16 [ %12, %10 ], [ %5, %21 ]
  %27 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 15
  %30 = load i16, ptr %29, align 2
  %31 = zext i16 %30 to i32
  %32 = getelementptr i8, ptr %28, i32 %31
  %33 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  %36 = getelementptr i8, ptr %28, i32 %35
  %37 = ptrtoint ptr %32 to i32
  %38 = ptrtoint ptr %36 to i32
  %39 = sub i32 %37, %38
  %40 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %41 = load i16, ptr %40, align 2
  %42 = load i16, ptr %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 7
  %44 = load i16, ptr %43, align 8
  %45 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %46 = load i32, ptr %45, align 8
  %47 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = sub i32 %46, %48
  %50 = icmp ugt i32 %39, %49
  br i1 %50, label %51, label %57, !prof !9

51:                                               ; preds = %24
  %52 = icmp ult i32 %46, %39
  br i1 %52, label %313, label %53, !prof !9

53:                                               ; preds = %51
  %54 = sub i32 %39, %49
  %55 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %54) #5
  %56 = icmp eq ptr %55, null
  br i1 %56, label %313, label %57, !prof !9

57:                                               ; preds = %53, %24
  %58 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.skb_shared_info, ptr %59, i32 0, i32 8
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 4096
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.udphdr, ptr %36, i32 0, i32 2
  %66 = load i16, ptr %65, align 2
  %67 = zext i16 %66 to i32
  %68 = load i32, ptr %45, align 8
  br label %72

69:                                               ; preds = %57
  %70 = load i32, ptr %45, align 8
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #5
  br label %72

72:                                               ; preds = %69, %64
  %73 = phi i32 [ %68, %64 ], [ %70, %69 ]
  %74 = phi i32 [ %67, %64 ], [ %71, %69 ]
  %75 = getelementptr inbounds %struct.udphdr, ptr %36, i32 0, i32 3
  %76 = load i16, ptr %75, align 2
  %77 = zext i16 %76 to i32
  %78 = xor i32 %74, -1
  %79 = add i32 %77, %78
  %80 = icmp ult i32 %79, %78
  %81 = zext i1 %80 to i32
  %82 = add i32 %79, %81
  %83 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %84 = load i16, ptr %83, align 8
  %85 = and i16 %84, -8193
  store i16 %85, ptr %83, align 8
  %86 = getelementptr %struct.sk_buff, ptr %0, i32 0, i32 3, i32 36
  store i32 0, ptr %86, align 4
  %87 = sub i32 %73, %39
  store i32 %87, ptr %45, align 8
  %88 = load i32, ptr %47, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %90, label %91, !prof !9

90:                                               ; preds = %72
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

91:                                               ; preds = %72
  %92 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr i8, ptr %93, i32 %39
  store ptr %94, ptr %92, align 4
  %95 = load ptr, ptr %27, align 8
  %96 = ptrtoint ptr %94 to i32
  %97 = ptrtoint ptr %95 to i32
  %98 = sub i32 %96, %97
  %99 = trunc i32 %98 to i16
  store i16 %99, ptr %40, align 2
  %100 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 14
  %101 = load i16, ptr %100, align 4
  %102 = zext i16 %101 to i32
  %103 = getelementptr i8, ptr %95, i32 %102
  %104 = ptrtoint ptr %103 to i32
  %105 = sub i32 %104, %96
  %106 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %107 = trunc i32 %105 to i16
  %108 = add i16 %107, %99
  store i16 %108, ptr %106, align 4
  %109 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 13
  %110 = load i16, ptr %109, align 2
  %111 = zext i16 %110 to i32
  %112 = getelementptr i8, ptr %95, i32 %111
  %113 = ptrtoint ptr %112 to i32
  %114 = sub i32 %113, %96
  %115 = trunc i32 %114 to i16
  %116 = add i16 %115, %99
  store i16 %116, ptr %33, align 2
  store i16 %107, ptr %43, align 8
  store i16 %26, ptr %4, align 8
  %117 = load i32, ptr %60, align 8
  %118 = and i32 %117, 2048
  %119 = icmp eq i32 %118, 0
  %120 = trunc i32 %118 to i16
  %121 = shl nuw nsw i16 %120, 3
  %122 = and i16 %84, -24577
  %123 = or i16 %121, %122
  store i16 %123, ptr %83, align 8
  %124 = load i32, ptr %60, align 8
  %125 = and i32 %124, 8192
  %126 = icmp eq i32 %125, 0
  %127 = trunc i32 %125 to i16
  %128 = lshr exact i16 %127, 3
  %129 = load i16, ptr %6, align 2
  %130 = and i16 %129, -1025
  %131 = or i16 %128, %130
  store i16 %131, ptr %6, align 2
  %132 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %133 = load i32, ptr %132, align 8
  %134 = and i32 %133, -2
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %91
  %137 = inttoptr i32 %134 to ptr
  %138 = getelementptr inbounds %struct.dst_entry, ptr %137, i32 0, i32 4
  %139 = load ptr, ptr %138, align 4
  %140 = icmp ne ptr %139, null
  br label %141

141:                                              ; preds = %136, %91
  %142 = phi i1 [ false, %91 ], [ %140, %136 ]
  %143 = select i1 %119, i1 true, i1 %142
  %144 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %145 = load ptr, ptr %144, align 8
  br i1 %143, label %152, label %146

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.net_device, ptr %145, i32 0, i32 23
  %148 = load i64, ptr %147, align 16
  %149 = select i1 %2, i64 24, i64 10
  %150 = and i64 %148, %149
  %151 = icmp ne i64 %150, 0
  br label %152

152:                                              ; preds = %146, %141
  %153 = phi i1 [ %151, %146 ], [ false, %141 ]
  %154 = getelementptr inbounds %struct.net_device, ptr %145, i32 0, i32 27
  %155 = load i64, ptr %154, align 16
  %156 = and i64 %155, %1
  %157 = and i64 %156, -68719476737
  %158 = select i1 %119, i64 %156, i64 %157
  br i1 %126, label %164, label %159

159:                                              ; preds = %152
  %160 = and i64 %158, -27
  %161 = select i1 %119, i1 true, i1 %153
  %162 = or i64 %160, 8
  %163 = select i1 %161, i64 %162, i64 %160
  br label %164

164:                                              ; preds = %159, %152
  %165 = phi i64 [ %158, %152 ], [ %163, %159 ]
  %166 = tail call ptr %25(ptr noundef %0, i64 noundef %165) #5
  %167 = icmp eq ptr %166, null
  %168 = icmp ugt ptr %166, inttoptr (i32 -4096 to ptr)
  %169 = or i1 %167, %168
  br i1 %169, label %170, label %181

170:                                              ; preds = %164
  store i16 %42, ptr %4, align 8
  %171 = load i16, ptr %83, align 8
  %172 = or i16 %171, 8192
  store i16 %172, ptr %83, align 8
  %173 = tail call ptr @skb_push(ptr noundef %0, i32 noundef %39) #5
  %174 = load ptr, ptr %92, align 4
  %175 = load ptr, ptr %27, align 8
  %176 = ptrtoint ptr %174 to i32
  %177 = ptrtoint ptr %175 to i32
  %178 = sub i32 %176, %177
  %179 = trunc i32 %178 to i16
  store i16 %179, ptr %33, align 2
  store i16 %41, ptr %40, align 2
  %180 = add i16 %44, %41
  store i16 %180, ptr %106, align 4
  store i16 %44, ptr %43, align 8
  br label %313

181:                                              ; preds = %164
  %182 = getelementptr inbounds %struct.sk_buff, ptr %166, i32 0, i32 15
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.skb_shared_info, ptr %183, i32 0, i32 8
  %185 = load i32, ptr %184, align 8
  %186 = and i32 %185, 4096
  %187 = icmp eq i32 %186, 0
  %188 = load ptr, ptr %27, align 8
  %189 = load i16, ptr %40, align 2
  %190 = zext i16 %189 to i32
  %191 = getelementptr i8, ptr %188, i32 %190
  %192 = ptrtoint ptr %191 to i32
  %193 = ptrtoint ptr %188 to i32
  %194 = getelementptr %struct.sk_buff, ptr %0, i32 0, i32 3, i32 32
  %195 = load i32, ptr %194, align 4
  %196 = add i32 %195, %193
  %197 = sub i32 %192, %196
  %198 = sub i32 %197, %39
  %199 = sub i32 0, %197
  %200 = trunc i32 %198 to i16
  %201 = xor i1 %153, true
  br label %202

202:                                              ; preds = %310, %181
  %203 = phi ptr [ %166, %181 ], [ %311, %310 ]
  %204 = getelementptr inbounds %struct.sk_buff, ptr %203, i32 0, i32 13
  %205 = load i16, ptr %204, align 8
  br i1 %126, label %208, label %206

206:                                              ; preds = %202
  %207 = and i16 %205, -97
  store i16 %207, ptr %204, align 8
  br label %208

208:                                              ; preds = %206, %202
  %209 = phi i16 [ %207, %206 ], [ %205, %202 ]
  %210 = and i16 %209, 96
  %211 = icmp eq i16 %210, 96
  br i1 %211, label %212, label %223

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.sk_buff, ptr %203, i32 0, i32 13, i32 0, i32 19
  %214 = load i16, ptr %213, align 2
  %215 = getelementptr inbounds %struct.sk_buff, ptr %203, i32 0, i32 13, i32 0, i32 15
  store i16 %214, ptr %215, align 2
  %216 = getelementptr inbounds %struct.sk_buff, ptr %203, i32 0, i32 13, i32 0, i32 18
  %217 = load i16, ptr %216, align 4
  %218 = getelementptr inbounds %struct.sk_buff, ptr %203, i32 0, i32 13, i32 0, i32 14
  store i16 %217, ptr %218, align 4
  %219 = getelementptr inbounds %struct.sk_buff, ptr %203, i32 0, i32 13, i32 0, i32 17
  %220 = load i16, ptr %219, align 2
  %221 = getelementptr inbounds %struct.sk_buff, ptr %203, i32 0, i32 13, i32 0, i32 13
  store i16 %220, ptr %221, align 2
  %222 = or i16 %209, 8192
  store i16 %222, ptr %204, align 8
  br label %223

223:                                              ; preds = %212, %208
  %224 = getelementptr inbounds %struct.sk_buff, ptr %203, i32 0, i32 7
  store i16 %44, ptr %224, align 8
  %225 = getelementptr inbounds %struct.sk_buff, ptr %203, i32 0, i32 13, i32 0, i32 16
  store i16 %42, ptr %225, align 8
  %226 = getelementptr inbounds %struct.sk_buff, ptr %203, i32 0, i32 17
  %227 = load ptr, ptr %226, align 4
  %228 = getelementptr i8, ptr %227, i32 %199
  store ptr %228, ptr %226, align 4
  %229 = getelementptr inbounds %struct.sk_buff, ptr %203, i32 0, i32 5
  %230 = load i32, ptr %229, align 8
  %231 = add i32 %230, %197
  store i32 %231, ptr %229, align 8
  %232 = getelementptr inbounds %struct.sk_buff, ptr %203, i32 0, i32 16
  %233 = load ptr, ptr %232, align 8
  %234 = ptrtoint ptr %228 to i32
  %235 = ptrtoint ptr %233 to i32
  %236 = sub i32 %234, %235
  %237 = trunc i32 %236 to i16
  %238 = getelementptr inbounds %struct.sk_buff, ptr %203, i32 0, i32 13, i32 0, i32 19
  store i16 %237, ptr %238, align 2
  %239 = getelementptr inbounds %struct.sk_buff, ptr %203, i32 0, i32 13, i32 0, i32 18
  %240 = add i16 %44, %237
  store i16 %240, ptr %239, align 4
  %241 = getelementptr inbounds %struct.sk_buff, ptr %203, i32 0, i32 13, i32 0, i32 17
  %242 = add i16 %237, %200
  store i16 %242, ptr %241, align 2
  %243 = sub i32 %231, %198
  %244 = zext i16 %242 to i32
  %245 = getelementptr i8, ptr %233, i32 %244
  br i1 %187, label %261, label %246

246:                                              ; preds = %223
  %247 = getelementptr inbounds %struct.sk_buff, ptr %203, i32 0, i32 15
  %248 = load ptr, ptr %247, align 4
  %249 = getelementptr inbounds %struct.skb_shared_info, ptr %248, i32 0, i32 4
  %250 = load i16, ptr %249, align 4
  %251 = icmp eq i16 %250, 0
  br i1 %251, label %261, label %252

252:                                              ; preds = %246
  %253 = zext i16 %250 to i32
  %254 = getelementptr %struct.sk_buff, ptr %203, i32 0, i32 3, i32 32
  %255 = load i32, ptr %254, align 4
  %256 = add i32 %255, %253
  %257 = getelementptr i8, ptr %233, i32 %256
  %258 = ptrtoint ptr %257 to i32
  %259 = ptrtoint ptr %245 to i32
  %260 = sub i32 %258, %259
  br label %261

261:                                              ; preds = %252, %246, %223
  %262 = phi i32 [ %260, %252 ], [ %243, %246 ], [ %243, %223 ]
  %263 = trunc i32 %262 to i16
  %264 = tail call i16 @llvm.bswap.i16(i16 %263) #5
  %265 = getelementptr inbounds %struct.udphdr, ptr %245, i32 0, i32 2
  store i16 %264, ptr %265, align 2
  br i1 %119, label %310, label %266

266:                                              ; preds = %261
  %267 = tail call i32 @llvm.bswap.i32(i32 %243) #5
  %268 = add i32 %82, %267
  %269 = icmp ult i32 %268, %267
  %270 = zext i1 %269 to i32
  %271 = add i32 %268, %270
  %272 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %271) #6, !srcloc !11
  %273 = xor i32 %272, -1
  %274 = lshr i32 %273, 16
  %275 = trunc i32 %274 to i16
  %276 = xor i16 %275, -1
  %277 = getelementptr inbounds %struct.udphdr, ptr %245, i32 0, i32 3
  store i16 %276, ptr %277, align 2
  %278 = load i16, ptr %204, align 8
  %279 = and i16 %278, 8192
  %280 = icmp ne i16 %279, 0
  %281 = select i1 %280, i1 true, i1 %201
  br i1 %281, label %282, label %305

282:                                              ; preds = %266
  %283 = zext i16 %276 to i32
  %284 = xor i32 %283, -1
  %285 = load ptr, ptr %232, align 8
  %286 = load i16, ptr %241, align 2
  %287 = zext i16 %286 to i32
  %288 = getelementptr i8, ptr %285, i32 %287
  %289 = getelementptr %struct.sk_buff, ptr %203, i32 0, i32 3, i32 44
  %290 = load i16, ptr %289, align 4
  %291 = zext i16 %290 to i32
  %292 = getelementptr i8, ptr %285, i32 %291
  %293 = ptrtoint ptr %292 to i32
  %294 = ptrtoint ptr %288 to i32
  %295 = sub i32 %293, %294
  %296 = getelementptr %struct.sk_buff, ptr %203, i32 0, i32 3, i32 40
  %297 = load i32, ptr %296, align 4
  store i32 %284, ptr %296, align 4
  store i16 %286, ptr %289, align 4
  %298 = tail call i32 @csum_partial(ptr noundef %288, i32 noundef %295, i32 noundef %297) #5
  %299 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %298) #6, !srcloc !11
  %300 = xor i32 %299, -1
  %301 = lshr i32 %300, 16
  %302 = trunc i32 %301 to i16
  %303 = icmp eq i16 %302, 0
  %304 = select i1 %303, i16 -1, i16 %302
  store i16 %304, ptr %277, align 2
  br label %310

305:                                              ; preds = %266
  %306 = or i16 %278, 96
  store i16 %306, ptr %204, align 8
  %307 = load i16, ptr %241, align 2
  %308 = getelementptr inbounds %struct.sk_buff, ptr %203, i32 0, i32 13, i32 0, i32 4
  store i16 %307, ptr %308, align 4
  %309 = getelementptr inbounds %struct.anon.122, ptr %308, i32 0, i32 1
  store i16 6, ptr %309, align 2
  br label %310

310:                                              ; preds = %305, %282, %261
  %311 = load ptr, ptr %203, align 8
  %312 = icmp eq ptr %311, null
  br i1 %312, label %313, label %202

313:                                              ; preds = %310, %170, %53, %51, %21, %13
  %314 = phi ptr [ inttoptr (i32 -22 to ptr), %21 ], [ inttoptr (i32 -22 to ptr), %13 ], [ inttoptr (i32 -22 to ptr), %53 ], [ %166, %170 ], [ inttoptr (i32 -22 to ptr), %51 ], [ %166, %310 ]
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  ret ptr %314
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_mac_gso_segment(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__udp_gso_segment(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 8
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 262144
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 4
  %13 = load i16, ptr %12, align 4
  br i1 %11, label %102, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = sub nsw i32 %17, %20
  %22 = tail call ptr @skb_segment_list(ptr noundef %0, i64 noundef %1, i32 noundef %21) #5
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %324, label %24

24:                                               ; preds = %14
  %25 = add i16 %13, 8
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #5
  %27 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 16
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 13, i32 0, i32 17
  %30 = load i16, ptr %29, align 2
  %31 = zext i16 %30 to i32
  %32 = getelementptr i8, ptr %28, i32 %31
  %33 = getelementptr inbounds %struct.udphdr, ptr %32, i32 0, i32 2
  store i16 %26, ptr %33, align 2
  br i1 %2, label %324, label %34

34:                                               ; preds = %24
  %35 = load ptr, ptr %27, align 8
  %36 = load i16, ptr %29, align 2
  %37 = zext i16 %36 to i32
  %38 = getelementptr i8, ptr %35, i32 %37
  %39 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 13, i32 0, i32 18
  %40 = load i16, ptr %39, align 4
  %41 = zext i16 %40 to i32
  %42 = getelementptr i8, ptr %35, i32 %41
  %43 = getelementptr inbounds %struct.udphdr, ptr %38, i32 0, i32 1
  %44 = load i16, ptr %43, align 2
  %45 = load ptr, ptr %22, align 8
  %46 = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 16
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 13, i32 0, i32 17
  %49 = load i16, ptr %48, align 2
  %50 = zext i16 %49 to i32
  %51 = getelementptr i8, ptr %47, i32 %50
  %52 = getelementptr inbounds %struct.udphdr, ptr %51, i32 0, i32 1
  %53 = load i16, ptr %52, align 2
  %54 = icmp eq i16 %44, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %34
  %56 = load i16, ptr %38, align 2
  %57 = load i16, ptr %51, align 2
  %58 = icmp eq i16 %56, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.iphdr, ptr %42, i32 0, i32 9
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 13, i32 0, i32 18
  %63 = load i16, ptr %62, align 4
  %64 = zext i16 %63 to i32
  %65 = getelementptr i8, ptr %47, i32 %64
  %66 = getelementptr inbounds %struct.iphdr, ptr %65, i32 0, i32 9
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %61, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.iphdr, ptr %42, i32 0, i32 8
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.iphdr, ptr %65, i32 0, i32 8
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %71, %73
  %75 = icmp eq ptr %45, null
  %76 = select i1 %74, i1 true, i1 %75
  br i1 %76, label %324, label %79

77:                                               ; preds = %59, %55, %34
  %78 = icmp eq ptr %45, null
  br i1 %78, label %324, label %79

79:                                               ; preds = %77, %69
  %80 = getelementptr inbounds %struct.iphdr, ptr %42, i32 0, i32 8
  %81 = getelementptr inbounds %struct.iphdr, ptr %42, i32 0, i32 9
  br label %82

82:                                               ; preds = %97, %79
  %83 = phi i16 [ %49, %79 ], [ %101, %97 ]
  %84 = phi ptr [ %47, %79 ], [ %99, %97 ]
  %85 = phi ptr [ %45, %79 ], [ %95, %97 ]
  %86 = zext i16 %83 to i32
  %87 = getelementptr i8, ptr %84, i32 %86
  %88 = getelementptr inbounds %struct.sk_buff, ptr %85, i32 0, i32 13, i32 0, i32 18
  %89 = load i16, ptr %88, align 4
  %90 = zext i16 %89 to i32
  %91 = getelementptr i8, ptr %84, i32 %90
  %92 = getelementptr inbounds %struct.iphdr, ptr %91, i32 0, i32 8
  tail call fastcc void @__udpv4_gso_segment_csum(ptr noundef nonnull %85, ptr noundef %92, ptr noundef %80, ptr noundef %87, ptr noundef %38) #5
  %93 = getelementptr inbounds %struct.iphdr, ptr %91, i32 0, i32 9
  %94 = getelementptr inbounds %struct.udphdr, ptr %87, i32 0, i32 1
  tail call fastcc void @__udpv4_gso_segment_csum(ptr noundef nonnull %85, ptr noundef %93, ptr noundef %81, ptr noundef %94, ptr noundef %43) #5
  %95 = load ptr, ptr %85, align 8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %324, label %97

97:                                               ; preds = %82
  %98 = getelementptr inbounds %struct.sk_buff, ptr %95, i32 0, i32 16
  %99 = load ptr, ptr %98, align 8
  %100 = getelementptr inbounds %struct.sk_buff, ptr %95, i32 0, i32 13, i32 0, i32 17
  %101 = load i16, ptr %100, align 2
  br label %82

102:                                              ; preds = %3
  %103 = zext i16 %13 to i32
  %104 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %105 = load i32, ptr %104, align 8
  %106 = add nuw nsw i32 %103, 8
  %107 = icmp ugt i32 %105, %106
  br i1 %107, label %108, label %324

108:                                              ; preds = %102
  %109 = tail call ptr @skb_pull(ptr noundef %0, i32 noundef 8) #5
  %110 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, @sock_wfree
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  store ptr null, ptr %110, align 4
  br label %114

114:                                              ; preds = %113, %108
  %115 = tail call ptr @skb_segment(ptr noundef %0, i64 noundef %1) #5
  %116 = icmp eq ptr %115, null
  %117 = icmp ugt ptr %115, inttoptr (i32 -4096 to ptr)
  %118 = or i1 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  br i1 %112, label %120, label %324

120:                                              ; preds = %119
  store ptr @sock_wfree, ptr %110, align 4
  br label %324

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.sk_buff, ptr %115, i32 0, i32 15
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.skb_shared_info, ptr %123, i32 0, i32 4
  %125 = load i16, ptr %124, align 4
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.skb_shared_info, ptr %123, i32 0, i32 5
  %129 = load i16, ptr %128, align 2
  %130 = mul i16 %129, %13
  br label %131

131:                                              ; preds = %127, %121
  %132 = phi i16 [ %130, %127 ], [ %13, %121 ]
  %133 = getelementptr inbounds %struct.sk_buff, ptr %115, i32 0, i32 16
  %134 = load ptr, ptr %133, align 8
  %135 = getelementptr inbounds %struct.sk_buff, ptr %115, i32 0, i32 13, i32 0, i32 17
  %136 = load i16, ptr %135, align 2
  %137 = zext i16 %136 to i32
  %138 = getelementptr i8, ptr %134, i32 %137
  %139 = load ptr, ptr %6, align 4
  %140 = getelementptr inbounds %struct.skb_shared_info, ptr %139, i32 0, i32 9
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr inbounds %struct.skb_shared_info, ptr %123, i32 0, i32 9
  store i32 %141, ptr %142, align 4
  %143 = load ptr, ptr %6, align 4
  %144 = getelementptr inbounds %struct.skb_shared_info, ptr %143, i32 0, i32 3
  %145 = load i8, ptr %144, align 1
  %146 = and i8 %145, 67
  %147 = load ptr, ptr %122, align 4
  %148 = getelementptr inbounds %struct.skb_shared_info, ptr %147, i32 0, i32 3
  %149 = load i8, ptr %148, align 1
  %150 = or i8 %149, %146
  store i8 %150, ptr %148, align 1
  %151 = add i16 %132, 8
  %152 = tail call i16 @llvm.bswap.i16(i16 %151)
  %153 = getelementptr inbounds %struct.udphdr, ptr %138, i32 0, i32 3
  %154 = load i16, ptr %153, align 2
  %155 = getelementptr inbounds %struct.udphdr, ptr %138, i32 0, i32 2
  %156 = load i16, ptr %155, align 2
  %157 = xor i16 %156, -1
  %158 = add i16 %154, %157
  %159 = icmp ult i16 %158, %157
  %160 = zext i1 %159 to i16
  %161 = add i16 %158, %152
  %162 = add i16 %161, %160
  %163 = icmp ult i16 %162, %152
  %164 = zext i1 %163 to i16
  %165 = add i16 %162, %164
  %166 = zext i16 %165 to i32
  %167 = xor i32 %166, -1
  br label %168

168:                                              ; preds = %222, %131
  %169 = phi i32 [ 0, %131 ], [ %179, %222 ]
  %170 = phi ptr [ %115, %131 ], [ %223, %222 ]
  %171 = phi ptr [ %138, %131 ], [ %229, %222 ]
  br i1 %112, label %172, label %178

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.sk_buff, ptr %170, i32 0, i32 4, i32 0, i32 1
  store ptr @sock_wfree, ptr %173, align 4
  %174 = getelementptr inbounds %struct.sk_buff, ptr %170, i32 0, i32 1
  store ptr %5, ptr %174, align 4
  %175 = getelementptr inbounds %struct.sk_buff, ptr %170, i32 0, i32 18
  %176 = load i32, ptr %175, align 8
  %177 = add i32 %176, %169
  br label %178

178:                                              ; preds = %172, %168
  %179 = phi i32 [ %177, %172 ], [ %169, %168 ]
  %180 = load ptr, ptr %170, align 8
  %181 = icmp eq ptr %180, null
  br i1 %181, label %230, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.udphdr, ptr %171, i32 0, i32 2
  store i16 %152, ptr %183, align 2
  %184 = getelementptr inbounds %struct.udphdr, ptr %171, i32 0, i32 3
  store i16 %165, ptr %184, align 2
  %185 = getelementptr inbounds %struct.sk_buff, ptr %170, i32 0, i32 13
  %186 = load i16, ptr %185, align 8
  %187 = and i16 %186, 96
  %188 = icmp eq i16 %187, 96
  br i1 %188, label %189, label %199

189:                                              ; preds = %182
  %190 = getelementptr inbounds %struct.sk_buff, ptr %170, i32 0, i32 13, i32 0, i32 3
  %191 = load i16, ptr %190, align 2
  %192 = and i16 %191, 1024
  %193 = icmp eq i16 %192, 0
  br i1 %193, label %194, label %222

194:                                              ; preds = %189
  %195 = getelementptr %struct.sk_buff, ptr %170, i32 0, i32 3, i32 40
  store i32 %167, ptr %195, align 4
  %196 = getelementptr inbounds %struct.sk_buff, ptr %170, i32 0, i32 13, i32 0, i32 4
  %197 = load i16, ptr %196, align 4
  %198 = getelementptr %struct.sk_buff, ptr %170, i32 0, i32 3, i32 44
  store i16 %197, ptr %198, align 4
  br label %222

199:                                              ; preds = %182
  %200 = getelementptr inbounds %struct.sk_buff, ptr %170, i32 0, i32 16
  %201 = load ptr, ptr %200, align 8
  %202 = getelementptr inbounds %struct.sk_buff, ptr %170, i32 0, i32 13, i32 0, i32 17
  %203 = load i16, ptr %202, align 2
  %204 = zext i16 %203 to i32
  %205 = getelementptr i8, ptr %201, i32 %204
  %206 = getelementptr %struct.sk_buff, ptr %170, i32 0, i32 3, i32 44
  %207 = load i16, ptr %206, align 4
  %208 = zext i16 %207 to i32
  %209 = getelementptr i8, ptr %201, i32 %208
  %210 = ptrtoint ptr %209 to i32
  %211 = ptrtoint ptr %205 to i32
  %212 = sub i32 %210, %211
  %213 = getelementptr %struct.sk_buff, ptr %170, i32 0, i32 3, i32 40
  %214 = load i32, ptr %213, align 4
  store i32 %167, ptr %213, align 4
  store i16 %203, ptr %206, align 4
  %215 = tail call i32 @csum_partial(ptr noundef %205, i32 noundef %212, i32 noundef %214) #5
  %216 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %215) #6, !srcloc !11
  %217 = xor i32 %216, -1
  %218 = lshr i32 %217, 16
  %219 = trunc i32 %218 to i16
  %220 = icmp eq i16 %219, 0
  %221 = select i1 %220, i16 -1, i16 %219
  store i16 %221, ptr %184, align 2
  br label %222

222:                                              ; preds = %199, %194, %189
  %223 = load ptr, ptr %170, align 8
  %224 = getelementptr inbounds %struct.sk_buff, ptr %223, i32 0, i32 16
  %225 = load ptr, ptr %224, align 8
  %226 = getelementptr inbounds %struct.sk_buff, ptr %223, i32 0, i32 13, i32 0, i32 17
  %227 = load i16, ptr %226, align 2
  %228 = zext i16 %227 to i32
  %229 = getelementptr i8, ptr %225, i32 %228
  br label %168

230:                                              ; preds = %178
  %231 = getelementptr inbounds %struct.sk_buff, ptr %170, i32 0, i32 14
  %232 = load ptr, ptr %231, align 8
  %233 = getelementptr inbounds %struct.sk_buff, ptr %170, i32 0, i32 16
  %234 = load ptr, ptr %233, align 8
  %235 = getelementptr inbounds %struct.sk_buff, ptr %170, i32 0, i32 13, i32 0, i32 17
  %236 = load i16, ptr %235, align 2
  %237 = zext i16 %236 to i32
  %238 = getelementptr i8, ptr %234, i32 %237
  %239 = ptrtoint ptr %232 to i32
  %240 = ptrtoint ptr %238 to i32
  %241 = getelementptr inbounds %struct.sk_buff, ptr %170, i32 0, i32 6
  %242 = load i32, ptr %241, align 4
  %243 = add i32 %242, %239
  %244 = sub i32 %243, %240
  %245 = trunc i32 %244 to i16
  %246 = tail call i16 @llvm.bswap.i16(i16 %245)
  %247 = getelementptr inbounds %struct.udphdr, ptr %171, i32 0, i32 3
  %248 = load i16, ptr %247, align 2
  %249 = getelementptr inbounds %struct.udphdr, ptr %171, i32 0, i32 2
  %250 = load i16, ptr %249, align 2
  %251 = xor i16 %250, -1
  %252 = add i16 %248, %251
  %253 = icmp ult i16 %252, %251
  %254 = zext i1 %253 to i16
  %255 = add i16 %252, %254
  %256 = add i16 %255, %246
  %257 = icmp ult i16 %256, %246
  %258 = zext i1 %257 to i16
  %259 = add i16 %256, %258
  store i16 %246, ptr %249, align 2
  store i16 %259, ptr %247, align 2
  %260 = getelementptr inbounds %struct.sk_buff, ptr %170, i32 0, i32 13
  %261 = load i16, ptr %260, align 8
  %262 = and i16 %261, 96
  %263 = icmp eq i16 %262, 96
  br i1 %263, label %264, label %276

264:                                              ; preds = %230
  %265 = getelementptr inbounds %struct.sk_buff, ptr %170, i32 0, i32 13, i32 0, i32 3
  %266 = load i16, ptr %265, align 2
  %267 = and i16 %266, 1024
  %268 = icmp eq i16 %267, 0
  br i1 %268, label %269, label %299

269:                                              ; preds = %264
  %270 = zext i16 %259 to i32
  %271 = xor i32 %270, -1
  %272 = getelementptr %struct.sk_buff, ptr %170, i32 0, i32 3, i32 40
  store i32 %271, ptr %272, align 4
  %273 = getelementptr inbounds %struct.sk_buff, ptr %170, i32 0, i32 13, i32 0, i32 4
  %274 = load i16, ptr %273, align 4
  %275 = getelementptr %struct.sk_buff, ptr %170, i32 0, i32 3, i32 44
  store i16 %274, ptr %275, align 4
  br label %299

276:                                              ; preds = %230
  %277 = zext i16 %259 to i32
  %278 = xor i32 %277, -1
  %279 = load ptr, ptr %233, align 8
  %280 = load i16, ptr %235, align 2
  %281 = zext i16 %280 to i32
  %282 = getelementptr i8, ptr %279, i32 %281
  %283 = getelementptr %struct.sk_buff, ptr %170, i32 0, i32 3, i32 44
  %284 = load i16, ptr %283, align 4
  %285 = zext i16 %284 to i32
  %286 = getelementptr i8, ptr %279, i32 %285
  %287 = ptrtoint ptr %286 to i32
  %288 = ptrtoint ptr %282 to i32
  %289 = sub i32 %287, %288
  %290 = getelementptr %struct.sk_buff, ptr %170, i32 0, i32 3, i32 40
  %291 = load i32, ptr %290, align 4
  store i32 %278, ptr %290, align 4
  store i16 %280, ptr %283, align 4
  %292 = tail call i32 @csum_partial(ptr noundef %282, i32 noundef %289, i32 noundef %291) #5
  %293 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %292) #6, !srcloc !11
  %294 = xor i32 %293, -1
  %295 = lshr i32 %294, 16
  %296 = trunc i32 %295 to i16
  %297 = icmp eq i16 %296, 0
  %298 = select i1 %297, i16 -1, i16 %296
  store i16 %298, ptr %247, align 2
  br label %299

299:                                              ; preds = %276, %269, %264
  br i1 %112, label %300, label %324

300:                                              ; preds = %299
  %301 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 18
  %302 = load i32, ptr %301, align 8
  %303 = sub i32 %179, %302
  %304 = icmp sgt i32 %303, -1
  br i1 %304, label %305, label %316, !prof !13

305:                                              ; preds = %300
  %306 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %306) #5, !srcloc !14
  %307 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %306, ptr %306, i32 %303, ptr elementtype(i32) %306) #5, !srcloc !15
  %308 = extractvalue { i32, i32, i32 } %307, 0
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %314, label %310, !prof !9

310:                                              ; preds = %305
  %311 = add i32 %308, %303
  %312 = or i32 %311, %308
  %313 = icmp sgt i32 %312, -1
  br i1 %313, label %324, label %314, !prof !13

314:                                              ; preds = %310, %305
  %315 = phi i32 [ 2, %305 ], [ 1, %310 ]
  tail call void @refcount_warn_saturate(ptr noundef %306, i32 noundef %315) #5
  br label %324

316:                                              ; preds = %300
  %317 = sub i32 0, %303
  %318 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 23
  %319 = tail call fastcc zeroext i1 @refcount_sub_and_test(i32 noundef %317, ptr noundef %318)
  %320 = load i1, ptr @__udp_gso_segment.__already_done, align 1
  %321 = xor i1 %320, true
  %322 = select i1 %319, i1 %321, i1 false
  br i1 %322, label %323, label %324, !prof !9

323:                                              ; preds = %316
  store i1 true, ptr @__udp_gso_segment.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 362, i32 noundef 9, ptr noundef null) #5
  br label %324

324:                                              ; preds = %323, %316, %314, %310, %299, %120, %119, %102, %82, %77, %69, %24, %14
  %325 = phi ptr [ %115, %120 ], [ %115, %119 ], [ %115, %323 ], [ %115, %316 ], [ %115, %299 ], [ %22, %14 ], [ %22, %24 ], [ %22, %69 ], [ %22, %77 ], [ inttoptr (i32 -22 to ptr), %102 ], [ %115, %310 ], [ %115, %314 ], [ %22, %82 ]
  ret ptr %325
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_wfree(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_segment(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @refcount_sub_and_test(i32 noundef %0, ptr noundef %1) unnamed_addr #3 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1) #5, !srcloc !14
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 %0, ptr elementtype(i32) %1) #5, !srcloc !17
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !18
  br label %12

7:                                                ; preds = %2
  %8 = sub i32 %4, %0
  %9 = or i32 %8, %4
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %12, label %11, !prof !13

11:                                               ; preds = %7
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef 3) #5
  br label %12

12:                                               ; preds = %11, %7, %6
  ret i1 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @udp_gro_receive(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  %8 = load i16, ptr %7, align 2
  %9 = and i16 %8, 32767
  store i16 %9, ptr %7, align 2
  %10 = icmp eq ptr %3, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.udp_sock, ptr %3, i32 0, i32 14
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %196

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 23
  %19 = load i64, ptr %18, align 16
  %20 = and i64 %19, 144115188075855872
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %15
  %23 = or i16 %8, -32768
  store i16 %23, ptr %7, align 2
  br label %40

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 23
  %28 = load i64, ptr %27, align 16
  %29 = and i64 %28, 144115188075855872
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.udp_sock, ptr %3, i32 0, i32 4
  %33 = load i8, ptr %32, align 1
  %34 = lshr i8 %33, 3
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  %37 = zext i8 %36 to i16
  %38 = shl nuw i16 %37, 15
  %39 = or i16 %38, %9
  store i16 %39, ptr %7, align 2
  br label %45

40:                                               ; preds = %22, %15
  %41 = phi i16 [ %23, %22 ], [ %9, %15 ]
  %42 = load i64, ptr %18, align 16
  %43 = and i64 %42, 576460752303423488
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %51, label %54

45:                                               ; preds = %31, %24
  %46 = phi i16 [ %9, %24 ], [ %39, %31 ]
  %47 = getelementptr inbounds %struct.udp_sock, ptr %3, i32 0, i32 4
  %48 = load i8, ptr %47, align 1
  %49 = and i8 %48, 8
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45, %40
  %52 = phi i16 [ %41, %40 ], [ %46, %45 ]
  %53 = icmp sgt i16 %52, -1
  br i1 %53, label %277, label %54

54:                                               ; preds = %51, %45, %40
  %55 = phi i16 [ %52, %51 ], [ %46, %45 ], [ %41, %40 ]
  %56 = lshr i16 %55, 11
  %57 = trunc i16 %56 to i8
  %58 = add nuw nsw i8 %57, 1
  %59 = and i8 %58, 15
  %60 = zext i8 %59 to i16
  %61 = shl nuw nsw i16 %60, 11
  %62 = and i16 %55, -30721
  %63 = or i16 %61, %62
  store i16 %63, ptr %7, align 2
  %64 = icmp eq i8 %59, 15
  br i1 %64, label %65, label %69, !prof !9

65:                                               ; preds = %54
  %66 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %67 = load i16, ptr %66, align 4
  %68 = or i16 %67, 1
  store i16 %68, ptr %66, align 4
  br label %283

69:                                               ; preds = %54
  %70 = add i32 %6, 8
  %71 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr i8, ptr %72, i32 %6
  %74 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %75 = load i32, ptr %74, align 4
  %76 = icmp ult i32 %75, %70
  br i1 %76, label %77, label %94

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %79 = load i32, ptr %78, align 8
  %80 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %81 = load i32, ptr %80, align 4
  %82 = sub i32 %79, %81
  %83 = icmp ugt i32 %70, %82
  br i1 %83, label %84, label %90, !prof !9

84:                                               ; preds = %77
  %85 = icmp ult i32 %79, %70
  br i1 %85, label %94, label %86, !prof !9

86:                                               ; preds = %84
  %87 = sub i32 %70, %82
  %88 = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %87) #5
  %89 = icmp eq ptr %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %86, %77
  store ptr null, ptr %71, align 8
  store i32 0, ptr %74, align 4
  %91 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr i8, ptr %92, i32 %6
  br label %94

94:                                               ; preds = %90, %86, %84, %69
  %95 = phi ptr [ %73, %69 ], [ %93, %90 ], [ null, %86 ], [ null, %84 ]
  %96 = getelementptr inbounds %struct.udphdr, ptr %95, i32 0, i32 3
  %97 = load i16, ptr %96, align 2
  %98 = icmp eq i16 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  store i16 1, ptr %100, align 4
  br label %283

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.udphdr, ptr %95, i32 0, i32 2
  %103 = load i16, ptr %102, align 2
  %104 = tail call i16 @llvm.bswap.i16(i16 %103) #5
  %105 = icmp ult i16 %104, 9
  br i1 %105, label %113, label %106

106:                                              ; preds = %101
  %107 = zext i16 %104 to i32
  %108 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %109 = load i32, ptr %108, align 8
  %110 = load i32, ptr %5, align 8
  %111 = sub i32 %109, %110
  %112 = icmp eq i32 %111, %107
  br i1 %112, label %115, label %113

113:                                              ; preds = %106, %101
  %114 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  store i16 1, ptr %114, align 4
  br label %283

115:                                              ; preds = %106
  %116 = add i32 %110, 8
  store i32 %116, ptr %5, align 8
  %117 = load ptr, ptr %0, align 4
  %118 = icmp eq ptr %117, %0
  br i1 %118, label %283, label %119

119:                                              ; preds = %193, %115
  %120 = phi ptr [ %194, %193 ], [ %117, %115 ]
  %121 = getelementptr inbounds %struct.sk_buff, ptr %120, i32 0, i32 3, i32 26
  %122 = load i16, ptr %121, align 2
  %123 = and i16 %122, 1
  %124 = icmp eq i16 %123, 0
  br i1 %124, label %193, label %125

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.sk_buff, ptr %120, i32 0, i32 16
  %127 = load ptr, ptr %126, align 8
  %128 = getelementptr inbounds %struct.sk_buff, ptr %120, i32 0, i32 13, i32 0, i32 17
  %129 = load i16, ptr %128, align 2
  %130 = zext i16 %129 to i32
  %131 = getelementptr i8, ptr %127, i32 %130
  %132 = load i32, ptr %95, align 2
  %133 = load i32, ptr %131, align 2
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %137, label %135

135:                                              ; preds = %125
  %136 = and i16 %122, -2
  store i16 %136, ptr %121, align 2
  br label %193

137:                                              ; preds = %125
  %138 = load i16, ptr %7, align 2
  %139 = xor i16 %138, %122
  %140 = icmp sgt i16 %139, -1
  br i1 %140, label %143, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  store i16 1, ptr %142, align 4
  br label %283

143:                                              ; preds = %137
  %144 = zext i16 %129 to i32
  %145 = getelementptr i8, ptr %127, i32 %144
  %146 = getelementptr inbounds %struct.udphdr, ptr %145, i32 0, i32 2
  %147 = load i16, ptr %146, align 2
  %148 = tail call i16 @llvm.bswap.i16(i16 %147) #5
  %149 = icmp ugt i16 %104, %148
  br i1 %149, label %184, label %150

150:                                              ; preds = %143
  %151 = icmp sgt i16 %138, -1
  br i1 %151, label %177, label %152

152:                                              ; preds = %150
  %153 = load i32, ptr %5, align 8
  %154 = tail call fastcc zeroext i1 @pskb_may_pull(ptr noundef %1, i32 noundef %153) #5
  br i1 %154, label %157, label %155

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  store i16 1, ptr %156, align 4
  br label %283

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %159 = load i16, ptr %158, align 8
  %160 = getelementptr inbounds %struct.sk_buff, ptr %120, i32 0, i32 13
  %161 = load i16, ptr %160, align 8
  %162 = xor i16 %161, %159
  %163 = and i16 %162, 96
  %164 = icmp eq i16 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %157
  %166 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 3
  %167 = load i16, ptr %166, align 2
  %168 = getelementptr inbounds %struct.sk_buff, ptr %120, i32 0, i32 13, i32 0, i32 3
  %169 = load i16, ptr %168, align 2
  %170 = xor i16 %169, %167
  %171 = and i16 %170, 12
  %172 = icmp eq i16 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %165, %157
  %174 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  store i16 1, ptr %174, align 4
  br label %283

175:                                              ; preds = %165
  %176 = tail call fastcc i32 @skb_gro_receive_list(ptr noundef %120, ptr noundef %1) #5
  br label %179

177:                                              ; preds = %150
  tail call fastcc void @skb_gro_postpull_rcsum(ptr noundef %1, ptr noundef %95) #5
  %178 = tail call i32 @skb_gro_receive(ptr noundef %120, ptr noundef %1) #5
  br label %179

179:                                              ; preds = %177, %175
  %180 = phi i32 [ %176, %175 ], [ %178, %177 ]
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %192

182:                                              ; preds = %179
  %183 = load i16, ptr %146, align 2
  br label %184

184:                                              ; preds = %182, %143
  %185 = phi i16 [ %183, %182 ], [ %147, %143 ]
  %186 = phi ptr [ null, %182 ], [ %120, %143 ]
  %187 = icmp eq i16 %103, %185
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.sk_buff, ptr %120, i32 0, i32 3, i32 16
  %190 = load i16, ptr %189, align 8
  %191 = icmp ugt i16 %190, 63
  br i1 %191, label %192, label %283

192:                                              ; preds = %188, %184, %179
  br label %283

193:                                              ; preds = %135, %119
  %194 = load ptr, ptr %120, align 4
  %195 = icmp eq ptr %194, %0
  br i1 %195, label %283, label %119

196:                                              ; preds = %11
  %197 = and i16 %8, 2
  %198 = icmp eq i16 %197, 0
  br i1 %198, label %199, label %277

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.udphdr, ptr %2, i32 0, i32 3
  %201 = load i16, ptr %200, align 2
  %202 = icmp eq i16 %201, 0
  br i1 %202, label %214, label %203

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %205 = load i16, ptr %204, align 8
  %206 = and i16 %205, 96
  %207 = icmp ne i16 %206, 96
  %208 = and i16 %8, 56
  %209 = icmp eq i16 %208, 0
  %210 = select i1 %207, i1 %209, i1 false
  %211 = and i16 %8, 4
  %212 = icmp eq i16 %211, 0
  %213 = select i1 %210, i1 %212, i1 false
  br i1 %213, label %277, label %214

214:                                              ; preds = %203, %199
  %215 = or i16 %9, 2
  store i16 %215, ptr %7, align 2
  %216 = load ptr, ptr %0, align 4
  %217 = icmp eq ptr %216, %0
  br i1 %217, label %246, label %218

218:                                              ; preds = %240, %214
  %219 = phi ptr [ %241, %240 ], [ %216, %214 ]
  %220 = getelementptr inbounds %struct.sk_buff, ptr %219, i32 0, i32 3, i32 26
  %221 = load i16, ptr %220, align 2
  %222 = and i16 %221, 1
  %223 = icmp eq i16 %222, 0
  br i1 %223, label %240, label %224

224:                                              ; preds = %218
  %225 = getelementptr inbounds %struct.sk_buff, ptr %219, i32 0, i32 17
  %226 = load ptr, ptr %225, align 4
  %227 = getelementptr i8, ptr %226, i32 %6
  %228 = load i32, ptr %2, align 2
  %229 = load i32, ptr %227, align 2
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %238

231:                                              ; preds = %224
  %232 = load i16, ptr %200, align 2
  %233 = icmp eq i16 %232, 0
  %234 = getelementptr inbounds %struct.udphdr, ptr %227, i32 0, i32 3
  %235 = load i16, ptr %234, align 2
  %236 = icmp eq i16 %235, 0
  %237 = xor i1 %233, %236
  br i1 %237, label %238, label %240

238:                                              ; preds = %231, %224
  %239 = and i16 %221, -2
  store i16 %239, ptr %220, align 2
  br label %240

240:                                              ; preds = %238, %231, %218
  %241 = load ptr, ptr %219, align 4
  %242 = icmp eq ptr %241, %0
  br i1 %242, label %243, label %218

243:                                              ; preds = %240
  %244 = load i32, ptr %5, align 8
  %245 = load i16, ptr %7, align 2
  br label %246

246:                                              ; preds = %243, %214
  %247 = phi i16 [ %245, %243 ], [ %215, %214 ]
  %248 = phi i32 [ %244, %243 ], [ %6, %214 ]
  %249 = add i32 %248, 8
  store i32 %249, ptr %5, align 8
  %250 = and i16 %247, 4
  %251 = icmp eq i16 %250, 0
  br i1 %251, label %259, label %252

252:                                              ; preds = %246
  %253 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %254 = load i32, ptr %253, align 4
  %255 = sub i32 0, %254
  %256 = tail call i32 @csum_partial(ptr noundef %2, i32 noundef 8, i32 noundef %255) #5
  %257 = sub i32 0, %256
  store i32 %257, ptr %253, align 4
  %258 = load i16, ptr %7, align 2
  br label %259

259:                                              ; preds = %252, %246
  %260 = phi i16 [ %247, %246 ], [ %258, %252 ]
  %261 = load ptr, ptr %12, align 4
  %262 = lshr i16 %260, 11
  %263 = trunc i16 %262 to i8
  %264 = add nuw nsw i8 %263, 1
  %265 = and i8 %264, 15
  %266 = zext i8 %265 to i16
  %267 = shl nuw nsw i16 %266, 11
  %268 = and i16 %260, -30721
  %269 = or i16 %267, %268
  store i16 %269, ptr %7, align 2
  %270 = icmp eq i8 %265, 15
  br i1 %270, label %271, label %275, !prof !9

271:                                              ; preds = %259
  %272 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %273 = load i16, ptr %272, align 4
  %274 = or i16 %273, 1
  store i16 %274, ptr %272, align 4
  br label %277

275:                                              ; preds = %259
  %276 = tail call ptr %261(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %1) #5
  br label %277

277:                                              ; preds = %275, %271, %203, %196, %51
  %278 = phi i16 [ 1, %196 ], [ 1, %51 ], [ 1, %203 ], [ 0, %271 ], [ 0, %275 ]
  %279 = phi ptr [ null, %196 ], [ null, %51 ], [ null, %203 ], [ null, %271 ], [ %276, %275 ]
  %280 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %281 = load i16, ptr %280, align 4
  %282 = or i16 %281, %278
  store i16 %282, ptr %280, align 4
  br label %283

283:                                              ; preds = %277, %193, %192, %188, %173, %155, %141, %115, %113, %99, %65
  %284 = phi ptr [ %279, %277 ], [ null, %65 ], [ null, %113 ], [ %120, %141 ], [ null, %173 ], [ null, %155 ], [ null, %99 ], [ %120, %192 ], [ %186, %188 ], [ null, %115 ], [ null, %193 ]
  ret ptr %284
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @skb_gro_postpull_rcsum(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 26
  %4 = load i16, ptr %3, align 2
  %5 = and i16 %4, 4
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 28
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 0, %9
  %11 = tail call i32 @csum_partial(ptr noundef %1, i32 noundef 8, i32 noundef %10) #5
  %12 = sub i32 0, %11
  store i32 %12, ptr %8, align 4
  br label %13

13:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @udp_gro_complete(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = sub i32 %5, %1
  %7 = trunc i32 %6 to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %1
  %12 = getelementptr inbounds %struct.udphdr, ptr %11, i32 0, i32 2
  store i16 %8, ptr %12, align 2
  %13 = load i16, ptr %11, align 2
  %14 = getelementptr inbounds %struct.udphdr, ptr %11, i32 0, i32 1
  %15 = load i16, ptr %14, align 2
  %16 = tail call ptr %2(ptr noundef %0, i16 noundef zeroext %13, i16 noundef zeroext %15) #5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.udp_sock, ptr %16, i32 0, i32 15
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %39, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.udphdr, ptr %11, i32 0, i32 3
  %24 = load i16, ptr %23, align 2
  %25 = icmp eq i16 %24, 0
  %26 = select i1 %25, i32 1024, i32 2048
  %27 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.skb_shared_info, ptr %28, i32 0, i32 8
  store i32 %26, ptr %29, align 8
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 26
  %31 = load i16, ptr %30, align 2
  %32 = and i16 %31, -3
  store i16 %32, ptr %30, align 2
  %33 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %34 = load i16, ptr %33, align 8
  %35 = or i16 %34, 8192
  store i16 %35, ptr %33, align 8
  %36 = load ptr, ptr %19, align 8
  %37 = add i32 %1, 8
  %38 = tail call i32 %36(ptr noundef nonnull %16, ptr noundef %0, i32 noundef %37) #5
  br label %62

39:                                               ; preds = %18, %3
  %40 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %41 = load i16, ptr %40, align 2
  %42 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  store i16 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.anon.122, ptr %42, i32 0, i32 1
  store i16 6, ptr %43, align 2
  %44 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %45 = load i16, ptr %44, align 8
  %46 = or i16 %45, 96
  store i16 %46, ptr %44, align 8
  %47 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 16
  %48 = load i16, ptr %47, align 8
  %49 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.skb_shared_info, ptr %50, i32 0, i32 5
  store i16 %48, ptr %51, align 2
  %52 = load ptr, ptr %49, align 4
  %53 = getelementptr inbounds %struct.skb_shared_info, ptr %52, i32 0, i32 8
  %54 = load i32, ptr %53, align 8
  %55 = or i32 %54, 131072
  store i32 %55, ptr %53, align 8
  %56 = load i16, ptr %44, align 8
  %57 = and i16 %56, 8192
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %39
  %60 = load i16, ptr %40, align 2
  %61 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 13
  store i16 %60, ptr %61, align 2
  br label %62

62:                                               ; preds = %59, %39, %22
  %63 = phi i32 [ %38, %22 ], [ 0, %39 ], [ 0, %59 ]
  %64 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %65 = load i16, ptr %64, align 2
  %66 = and i16 %65, 1024
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.skb_shared_info, ptr %70, i32 0, i32 8
  %72 = load i32, ptr %71, align 8
  %73 = or i32 %72, 8192
  store i32 %73, ptr %71, align 8
  br label %74

74:                                               ; preds = %68, %62
  ret i32 %63
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @udpv4_offload_init() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @inet_add_offload(ptr noundef nonnull @udpv4_offload, i8 noundef zeroext 17) #5
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_add_offload(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pskb_may_pull(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %4, %6
  %8 = icmp ult i32 %7, %1
  br i1 %8, label %9, label %15, !prof !9

9:                                                ; preds = %2
  %10 = icmp ult i32 %4, %1
  br i1 %10, label %15, label %11, !prof !9

11:                                               ; preds = %9
  %12 = sub i32 %1, %7
  %13 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %12) #5
  %14 = icmp ne ptr %13, null
  br label %15

15:                                               ; preds = %11, %9, %2
  %16 = phi i1 [ %14, %11 ], [ true, %2 ], [ false, %9 ]
  ret i1 %16
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_segment_list(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__udpv4_gso_segment_csum(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = load i32, ptr %1, align 4
  %7 = load i32, ptr %2, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load i16, ptr %3, align 2
  %11 = load i16, ptr %4, align 2
  %12 = icmp eq i16 %10, %11
  br i1 %12, label %57, label %13

13:                                               ; preds = %9, %5
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = getelementptr i8, ptr %15, i32 %18
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %21 = load i16, ptr %20, align 4
  %22 = zext i16 %21 to i32
  %23 = getelementptr i8, ptr %15, i32 %22
  %24 = getelementptr inbounds %struct.udphdr, ptr %19, i32 0, i32 3
  %25 = load i16, ptr %24, align 2
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %13
  tail call void @inet_proto_csum_replace4(ptr noundef %24, ptr noundef %0, i32 noundef %6, i32 noundef %7, i1 noundef zeroext true) #5
  %28 = load i16, ptr %3, align 2
  %29 = load i16, ptr %4, align 2
  %30 = zext i16 %28 to i32
  %31 = zext i16 %29 to i32
  tail call void @inet_proto_csum_replace4(ptr noundef %24, ptr noundef %0, i32 noundef %30, i32 noundef %31, i1 noundef zeroext false) #5
  %32 = load i16, ptr %24, align 2
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i16 -1, ptr %24, align 2
  br label %35

35:                                               ; preds = %34, %27, %13
  %36 = load i16, ptr %4, align 2
  store i16 %36, ptr %3, align 2
  %37 = getelementptr inbounds %struct.iphdr, ptr %23, i32 0, i32 7
  %38 = load i32, ptr %1, align 4
  %39 = load i32, ptr %2, align 4
  %40 = load i16, ptr %37, align 2
  %41 = zext i16 %40 to i32
  %42 = xor i32 %41, -1
  %43 = xor i32 %38, -1
  %44 = add i32 %42, %43
  %45 = icmp ult i32 %44, %43
  %46 = zext i1 %45 to i32
  %47 = add i32 %44, %39
  %48 = add i32 %47, %46
  %49 = icmp ult i32 %48, %39
  %50 = zext i1 %49 to i32
  %51 = add i32 %48, %50
  %52 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %51) #6, !srcloc !11
  %53 = xor i32 %52, -1
  %54 = lshr i32 %53, 16
  %55 = trunc i32 %54 to i16
  store i16 %55, ptr %37, align 2
  %56 = load i32, ptr %2, align 4
  store i32 %56, ptr %1, align 4
  br label %57

57:                                               ; preds = %35, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_proto_csum_replace4(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @skb_gro_receive_list(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = add i32 %6, %4
  %8 = icmp ugt i32 %7, 65535
  br i1 %8, label %41, label %9, !prof !9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 32
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 6
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi ptr [ %16, %13 ], [ %11, %9 ]
  store ptr %1, ptr %18, align 8
  %19 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %20 = load i32, ptr %19, align 8
  %21 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef %20) #5
  store ptr %1, ptr %10, align 8
  %22 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 16
  %23 = load i16, ptr %22, align 8
  %24 = add i16 %23, 1
  store i16 %24, ptr %22, align 8
  %25 = load i32, ptr %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %25
  store i32 %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4, i32 0, i32 1
  store ptr null, ptr %29, align 4
  %30 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %31 = load i32, ptr %30, align 8
  %32 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 18
  %33 = load i32, ptr %32, align 8
  %34 = add i32 %33, %31
  store i32 %34, ptr %32, align 8
  %35 = load i32, ptr %5, align 8
  %36 = load i32, ptr %3, align 8
  %37 = add i32 %36, %35
  store i32 %37, ptr %3, align 8
  %38 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  %39 = load i16, ptr %38, align 2
  %40 = or i16 %39, 1
  store i16 %40, ptr %38, align 2
  br label %41

41:                                               ; preds = %17, %2
  %42 = phi i32 [ 0, %17 ], [ -7, %2 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @udp4_ufo_fragment(ptr noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 8192
  %6 = icmp eq i16 %5, 0
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.skb_shared_info, ptr %8, i32 0, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 3072
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %6, i1 true, i1 %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = tail call ptr @skb_udp_tunnel_segment(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false)
  br label %85

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %18 = and i32 %10, 196608
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %85, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = sub i32 %22, %24
  %26 = icmp ult i32 %25, 8
  br i1 %26, label %27, label %37, !prof !9

27:                                               ; preds = %20
  %28 = icmp ult i32 %22, 8
  br i1 %28, label %85, label %29, !prof !9

29:                                               ; preds = %27
  %30 = sub nuw nsw i32 8, %25
  %31 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %30) #5
  %32 = icmp eq ptr %31, null
  br i1 %32, label %85, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %17, align 4
  %35 = getelementptr inbounds %struct.skb_shared_info, ptr %34, i32 0, i32 8
  %36 = load i32, ptr %35, align 8
  br label %37

37:                                               ; preds = %33, %20
  %38 = phi i32 [ %36, %33 ], [ %10, %20 ]
  %39 = phi ptr [ %34, %33 ], [ %8, %20 ]
  %40 = and i32 %38, 131072
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = tail call ptr @__udp_gso_segment(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false)
  br label %85

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.skb_shared_info, ptr %39, i32 0, i32 4
  %46 = load i16, ptr %45, align 4
  %47 = zext i16 %46 to i32
  %48 = load i32, ptr %21, align 8
  %49 = icmp ugt i32 %48, %47
  br i1 %49, label %50, label %85, !prof !13

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %54 = load i16, ptr %53, align 2
  %55 = zext i16 %54 to i32
  %56 = getelementptr i8, ptr %52, i32 %55
  %57 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %58 = load i16, ptr %57, align 4
  %59 = getelementptr inbounds %struct.udphdr, ptr %56, i32 0, i32 3
  store i16 0, ptr %59, align 2
  %60 = load i32, ptr %21, align 8
  %61 = tail call i32 @skb_checksum(ptr noundef %0, i32 noundef 0, i32 noundef %60, i32 noundef 0) #5
  %62 = load i32, ptr %21, align 8
  %63 = add i32 %62, 17
  %64 = zext i16 %58 to i32
  %65 = getelementptr i8, ptr %52, i32 %64
  %66 = getelementptr inbounds %struct.iphdr, ptr %65, i32 0, i32 9
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.iphdr, ptr %65, i32 0, i32 8
  %69 = load i32, ptr %68, align 4
  %70 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adcs\09$0, $0, $4, ror #8\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,r,~{cc}"(i32 %61, i32 %67, i32 %69, i32 %63) #6, !srcloc !19
  %71 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %70) #6, !srcloc !11
  %72 = xor i32 %71, -1
  %73 = lshr i32 %72, 16
  %74 = trunc i32 %73 to i16
  %75 = icmp eq i16 %74, 0
  %76 = select i1 %75, i16 -1, i16 %74
  store i16 %76, ptr %59, align 2
  %77 = load i16, ptr %3, align 8
  %78 = and i16 %77, -97
  %79 = or i16 %78, 32
  store i16 %79, ptr %3, align 8
  %80 = and i16 %77, 16384
  %81 = icmp eq i16 %80, 0
  %82 = or i64 %1, 8
  %83 = select i1 %81, i64 %82, i64 %1
  %84 = tail call ptr @skb_segment(ptr noundef %0, i64 noundef %83) #5
  br label %85

85:                                               ; preds = %50, %44, %42, %29, %27, %16, %14
  %86 = phi ptr [ %43, %42 ], [ %15, %14 ], [ inttoptr (i32 -22 to ptr), %44 ], [ %84, %50 ], [ inttoptr (i32 -22 to ptr), %29 ], [ inttoptr (i32 -22 to ptr), %16 ], [ inttoptr (i32 -22 to ptr), %27 ]
  ret ptr %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @udp4_gro_receive(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %4 = load i32, ptr %3, align 8
  %5 = add i32 %4, 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, %5
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 %12, %14
  %16 = icmp ugt i32 %5, %15
  br i1 %16, label %17, label %23, !prof !9

17:                                               ; preds = %10
  %18 = icmp ult i32 %12, %5
  br i1 %18, label %197, label %19, !prof !9

19:                                               ; preds = %17
  %20 = sub i32 %5, %15
  %21 = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %20) #5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %197, label %23

23:                                               ; preds = %19, %10
  store ptr null, ptr %6, align 8
  store i32 0, ptr %7, align 4
  %24 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  br label %25

25:                                               ; preds = %23, %2
  %26 = phi ptr [ %6, %2 ], [ %24, %23 ]
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 %4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %197, label %30, !prof !9

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %32 = load i16, ptr %31, align 4
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  %36 = load i16, ptr %35, align 2
  br label %183

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.udphdr, ptr %28, i32 0, i32 3
  %39 = load i16, ptr %38, align 2
  %40 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %41 = load i16, ptr %40, align 8
  %42 = and i16 %41, 96
  %43 = icmp eq i16 %42, 96
  br i1 %43, label %46, label %44

44:                                               ; preds = %37
  %45 = load i32, ptr %3, align 8
  br label %60

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 4
  %48 = load i16, ptr %47, align 4
  %49 = zext i16 %48 to i32
  %50 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %53 = load ptr, ptr %52, align 8
  %54 = ptrtoint ptr %51 to i32
  %55 = ptrtoint ptr %53 to i32
  %56 = sub i32 %49, %54
  %57 = add i32 %56, %55
  %58 = load i32, ptr %3, align 8
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %113

60:                                               ; preds = %46, %44
  %61 = phi i32 [ %45, %44 ], [ %58, %46 ]
  %62 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 18
  %63 = load i16, ptr %62, align 2
  %64 = zext i16 %63 to i32
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %113, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  %68 = load i16, ptr %67, align 2
  %69 = and i16 %68, 56
  %70 = icmp eq i16 %69, 0
  %71 = icmp ne i16 %39, 0
  %72 = and i1 %71, %70
  br i1 %72, label %73, label %113

73:                                               ; preds = %66
  %74 = load ptr, ptr %6, align 8
  %75 = icmp eq ptr %74, null
  %76 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %77 = load ptr, ptr %76, align 4
  %78 = select i1 %75, ptr %77, ptr %74
  %79 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %82 = load i16, ptr %81, align 4
  %83 = zext i16 %82 to i32
  %84 = getelementptr i8, ptr %80, i32 %83
  %85 = ptrtoint ptr %84 to i32
  %86 = ptrtoint ptr %77 to i32
  %87 = sub i32 %85, %86
  %88 = getelementptr i8, ptr %78, i32 %87
  %89 = getelementptr inbounds %struct.iphdr, ptr %88, i32 0, i32 8
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.iphdr, ptr %88, i32 0, i32 9
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %94 = load i32, ptr %93, align 8
  %95 = add i32 %94, 17
  %96 = sub i32 %95, %61
  %97 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3, ror #8\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %92, i32 %90, i32 %96) #6, !srcloc !20
  %98 = and i16 %68, 4
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %73
  %101 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %102 = load i32, ptr %101, align 4
  %103 = add i32 %102, %97
  %104 = icmp ult i32 %103, %102
  %105 = zext i1 %104 to i32
  %106 = add i32 %103, %105
  %107 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %106) #6, !srcloc !11
  %108 = icmp ugt i32 %107, -65537
  br i1 %108, label %113, label %109

109:                                              ; preds = %100, %73
  %110 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  store i32 %97, ptr %110, align 4
  %111 = tail call zeroext i16 @__skb_gro_checksum_complete(ptr noundef %1) #5
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %113, label %197

113:                                              ; preds = %109, %100, %66, %60, %46
  %114 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  %115 = load i16, ptr %114, align 2
  %116 = trunc i16 %115 to i8
  %117 = and i8 %116, 56
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %113
  %120 = add i8 %116, 56
  %121 = and i8 %120, 56
  %122 = zext i8 %121 to i16
  %123 = and i16 %115, -57
  %124 = or i16 %123, %122
  store i16 %124, ptr %114, align 2
  br label %147

125:                                              ; preds = %113
  %126 = load i16, ptr %40, align 8
  %127 = lshr i16 %126, 5
  %128 = trunc i16 %127 to i2
  switch i2 %128, label %147 [
    i2 1, label %129
    i2 0, label %141
  ]

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 3
  %131 = load i16, ptr %130, align 2
  %132 = trunc i16 %131 to i8
  %133 = and i8 %132, 12
  %134 = icmp eq i8 %133, 12
  br i1 %134, label %147, label %135

135:                                              ; preds = %129
  %136 = add i8 %132, 4
  %137 = and i8 %136, 12
  %138 = zext i8 %137 to i16
  %139 = and i16 %131, -13
  %140 = or i16 %139, %138
  store i16 %140, ptr %130, align 2
  br label %147

141:                                              ; preds = %125
  %142 = and i16 %126, -97
  %143 = or i16 %142, 32
  store i16 %143, ptr %40, align 8
  %144 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 3
  %145 = load i16, ptr %144, align 2
  %146 = and i16 %145, -13
  store i16 %146, ptr %144, align 2
  br label %147

147:                                              ; preds = %141, %135, %129, %125, %119
  %148 = phi i16 [ %124, %119 ], [ %115, %125 ], [ %115, %129 ], [ %115, %135 ], [ %115, %141 ]
  %149 = load i16, ptr %38, align 2
  %150 = icmp ne i16 %149, 0
  %151 = and i16 %148, 60
  %152 = icmp eq i16 %151, 0
  %153 = select i1 %150, i1 %152, i1 false
  br i1 %153, label %154, label %183

154:                                              ; preds = %147
  %155 = load ptr, ptr %6, align 8
  %156 = icmp eq ptr %155, null
  %157 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %158 = load ptr, ptr %157, align 4
  %159 = select i1 %156, ptr %158, ptr %155
  %160 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %161 = load ptr, ptr %160, align 8
  %162 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %163 = load i16, ptr %162, align 4
  %164 = zext i16 %163 to i32
  %165 = getelementptr i8, ptr %161, i32 %164
  %166 = ptrtoint ptr %165 to i32
  %167 = ptrtoint ptr %158 to i32
  %168 = sub i32 %166, %167
  %169 = getelementptr i8, ptr %159, i32 %168
  %170 = getelementptr inbounds %struct.iphdr, ptr %169, i32 0, i32 8
  %171 = load i32, ptr %170, align 4
  %172 = getelementptr inbounds %struct.iphdr, ptr %169, i32 0, i32 9
  %173 = load i32, ptr %172, align 4
  %174 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %175 = load i32, ptr %174, align 8
  %176 = load i32, ptr %3, align 8
  %177 = add i32 %175, 17
  %178 = sub i32 %177, %176
  %179 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3, ror #8\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %173, i32 %171, i32 %178) #6, !srcloc !20
  %180 = xor i32 %179, -1
  %181 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  store i32 %180, ptr %181, align 4
  %182 = or i16 %148, 4
  br label %183

183:                                              ; preds = %154, %147, %34
  %184 = phi i16 [ %36, %34 ], [ %182, %154 ], [ %148, %147 ]
  %185 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  %186 = and i16 %184, -257
  store i16 %186, ptr %185, align 2
  %187 = load volatile i32, ptr @udp_encap_needed_key, align 4
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %194, !prof !9

189:                                              ; preds = %183
  %190 = load i16, ptr %28, align 2
  %191 = getelementptr inbounds %struct.udphdr, ptr %28, i32 0, i32 1
  %192 = load i16, ptr %191, align 2
  %193 = tail call fastcc ptr @udp4_gro_lookup_skb(ptr noundef %1, i16 noundef zeroext %190, i16 noundef zeroext %192)
  br label %194

194:                                              ; preds = %189, %183
  %195 = phi ptr [ %193, %189 ], [ null, %183 ]
  %196 = tail call ptr @udp_gro_receive(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %28, ptr noundef %195)
  br label %199

197:                                              ; preds = %109, %25, %19, %17
  %198 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  store i16 1, ptr %198, align 4
  br label %199

199:                                              ; preds = %197, %194
  %200 = phi ptr [ null, %197 ], [ %196, %194 ]
  ret ptr %200
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @udp4_gro_complete(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %1
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 26
  %13 = load i16, ptr %12, align 2
  %14 = and i16 %13, -32766
  %15 = icmp eq i16 %14, -32768
  br i1 %15, label %16, label %54

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %18 = load i32, ptr %17, align 8
  %19 = sub i32 %18, %1
  %20 = trunc i32 %19 to i16
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %22 = getelementptr inbounds %struct.udphdr, ptr %11, i32 0, i32 2
  store i16 %21, ptr %22, align 2
  %23 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.skb_shared_info, ptr %24, i32 0, i32 8
  %26 = load i32, ptr %25, align 8
  %27 = or i32 %26, 393216
  store i32 %27, ptr %25, align 8
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 16
  %29 = load i16, ptr %28, align 8
  %30 = load ptr, ptr %23, align 4
  %31 = getelementptr inbounds %struct.skb_shared_info, ptr %30, i32 0, i32 5
  store i16 %29, ptr %31, align 2
  %32 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %33 = load i16, ptr %32, align 8
  %34 = and i16 %33, 96
  %35 = icmp eq i16 %34, 32
  br i1 %35, label %36, label %48

36:                                               ; preds = %16
  %37 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %38 = load i16, ptr %37, align 2
  %39 = trunc i16 %38 to i8
  %40 = and i8 %39, 12
  %41 = icmp eq i8 %40, 12
  br i1 %41, label %143, label %42

42:                                               ; preds = %36
  %43 = add i8 %39, 4
  %44 = and i8 %43, 12
  %45 = zext i8 %44 to i16
  %46 = and i16 %38, -13
  %47 = or i16 %46, %45
  store i16 %47, ptr %37, align 2
  br label %143

48:                                               ; preds = %16
  %49 = and i16 %33, -97
  %50 = or i16 %49, 32
  store i16 %50, ptr %32, align 8
  %51 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %52 = load i16, ptr %51, align 2
  %53 = and i16 %52, -13
  store i16 %53, ptr %51, align 2
  br label %143

54:                                               ; preds = %2
  %55 = getelementptr inbounds %struct.udphdr, ptr %11, i32 0, i32 3
  %56 = load i16, ptr %55, align 2
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %74, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %60 = load i32, ptr %59, align 8
  %61 = getelementptr inbounds %struct.iphdr, ptr %8, i32 0, i32 8
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.iphdr, ptr %8, i32 0, i32 9
  %64 = load i32, ptr %63, align 4
  %65 = sub i32 17, %1
  %66 = add i32 %65, %60
  %67 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3, ror #8\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %64, i32 %62, i32 %66) #6, !srcloc !20
  %68 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %67) #6, !srcloc !11
  %69 = xor i32 %68, -1
  %70 = lshr i32 %69, 16
  %71 = trunc i32 %70 to i16
  %72 = xor i16 %71, -1
  store i16 %72, ptr %55, align 2
  %73 = load ptr, ptr %9, align 4
  br label %74

74:                                               ; preds = %58, %54
  %75 = phi ptr [ %73, %58 ], [ %10, %54 ]
  %76 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %77 = load i32, ptr %76, align 8
  %78 = sub i32 %77, %1
  %79 = trunc i32 %78 to i16
  %80 = tail call i16 @llvm.bswap.i16(i16 %79) #5
  %81 = getelementptr i8, ptr %75, i32 %1
  %82 = getelementptr inbounds %struct.udphdr, ptr %81, i32 0, i32 2
  store i16 %80, ptr %82, align 2
  %83 = load i16, ptr %81, align 2
  %84 = getelementptr inbounds %struct.udphdr, ptr %81, i32 0, i32 1
  %85 = load i16, ptr %84, align 2
  %86 = tail call ptr @udp4_lib_lookup_skb(ptr noundef %0, i16 noundef zeroext %83, i16 noundef zeroext %85) #5
  %87 = icmp eq ptr %86, null
  br i1 %87, label %108, label %88

88:                                               ; preds = %74
  %89 = getelementptr inbounds %struct.udp_sock, ptr %86, i32 0, i32 15
  %90 = load ptr, ptr %89, align 8
  %91 = icmp eq ptr %90, null
  br i1 %91, label %108, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.udphdr, ptr %81, i32 0, i32 3
  %94 = load i16, ptr %93, align 2
  %95 = icmp eq i16 %94, 0
  %96 = select i1 %95, i32 1024, i32 2048
  %97 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.skb_shared_info, ptr %98, i32 0, i32 8
  store i32 %96, ptr %99, align 8
  %100 = load i16, ptr %12, align 2
  %101 = and i16 %100, -3
  store i16 %101, ptr %12, align 2
  %102 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %103 = load i16, ptr %102, align 8
  %104 = or i16 %103, 8192
  store i16 %104, ptr %102, align 8
  %105 = load ptr, ptr %89, align 8
  %106 = add i32 %1, 8
  %107 = tail call i32 %105(ptr noundef nonnull %86, ptr noundef %0, i32 noundef %106) #5
  br label %131

108:                                              ; preds = %88, %74
  %109 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %110 = load i16, ptr %109, align 2
  %111 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 4
  store i16 %110, ptr %111, align 4
  %112 = getelementptr inbounds %struct.anon.122, ptr %111, i32 0, i32 1
  store i16 6, ptr %112, align 2
  %113 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %114 = load i16, ptr %113, align 8
  %115 = or i16 %114, 96
  store i16 %115, ptr %113, align 8
  %116 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 16
  %117 = load i16, ptr %116, align 8
  %118 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.skb_shared_info, ptr %119, i32 0, i32 5
  store i16 %117, ptr %120, align 2
  %121 = load ptr, ptr %118, align 4
  %122 = getelementptr inbounds %struct.skb_shared_info, ptr %121, i32 0, i32 8
  %123 = load i32, ptr %122, align 8
  %124 = or i32 %123, 131072
  store i32 %124, ptr %122, align 8
  %125 = load i16, ptr %113, align 8
  %126 = and i16 %125, 8192
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %108
  %129 = load i16, ptr %109, align 2
  %130 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 13
  store i16 %129, ptr %130, align 2
  br label %131

131:                                              ; preds = %128, %108, %92
  %132 = phi i32 [ %107, %92 ], [ 0, %108 ], [ 0, %128 ]
  %133 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %134 = load i16, ptr %133, align 2
  %135 = and i16 %134, 1024
  %136 = icmp eq i16 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.skb_shared_info, ptr %139, i32 0, i32 8
  %141 = load i32, ptr %140, align 8
  %142 = or i32 %141, 8192
  store i32 %142, ptr %140, align 8
  br label %143

143:                                              ; preds = %137, %131, %48, %42, %36
  %144 = phi i32 [ 0, %36 ], [ 0, %42 ], [ 0, %48 ], [ %132, %131 ], [ %132, %137 ]
  ret i32 %144
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @udp4_gro_lookup_skb(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = select i1 %6, ptr %8, ptr %5
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = getelementptr i8, ptr %11, i32 %14
  %16 = ptrtoint ptr %15 to i32
  %17 = ptrtoint ptr %8 to i32
  %18 = sub i32 %16, %17
  %19 = getelementptr i8, ptr %9, i32 %18
  %20 = getelementptr inbounds %struct.iphdr, ptr %19, i32 0, i32 8
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.iphdr, ptr %19, i32 0, i32 9
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, -2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %3
  %29 = inttoptr i32 %26 to ptr
  %30 = getelementptr inbounds %struct.rtable, ptr %29, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28, %3
  %34 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 6
  %35 = load i32, ptr %34, align 4
  br label %36

36:                                               ; preds = %33, %28
  %37 = phi i32 [ %35, %33 ], [ %31, %28 ]
  %38 = tail call ptr @__udp4_lib_lookup(ptr noundef nonnull @init_net, i32 noundef %21, i16 noundef zeroext %1, i32 noundef %23, i16 noundef zeroext %2, i32 noundef %37, i32 noundef 0, ptr noundef nonnull @udp_table, ptr noundef null) #5
  ret ptr %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_gro_checksum_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__udp4_lib_lookup(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udp4_lib_lookup_skb(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

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
!8 = !{i64 2149346924}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2153287956, i64 2153288444, i64 2153287993, i64 2153288049, i64 2153288083, i64 2153288107, i64 2153288148, i64 2153288169, i64 2153288197, i64 2153288231}
!11 = !{i64 5190511}
!12 = !{i64 2149347141}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 566870, i64 2148056841, i64 2148056867, i64 2148056914, i64 2148056936, i64 2148056964, i64 2148056984}
!15 = !{i64 2148070511, i64 2148070543, i64 2148070572, i64 2148070606, i64 2148070637, i64 2148070660}
!16 = !{i64 2148170709}
!17 = !{i64 2148072868, i64 2148072900, i64 2148072929, i64 2148072963, i64 2148072994, i64 2148073017}
!18 = !{i64 2149930545}
!19 = !{i64 5191864, i64 5191904, i64 5191932, i64 5192018}
!20 = !{i64 5191613, i64 5191654, i64 5191740}
