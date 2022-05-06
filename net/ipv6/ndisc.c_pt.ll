; ModuleID = '/llk/IR/net/ipv6/ndisc.c_pt.bc'
source_filename = "../net/ipv6/ndisc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nd_tbl:\09\09\09\09\09"
module asm "\09.asciz \09\22nd_tbl\22\09\09\09\09\09"
module asm "__kstrtabns_nd_tbl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ndisc_fill_addr_option:\09\09\09\09\09"
module asm "\09.asciz \09\22__ndisc_fill_addr_option\22\09\09\09\09\09"
module asm "__kstrtabns___ndisc_fill_addr_option:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ndisc_mc_map:\09\09\09\09\09"
module asm "\09.asciz \09\22ndisc_mc_map\22\09\09\09\09\09"
module asm "__kstrtabns_ndisc_mc_map:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.neigh_table = type { i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, ptr, ptr, ptr }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, %struct.netdevice_tracker, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.possible_net_t = type {}
%struct.netdevice_tracker = type {}
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.52, i32, %struct.spinlock }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.neigh_ops = type { i32, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.30, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.67, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.67 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.in6_addr = type { %union.anon.49 }
%union.anon.49 = type { [4 x i32] }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [4 x i8], [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, %struct.netdevice_tracker, [0 x i8] }
%struct.hh_cache = type { i32, %struct.seqlock_t, [24 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.181, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.181 = type { ptr }
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
%struct.inet6_dev = type { ptr, %struct.netdevice_tracker, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pneigh_entry = type { ptr, %struct.possible_net_t, ptr, %struct.netdevice_tracker, i32, i8, [0 x i8] }
%struct.ndisc_options = type { [15 x ptr], ptr, ptr }
%struct.nd_opt_hdr = type { i8, i8 }
%struct.ndisc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inet6_ifaddr = type { %struct.in6_addr, i32, i32, i32, i32, %struct.refcount_struct, %struct.spinlock, i32, i32, i8, i8, i16, i64, i32, i32, %struct.delayed_work, ptr, ptr, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, %struct.callback_head, %struct.in6_addr }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.140, [0 x i32], %union.anon.141, i16, i16, %union.anon.142, %struct.refcount_struct, [0 x i32], %union.anon.143 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.140 = type { i32 }
%union.anon.141 = type { %struct.hlist_node }
%union.anon.142 = type { i32 }
%union.anon.143 = type { i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.144, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.145, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.146, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.anon.144 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.145 = type { ptr }
%union.anon.146 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.netns_tracker = type {}
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.62 }
%union.anon.62 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, i32, i32, i32, i32, i32, %union.anon.187, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.187 = type { %struct.anon.188 }
%struct.anon.188 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.148, [48 x i8], %union.anon.149, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.151, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%union.anon.2 = type { ptr }
%union.anon.148 = type { i64 }
%union.anon.149 = type { %struct.anon.150 }
%struct.anon.150 = type { i32, ptr }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.153, i32, i32, i32, i16, i16, %union.anon.155, %union.anon.156, %union.anon.157, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.153 = type { i32 }
%union.anon.155 = type { i32 }
%union.anon.156 = type { i32 }
%union.anon.157 = type { i16 }
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.186 }
%union.anon.186 = type { [1 x i32] }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.inetpeer_addr = type { %union.anon.190, i16 }
%union.anon.190 = type { %struct.in6_addr }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.nd_msg = type { %struct.icmp6hdr, %struct.in6_addr, [0 x i8] }
%struct.neigh_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.rs_msg = type { %struct.icmp6hdr, [0 x i8] }
%struct.ra_msg = type { %struct.icmp6hdr, i32, i32 }
%struct.icmpv6_nd_ra = type { i8, i8, i16 }
%struct.fib6_info = type { ptr, ptr, ptr, %union.anon.54, i32, %struct.refcount_struct, i32, ptr, %struct.rt6key, i32, %struct.rt6key, %struct.rt6key, i32, i8, i8, i8, i8, i8, i8, %struct.callback_head, ptr, [0 x %struct.fib6_nh] }
%union.anon.54 = type { %struct.list_head }
%struct.fib6_nh = type { %struct.fib_nh_common, i32, ptr, ptr }
%struct.fib_nh_common = type { ptr, %struct.netdevice_tracker, i32, i8, i8, i8, i8, ptr, %union.anon.57, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.57 = type { %struct.in6_addr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.119, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.39 }
%union.anon.39 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.119 = type { %struct.callback_head }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.netdev_notifier_change_info = type { %struct.netdev_notifier_info, i32 }
%struct.netdev_notifier_info = type { ptr, ptr }

@.str = private unnamed_addr constant [12 x i8] c"ndisc_cache\00", align 1
@nd_tbl = dso_local global %struct.neigh_table { i32 10, i32 0, i32 16, i16 -8826, ptr @ndisc_hash, ptr @ndisc_key_eq, ptr @ndisc_constructor, ptr @pndisc_constructor, ptr @pndisc_destructor, ptr @pndisc_redo, ptr @ndisc_is_multicast, ptr @ndisc_allow_add, ptr @.str, %struct.neigh_parms { %struct.possible_net_t zeroinitializer, ptr null, %struct.netdevice_tracker zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr @nd_tbl, ptr null, i32 0, %struct.refcount_struct zeroinitializer, %struct.callback_head zeroinitializer, i32 3000, [13 x i32] [i32 3, i32 3, i32 0, i32 0, i32 100, i32 3000, i32 500, i32 6000, i32 180224, i32 64, i32 100, i32 80, i32 0], [1 x i32] zeroinitializer }, %struct.list_head zeroinitializer, i32 3000, i32 128, i32 512, i32 1024, i32 0, %struct.delayed_work zeroinitializer, %struct.delayed_work zeroinitializer, %struct.timer_list zeroinitializer, %struct.sk_buff_head zeroinitializer, %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.rwlock_t zeroinitializer, i32 0, ptr null, ptr null, ptr null }, align 4
@__kstrtab_nd_tbl = external dso_local constant [0 x i8], align 1
@__kstrtabns_nd_tbl = external dso_local constant [0 x i8], align 1
@__ksymtab_nd_tbl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nd_tbl to i32), ptr @__kstrtab_nd_tbl, ptr @__kstrtabns_nd_tbl }, section "___ksymtab_gpl+nd_tbl", align 4
@__kstrtab___ndisc_fill_addr_option = external dso_local constant [0 x i8], align 1
@__kstrtabns___ndisc_fill_addr_option = external dso_local constant [0 x i8], align 1
@__ksymtab___ndisc_fill_addr_option = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ndisc_fill_addr_option to i32), ptr @__kstrtab___ndisc_fill_addr_option, ptr @__kstrtabns___ndisc_fill_addr_option }, section "___ksymtab_gpl+__ndisc_fill_addr_option", align 4
@__kstrtab_ndisc_mc_map = external dso_local constant [0 x i8], align 1
@__kstrtabns_ndisc_mc_map = external dso_local constant [0 x i8], align 1
@__ksymtab_ndisc_mc_map = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ndisc_mc_map to i32), ptr @__kstrtab_ndisc_mc_map, ptr @__kstrtabns_ndisc_mc_map }, section "___ksymtab+ndisc_mc_map", align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"retrans_time\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"base_reachable_time\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"syscall\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"retrans_time_ms\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"base_reachable_time_ms\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@ndisc_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ndisc_net_init, ptr null, ptr @ndisc_net_exit, ptr null, ptr null, i32 0 }, align 4
@ndisc_netdev_notifier = internal global %struct.notifier_block { ptr @ndisc_netdev_event, ptr null, i32 -5 }, align 4
@ndisc_direct_ops = internal constant %struct.neigh_ops { i32 10, ptr null, ptr null, ptr @neigh_direct_output, ptr @neigh_direct_output }, align 4
@ndisc_hh_ops = internal constant %struct.neigh_ops { i32 10, ptr @ndisc_solicit, ptr @ndisc_error_report, ptr @neigh_resolve_output, ptr @neigh_resolve_output }, align 4
@ndisc_generic_ops = internal constant %struct.neigh_ops { i32 10, ptr @ndisc_solicit, ptr @ndisc_error_report, ptr @neigh_resolve_output, ptr @neigh_connected_output }, align 4
@ndisc_allow_add.__msg = internal constant [32 x i8] c"IPv6 is disabled on this device\00", align 1
@init_net = external dso_local global %struct.net, align 64
@.str.7 = private unnamed_addr constant [47 x i8] c"\013ICMPv6: ndisc: %s failed to allocate an skb\0A\00", align 1
@__func__.ndisc_alloc_skb = private unnamed_addr constant [16 x i8] c"ndisc_alloc_skb\00", align 1
@.str.9 = private unnamed_addr constant [95 x i8] c"\014ICMPv6: Received fragmented ndisc packet. Carefully consider disabling suppress_frag_ndisc.\0A\00", align 1
@in6addr_linklocal_allnodes = external dso_local constant %struct.in6_addr, align 4
@.str.10 = private unnamed_addr constant [55 x i8] c"\014ICMPv6: NA: %pM advertised our address %pI6c on %s!\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"\013ICMPv6: RS: can't find in6 device\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"\013ICMPv6: RA: can't find inet6 device for %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"\013ICMPv6: RA: %s got default router without neighbour\0A\00", align 1
@__func__.ndisc_router_discovery = private unnamed_addr constant [23 x i8] c"ndisc_router_discovery\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"\013ICMPv6: RA: %s failed to add default route\0A\00", align 1
@ndisc_warn_deprecated_sysctl.warncomm = internal global [16 x i8] zeroinitializer, align 1
@ndisc_warn_deprecated_sysctl.warned = internal unnamed_addr global i32 0, align 4
@.str.15 = private unnamed_addr constant [115 x i8] c"\014ICMPv6: process `%s' is using deprecated sysctl (%s) net.ipv6.neigh.%s.%s - use net.ipv6.neigh.%s.%s_ms instead\0A\00", align 1
@.str.16 = private unnamed_addr constant [67 x i8] c"\013ICMPv6: NDISC: Failed to initialize the control socket (err %d)\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab___ndisc_fill_addr_option, ptr @__ksymtab_nd_tbl, ptr @__ksymtab_ndisc_mc_map], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ndisc_hash(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load i32, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  %6 = xor i32 %4, %5
  %7 = load i32, ptr %2, align 4
  %8 = mul i32 %6, %7
  %9 = getelementptr i32, ptr %0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i32, ptr %2, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = mul i32 %12, %10
  %14 = add i32 %13, %8
  %15 = getelementptr i32, ptr %0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i32, ptr %2, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = mul i32 %18, %16
  %20 = add i32 %14, %19
  %21 = getelementptr i32, ptr %0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i32, ptr %2, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = mul i32 %24, %22
  %26 = add i32 %20, %25
  ret i32 %26
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ndisc_key_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 28
  %4 = load i32, ptr %3, align 4
  %5 = load i32, ptr %1, align 4
  %6 = xor i32 %5, %4
  %7 = getelementptr %struct.neighbour, ptr %0, i32 1, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i32, ptr %1, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = xor i32 %10, %8
  %12 = or i32 %11, %6
  %13 = getelementptr %struct.neighbour, ptr %0, i32 1, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i32, ptr %1, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = xor i32 %16, %14
  %18 = or i32 %12, %17
  %19 = getelementptr %struct.neighbour, ptr %0, i32 1, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i32, ptr %1, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = xor i32 %22, %20
  %24 = or i32 %18, %23
  %25 = icmp eq i32 %24, 0
  ret i1 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ndisc_constructor(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 28
  %3 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 26
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %2, align 4
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 255
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %8 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 69
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.inet6_dev, ptr %9, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #17, !srcloc !10
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #17, !srcloc !11
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !12

16:                                               ; preds = %11
  %17 = add i32 %14, 1
  %18 = or i32 %17, %14
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %23, label %20, !prof !13

20:                                               ; preds = %16, %11
  %21 = phi i32 [ 2, %11 ], [ 1, %16 ]
  tail call void @refcount_warn_saturate(ptr noundef %12, i32 noundef %21) #17
  br label %23

22:                                               ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  br label %108

23:                                               ; preds = %20, %16
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %24 = getelementptr inbounds %struct.inet6_dev, ptr %9, i32 0, i32 31
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.neigh_parms, ptr %27, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #17, !srcloc !10
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 1, ptr elementtype(i32) %28) #17, !srcloc !16
  %30 = extractvalue { i32, i32, i32 } %29, 0
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %33, !prof !12

32:                                               ; preds = %23
  tail call void @refcount_warn_saturate(ptr noundef %28, i32 noundef 4) #17
  br label %33

33:                                               ; preds = %32, %23
  %34 = getelementptr inbounds %struct.neigh_parms, ptr %25, i32 0, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #17, !srcloc !10
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 1, ptr elementtype(i32) %34) #17, !srcloc !11
  %36 = extractvalue { i32, i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38, !prof !12

38:                                               ; preds = %33
  %39 = add i32 %36, 1
  %40 = or i32 %39, %36
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %44, label %42, !prof !13

42:                                               ; preds = %38, %33
  %43 = phi i32 [ 2, %33 ], [ 1, %38 ]
  tail call void @refcount_warn_saturate(ptr noundef %34, i32 noundef %43) #17
  br label %44

44:                                               ; preds = %42, %38
  store ptr %25, ptr %26, align 8
  %45 = select i1 %7, i8 5, i8 1
  %46 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 13
  store i8 %45, ptr %46, align 1
  %47 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 44
  %48 = load ptr, ptr %47, align 16
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 12
  store i8 64, ptr %51, align 4
  %52 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 22
  store ptr @ndisc_direct_ops, ptr %52, align 8
  br label %98

53:                                               ; preds = %44
  br i1 %7, label %54, label %58

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 12
  store i8 64, ptr %55, align 4
  %56 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 19
  %57 = tail call i32 @ndisc_mc_map(ptr noundef %2, ptr noundef %56, ptr noundef %4, i32 noundef 1)
  br label %85

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 14
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 136
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 12
  store i8 64, ptr %64, align 4
  %65 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 19
  %66 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 72
  %67 = load ptr, ptr %66, align 32
  %68 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 51
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %69 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %65, ptr align 1 %67, i32 %70, i1 false)
  %71 = load i32, ptr %59, align 8
  %72 = and i32 %71, 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %63
  store i8 2, ptr %46, align 1
  br label %85

75:                                               ; preds = %58
  %76 = and i32 %60, 16
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 12
  store i8 64, ptr %79, align 4
  %80 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 19
  %81 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 83
  %82 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 51
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %80, ptr align 4 %81, i32 %84, i1 false)
  br label %85

85:                                               ; preds = %78, %75, %74, %63, %54
  %86 = load ptr, ptr %47, align 16
  %87 = getelementptr inbounds %struct.header_ops, ptr %86, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  %90 = select i1 %89, ptr @ndisc_generic_ops, ptr @ndisc_hh_ops
  %91 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 22
  store ptr %90, ptr %91, align 8
  %92 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 12
  %93 = load i8, ptr %92, align 4
  %94 = and i8 %93, -34
  %95 = icmp eq i8 %94, 0
  %96 = select i1 %89, ptr @neigh_connected_output, ptr @neigh_resolve_output
  %97 = select i1 %95, ptr @neigh_resolve_output, ptr %96
  br label %98

98:                                               ; preds = %85, %50
  %99 = phi ptr [ @neigh_direct_output, %50 ], [ %97, %85 ]
  %100 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 21
  store ptr %99, ptr %100, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #17, !srcloc !10
  %101 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #17, !srcloc !16
  %102 = extractvalue { i32, i32, i32 } %101, 0
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %107, label %104

104:                                              ; preds = %98
  %105 = icmp sgt i32 %102, 0
  br i1 %105, label %108, label %106, !prof !13

106:                                              ; preds = %104
  tail call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 3) #17
  br label %108

107:                                              ; preds = %98
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  tail call void @in6_dev_finish_destroy(ptr noundef nonnull %9) #17
  br label %108

108:                                              ; preds = %107, %106, %104, %22
  %109 = phi i32 [ -22, %22 ], [ 0, %104 ], [ 0, %106 ], [ 0, %107 ]
  ret i32 %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pndisc_constructor(ptr nocapture noundef readonly %0) #1 {
  %2 = alloca %struct.in6_addr, align 4
  %3 = getelementptr inbounds %struct.pneigh_entry, ptr %0, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #17
  %4 = getelementptr inbounds %struct.pneigh_entry, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 69
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = getelementptr [4 x i32], ptr %3, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %13, 255
  store i32 767, ptr %2, align 4
  %15 = getelementptr inbounds i32, ptr %2, i32 1
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 2
  store i32 16777216, ptr %16, align 4
  %17 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 3
  store i32 %14, ptr %17, align 4
  %18 = call i32 @ipv6_dev_mc_inc(ptr noundef nonnull %5, ptr noundef nonnull %2) #17
  br label %19

19:                                               ; preds = %11, %7, %1
  %20 = phi i32 [ 0, %11 ], [ -22, %7 ], [ -22, %1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #17
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pndisc_destructor(ptr nocapture noundef readonly %0) #1 {
  %2 = alloca %struct.in6_addr, align 4
  %3 = getelementptr inbounds %struct.pneigh_entry, ptr %0, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #17
  %4 = getelementptr inbounds %struct.pneigh_entry, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 69
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = getelementptr [4 x i32], ptr %3, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %13, 255
  store i32 767, ptr %2, align 4
  %15 = getelementptr inbounds i32, ptr %2, i32 1
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 2
  store i32 16777216, ptr %16, align 4
  %17 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 3
  store i32 %14, ptr %17, align 4
  %18 = call i32 @ipv6_dev_mc_dec(ptr noundef nonnull %5, ptr noundef nonnull %2) #17
  br label %19

19:                                               ; preds = %11, %7, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pndisc_redo(ptr noundef %0) #1 {
  tail call fastcc void @ndisc_recv_ns(ptr noundef %0)
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ndisc_is_multicast(ptr nocapture noundef readonly %0) #0 {
  %2 = load i32, ptr %0, align 4
  %3 = and i32 %2, 255
  %4 = icmp eq i32 %3, 255
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @ndisc_allow_add(ptr noundef %0, ptr noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 69
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.inet6_dev, ptr %4, i32 0, i32 32, i32 32
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6, %2
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ndisc_allow_add.__msg) #17
  %11 = icmp eq ptr %1, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  store ptr @ndisc_allow_add.__msg, ptr %1, align 4
  br label %13

13:                                               ; preds = %12, %10, %6
  %14 = phi i1 [ false, %12 ], [ false, %10 ], [ true, %6 ]
  ret i1 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__ndisc_fill_addr_option(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #1 {
  %6 = and i32 %3, 255
  %7 = add i32 %4, 9
  %8 = add i32 %7, %6
  %9 = and i32 %8, -8
  %10 = tail call ptr @skb_put(ptr noundef %0, i32 noundef %9) #17
  %11 = trunc i32 %1 to i8
  store i8 %11, ptr %10, align 1
  %12 = lshr i32 %8, 3
  %13 = trunc i32 %12 to i8
  %14 = getelementptr i8, ptr %10, i32 1
  store i8 %13, ptr %14, align 1
  %15 = getelementptr i8, ptr %10, i32 2
  tail call void @llvm.memset.p0.i32(ptr align 1 %15, i8 0, i32 %4, i1 false)
  %16 = getelementptr i8, ptr %10, i32 %4
  %17 = getelementptr i8, ptr %16, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %17, ptr align 1 %2, i32 %3, i1 false)
  %18 = add i32 %3, %4
  %19 = sub i32 -2, %18
  %20 = add i32 %19, %9
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = add i32 %3, 2
  %24 = getelementptr i8, ptr %16, i32 %23
  tail call void @llvm.memset.p0.i32(ptr align 1 %24, i8 0, i32 %20, i1 false)
  br label %25

25:                                               ; preds = %22, %5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ndisc_parse_options(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = icmp ne ptr %1, null
  %6 = icmp sgt i32 %2, -1
  %7 = and i1 %5, %6
  %8 = icmp ne ptr %3, null
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %66

10:                                               ; preds = %4
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %3, i8 0, i32 68, i1 false)
  %11 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 43
  %12 = getelementptr inbounds %struct.ndisc_options, ptr %3, i32 0, i32 2
  %13 = getelementptr inbounds %struct.ndisc_options, ptr %3, i32 0, i32 1
  br label %14

14:                                               ; preds = %62, %10
  %15 = phi i32 [ %2, %10 ], [ %63, %62 ]
  %16 = phi ptr [ %1, %10 ], [ %64, %62 ]
  switch i32 %15, label %17 [
    i32 0, label %65
    i32 1, label %66
  ]

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.nd_opt_hdr, ptr %16, i32 0, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 3
  %22 = icmp slt i32 %15, %21
  %23 = icmp eq i8 %19, 0
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %66, label %25

25:                                               ; preds = %17
  %26 = load ptr, ptr %11, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.ndisc_ops, ptr %26, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = tail call i32 %30(ptr noundef %0, ptr noundef %16, ptr noundef nonnull %3) #17
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %32, %28, %25
  %36 = load i8, ptr %16, align 1
  switch i8 %36, label %48 [
    i8 1, label %37
    i8 2, label %37
    i8 5, label %37
    i8 14, label %37
    i8 4, label %37
    i8 3, label %42
    i8 25, label %57
    i8 31, label %57
    i8 37, label %57
    i8 38, label %57
  ]

37:                                               ; preds = %35, %35, %35, %35, %35
  %38 = zext i8 %36 to i32
  %39 = getelementptr [15 x ptr], ptr %3, i32 0, i32 %38
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %60, label %62

42:                                               ; preds = %35
  store ptr %16, ptr %3, align 4
  %43 = load i8, ptr %16, align 1
  %44 = zext i8 %43 to i32
  %45 = getelementptr [15 x ptr], ptr %3, i32 0, i32 %44
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %60, label %62

48:                                               ; preds = %35
  %49 = load ptr, ptr %11, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %62, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %49, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %51
  %55 = tail call i32 %52(i8 noundef zeroext %36) #17
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54, %35, %35, %35, %35
  store ptr %16, ptr %12, align 4
  %58 = load ptr, ptr %13, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57, %42, %37
  %61 = phi ptr [ %39, %37 ], [ %45, %42 ], [ %13, %57 ]
  store ptr %16, ptr %61, align 4
  br label %62

62:                                               ; preds = %60, %57, %54, %51, %48, %42, %37, %32
  %63 = sub i32 %15, %21
  %64 = getelementptr i8, ptr %16, i32 %21
  br label %14

65:                                               ; preds = %14
  br label %66

66:                                               ; preds = %65, %17, %14, %4
  %67 = phi ptr [ null, %4 ], [ %3, %65 ], [ null, %14 ], [ null, %17 ]
  ret ptr %67
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ndisc_mc_map(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #6 {
  %5 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 32
  %6 = load i16, ptr %5, align 16
  switch i16 %6, label %58 [
    i16 1, label %7
    i16 6, label %7
    i16 774, label %7
    i16 7, label %12
    i16 32, label %13
    i16 778, label %30
  ]

7:                                                ; preds = %4, %4, %4
  store i8 51, ptr %1, align 1
  %8 = getelementptr i8, ptr %1, i32 1
  store i8 51, ptr %8, align 1
  %9 = getelementptr i8, ptr %1, i32 2
  %10 = getelementptr [4 x i32], ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %9, align 1
  br label %65

12:                                               ; preds = %4
  store i8 0, ptr %1, align 1
  br label %65

13:                                               ; preds = %4
  %14 = getelementptr %struct.net_device, ptr %2, i32 0, i32 83, i32 5
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 15
  store i8 0, ptr %1, align 1
  %17 = getelementptr i8, ptr %1, i32 1
  %18 = or i8 %16, 16
  %19 = getelementptr i8, ptr %1, i32 5
  store i32 -1, ptr %17, align 1
  store i8 %18, ptr %19, align 1
  %20 = getelementptr i8, ptr %1, i32 6
  store i8 96, ptr %20, align 1
  %21 = getelementptr i8, ptr %1, i32 7
  store i8 27, ptr %21, align 1
  %22 = getelementptr %struct.net_device, ptr %2, i32 0, i32 83, i32 8
  %23 = load i8, ptr %22, align 1
  %24 = getelementptr i8, ptr %1, i32 8
  store i8 %23, ptr %24, align 1
  %25 = getelementptr %struct.net_device, ptr %2, i32 0, i32 83, i32 9
  %26 = load i8, ptr %25, align 1
  %27 = getelementptr i8, ptr %1, i32 9
  store i8 %26, ptr %27, align 1
  %28 = getelementptr i8, ptr %1, i32 10
  %29 = getelementptr i8, ptr %0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(10) %28, ptr noundef align 1 dereferenceable(10) %29, i32 10, i1 false) #17
  br label %65

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 83
  %32 = load i8, ptr %31, align 1
  %33 = getelementptr %struct.net_device, ptr %2, i32 0, i32 83, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = or i8 %34, %32
  %36 = getelementptr %struct.net_device, ptr %2, i32 0, i32 83, i32 2
  %37 = load i8, ptr %36, align 1
  %38 = or i8 %35, %37
  %39 = getelementptr %struct.net_device, ptr %2, i32 0, i32 83, i32 3
  %40 = load i8, ptr %39, align 1
  %41 = or i8 %38, %40
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %30
  %44 = load i32, ptr %0, align 4
  %45 = getelementptr [4 x i32], ptr %0, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = or i32 %46, %44
  %48 = getelementptr [4 x i32], ptr %0, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = xor i32 %49, -65536
  %51 = or i32 %47, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %43
  %54 = getelementptr [4 x i32], ptr %0, i32 0, i32 3
  br label %55

55:                                               ; preds = %53, %30
  %56 = phi ptr [ %54, %53 ], [ %31, %30 ]
  %57 = load i32, ptr %56, align 1
  store i32 %57, ptr %1, align 1
  br label %65

58:                                               ; preds = %4
  %59 = icmp eq i32 %3, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 83
  %62 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 51
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 4 %61, i32 %64, i1 false)
  br label %65

65:                                               ; preds = %60, %58, %55, %43, %13, %12, %7
  %66 = phi i32 [ 0, %60 ], [ 0, %13 ], [ 0, %12 ], [ 0, %7 ], [ -22, %58 ], [ 0, %55 ], [ -22, %43 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ndisc_send_na(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6) local_unnamed_addr #1 {
  %8 = alloca %struct.in6_addr, align 4
  %9 = alloca [4 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 0, i32 16, i1 false), !annotation !18
  %10 = tail call ptr @ipv6_get_ifaddr(ptr noundef nonnull @init_net, ptr noundef %2, ptr noundef %0, i32 noundef 1) #17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %33, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.inet6_ifaddr, ptr %10, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  %17 = and i1 %16, %5
  %18 = getelementptr inbounds %struct.inet6_ifaddr, ptr %10, i32 0, i32 16
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.inet6_dev, ptr %19, i32 0, i32 32, i32 35
  %21 = load i32, ptr %20, align 4
  %22 = zext i1 %6 to i32
  %23 = or i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = getelementptr inbounds %struct.inet6_ifaddr, ptr %10, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #17, !srcloc !10
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #17, !srcloc !16
  %27 = extractvalue { i32, i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %32, label %29

29:                                               ; preds = %12
  %30 = icmp sgt i32 %27, 0
  br i1 %30, label %53, label %31, !prof !13

31:                                               ; preds = %29
  tail call void @refcount_warn_saturate(ptr noundef %25, i32 noundef 3) #17
  br label %53

32:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  tail call void @inet6_ifa_finish_destroy(ptr noundef nonnull %10) #17
  br label %53

33:                                               ; preds = %7
  %34 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 25), align 4
  %35 = getelementptr inbounds %struct.sock_common, ptr %34, i32 0, i32 4
  %36 = load volatile i8, ptr %35, align 2
  %37 = zext i8 %36 to i32
  %38 = shl nuw i32 1, %37
  %39 = and i32 %38, -4161
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.inet_sock, ptr %34, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8
  br label %44

44:                                               ; preds = %41, %33
  %45 = phi ptr [ %43, %41 ], [ null, %33 ]
  %46 = getelementptr inbounds %struct.ipv6_pinfo, ptr %45, i32 0, i32 9
  %47 = load i16, ptr %46, align 2
  %48 = lshr i16 %47, 7
  %49 = and i16 %48, 7
  %50 = zext i16 %49 to i32
  %51 = call i32 @ipv6_dev_get_saddr(ptr noundef nonnull @init_net, ptr noundef %0, ptr noundef %1, i32 noundef %50, ptr noundef nonnull %8) #17
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %138

53:                                               ; preds = %44, %32, %31, %29
  %54 = phi ptr [ %8, %44 ], [ %2, %29 ], [ %2, %31 ], [ %2, %32 ]
  %55 = phi i1 [ %6, %44 ], [ %24, %29 ], [ %24, %31 ], [ %24, %32 ]
  %56 = phi i1 [ %5, %44 ], [ %17, %29 ], [ %17, %31 ], [ %17, %32 ]
  %57 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 51
  %58 = load i8, ptr %57, align 1
  %59 = icmp ne i8 %58, 0
  %60 = select i1 %59, i1 %55, i1 false
  br i1 %60, label %61, label %82

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 32
  %63 = load i16, ptr %62, align 16
  %64 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 43
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.ndisc_ops, ptr %65, i32 0, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = call i32 %69(ptr noundef %0, i8 noundef zeroext -120, ptr noundef null, ptr noundef null, ptr noundef null) #17
  br label %73

73:                                               ; preds = %71, %67, %61
  %74 = phi i32 [ %72, %71 ], [ 0, %67 ], [ 0, %61 ]
  %75 = icmp eq i16 %63, 32
  %76 = select i1 %75, i32 11, i32 9
  %77 = zext i8 %58 to i32
  %78 = add nuw nsw i32 %76, %77
  %79 = and i32 %78, 504
  %80 = add nuw nsw i32 %79, 24
  %81 = add i32 %80, %74
  br label %82

82:                                               ; preds = %73, %53
  %83 = phi i32 [ %81, %73 ], [ 24, %53 ]
  %84 = call fastcc ptr @ndisc_alloc_skb(ptr noundef %0, i32 noundef %83)
  %85 = icmp eq ptr %84, null
  br i1 %85, label %138, label %86

86:                                               ; preds = %82
  %87 = call ptr @skb_put(ptr noundef nonnull %84, i32 noundef 24) #17
  %88 = select i1 %56, i32 32, i32 0
  %89 = select i1 %4, i32 64, i32 0
  %90 = select i1 %3, i32 128, i32 0
  %91 = or i32 %89, %90
  %92 = or i32 %91, %88
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef align 4 dereferenceable(16) %2, i32 16, i1 false)
  store i8 -120, ptr %87, align 4
  %93 = getelementptr inbounds i8, ptr %87, i32 1
  store i8 0, ptr %93, align 1
  %94 = getelementptr inbounds i8, ptr %87, i32 2
  store i16 0, ptr %94, align 2
  %95 = getelementptr inbounds i8, ptr %87, i32 4
  store i32 %92, ptr %95, align 4
  %96 = getelementptr inbounds i8, ptr %87, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %96, ptr noundef nonnull align 4 dereferenceable(16) %9, i32 16, i1 false)
  br i1 %60, label %97, label %137

97:                                               ; preds = %86
  %98 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %99 = load ptr, ptr %98, align 32
  %100 = getelementptr inbounds %struct.anon.0, ptr %84, i32 0, i32 2
  %101 = load ptr, ptr %100, align 8
  %102 = getelementptr inbounds %struct.net_device, ptr %101, i32 0, i32 51
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i32
  %105 = getelementptr inbounds %struct.net_device, ptr %101, i32 0, i32 32
  %106 = load i16, ptr %105, align 16
  %107 = icmp eq i16 %106, 32
  %108 = select i1 %107, i32 -2, i32 0
  %109 = select i1 %107, i32 2, i32 0
  %110 = or i32 %109, 9
  %111 = add nuw nsw i32 %110, %104
  %112 = and i32 %111, 504
  %113 = call ptr @skb_put(ptr noundef nonnull %84, i32 noundef %112) #17
  store i8 2, ptr %113, align 1
  %114 = lshr i32 %111, 3
  %115 = trunc i32 %114 to i8
  %116 = getelementptr i8, ptr %113, i32 1
  store i8 %115, ptr %116, align 1
  %117 = getelementptr i8, ptr %113, i32 2
  call void @llvm.memset.p0.i32(ptr align 1 %117, i8 0, i32 %109, i1 false) #17
  %118 = getelementptr i8, ptr %113, i32 %109
  %119 = getelementptr i8, ptr %118, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %119, ptr align 1 %99, i32 %104, i1 false) #17
  %120 = sub nuw nsw i32 -2, %104
  %121 = add nsw i32 %120, %108
  %122 = add nsw i32 %121, %112
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %97
  %125 = add nuw nsw i32 %104, 2
  %126 = getelementptr i8, ptr %118, i32 %125
  call void @llvm.memset.p0.i32(ptr align 1 %126, i8 0, i32 %122, i1 false) #17
  br label %127

127:                                              ; preds = %124, %97
  %128 = load ptr, ptr %100, align 8
  %129 = getelementptr inbounds %struct.net_device, ptr %128, i32 0, i32 43
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %137, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.ndisc_ops, ptr %130, i32 0, i32 4
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %132
  call void %134(ptr noundef %128, ptr noundef nonnull %84, i8 noundef zeroext -120, ptr noundef null) #17
  br label %137

137:                                              ; preds = %136, %132, %127, %86
  call fastcc void @ndisc_send_skb(ptr noundef nonnull %84, ptr noundef %1, ptr noundef %54)
  br label %138

138:                                              ; preds = %137, %82, %44
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipv6_get_ifaddr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_dev_get_saddr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ndisc_alloc_skb(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 19
  %4 = load i16, ptr %3, align 2
  %5 = zext i16 %4 to i32
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 21
  %7 = load i16, ptr %6, align 8
  %8 = zext i16 %7 to i32
  %9 = add nuw nsw i32 %8, %5
  %10 = and i32 %9, 131056
  %11 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 22
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 25), align 4
  %15 = add nuw nsw i32 %10, 56
  %16 = add i32 %13, %1
  %17 = add i32 %16, %15
  %18 = tail call ptr @__alloc_skb(i32 noundef %17, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = tail call i32 @net_ratelimit() #17
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %20
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ndisc_alloc_skb) #18
  br label %41

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 13, i32 0, i32 16
  store i16 -8826, ptr %26, align 8
  %27 = getelementptr inbounds %struct.anon.0, ptr %18, i32 0, i32 2
  store ptr %0, ptr %27, align 8
  %28 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 17
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 %15
  store ptr %30, ptr %28, align 4
  %31 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 14
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr i8, ptr %32, i32 %15
  store ptr %33, ptr %31, align 8
  %34 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 16
  %35 = load ptr, ptr %34, align 8
  %36 = ptrtoint ptr %30 to i32
  %37 = ptrtoint ptr %35 to i32
  %38 = sub i32 %36, %37
  %39 = trunc i32 %38 to i16
  %40 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 13, i32 0, i32 17
  store i16 %39, ptr %40, align 2
  tail call void @skb_set_owner_w(ptr noundef nonnull %18, ptr noundef %14) #17
  br label %41

41:                                               ; preds = %25, %23, %20
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ndisc_send_skb(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = alloca %struct.flowi6, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, -2
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 25), align 4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = getelementptr i8, ptr %12, i32 %15
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i32 %7, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %4, i8 0, i32 88, i1 false), !annotation !18
  %20 = load ptr, ptr %9, align 8
  %21 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 17
  %22 = load i32, ptr %21, align 4
  call void @icmpv6_flow_init(ptr noundef %10, ptr noundef nonnull %4, i8 noundef zeroext %17, ptr noundef %2, ptr noundef %1, i32 noundef %22) #17
  %23 = load ptr, ptr %9, align 8
  %24 = call ptr @icmp6_dst_alloc(ptr noundef %23, ptr noundef nonnull %4) #17
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #17
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #17
  br label %193

27:                                               ; preds = %19
  %28 = icmp ne ptr %24, null
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %31 = load i16, ptr %30, align 2
  %32 = lshr i16 %31, 14
  %33 = trunc i16 %32 to i8
  %34 = and i8 %33, 1
  %35 = or i8 %34, %29
  %36 = zext i8 %35 to i16
  %37 = shl nuw nsw i16 %36, 14
  %38 = and i16 %31, -16385
  %39 = or i16 %37, %38
  store i16 %39, ptr %30, align 2
  %40 = ptrtoint ptr %24 to i32
  store i32 %40, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #17
  br label %41

41:                                               ; preds = %27, %3
  %42 = phi ptr [ %8, %3 ], [ %24, %27 ]
  %43 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %44 = load i32, ptr %43, align 8
  %45 = call i32 @csum_partial(ptr noundef %16, i32 noundef %44, i32 noundef 0) #17
  %46 = call i32 @llvm.bswap.i32(i32 %44) #17
  %47 = call i32 @__csum_ipv6_magic(ptr noundef %2, ptr noundef %1, i32 noundef %46, i32 noundef 973078528, i32 noundef %45) #17
  %48 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %47) #19, !srcloc !19
  %49 = xor i32 %48, -1
  %50 = lshr i32 %49, 16
  %51 = trunc i32 %50 to i16
  %52 = getelementptr inbounds %struct.icmp6hdr, ptr %16, i32 0, i32 2
  store i16 %51, ptr %52, align 2
  %53 = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 4
  %54 = load volatile i8, ptr %53, align 2
  %55 = zext i8 %54 to i32
  %56 = shl nuw i32 1, %55
  %57 = and i32 %56, -4161
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %41
  %60 = getelementptr inbounds %struct.inet_sock, ptr %10, i32 0, i32 1
  %61 = load ptr, ptr %60, align 8
  br label %62

62:                                               ; preds = %59, %41
  %63 = phi ptr [ %61, %59 ], [ null, %41 ]
  %64 = getelementptr inbounds %struct.ipv6_pinfo, ptr %63, i32 0, i32 5
  %65 = load i32, ptr %64, align 4
  %66 = lshr i32 %65, 7
  %67 = load i32, ptr %43, align 8
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %68 = load ptr, ptr %9, align 8
  %69 = getelementptr inbounds %struct.net_device, ptr %68, i32 0, i32 69
  %70 = load volatile ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.inet6_dev, ptr %70, i32 0, i32 32, i32 47
  %74 = load i32, ptr %73, align 4
  %75 = shl i32 %74, 20
  %76 = or i32 %75, 1610612736
  br label %77

77:                                               ; preds = %72, %62
  %78 = phi i32 [ %76, %72 ], [ 1610612736, %62 ]
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %79 = call ptr @skb_push(ptr noundef %0, i32 noundef 40) #17
  %80 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %81 = load ptr, ptr %80, align 4
  %82 = load ptr, ptr %11, align 8
  %83 = ptrtoint ptr %81 to i32
  %84 = ptrtoint ptr %82 to i32
  %85 = sub i32 %83, %84
  %86 = trunc i32 %85 to i16
  %87 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  store i16 %86, ptr %87, align 4
  %88 = and i32 %85, 65535
  %89 = getelementptr i8, ptr %82, i32 %88
  %90 = call i32 @llvm.bswap.i32(i32 %78) #17
  store i32 %90, ptr %89, align 4
  %91 = trunc i32 %67 to i16
  %92 = call i16 @llvm.bswap.i16(i16 %91) #17
  %93 = getelementptr inbounds %struct.ipv6hdr, ptr %89, i32 0, i32 2
  store i16 %92, ptr %93, align 4
  %94 = getelementptr inbounds %struct.ipv6hdr, ptr %89, i32 0, i32 3
  store i8 58, ptr %94, align 2
  %95 = trunc i32 %66 to i8
  %96 = getelementptr inbounds %struct.ipv6hdr, ptr %89, i32 0, i32 4
  store i8 %95, ptr %96, align 1
  %97 = getelementptr inbounds %struct.ipv6hdr, ptr %89, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %97, ptr noundef align 4 dereferenceable(16) %2, i32 16, i1 false) #17
  %98 = getelementptr inbounds %struct.ipv6hdr, ptr %89, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %98, ptr noundef align 4 dereferenceable(16) %1, i32 16, i1 false) #17
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %99 = load ptr, ptr %42, align 4
  %100 = getelementptr inbounds %struct.net_device, ptr %99, i32 0, i32 69
  %101 = load volatile ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %128, label %103, !prof !12

103:                                              ; preds = %77
  %104 = getelementptr inbounds %struct.inet6_dev, ptr %101, i32 0, i32 33, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !20
  %107 = getelementptr i64, ptr %105, i32 5
  %108 = ptrtoint ptr %107 to i32
  %109 = call i32 @llvm.read_register.i32(metadata !0) #17
  %110 = inttoptr i32 %109 to ptr
  %111 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %110) #12, !srcloc !21
  %112 = add i32 %111, %108
  %113 = inttoptr i32 %112 to ptr
  %114 = load i64, ptr %113, align 8
  %115 = add i64 %114, 1
  store i64 %115, ptr %113, align 8
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %106) #17, !srcloc !22
  %116 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !20
  %117 = load i32, ptr %43, align 8
  %118 = zext i32 %117 to i64
  %119 = getelementptr i64, ptr %105, i32 6
  %120 = ptrtoint ptr %119 to i32
  %121 = call i32 @llvm.read_register.i32(metadata !0) #17
  %122 = inttoptr i32 %121 to ptr
  %123 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %122) #12, !srcloc !21
  %124 = add i32 %123, %120
  %125 = inttoptr i32 %124 to ptr
  %126 = load i64, ptr %125, align 8
  %127 = add i64 %126, %118
  store i64 %127, ptr %125, align 8
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %116) #17, !srcloc !22
  br label %128

128:                                              ; preds = %103, %77
  %129 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 1), align 4
  %130 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !20
  %131 = getelementptr i64, ptr %129, i32 5
  %132 = ptrtoint ptr %131 to i32
  %133 = call i32 @llvm.read_register.i32(metadata !0) #17
  %134 = inttoptr i32 %133 to ptr
  %135 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %134) #12, !srcloc !21
  %136 = add i32 %135, %132
  %137 = inttoptr i32 %136 to ptr
  %138 = load i64, ptr %137, align 8
  %139 = add i64 %138, 1
  store i64 %139, ptr %137, align 8
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %130) #17, !srcloc !22
  %140 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !20
  %141 = load i32, ptr %43, align 8
  %142 = zext i32 %141 to i64
  %143 = getelementptr i64, ptr %129, i32 6
  %144 = ptrtoint ptr %143 to i32
  %145 = call i32 @llvm.read_register.i32(metadata !0) #17
  %146 = inttoptr i32 %145 to ptr
  %147 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %146) #12, !srcloc !21
  %148 = add i32 %147, %144
  %149 = inttoptr i32 %148 to ptr
  %150 = load i64, ptr %149, align 8
  %151 = add i64 %150, %142
  store i64 %151, ptr %149, align 8
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %140) #17, !srcloc !22
  %152 = load i32, ptr %5, align 8
  %153 = and i32 %152, -2
  %154 = inttoptr i32 %153 to ptr
  %155 = getelementptr inbounds %struct.dst_entry, ptr %154, i32 0, i32 6
  %156 = load ptr, ptr %155, align 4
  %157 = call i32 %156(ptr noundef nonnull @init_net, ptr noundef %10, ptr noundef %0) #17
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %192

159:                                              ; preds = %128
  br i1 %102, label %174, label %160, !prof !12

160:                                              ; preds = %159
  %161 = getelementptr inbounds %struct.inet6_dev, ptr %101, i32 0, i32 33, i32 3
  %162 = load ptr, ptr %161, align 4
  %163 = zext i8 %17 to i32
  %164 = or i32 %163, 256
  %165 = getelementptr [512 x %struct.atomic_t], ptr %162, i32 0, i32 %164
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %165) #17, !srcloc !10
  %166 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %165, ptr %165, i32 1, ptr elementtype(i32) %165) #17, !srcloc !23
  %167 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 11), align 4
  %168 = getelementptr [512 x %struct.atomic_t], ptr %167, i32 0, i32 %164
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %168) #17, !srcloc !10
  %169 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %168, ptr %168, i32 1, ptr elementtype(i32) %168) #17, !srcloc !23
  %170 = getelementptr inbounds %struct.inet6_dev, ptr %101, i32 0, i32 33, i32 2
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr [6 x %struct.atomic_t], ptr %171, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %172) #17, !srcloc !10
  %173 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %172, ptr %172, i32 1, ptr elementtype(i32) %172) #17, !srcloc !23
  br label %180

174:                                              ; preds = %159
  %175 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 11), align 4
  %176 = zext i8 %17 to i32
  %177 = or i32 %176, 256
  %178 = getelementptr [512 x %struct.atomic_t], ptr %175, i32 0, i32 %177
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %178) #17, !srcloc !10
  %179 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %178, ptr %178, i32 1, ptr elementtype(i32) %178) #17, !srcloc !23
  br label %180

180:                                              ; preds = %174, %160
  %181 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !20
  %182 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30, i32 10), align 64
  %183 = getelementptr [6 x i32], ptr %182, i32 0, i32 3
  %184 = ptrtoint ptr %183 to i32
  %185 = call i32 @llvm.read_register.i32(metadata !0) #17
  %186 = inttoptr i32 %185 to ptr
  %187 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %186) #12, !srcloc !21
  %188 = add i32 %187, %184
  %189 = inttoptr i32 %188 to ptr
  %190 = load i32, ptr %189, align 4
  %191 = add i32 %190, 1
  store i32 %191, ptr %189, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %181) #17, !srcloc !22
  br label %192

192:                                              ; preds = %180, %128
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  br label %193

193:                                              ; preds = %192, %26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ndisc_send_ns(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
  %6 = alloca %struct.in6_addr, align 4
  %7 = alloca [4 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !18
  %8 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 51
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq ptr %3, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = call i32 @ipv6_get_lladdr(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 68) #17
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %111

14:                                               ; preds = %11, %5
  %15 = phi ptr [ %3, %5 ], [ %6, %11 ]
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr [4 x i32], ptr %15, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, %16
  %20 = getelementptr [4 x i32], ptr %15, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %19, %21
  %23 = getelementptr [4 x i32], ptr %15, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %22, %24
  %26 = icmp eq i32 %25, 0
  %27 = icmp eq i8 %9, 0
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %50, label %29

29:                                               ; preds = %14
  %30 = load i8, ptr %8, align 1
  %31 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 32
  %32 = load i16, ptr %31, align 16
  %33 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 43
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.ndisc_ops, ptr %34, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = call i32 %38(ptr noundef %0, i8 noundef zeroext -121, ptr noundef null, ptr noundef null, ptr noundef null) #17
  br label %42

42:                                               ; preds = %40, %36, %29
  %43 = phi i32 [ %41, %40 ], [ 0, %36 ], [ 0, %29 ]
  %44 = icmp eq i16 %32, 32
  %45 = select i1 %44, i32 11, i32 9
  %46 = zext i8 %30 to i32
  %47 = add nuw nsw i32 %45, %46
  %48 = and i32 %47, 504
  %49 = add i32 %43, %48
  br label %50

50:                                               ; preds = %42, %14
  %51 = phi i32 [ %49, %42 ], [ 0, %14 ]
  %52 = icmp eq i64 %4, 0
  %53 = add i32 %51, 8
  %54 = select i1 %52, i32 %51, i32 %53
  %55 = add i32 %54, 24
  %56 = call fastcc ptr @ndisc_alloc_skb(ptr noundef %0, i32 noundef %55)
  %57 = icmp eq ptr %56, null
  br i1 %57, label %111, label %58

58:                                               ; preds = %50
  %59 = call ptr @skb_put(ptr noundef nonnull %56, i32 noundef 24) #17
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef align 4 dereferenceable(16) %1, i32 16, i1 false)
  store i8 -121, ptr %59, align 4
  %60 = getelementptr inbounds i8, ptr %59, i32 1
  store i8 0, ptr %60, align 1
  %61 = getelementptr inbounds i8, ptr %59, i32 2
  store i16 0, ptr %61, align 2
  %62 = getelementptr inbounds i8, ptr %59, i32 4
  store i32 0, ptr %62, align 4
  %63 = getelementptr inbounds i8, ptr %59, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %63, ptr noundef nonnull align 4 dereferenceable(16) %7, i32 16, i1 false)
  br i1 %28, label %104, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %66 = load ptr, ptr %65, align 32
  %67 = getelementptr inbounds %struct.anon.0, ptr %56, i32 0, i32 2
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.net_device, ptr %68, i32 0, i32 51
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = getelementptr inbounds %struct.net_device, ptr %68, i32 0, i32 32
  %73 = load i16, ptr %72, align 16
  %74 = icmp eq i16 %73, 32
  %75 = select i1 %74, i32 -2, i32 0
  %76 = select i1 %74, i32 2, i32 0
  %77 = or i32 %76, 9
  %78 = add nuw nsw i32 %77, %71
  %79 = and i32 %78, 504
  %80 = call ptr @skb_put(ptr noundef nonnull %56, i32 noundef %79) #17
  store i8 1, ptr %80, align 1
  %81 = lshr i32 %78, 3
  %82 = trunc i32 %81 to i8
  %83 = getelementptr i8, ptr %80, i32 1
  store i8 %82, ptr %83, align 1
  %84 = getelementptr i8, ptr %80, i32 2
  call void @llvm.memset.p0.i32(ptr align 1 %84, i8 0, i32 %76, i1 false) #17
  %85 = getelementptr i8, ptr %80, i32 %76
  %86 = getelementptr i8, ptr %85, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %86, ptr align 1 %66, i32 %71, i1 false) #17
  %87 = sub nuw nsw i32 -2, %71
  %88 = add nsw i32 %87, %75
  %89 = add nsw i32 %88, %79
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %64
  %92 = add nuw nsw i32 %71, 2
  %93 = getelementptr i8, ptr %85, i32 %92
  call void @llvm.memset.p0.i32(ptr align 1 %93, i8 0, i32 %89, i1 false) #17
  br label %94

94:                                               ; preds = %91, %64
  %95 = load ptr, ptr %67, align 8
  %96 = getelementptr inbounds %struct.net_device, ptr %95, i32 0, i32 43
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.ndisc_ops, ptr %97, i32 0, i32 4
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  call void %101(ptr noundef %95, ptr noundef nonnull %56, i8 noundef zeroext -121, ptr noundef null) #17
  br label %104

104:                                              ; preds = %103, %99, %94, %58
  br i1 %52, label %110, label %105

105:                                              ; preds = %104
  %106 = call ptr @skb_put(ptr noundef nonnull %56, i32 noundef 8) #17
  store i8 14, ptr %106, align 1
  %107 = getelementptr i8, ptr %106, i32 1
  store i8 1, ptr %107, align 1
  %108 = getelementptr i8, ptr %106, i32 2
  %109 = trunc i64 %4 to i48
  store i48 %109, ptr %108, align 1
  br label %110

110:                                              ; preds = %105, %104
  call fastcc void @ndisc_send_skb(ptr noundef nonnull %56, ptr noundef %2, ptr noundef nonnull %15)
  br label %111

111:                                              ; preds = %110, %50, %11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_get_lladdr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ndisc_send_rs(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 51
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %46, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @ipv6_get_ifaddr(ptr noundef nonnull @init_net, ptr noundef %1, ptr noundef %0, i32 noundef 1) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %46, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.inet6_ifaddr, ptr %8, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.inet6_ifaddr, ptr %8, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #17, !srcloc !10
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #17, !srcloc !16
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %22, label %19

19:                                               ; preds = %10
  %20 = icmp sgt i32 %17, 0
  br i1 %20, label %23, label %21, !prof !13

21:                                               ; preds = %19
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef 3) #17
  br label %23

22:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  tail call void @inet6_ifa_finish_destroy(ptr noundef nonnull %8) #17
  br label %23

23:                                               ; preds = %22, %21, %19
  br i1 %14, label %24, label %46

24:                                               ; preds = %23
  %25 = load i8, ptr %4, align 1
  %26 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 32
  %27 = load i16, ptr %26, align 16
  %28 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 43
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.ndisc_ops, ptr %29, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = tail call i32 %33(ptr noundef %0, i8 noundef zeroext -123, ptr noundef null, ptr noundef null, ptr noundef null) #17
  br label %37

37:                                               ; preds = %35, %31, %24
  %38 = phi i32 [ %36, %35 ], [ 0, %31 ], [ 0, %24 ]
  %39 = icmp eq i16 %27, 32
  %40 = select i1 %39, i32 11, i32 9
  %41 = zext i8 %25 to i32
  %42 = add nuw nsw i32 %40, %41
  %43 = and i32 %42, 504
  %44 = add nuw nsw i32 %43, 8
  %45 = add i32 %44, %38
  br label %46

46:                                               ; preds = %37, %23, %7, %3
  %47 = phi i1 [ false, %37 ], [ true, %23 ], [ true, %3 ], [ true, %7 ]
  %48 = phi i32 [ %45, %37 ], [ 8, %23 ], [ 8, %3 ], [ 8, %7 ]
  %49 = tail call fastcc ptr @ndisc_alloc_skb(ptr noundef %0, i32 noundef %48)
  %50 = icmp eq ptr %49, null
  br i1 %50, label %97, label %51

51:                                               ; preds = %46
  %52 = tail call ptr @skb_put(ptr noundef nonnull %49, i32 noundef 8) #17
  store i8 -123, ptr %52, align 4
  %53 = getelementptr inbounds i8, ptr %52, i32 1
  store i8 0, ptr %53, align 1
  %54 = getelementptr inbounds i8, ptr %52, i32 2
  store i16 0, ptr %54, align 2
  %55 = getelementptr inbounds i8, ptr %52, i32 4
  store i32 0, ptr %55, align 4
  br i1 %47, label %96, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 72
  %58 = load ptr, ptr %57, align 32
  %59 = getelementptr inbounds %struct.anon.0, ptr %49, i32 0, i32 2
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 51
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 32
  %65 = load i16, ptr %64, align 16
  %66 = icmp eq i16 %65, 32
  %67 = select i1 %66, i32 -2, i32 0
  %68 = select i1 %66, i32 2, i32 0
  %69 = or i32 %68, 9
  %70 = add nuw nsw i32 %69, %63
  %71 = and i32 %70, 504
  %72 = tail call ptr @skb_put(ptr noundef nonnull %49, i32 noundef %71) #17
  store i8 1, ptr %72, align 1
  %73 = lshr i32 %70, 3
  %74 = trunc i32 %73 to i8
  %75 = getelementptr i8, ptr %72, i32 1
  store i8 %74, ptr %75, align 1
  %76 = getelementptr i8, ptr %72, i32 2
  tail call void @llvm.memset.p0.i32(ptr align 1 %76, i8 0, i32 %68, i1 false) #17
  %77 = getelementptr i8, ptr %72, i32 %68
  %78 = getelementptr i8, ptr %77, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %78, ptr align 1 %58, i32 %63, i1 false) #17
  %79 = sub nuw nsw i32 -2, %63
  %80 = add nsw i32 %79, %67
  %81 = add nsw i32 %80, %71
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %56
  %84 = add nuw nsw i32 %63, 2
  %85 = getelementptr i8, ptr %77, i32 %84
  tail call void @llvm.memset.p0.i32(ptr align 1 %85, i8 0, i32 %81, i1 false) #17
  br label %86

86:                                               ; preds = %83, %56
  %87 = load ptr, ptr %59, align 8
  %88 = getelementptr inbounds %struct.net_device, ptr %87, i32 0, i32 43
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.ndisc_ops, ptr %89, i32 0, i32 4
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  tail call void %93(ptr noundef %87, ptr noundef nonnull %49, i8 noundef zeroext -123, ptr noundef null) #17
  br label %96

96:                                               ; preds = %95, %91, %86, %51
  tail call fastcc void @ndisc_send_skb(ptr noundef nonnull %49, ptr noundef %2, ptr noundef %1)
  br label %97

97:                                               ; preds = %96, %46
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ndisc_update(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i32 noundef %4, i8 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #1 {
  %8 = tail call i32 @neigh_update(ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef 0) #17
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 43
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ndisc_ops, ptr %10, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void %14(ptr noundef %0, ptr noundef %1, i32 noundef %4, i8 noundef zeroext %5, ptr noundef %6) #17
  br label %17

17:                                               ; preds = %16, %12, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_update(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ndisc_send_redirect(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.inetpeer_addr, align 4
  %4 = alloca %struct.in6_addr, align 4
  %5 = alloca %struct.flowi6, align 8
  %6 = alloca [32 x i8], align 1
  %7 = alloca [2 x i8], align 2
  %8 = alloca ptr, align 4
  %9 = alloca [4 x i32], align 4
  %10 = alloca [4 x i32], align 4
  %11 = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 25), align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !18
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %5, i8 0, i32 88, i1 false), !annotation !18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %6, i8 0, i32 32, i1 false), !annotation !18
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #17
  store i16 0, ptr %7, align 2, !annotation !18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #17
  store ptr null, ptr %8, align 4
  %14 = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 15
  %15 = load i64, ptr %14, align 16
  %16 = and i64 %15, 262144
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  %20 = load i32, ptr %19, align 8
  %21 = tail call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %20) #17
  %22 = icmp eq ptr %21, null
  br i1 %22, label %182, label %23

23:                                               ; preds = %18, %2
  %24 = phi ptr [ %21, %18 ], [ %12, %2 ]
  %25 = call i32 @ipv6_get_lladdr(ptr noundef %24, ptr noundef nonnull %4, i32 noundef 64) #17
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %182

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %31 = load i16, ptr %30, align 4
  %32 = zext i16 %31 to i32
  %33 = getelementptr i8, ptr %29, i32 %32
  %34 = getelementptr inbounds %struct.ipv6hdr, ptr %33, i32 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = load i32, ptr %1, align 4
  %37 = xor i32 %36, %35
  %38 = getelementptr [4 x i32], ptr %34, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = xor i32 %41, %39
  %43 = or i32 %42, %37
  %44 = getelementptr [4 x i32], ptr %34, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = xor i32 %47, %45
  %49 = or i32 %43, %48
  %50 = getelementptr [4 x i32], ptr %34, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = xor i32 %53, %51
  %55 = or i32 %49, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %27
  %58 = call i32 @__ipv6_addr_type(ptr noundef %1) #17
  %59 = and i32 %58, 65535
  %60 = icmp eq i32 %59, 33
  br i1 %60, label %61, label %182

61:                                               ; preds = %57
  %62 = load ptr, ptr %28, align 8
  %63 = load i16, ptr %30, align 4
  %64 = zext i16 %63 to i32
  br label %65

65:                                               ; preds = %61, %27
  %66 = phi i32 [ %64, %61 ], [ %32, %27 ]
  %67 = phi ptr [ %62, %61 ], [ %29, %27 ]
  %68 = getelementptr i8, ptr %67, i32 %66
  %69 = getelementptr inbounds %struct.ipv6hdr, ptr %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 17
  %71 = load i32, ptr %70, align 4
  call void @icmpv6_flow_init(ptr noundef %13, ptr noundef nonnull %5, i8 noundef zeroext -119, ptr noundef nonnull %4, ptr noundef %69, i32 noundef %71) #17
  %72 = call ptr @ip6_route_output_flags(ptr noundef nonnull @init_net, ptr noundef null, ptr noundef nonnull %5, i32 noundef 0) #17
  %73 = getelementptr inbounds %struct.dst_entry, ptr %72, i32 0, i32 15
  %74 = load i16, ptr %73, align 4
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %65
  call void @dst_release(ptr noundef %72) #17
  br label %182

77:                                               ; preds = %65
  %78 = call ptr @xfrm_lookup(ptr noundef nonnull @init_net, ptr noundef %72, ptr noundef nonnull %5, ptr noundef null, i32 noundef 0) #17
  %79 = icmp ugt ptr %78, inttoptr (i32 -4096 to ptr)
  br i1 %79, label %182, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.rt6_info, ptr %78, i32 0, i32 7
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %82, 2
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %181

85:                                               ; preds = %80
  %86 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 4), align 8
  %87 = load ptr, ptr %28, align 8
  %88 = load i16, ptr %30, align 4
  %89 = zext i16 %88 to i32
  %90 = getelementptr i8, ptr %87, i32 %89
  %91 = getelementptr inbounds %struct.ipv6hdr, ptr %90, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #17
  %92 = getelementptr inbounds i8, ptr %3, i32 16
  store i32 10, ptr %92, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef align 4 dereferenceable(16) %91, i32 16, i1 false) #17
  %93 = call ptr @inet_getpeer(ptr noundef %86, ptr noundef nonnull %3, i32 noundef 1) #17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #17
  %94 = call zeroext i1 @inet_peer_xrlim_allow(ptr noundef %93, i32 noundef 100) #17
  %95 = icmp eq ptr %93, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %85
  call void @inet_putpeer(ptr noundef nonnull %93) #17
  br label %97

97:                                               ; preds = %96, %85
  br i1 %94, label %98, label %181

98:                                               ; preds = %97
  %99 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 51
  %100 = load i8, ptr %99, align 1
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %130, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %104 = load i32, ptr %103, align 8
  %105 = and i32 %104, -2
  %106 = inttoptr i32 %105 to ptr
  %107 = getelementptr inbounds %struct.dst_entry, ptr %106, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.dst_ops, ptr %108, i32 0, i32 14
  %110 = load ptr, ptr %109, align 8
  %111 = call ptr %110(ptr noundef %106, ptr noundef null, ptr noundef %1) #17
  %112 = icmp ugt ptr %111, inttoptr (i32 -4096 to ptr)
  %113 = icmp eq ptr %111, null
  %114 = or i1 %112, %113
  br i1 %114, label %181, label %115

115:                                              ; preds = %102
  %116 = getelementptr inbounds %struct.neighbour, ptr %111, i32 0, i32 5
  call void @_raw_read_lock_bh(ptr noundef %116) #17
  %117 = getelementptr inbounds %struct.neighbour, ptr %111, i32 0, i32 12
  %118 = load i8, ptr %117, align 4
  %119 = and i8 %118, -34
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.neighbour, ptr %111, i32 0, i32 19
  %123 = load i8, ptr %99, align 1
  %124 = zext i8 %123 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %6, ptr align 8 %122, i32 %124, i1 false)
  call void @_raw_read_unlock_bh(ptr noundef %116) #17
  %125 = call fastcc i32 @ndisc_redirect_opt_addr_space(ptr noundef %24, ptr noundef nonnull %111, ptr noundef nonnull %7, ptr noundef nonnull %8)
  br label %127

126:                                              ; preds = %115
  call void @_raw_read_unlock_bh(ptr noundef %116) #17
  br label %127

127:                                              ; preds = %126, %121
  %128 = phi ptr [ %6, %121 ], [ null, %126 ]
  %129 = phi i32 [ %125, %121 ], [ 0, %126 ]
  call fastcc void @neigh_release(ptr noundef nonnull %111)
  br label %130

130:                                              ; preds = %127, %98
  %131 = phi ptr [ null, %98 ], [ %128, %127 ]
  %132 = phi i32 [ 0, %98 ], [ %129, %127 ]
  %133 = sub i32 1200, %132
  %134 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %135 = load i32, ptr %134, align 8
  %136 = add i32 %135, 8
  %137 = call i32 @llvm.umin.i32(i32 %133, i32 %136)
  %138 = and i32 %137, -8
  %139 = add i32 %132, 40
  %140 = add i32 %139, %138
  %141 = call fastcc ptr @ndisc_alloc_skb(ptr noundef %24, i32 noundef %140)
  %142 = icmp eq ptr %141, null
  br i1 %142, label %181, label %143

143:                                              ; preds = %130
  %144 = call ptr @skb_put(ptr noundef nonnull %141, i32 noundef 40) #17
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef align 4 dereferenceable(16) %1, i32 16, i1 false)
  %145 = load ptr, ptr %28, align 8
  %146 = load i16, ptr %30, align 4
  %147 = zext i16 %146 to i32
  %148 = getelementptr i8, ptr %145, i32 %147
  %149 = getelementptr inbounds %struct.ipv6hdr, ptr %148, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef align 4 dereferenceable(16) %149, i32 16, i1 false)
  store i8 -119, ptr %144, align 4
  %150 = getelementptr inbounds i8, ptr %144, i32 1
  store i8 0, ptr %150, align 1
  %151 = getelementptr inbounds i8, ptr %144, i32 2
  store i16 0, ptr %151, align 2
  %152 = getelementptr inbounds i8, ptr %144, i32 4
  store i32 0, ptr %152, align 4
  %153 = getelementptr inbounds i8, ptr %144, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %153, ptr noundef nonnull align 4 dereferenceable(16) %9, i32 16, i1 false)
  %154 = getelementptr inbounds i8, ptr %144, i32 24
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %154, ptr noundef nonnull align 4 dereferenceable(16) %10, i32 16, i1 false)
  %155 = icmp eq ptr %131, null
  br i1 %155, label %158, label %156

156:                                              ; preds = %143
  %157 = load ptr, ptr %8, align 4
  call fastcc void @ndisc_fill_redirect_addr_option(ptr noundef nonnull %141, ptr noundef nonnull %131, ptr noundef %157)
  br label %158

158:                                              ; preds = %156, %143
  %159 = icmp eq i32 %138, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %158
  call fastcc void @ndisc_fill_redirect_hdr_option(ptr noundef nonnull %141, ptr noundef %0, i32 noundef %138)
  br label %161

161:                                              ; preds = %160, %158
  %162 = icmp ne ptr %78, null
  %163 = zext i1 %162 to i8
  %164 = getelementptr inbounds %struct.sk_buff, ptr %141, i32 0, i32 13, i32 0, i32 3
  %165 = load i16, ptr %164, align 2
  %166 = lshr i16 %165, 14
  %167 = trunc i16 %166 to i8
  %168 = and i8 %167, 1
  %169 = or i8 %168, %163
  %170 = zext i8 %169 to i16
  %171 = shl nuw nsw i16 %170, 14
  %172 = and i16 %165, -16385
  %173 = or i16 %171, %172
  store i16 %173, ptr %164, align 2
  %174 = ptrtoint ptr %78 to i32
  %175 = getelementptr inbounds %struct.sk_buff, ptr %141, i32 0, i32 4
  store i32 %174, ptr %175, align 8
  %176 = load ptr, ptr %28, align 8
  %177 = load i16, ptr %30, align 4
  %178 = zext i16 %177 to i32
  %179 = getelementptr i8, ptr %176, i32 %178
  %180 = getelementptr inbounds %struct.ipv6hdr, ptr %179, i32 0, i32 5
  call fastcc void @ndisc_send_skb(ptr noundef nonnull %141, ptr noundef %180, ptr noundef nonnull %4)
  br label %182

181:                                              ; preds = %130, %102, %97, %80
  call void @dst_release(ptr noundef %78) #17
  br label %182

182:                                              ; preds = %181, %161, %77, %76, %57, %23, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmpv6_flow_init(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inet_peer_xrlim_allow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_putpeer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ndisc_redirect_opt_addr_space(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #7 {
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 51
  %6 = load i8, ptr %5, align 1
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 32
  %8 = load i16, ptr %7, align 16
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 43
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ndisc_ops, ptr %10, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 %14(ptr noundef %0, i8 noundef zeroext -119, ptr noundef %1, ptr noundef %2, ptr noundef %3) #17
  br label %18

18:                                               ; preds = %16, %12, %4
  %19 = phi i32 [ %17, %16 ], [ 0, %12 ], [ 0, %4 ]
  %20 = icmp eq i16 %8, 32
  %21 = select i1 %20, i32 11, i32 9
  %22 = zext i8 %6 to i32
  %23 = add nuw nsw i32 %21, %22
  %24 = and i32 %23, 504
  %25 = add i32 %19, %24
  ret i32 %25
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @neigh_release(ptr noundef %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #17, !srcloc !10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #17, !srcloc !16
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %10, label %8, !prof !13

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #17
  br label %10

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  tail call void @neigh_destroy(ptr noundef %0) #17
  br label %10

10:                                               ; preds = %9, %8, %6
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ndisc_fill_redirect_addr_option(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 51
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 32
  %10 = load i16, ptr %9, align 16
  %11 = icmp eq i16 %10, 32
  %12 = select i1 %11, i32 -2, i32 0
  %13 = select i1 %11, i32 2, i32 0
  %14 = or i32 %13, 9
  %15 = add nuw nsw i32 %14, %8
  %16 = and i32 %15, 504
  %17 = tail call ptr @skb_put(ptr noundef %0, i32 noundef %16) #17
  store i8 2, ptr %17, align 1
  %18 = lshr i32 %15, 3
  %19 = trunc i32 %18 to i8
  %20 = getelementptr i8, ptr %17, i32 1
  store i8 %19, ptr %20, align 1
  %21 = getelementptr i8, ptr %17, i32 2
  tail call void @llvm.memset.p0.i32(ptr align 1 %21, i8 0, i32 %13, i1 false) #17
  %22 = getelementptr i8, ptr %17, i32 %13
  %23 = getelementptr i8, ptr %22, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %23, ptr align 1 %1, i32 %8, i1 false) #17
  %24 = sub nuw nsw i32 -2, %8
  %25 = add nsw i32 %24, %12
  %26 = add nsw i32 %25, %16
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = add nuw nsw i32 %8, 2
  %30 = getelementptr i8, ptr %22, i32 %29
  tail call void @llvm.memset.p0.i32(ptr align 1 %30, i8 0, i32 %26, i1 false) #17
  br label %31

31:                                               ; preds = %28, %3
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 43
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ndisc_ops, ptr %34, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void %38(ptr noundef %32, ptr noundef %0, i8 noundef zeroext -119, ptr noundef %2) #17
  br label %41

41:                                               ; preds = %40, %36, %31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ndisc_fill_redirect_hdr_option(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = tail call ptr @skb_put(ptr noundef %0, i32 noundef %2) #17
  store i64 4, ptr %4, align 1
  %5 = getelementptr i8, ptr %4, i32 1
  %6 = lshr i32 %2, 3
  %7 = trunc i32 %6 to i8
  store i8 %7, ptr %5, align 1
  %8 = getelementptr i8, ptr %4, i32 8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = getelementptr i8, ptr %10, i32 %13
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = ptrtoint ptr %14 to i32
  %18 = ptrtoint ptr %16 to i32
  %19 = sub i32 %17, %18
  %20 = add i32 %2, -8
  %21 = tail call i32 @skb_copy_bits(ptr noundef %1, i32 noundef %19, ptr noundef %8, i32 noundef %20) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ndisc_rcv(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 69
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %64, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 16
  %9 = load i16, ptr %8, align 8
  %10 = and i16 %9, 16
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.inet6_dev, ptr %5, i32 0, i32 32, i32 37
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @net_ratelimit() #17
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %64, label %19

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #18
  br label %64

21:                                               ; preds = %12, %7
  %22 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %23) #17
  %27 = icmp eq ptr %26, null
  br i1 %27, label %64, label %28

28:                                               ; preds = %25, %21
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = getelementptr i8, ptr %30, i32 %33
  %35 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %36 = load ptr, ptr %35, align 4
  %37 = ptrtoint ptr %36 to i32
  %38 = ptrtoint ptr %34 to i32
  %39 = sub i32 %37, %38
  %40 = sub i32 0, %39
  %41 = getelementptr i8, ptr %36, i32 %40
  store ptr %41, ptr %35, align 4
  %42 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %43 = load i32, ptr %42, align 8
  %44 = add i32 %39, %43
  store i32 %44, ptr %42, align 8
  %45 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %46 = load i16, ptr %45, align 4
  %47 = zext i16 %46 to i32
  %48 = getelementptr i8, ptr %30, i32 %47
  %49 = getelementptr inbounds %struct.ipv6hdr, ptr %48, i32 0, i32 4
  %50 = load i8, ptr %49, align 1
  %51 = icmp eq i8 %50, -1
  br i1 %51, label %52, label %64

52:                                               ; preds = %28
  %53 = getelementptr inbounds %struct.icmp6hdr, ptr %34, i32 0, i32 1
  %54 = load i8, ptr %53, align 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load i8, ptr %34, align 4
  switch i8 %57, label %64 [
    i8 -121, label %58
    i8 -120, label %60
    i8 -123, label %61
    i8 -122, label %62
    i8 -119, label %63
  ]

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  store i64 0, ptr %59, align 8
  tail call fastcc void @ndisc_recv_ns(ptr noundef %0)
  br label %64

60:                                               ; preds = %56
  tail call fastcc void @ndisc_recv_na(ptr noundef %0)
  br label %64

61:                                               ; preds = %56
  tail call fastcc void @ndisc_recv_rs(ptr noundef %0)
  br label %64

62:                                               ; preds = %56
  tail call fastcc void @ndisc_router_discovery(ptr noundef %0)
  br label %64

63:                                               ; preds = %56
  tail call fastcc void @ndisc_redirect_rcv(ptr noundef %0)
  br label %64

64:                                               ; preds = %63, %62, %61, %60, %58, %56, %52, %28, %25, %19, %16, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ndisc_recv_ns(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.ndisc_options, align 4
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %6 = load i16, ptr %5, align 2
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %4, i32 %11
  %13 = getelementptr inbounds %struct.ipv6hdr, ptr %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.ipv6hdr, ptr %12, i32 0, i32 6
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i8, ptr %8, i32 24
  %18 = ptrtoint ptr %16 to i32
  %19 = ptrtoint ptr %17 to i32
  %20 = sub i32 %18, %19
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %2) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %2, i8 0, i32 68, i1 false), !annotation !18
  %21 = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = load i32, ptr %13, align 4
  %24 = getelementptr [4 x i32], ptr %13, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, %23
  %27 = getelementptr [4 x i32], ptr %13, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %26, %28
  %30 = getelementptr [4 x i32], ptr %13, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = or i32 %29, %31
  %33 = icmp eq i32 %32, 0
  %34 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %35 = load i32, ptr %34, align 8
  %36 = icmp ult i32 %35, 24
  br i1 %36, label %277, label %37

37:                                               ; preds = %1
  %38 = getelementptr inbounds %struct.nd_msg, ptr %8, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 255
  %41 = icmp eq i32 %40, 255
  br i1 %41, label %277, label %42

42:                                               ; preds = %37
  br i1 %33, label %43, label %59

43:                                               ; preds = %42
  %44 = load i32, ptr %14, align 4
  %45 = xor i32 %44, 767
  %46 = getelementptr [4 x i32], ptr %14, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = or i32 %45, %47
  %49 = getelementptr [4 x i32], ptr %14, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = xor i32 %50, 16777216
  %52 = or i32 %48, %51
  %53 = getelementptr [16 x i8], ptr %14, i32 0, i32 12
  %54 = load i8, ptr %53, align 4
  %55 = xor i8 %54, -1
  %56 = zext i8 %55 to i32
  %57 = or i32 %52, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %277

59:                                               ; preds = %43, %42
  %60 = call ptr @ndisc_parse_options(ptr noundef %22, ptr noundef %17, i32 noundef %20, ptr noundef nonnull %2)
  %61 = icmp eq ptr %60, null
  br i1 %61, label %277, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds [15 x ptr], ptr %2, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %87, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 51
  %68 = load i8, ptr %67, align 1
  %69 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 32
  %70 = load i16, ptr %69, align 16
  %71 = icmp eq i16 %70, 32
  %72 = select i1 %71, i32 2, i32 0
  %73 = getelementptr inbounds %struct.nd_opt_hdr, ptr %64, i32 0, i32 1
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = shl nuw nsw i32 %75, 3
  %77 = zext i8 %68 to i32
  %78 = add nuw nsw i32 %77, 9
  %79 = add nuw nsw i32 %78, %72
  %80 = and i32 %79, 504
  %81 = icmp ne i32 %76, %80
  %82 = getelementptr %struct.nd_opt_hdr, ptr %64, i32 1
  %83 = getelementptr i8, ptr %82, i32 %72
  %84 = icmp eq ptr %83, null
  %85 = select i1 %81, i1 true, i1 %84
  %86 = select i1 %85, i1 true, i1 %33
  br i1 %86, label %277, label %87

87:                                               ; preds = %66, %62
  %88 = phi ptr [ null, %62 ], [ %83, %66 ]
  %89 = getelementptr inbounds [15 x ptr], ptr %2, i32 0, i32 14
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %100, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.nd_opt_hdr, ptr %90, i32 0, i32 1
  %94 = load i8, ptr %93, align 1
  %95 = icmp eq i8 %94, 1
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = getelementptr %struct.nd_opt_hdr, ptr %90, i32 1
  %98 = load i48, ptr %97, align 1
  %99 = zext i48 %98 to i64
  br label %100

100:                                              ; preds = %96, %92, %87
  %101 = phi i64 [ %99, %96 ], [ 0, %92 ], [ 0, %87 ]
  %102 = load i32, ptr %14, align 4
  %103 = and i32 %102, 255
  %104 = icmp eq i32 %103, 255
  %105 = call ptr @ipv6_get_ifaddr(ptr noundef nonnull @init_net, ptr noundef %38, ptr noundef %22, i32 noundef 1) #17
  %106 = icmp eq ptr %105, null
  br i1 %106, label %127, label %107

107:                                              ; preds = %135, %100
  %108 = phi ptr [ %105, %100 ], [ %136, %135 ]
  %109 = getelementptr inbounds %struct.inet6_ifaddr, ptr %108, i32 0, i32 8
  %110 = load i32, ptr %109, align 4
  %111 = and i32 %110, 68
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %107
  br i1 %33, label %114, label %121

114:                                              ; preds = %113
  %115 = icmp eq i64 %101, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %114
  %117 = getelementptr inbounds %struct.inet6_ifaddr, ptr %108, i32 0, i32 12
  %118 = load i64, ptr %117, align 8
  %119 = icmp eq i64 %118, %101
  br i1 %119, label %257, label %120

120:                                              ; preds = %116, %114
  call void @addrconf_dad_failure(ptr noundef %0, ptr noundef nonnull %108) #17
  br label %277

121:                                              ; preds = %113
  %122 = and i32 %110, 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %257, label %124

124:                                              ; preds = %121, %107
  %125 = getelementptr inbounds %struct.inet6_ifaddr, ptr %108, i32 0, i32 16
  %126 = load ptr, ptr %125, align 4
  br label %198

127:                                              ; preds = %100
  %128 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 15
  %129 = load i64, ptr %128, align 16
  %130 = and i64 %129, 2097152
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %127
  %133 = call ptr @netdev_master_upper_dev_get_rcu(ptr noundef %22) #17
  %134 = icmp eq ptr %133, null
  br i1 %134, label %138, label %135

135:                                              ; preds = %132
  %136 = call ptr @ipv6_get_ifaddr(ptr noundef nonnull @init_net, ptr noundef %38, ptr noundef nonnull %133, i32 noundef 1) #17
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %107

138:                                              ; preds = %135, %132, %127
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %139 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 69
  %140 = load volatile ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %153, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.inet6_dev, ptr %140, i32 0, i32 25
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %143) #17, !srcloc !10
  %144 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %143, ptr %143, i32 1, ptr elementtype(i32) %143) #17, !srcloc !11
  %145 = extractvalue { i32, i32, i32 } %144, 0
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %151, label %147, !prof !12

147:                                              ; preds = %142
  %148 = add i32 %145, 1
  %149 = or i32 %148, %145
  %150 = icmp sgt i32 %149, -1
  br i1 %150, label %154, label %151, !prof !13

151:                                              ; preds = %147, %142
  %152 = phi i32 [ 2, %142 ], [ 1, %147 ]
  call void @refcount_warn_saturate(ptr noundef %143, i32 noundef %152) #17
  br label %154

153:                                              ; preds = %138
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  br label %277

154:                                              ; preds = %151, %147
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %155 = call zeroext i1 @ipv6_chk_acast_addr(ptr noundef nonnull @init_net, ptr noundef %22, ptr noundef %38) #17
  br i1 %155, label %172, label %156

156:                                              ; preds = %154
  %157 = getelementptr inbounds %struct.inet6_dev, ptr %140, i32 0, i32 32
  %158 = load i32, ptr %157, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %267, label %160

160:                                              ; preds = %156
  %161 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %162 = getelementptr inbounds %struct.ipv6_devconf, ptr %161, i32 0, i32 27
  %163 = load i32, ptr %162, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.inet6_dev, ptr %140, i32 0, i32 32, i32 27
  %167 = load i32, ptr %166, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %267, label %169

169:                                              ; preds = %165, %160
  %170 = call fastcc i32 @pndisc_is_router(ptr noundef %38, ptr noundef %22)
  %171 = icmp sgt i32 %170, -1
  br i1 %171, label %172, label %267

172:                                              ; preds = %169, %154
  %173 = phi i32 [ -1, %154 ], [ %170, %169 ]
  %174 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 4
  %175 = load i32, ptr %174, align 4
  %176 = and i32 %175, 1
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %196

178:                                              ; preds = %172
  %179 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %180 = load i16, ptr %179, align 8
  %181 = and i16 %180, 7
  %182 = icmp eq i16 %181, 0
  %183 = xor i1 %104, true
  %184 = select i1 %182, i1 true, i1 %183
  br i1 %184, label %196, label %185

185:                                              ; preds = %178
  %186 = getelementptr inbounds %struct.inet6_dev, ptr %140, i32 0, i32 31
  %187 = load ptr, ptr %186, align 4
  %188 = getelementptr %struct.neigh_parms, ptr %187, i32 0, i32 11, i32 11
  %189 = load i32, ptr %188, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %196, label %191

191:                                              ; preds = %185
  %192 = call ptr @skb_clone(ptr noundef %0, i32 noundef 2592) #17
  %193 = icmp eq ptr %192, null
  br i1 %193, label %267, label %194

194:                                              ; preds = %191
  %195 = load ptr, ptr %186, align 4
  call void @pneigh_enqueue(ptr noundef nonnull @nd_tbl, ptr noundef %195, ptr noundef nonnull %192) #17
  br label %267

196:                                              ; preds = %185, %178, %172
  %197 = icmp slt i32 %173, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %196, %124
  %199 = phi ptr [ %108, %124 ], [ null, %196 ]
  %200 = phi ptr [ %126, %124 ], [ %140, %196 ]
  %201 = getelementptr inbounds %struct.inet6_dev, ptr %200, i32 0, i32 32
  %202 = load i32, ptr %201, align 4
  br label %203

203:                                              ; preds = %198, %196
  %204 = phi ptr [ %199, %198 ], [ null, %196 ]
  %205 = phi ptr [ %200, %198 ], [ %140, %196 ]
  %206 = phi i32 [ %202, %198 ], [ %173, %196 ]
  br i1 %33, label %207, label %210

207:                                              ; preds = %203
  %208 = icmp ne i32 %206, 0
  %209 = icmp ne ptr %204, null
  call void @ndisc_send_na(ptr noundef %22, ptr noundef nonnull @in6addr_linklocal_allnodes, ptr noundef %38, i1 noundef zeroext %208, i1 noundef zeroext false, i1 noundef zeroext %209, i1 noundef zeroext true)
  br label %255

210:                                              ; preds = %203
  %211 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17
  %212 = load ptr, ptr getelementptr inbounds (%struct.neigh_table, ptr @nd_tbl, i32 0, i32 30), align 4
  br i1 %104, label %223, label %213

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct.neigh_statistics, ptr %212, i32 0, i32 7
  %215 = ptrtoint ptr %214 to i32
  %216 = call i32 @llvm.read_register.i32(metadata !0) #17
  %217 = inttoptr i32 %216 to ptr
  %218 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %217) #12, !srcloc !21
  %219 = add i32 %218, %215
  %220 = inttoptr i32 %219 to ptr
  %221 = load i32, ptr %220, align 4
  %222 = add i32 %221, 1
  store i32 %222, ptr %220, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %211) #17, !srcloc !22
  br label %239

223:                                              ; preds = %210
  %224 = getelementptr inbounds %struct.neigh_statistics, ptr %212, i32 0, i32 6
  %225 = ptrtoint ptr %224 to i32
  %226 = call i32 @llvm.read_register.i32(metadata !0) #17
  %227 = inttoptr i32 %226 to ptr
  %228 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %227) #12, !srcloc !21
  %229 = add i32 %228, %225
  %230 = inttoptr i32 %229 to ptr
  %231 = load i32, ptr %230, align 4
  %232 = add i32 %231, 1
  store i32 %232, ptr %230, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %211) #17, !srcloc !22
  %233 = icmp eq ptr %88, null
  br i1 %233, label %234, label %239

234:                                              ; preds = %223
  %235 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 51
  %236 = load i8, ptr %235, align 1
  %237 = icmp eq i8 %236, 0
  %238 = zext i1 %237 to i32
  br label %239

239:                                              ; preds = %234, %223, %213
  %240 = phi i32 [ 1, %223 ], [ %238, %234 ], [ 1, %213 ]
  %241 = call fastcc ptr @__neigh_lookup(ptr noundef %13, ptr noundef %22, i32 noundef %240)
  %242 = icmp eq ptr %241, null
  br i1 %242, label %247, label %243

243:                                              ; preds = %239
  call void @ndisc_update(ptr noundef %22, ptr noundef nonnull %241, ptr noundef %88, i8 noundef zeroext 4, i32 noundef 3, i8 noundef zeroext -121, ptr noundef nonnull %2)
  %244 = icmp ne i32 %206, 0
  %245 = icmp ne ptr %204, null
  %246 = select i1 %245, i1 %104, i1 false
  call void @ndisc_send_na(ptr noundef %22, ptr noundef %13, ptr noundef %38, i1 noundef zeroext %244, i1 noundef zeroext true, i1 noundef zeroext %246, i1 noundef zeroext %104)
  call fastcc void @neigh_release(ptr noundef nonnull %241)
  br label %255

247:                                              ; preds = %239
  %248 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 44
  %249 = load ptr, ptr %248, align 16
  %250 = icmp eq ptr %249, null
  br i1 %250, label %251, label %255

251:                                              ; preds = %247
  %252 = icmp ne i32 %206, 0
  %253 = icmp ne ptr %204, null
  %254 = select i1 %253, i1 %104, i1 false
  call void @ndisc_send_na(ptr noundef %22, ptr noundef %13, ptr noundef %38, i1 noundef zeroext %252, i1 noundef zeroext true, i1 noundef zeroext %254, i1 noundef zeroext %104)
  br label %255

255:                                              ; preds = %251, %247, %243, %207
  %256 = icmp eq ptr %204, null
  br i1 %256, label %267, label %257

257:                                              ; preds = %255, %121, %116
  %258 = phi ptr [ %204, %255 ], [ %108, %121 ], [ %108, %116 ]
  %259 = getelementptr inbounds %struct.inet6_ifaddr, ptr %258, i32 0, i32 5
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %259) #17, !srcloc !10
  %260 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %259, ptr %259, i32 1, ptr elementtype(i32) %259) #17, !srcloc !16
  %261 = extractvalue { i32, i32, i32 } %260, 0
  %262 = icmp eq i32 %261, 1
  br i1 %262, label %266, label %263

263:                                              ; preds = %257
  %264 = icmp sgt i32 %261, 0
  br i1 %264, label %277, label %265, !prof !13

265:                                              ; preds = %263
  call void @refcount_warn_saturate(ptr noundef %259, i32 noundef 3) #17
  br label %277

266:                                              ; preds = %257
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  call void @inet6_ifa_finish_destroy(ptr noundef nonnull %258) #17
  br label %277

267:                                              ; preds = %255, %194, %191, %169, %165, %156
  %268 = phi ptr [ %205, %255 ], [ %140, %156 ], [ %140, %165 ], [ %140, %169 ], [ %140, %191 ], [ %140, %194 ]
  %269 = getelementptr inbounds %struct.inet6_dev, ptr %268, i32 0, i32 25
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %269) #17, !srcloc !10
  %270 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %269, ptr %269, i32 1, ptr elementtype(i32) %269) #17, !srcloc !16
  %271 = extractvalue { i32, i32, i32 } %270, 0
  %272 = icmp eq i32 %271, 1
  br i1 %272, label %276, label %273

273:                                              ; preds = %267
  %274 = icmp sgt i32 %271, 0
  br i1 %274, label %277, label %275, !prof !13

275:                                              ; preds = %273
  call void @refcount_warn_saturate(ptr noundef %269, i32 noundef 3) #17
  br label %277

276:                                              ; preds = %267
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  call void @in6_dev_finish_destroy(ptr noundef %268) #17
  br label %277

277:                                              ; preds = %276, %275, %273, %266, %265, %263, %153, %120, %66, %59, %43, %37, %1
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %2) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ndisc_recv_na(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.ndisc_options, align 4
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %6 = load i16, ptr %5, align 2
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %4, i32 %11
  %13 = getelementptr inbounds %struct.ipv6hdr, ptr %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.ipv6hdr, ptr %12, i32 0, i32 6
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i8, ptr %8, i32 24
  %18 = ptrtoint ptr %16 to i32
  %19 = ptrtoint ptr %17 to i32
  %20 = sub i32 %18, %19
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %2) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %2, i8 0, i32 68, i1 false), !annotation !18
  %21 = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 69
  %24 = load volatile ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %26 = load i32, ptr %25, align 8
  %27 = icmp ult i32 %26, 24
  br i1 %27, label %166, label %28

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.nd_msg, ptr %8, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 255
  %32 = icmp eq i32 %31, 255
  br i1 %32, label %166, label %33

33:                                               ; preds = %28
  %34 = load i32, ptr %14, align 4
  %35 = and i32 %34, 255
  %36 = icmp ne i32 %35, 255
  %37 = getelementptr inbounds %struct.icmp6hdr, ptr %8, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 64
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %36, i1 true, i1 %40
  br i1 %41, label %42, label %166

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.icmp6hdr, ptr %8, i32 0, i32 3
  %44 = and i32 %38, 64
  %45 = icmp eq i32 %44, 0
  %46 = icmp ne ptr %24, null
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.inet6_dev, ptr %24, i32 0, i32 32, i32 39
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %166

52:                                               ; preds = %48, %42
  %53 = call ptr @ndisc_parse_options(ptr noundef %22, ptr noundef %17, i32 noundef %20, ptr noundef nonnull %2)
  %54 = icmp eq ptr %53, null
  br i1 %54, label %166, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds [15 x ptr], ptr %2, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %79, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 51
  %61 = load i8, ptr %60, align 1
  %62 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 32
  %63 = load i16, ptr %62, align 16
  %64 = icmp eq i16 %63, 32
  %65 = select i1 %64, i32 2, i32 0
  %66 = getelementptr inbounds %struct.nd_opt_hdr, ptr %57, i32 0, i32 1
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = shl nuw nsw i32 %68, 3
  %70 = zext i8 %61 to i32
  %71 = add nuw nsw i32 %70, 9
  %72 = add nuw nsw i32 %71, %65
  %73 = and i32 %72, 504
  %74 = icmp ne i32 %69, %73
  %75 = getelementptr %struct.nd_opt_hdr, ptr %57, i32 1
  %76 = getelementptr i8, ptr %75, i32 %65
  %77 = icmp eq ptr %76, null
  %78 = select i1 %74, i1 true, i1 %77
  br i1 %78, label %166, label %79

79:                                               ; preds = %59, %55
  %80 = phi ptr [ %76, %59 ], [ null, %55 ]
  %81 = call ptr @ipv6_get_ifaddr(ptr noundef nonnull @init_net, ptr noundef %29, ptr noundef %22, i32 noundef 1) #17
  %82 = icmp eq ptr %81, null
  br i1 %82, label %117, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %85 = load i16, ptr %84, align 8
  %86 = and i16 %85, 7
  %87 = icmp eq i16 %86, 5
  br i1 %87, label %108, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.inet6_ifaddr, ptr %81, i32 0, i32 8
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, 64
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  call void @addrconf_dad_failure(ptr noundef %0, ptr noundef nonnull %81) #17
  br label %166

94:                                               ; preds = %88
  %95 = call i32 @net_ratelimit() #17
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr %3, align 8
  %99 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %100 = load i16, ptr %99, align 2
  %101 = zext i16 %100 to i32
  %102 = getelementptr i8, ptr %98, i32 %101
  %103 = getelementptr inbounds %struct.ethhdr, ptr %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.inet6_ifaddr, ptr %81, i32 0, i32 16
  %105 = load ptr, ptr %104, align 4
  %106 = load ptr, ptr %105, align 4
  %107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %103, ptr noundef nonnull %81, ptr noundef %106) #18
  br label %108

108:                                              ; preds = %97, %94, %83
  %109 = getelementptr inbounds %struct.inet6_ifaddr, ptr %81, i32 0, i32 5
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %109) #17, !srcloc !10
  %110 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %109, ptr %109, i32 1, ptr elementtype(i32) %109) #17, !srcloc !16
  %111 = extractvalue { i32, i32, i32 } %110, 0
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = icmp sgt i32 %111, 0
  br i1 %114, label %166, label %115, !prof !13

115:                                              ; preds = %113
  call void @refcount_warn_saturate(ptr noundef %109, i32 noundef 3) #17
  br label %166

116:                                              ; preds = %108
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  call void @inet6_ifa_finish_destroy(ptr noundef nonnull %81) #17
  br label %166

117:                                              ; preds = %79
  %118 = call ptr @neigh_lookup(ptr noundef nonnull @nd_tbl, ptr noundef %29, ptr noundef %22) #17
  %119 = icmp eq ptr %118, null
  br i1 %119, label %166, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.neighbour, ptr %118, i32 0, i32 16
  %122 = load i32, ptr %121, align 8
  %123 = getelementptr inbounds %struct.neighbour, ptr %118, i32 0, i32 12
  %124 = load i8, ptr %123, align 4
  %125 = and i8 %124, 32
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %165

127:                                              ; preds = %120
  %128 = icmp eq ptr %80, null
  br i1 %128, label %148, label %129

129:                                              ; preds = %127
  %130 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 72
  %131 = load ptr, ptr %130, align 32
  %132 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 51
  %133 = load i8, ptr %132, align 1
  %134 = zext i8 %133 to i32
  %135 = call i32 @bcmp(ptr nonnull %80, ptr %131, i32 %134)
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %129
  %138 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %148, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.ipv6_devconf, ptr %138, i32 0, i32 27
  %143 = load i32, ptr %142, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %141
  %146 = call ptr @pneigh_lookup(ptr noundef nonnull @nd_tbl, ptr noundef nonnull @init_net, ptr noundef %29, ptr noundef %22, i32 noundef 0) #17
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %165

148:                                              ; preds = %145, %141, %137, %129, %127
  %149 = load i32, ptr %43, align 4
  %150 = and i32 %149, 64
  %151 = icmp eq i32 %150, 0
  %152 = select i1 %151, i8 4, i8 2
  %153 = lshr i32 %149, 5
  %154 = and i32 %153, 1
  %155 = lshr i32 %149, 1
  %156 = and i32 %155, 64
  %157 = or i32 %156, %154
  %158 = or i32 %157, 6
  call void @ndisc_update(ptr noundef %22, ptr noundef nonnull %118, ptr noundef %80, i8 noundef zeroext %152, i32 noundef %158, i8 noundef zeroext -120, ptr noundef nonnull %2)
  %159 = load i32, ptr %121, align 8
  %160 = xor i32 %159, -1
  %161 = and i32 %122, 128
  %162 = and i32 %161, %160
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %148
  call void @rt6_clean_tohost(ptr noundef nonnull @init_net, ptr noundef %13) #17
  br label %165

165:                                              ; preds = %164, %148, %145, %120
  call fastcc void @neigh_release(ptr noundef nonnull %118)
  br label %166

166:                                              ; preds = %165, %117, %116, %115, %113, %93, %59, %52, %48, %33, %28, %1
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %2) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ndisc_recv_rs(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = alloca %struct.ndisc_options, align 4
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %6 = load i16, ptr %5, align 2
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, -8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = getelementptr i8, ptr %4, i32 %14
  %16 = getelementptr inbounds %struct.ipv6hdr, ptr %15, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %2) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %2, i8 0, i32 68, i1 false), !annotation !18
  %17 = icmp ult i32 %10, 8
  br i1 %17, label %104, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 69
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = tail call i32 @net_ratelimit() #17
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %104, label %27

27:                                               ; preds = %24
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #18
  br label %104

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.inet6_dev, ptr %22, i32 0, i32 32
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %104, label %33

33:                                               ; preds = %29
  %34 = load i32, ptr %16, align 4
  %35 = getelementptr [4 x i32], ptr %16, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = or i32 %36, %34
  %38 = getelementptr [4 x i32], ptr %16, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = or i32 %37, %39
  %41 = getelementptr [4 x i32], ptr %16, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = or i32 %40, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %104, label %45

45:                                               ; preds = %33
  %46 = getelementptr inbounds %struct.rs_msg, ptr %8, i32 0, i32 1
  %47 = call ptr @ndisc_parse_options(ptr noundef %20, ptr noundef %46, i32 noundef %11, ptr noundef nonnull %2)
  %48 = icmp eq ptr %47, null
  br i1 %48, label %104, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds [15 x ptr], ptr %2, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  %53 = load ptr, ptr %19, align 8
  br i1 %52, label %74, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 51
  %56 = load i8, ptr %55, align 1
  %57 = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 32
  %58 = load i16, ptr %57, align 16
  %59 = icmp eq i16 %58, 32
  %60 = select i1 %59, i32 2, i32 0
  %61 = getelementptr inbounds %struct.nd_opt_hdr, ptr %51, i32 0, i32 1
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 3
  %65 = zext i8 %56 to i32
  %66 = add nuw nsw i32 %65, 9
  %67 = add nuw nsw i32 %66, %60
  %68 = and i32 %67, 504
  %69 = icmp ne i32 %64, %68
  %70 = getelementptr %struct.nd_opt_hdr, ptr %51, i32 1
  %71 = getelementptr i8, ptr %70, i32 %60
  %72 = icmp eq ptr %71, null
  %73 = select i1 %69, i1 true, i1 %72
  br i1 %73, label %104, label %74

74:                                               ; preds = %54, %49
  %75 = phi ptr [ %71, %54 ], [ null, %49 ]
  %76 = call ptr @neigh_lookup(ptr noundef nonnull @nd_tbl, ptr noundef %16, ptr noundef %53) #17
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = call ptr @__neigh_create(ptr noundef nonnull @nd_tbl, ptr noundef %16, ptr noundef %53, i1 noundef zeroext true) #17
  %80 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  %81 = icmp eq ptr %79, null
  %82 = or i1 %80, %81
  br i1 %82, label %104, label %83

83:                                               ; preds = %78, %74
  %84 = phi ptr [ %76, %74 ], [ %79, %78 ]
  %85 = load ptr, ptr %19, align 8
  %86 = call i32 @neigh_update(ptr noundef nonnull %84, ptr noundef %75, i8 noundef zeroext 4, i32 noundef 7, i32 noundef 0) #17
  %87 = getelementptr inbounds %struct.net_device, ptr %85, i32 0, i32 43
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.ndisc_ops, ptr %88, i32 0, i32 2
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  call void %92(ptr noundef %85, ptr noundef nonnull %84, i32 noundef 7, i8 noundef zeroext -123, ptr noundef nonnull %2) #17
  br label %95

95:                                               ; preds = %94, %90, %83
  %96 = getelementptr inbounds %struct.neighbour, ptr %84, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %96) #17, !srcloc !10
  %97 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %96, ptr %96, i32 1, ptr elementtype(i32) %96) #17, !srcloc !16
  %98 = extractvalue { i32, i32, i32 } %97, 0
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = icmp sgt i32 %98, 0
  br i1 %101, label %104, label %102, !prof !13

102:                                              ; preds = %100
  call void @refcount_warn_saturate(ptr noundef %96, i32 noundef 3) #17
  br label %104

103:                                              ; preds = %95
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  call void @neigh_destroy(ptr noundef nonnull %84) #17
  br label %104

104:                                              ; preds = %103, %102, %100, %78, %54, %45, %33, %29, %27, %24, %1
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %2) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ndisc_router_discovery(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = alloca %struct.ndisc_options, align 4
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %6 = load i16, ptr %5, align 2
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %2) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %2, i8 0, i32 68, i1 false), !annotation !18
  %9 = getelementptr %struct.ra_msg, ptr %8, i32 1
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %11 = load ptr, ptr %10, align 8
  %12 = ptrtoint ptr %11 to i32
  %13 = ptrtoint ptr %8 to i32
  %14 = sub i32 %12, %13
  %15 = add i32 %14, -16
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %17 = load i16, ptr %16, align 4
  %18 = zext i16 %17 to i32
  %19 = getelementptr i8, ptr %4, i32 %18
  %20 = getelementptr inbounds %struct.ipv6hdr, ptr %19, i32 0, i32 5
  %21 = tail call i32 @__ipv6_addr_type(ptr noundef %20) #17
  %22 = and i32 %21, 32
  %23 = icmp eq i32 %22, 0
  %24 = icmp slt i32 %15, 0
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %575, label %26

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %28 = load i16, ptr %27, align 2
  %29 = and i16 %28, 192
  %30 = icmp eq i16 %29, 64
  br i1 %30, label %575, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 69
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = tail call i32 @net_ratelimit() #17
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %575, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %32, align 8
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %41) #18
  br label %575

43:                                               ; preds = %31
  %44 = call ptr @ndisc_parse_options(ptr noundef %33, ptr noundef %9, i32 noundef %15, ptr noundef nonnull %2)
  %45 = icmp eq ptr %44, null
  br i1 %45, label %575, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.inet6_dev, ptr %35, i32 0, i32 32
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  %50 = getelementptr inbounds %struct.inet6_dev, ptr %35, i32 0, i32 32, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 2
  %53 = icmp ne i32 %51, 0
  %54 = select i1 %49, i1 %53, i1 %52
  br i1 %54, label %55, label %277

55:                                               ; preds = %46
  %56 = load i16, ptr %27, align 2
  %57 = and i16 %56, 192
  %58 = icmp eq i16 %57, 128
  br i1 %58, label %277, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.inet6_dev, ptr %35, i32 0, i32 26
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 16
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = or i32 %61, 32
  store i32 %65, ptr %60, align 4
  br label %66

66:                                               ; preds = %64, %59
  %67 = phi i32 [ %65, %64 ], [ %61, %59 ]
  %68 = and i32 %67, -193
  %69 = getelementptr inbounds %struct.icmp6hdr, ptr %8, i32 0, i32 3
  %70 = getelementptr inbounds %struct.icmpv6_nd_ra, ptr %69, i32 0, i32 1
  %71 = load i8, ptr %70, align 1
  %72 = lshr i8 %71, 1
  %73 = and i8 %72, 64
  %74 = zext i8 %73 to i32
  %75 = or i32 %68, %74
  %76 = shl i8 %71, 1
  %77 = and i8 %76, -128
  %78 = zext i8 %77 to i32
  %79 = or i32 %75, %78
  store i32 %79, ptr %60, align 4
  %80 = icmp ne i32 %67, %79
  %81 = zext i1 %80 to i8
  %82 = getelementptr inbounds %struct.inet6_dev, ptr %35, i32 0, i32 32, i32 20
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %226, label %85

85:                                               ; preds = %66
  %86 = getelementptr inbounds %struct.inet6_dev, ptr %35, i32 0, i32 32, i32 29
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %85
  %90 = load ptr, ptr %3, align 8
  %91 = load i16, ptr %16, align 4
  %92 = zext i16 %91 to i32
  %93 = getelementptr i8, ptr %90, i32 %92
  %94 = getelementptr inbounds %struct.ipv6hdr, ptr %93, i32 0, i32 5
  %95 = load ptr, ptr %35, align 4
  %96 = call i32 @ipv6_chk_addr(ptr noundef nonnull @init_net, ptr noundef %94, ptr noundef %95, i32 noundef 0) #17
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %226

98:                                               ; preds = %89, %85
  %99 = getelementptr inbounds %struct.icmpv6_nd_ra, ptr %69, i32 0, i32 2
  %100 = load i16, ptr %99, align 2
  %101 = call i16 @llvm.bswap.i16(i16 %100)
  %102 = zext i16 %101 to i32
  %103 = load i8, ptr %70, align 1
  %104 = lshr i8 %103, 3
  %105 = and i8 %104, 3
  %106 = icmp eq i8 %105, 2
  br i1 %106, label %112, label %107

107:                                              ; preds = %98
  %108 = zext i8 %105 to i32
  %109 = getelementptr inbounds %struct.inet6_dev, ptr %35, i32 0, i32 32, i32 25
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107, %98
  br label %113

113:                                              ; preds = %112, %107
  %114 = phi i32 [ 0, %112 ], [ %108, %107 ]
  %115 = load ptr, ptr %3, align 8
  %116 = load i16, ptr %16, align 4
  %117 = zext i16 %116 to i32
  %118 = getelementptr i8, ptr %115, i32 %117
  %119 = getelementptr inbounds %struct.ipv6hdr, ptr %118, i32 0, i32 5
  %120 = load ptr, ptr %32, align 8
  %121 = call ptr @rt6_get_dflt_router(ptr noundef nonnull @init_net, ptr noundef %119, ptr noundef %120) #17
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %113
  %124 = getelementptr inbounds %struct.inet6_dev, ptr %35, i32 0, i32 32, i32 21
  %125 = load i32, ptr %124, align 4
  br label %153

126:                                              ; preds = %113
  %127 = getelementptr inbounds %struct.fib6_info, ptr %121, i32 0, i32 21
  %128 = getelementptr inbounds %struct.fib6_info, ptr %121, i32 1, i32 3, i32 0, i32 1
  %129 = load ptr, ptr %127, align 4
  %130 = load ptr, ptr %3, align 8
  %131 = load i16, ptr %16, align 4
  %132 = zext i16 %131 to i32
  %133 = getelementptr i8, ptr %130, i32 %132
  %134 = getelementptr inbounds %struct.ipv6hdr, ptr %133, i32 0, i32 5
  %135 = call ptr @ip6_neigh_lookup(ptr noundef %128, ptr noundef %129, ptr noundef null, ptr noundef %134) #17
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %143

137:                                              ; preds = %126
  %138 = call i32 @net_ratelimit() #17
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %137
  %141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.ndisc_router_discovery) #18
  br label %142

142:                                              ; preds = %140, %137
  call fastcc void @fib6_info_release(ptr noundef nonnull %121)
  br label %575

143:                                              ; preds = %126
  %144 = getelementptr inbounds %struct.inet6_dev, ptr %35, i32 0, i32 32, i32 21
  %145 = load i32, ptr %144, align 4
  %146 = icmp eq i16 %100, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.fib6_info, ptr %121, i32 0, i32 12
  %149 = load i32, ptr %148, align 4
  %150 = icmp eq i32 %149, %145
  br i1 %150, label %194, label %151

151:                                              ; preds = %147, %143
  %152 = call i32 @ip6_del_rt(ptr noundef nonnull @init_net, ptr noundef nonnull %121, i1 noundef zeroext false) #17
  br label %153

153:                                              ; preds = %151, %123
  %154 = phi i32 [ %145, %151 ], [ %125, %123 ]
  %155 = phi ptr [ %135, %151 ], [ null, %123 ]
  %156 = icmp eq i16 %100, 0
  br i1 %156, label %210, label %157

157:                                              ; preds = %153
  %158 = load ptr, ptr %3, align 8
  %159 = load i16, ptr %16, align 4
  %160 = zext i16 %159 to i32
  %161 = getelementptr i8, ptr %158, i32 %160
  %162 = getelementptr inbounds %struct.ipv6hdr, ptr %161, i32 0, i32 5
  %163 = load ptr, ptr %32, align 8
  %164 = call ptr @rt6_add_dflt_router(ptr noundef nonnull @init_net, ptr noundef %162, ptr noundef %163, i32 noundef %114, i32 noundef %154) #17
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %171

166:                                              ; preds = %157
  %167 = call i32 @net_ratelimit() #17
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %575, label %169

169:                                              ; preds = %166
  %170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.ndisc_router_discovery) #18
  br label %575

171:                                              ; preds = %157
  %172 = getelementptr inbounds %struct.fib6_info, ptr %164, i32 0, i32 21
  %173 = getelementptr inbounds %struct.fib6_info, ptr %164, i32 1, i32 3, i32 0, i32 1
  %174 = load ptr, ptr %172, align 4
  %175 = load ptr, ptr %3, align 8
  %176 = load i16, ptr %16, align 4
  %177 = zext i16 %176 to i32
  %178 = getelementptr i8, ptr %175, i32 %177
  %179 = getelementptr inbounds %struct.ipv6hdr, ptr %178, i32 0, i32 5
  %180 = call ptr @ip6_neigh_lookup(ptr noundef %173, ptr noundef %174, ptr noundef null, ptr noundef %179) #17
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %188

182:                                              ; preds = %171
  %183 = call i32 @net_ratelimit() #17
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %187, label %185

185:                                              ; preds = %182
  %186 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.ndisc_router_discovery) #18
  br label %187

187:                                              ; preds = %185, %182
  call fastcc void @fib6_info_release(ptr noundef nonnull %164)
  br label %575

188:                                              ; preds = %171
  %189 = getelementptr inbounds %struct.neighbour, ptr %180, i32 0, i32 16
  %190 = load i32, ptr %189, align 8
  %191 = or i32 %190, 128
  store i32 %191, ptr %189, align 8
  %192 = getelementptr inbounds %struct.fib6_info, ptr %164, i32 0, i32 9
  %193 = load i32, ptr %192, align 4
  br label %200

194:                                              ; preds = %147
  %195 = getelementptr inbounds %struct.fib6_info, ptr %121, i32 0, i32 9
  %196 = load i32, ptr %195, align 4
  %197 = and i32 %196, -402653185
  %198 = shl nuw nsw i32 %114, 27
  %199 = or i32 %197, %198
  store i32 %199, ptr %195, align 4
  br label %200

200:                                              ; preds = %194, %188
  %201 = phi i32 [ %193, %188 ], [ %199, %194 ]
  %202 = phi ptr [ %180, %188 ], [ %135, %194 ]
  %203 = phi ptr [ %164, %188 ], [ %121, %194 ]
  %204 = load volatile i32, ptr @jiffies, align 64
  %205 = mul nuw nsw i32 %102, 100
  %206 = add i32 %204, %205
  %207 = getelementptr inbounds %struct.fib6_info, ptr %203, i32 0, i32 6
  store i32 %206, ptr %207, align 4
  %208 = getelementptr inbounds %struct.fib6_info, ptr %203, i32 0, i32 9
  %209 = or i32 %201, 4194304
  store i32 %209, ptr %208, align 4
  br label %210

210:                                              ; preds = %200, %153
  %211 = phi ptr [ %202, %200 ], [ %155, %153 ]
  %212 = phi ptr [ %203, %200 ], [ null, %153 ]
  %213 = getelementptr inbounds %struct.inet6_dev, ptr %35, i32 0, i32 32, i32 22
  %214 = load i32, ptr %213, align 4
  %215 = icmp slt i32 %214, 256
  br i1 %215, label %216, label %226

216:                                              ; preds = %210
  %217 = load i8, ptr %69, align 4
  %218 = zext i8 %217 to i32
  %219 = icmp eq i8 %217, 0
  %220 = icmp sgt i32 %214, %218
  %221 = select i1 %219, i1 true, i1 %220
  br i1 %221, label %226, label %222

222:                                              ; preds = %216
  %223 = getelementptr inbounds %struct.inet6_dev, ptr %35, i32 0, i32 32, i32 1
  store i32 %218, ptr %223, align 4
  %224 = load i8, ptr %69, align 4
  %225 = zext i8 %224 to i32
  call void @fib6_metric_set(ptr noundef %212, i32 noundef 10, i32 noundef %225) #17
  br label %226

226:                                              ; preds = %222, %216, %210, %89, %66
  %227 = phi ptr [ %212, %222 ], [ %212, %216 ], [ %212, %210 ], [ null, %89 ], [ null, %66 ]
  %228 = phi ptr [ %211, %222 ], [ %211, %216 ], [ %211, %210 ], [ null, %89 ], [ null, %66 ]
  %229 = getelementptr inbounds %struct.inet6_dev, ptr %35, i32 0, i32 31
  %230 = load ptr, ptr %229, align 4
  %231 = icmp eq ptr %230, null
  br i1 %231, label %274, label %232

232:                                              ; preds = %226
  %233 = getelementptr inbounds %struct.ra_msg, ptr %8, i32 0, i32 2
  %234 = load i32, ptr %233, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %246, label %236

236:                                              ; preds = %232
  %237 = call i32 @llvm.bswap.i32(i32 %234)
  %238 = mul i32 %237, 100
  %239 = udiv i32 %238, 1000
  %240 = icmp ult i32 %238, 1000
  %241 = select i1 %240, i32 1, i32 %239
  %242 = getelementptr inbounds %struct.neigh_parms, ptr %230, i32 0, i32 12
  call void @_set_bit(i32 noundef 4, ptr noundef %242) #17
  %243 = getelementptr %struct.neigh_parms, ptr %230, i32 0, i32 11, i32 4
  store i32 %241, ptr %243, align 4
  %244 = load volatile i32, ptr @jiffies, align 64
  %245 = getelementptr inbounds %struct.inet6_dev, ptr %35, i32 0, i32 37
  store i32 %244, ptr %245, align 4
  br label %246

246:                                              ; preds = %236, %232
  %247 = phi i8 [ 1, %236 ], [ %81, %232 ]
  %248 = getelementptr inbounds %struct.ra_msg, ptr %8, i32 0, i32 1
  %249 = load i32, ptr %248, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %271, label %251

251:                                              ; preds = %246
  %252 = call i32 @llvm.bswap.i32(i32 %249)
  %253 = mul i32 %252, 100
  %254 = udiv i32 %253, 1000
  %255 = call i32 @llvm.umax.i32(i32 %254, i32 10)
  %256 = load ptr, ptr %229, align 4
  %257 = getelementptr %struct.neigh_parms, ptr %256, i32 0, i32 11, i32 5
  %258 = load i32, ptr %257, align 4
  %259 = icmp eq i32 %255, %258
  br i1 %259, label %271, label %260

260:                                              ; preds = %251
  %261 = getelementptr inbounds %struct.neigh_parms, ptr %256, i32 0, i32 12
  call void @_set_bit(i32 noundef 5, ptr noundef %261) #17
  store i32 %255, ptr %257, align 4
  %262 = load ptr, ptr %229, align 4
  %263 = mul nuw nsw i32 %255, 3
  %264 = getelementptr inbounds %struct.neigh_parms, ptr %262, i32 0, i32 12
  call void @_set_bit(i32 noundef 7, ptr noundef %264) #17
  %265 = getelementptr %struct.neigh_parms, ptr %262, i32 0, i32 11, i32 7
  store i32 %263, ptr %265, align 4
  %266 = call i32 @neigh_rand_reach_time(i32 noundef %255) #17
  %267 = load ptr, ptr %229, align 4
  %268 = getelementptr inbounds %struct.neigh_parms, ptr %267, i32 0, i32 10
  store i32 %266, ptr %268, align 4
  %269 = load volatile i32, ptr @jiffies, align 64
  %270 = getelementptr inbounds %struct.inet6_dev, ptr %35, i32 0, i32 37
  store i32 %269, ptr %270, align 4
  br label %271

271:                                              ; preds = %260, %251, %246
  %272 = phi i8 [ 1, %260 ], [ %247, %251 ], [ %247, %246 ]
  %273 = icmp ne i8 %272, 0
  br label %274

274:                                              ; preds = %271, %226
  %275 = phi i1 [ %273, %271 ], [ %80, %226 ]
  %276 = icmp eq ptr %228, null
  br i1 %276, label %277, label %293

277:                                              ; preds = %274, %55, %46
  %278 = phi ptr [ %227, %274 ], [ null, %55 ], [ null, %46 ]
  %279 = phi i1 [ %275, %274 ], [ false, %55 ], [ false, %46 ]
  %280 = load ptr, ptr %3, align 8
  %281 = load i16, ptr %16, align 4
  %282 = zext i16 %281 to i32
  %283 = getelementptr i8, ptr %280, i32 %282
  %284 = getelementptr inbounds %struct.ipv6hdr, ptr %283, i32 0, i32 5
  %285 = load ptr, ptr %32, align 8
  %286 = call ptr @neigh_lookup(ptr noundef nonnull @nd_tbl, ptr noundef %284, ptr noundef %285) #17
  %287 = icmp eq ptr %286, null
  br i1 %287, label %288, label %293

288:                                              ; preds = %277
  %289 = call ptr @__neigh_create(ptr noundef nonnull @nd_tbl, ptr noundef %284, ptr noundef %285, i1 noundef zeroext true) #17
  %290 = icmp ugt ptr %289, inttoptr (i32 -4096 to ptr)
  %291 = icmp eq ptr %289, null
  %292 = or i1 %290, %291
  br i1 %292, label %332, label %293

293:                                              ; preds = %288, %277, %274
  %294 = phi ptr [ %286, %277 ], [ %228, %274 ], [ %289, %288 ]
  %295 = phi i1 [ %279, %277 ], [ %275, %274 ], [ %279, %288 ]
  %296 = phi ptr [ %278, %277 ], [ %227, %274 ], [ %278, %288 ]
  %297 = getelementptr inbounds [15 x ptr], ptr %2, i32 0, i32 1
  %298 = load ptr, ptr %297, align 4
  %299 = icmp eq ptr %298, null
  %300 = load ptr, ptr %32, align 8
  br i1 %299, label %321, label %301

301:                                              ; preds = %293
  %302 = getelementptr inbounds %struct.net_device, ptr %300, i32 0, i32 51
  %303 = load i8, ptr %302, align 1
  %304 = getelementptr inbounds %struct.net_device, ptr %300, i32 0, i32 32
  %305 = load i16, ptr %304, align 16
  %306 = icmp eq i16 %305, 32
  %307 = select i1 %306, i32 2, i32 0
  %308 = getelementptr inbounds %struct.nd_opt_hdr, ptr %298, i32 0, i32 1
  %309 = load i8, ptr %308, align 1
  %310 = zext i8 %309 to i32
  %311 = shl nuw nsw i32 %310, 3
  %312 = zext i8 %303 to i32
  %313 = add nuw nsw i32 %312, 9
  %314 = add nuw nsw i32 %313, %307
  %315 = and i32 %314, 504
  %316 = icmp ne i32 %311, %315
  %317 = getelementptr %struct.nd_opt_hdr, ptr %298, i32 1
  %318 = getelementptr i8, ptr %317, i32 %307
  %319 = icmp eq ptr %318, null
  %320 = select i1 %316, i1 true, i1 %319
  br i1 %320, label %541, label %321

321:                                              ; preds = %301, %293
  %322 = phi ptr [ %318, %301 ], [ null, %293 ]
  %323 = call i32 @neigh_update(ptr noundef nonnull %294, ptr noundef %322, i8 noundef zeroext 4, i32 noundef 71, i32 noundef 0) #17
  %324 = getelementptr inbounds %struct.net_device, ptr %300, i32 0, i32 43
  %325 = load ptr, ptr %324, align 4
  %326 = icmp eq ptr %325, null
  br i1 %326, label %332, label %327

327:                                              ; preds = %321
  %328 = getelementptr inbounds %struct.ndisc_ops, ptr %325, i32 0, i32 2
  %329 = load ptr, ptr %328, align 4
  %330 = icmp eq ptr %329, null
  br i1 %330, label %332, label %331

331:                                              ; preds = %327
  call void %329(ptr noundef %300, ptr noundef nonnull %294, i32 noundef 71, i8 noundef zeroext -122, ptr noundef nonnull %2) #17
  br label %332

332:                                              ; preds = %331, %327, %321, %288
  %333 = phi i1 [ true, %288 ], [ false, %321 ], [ false, %327 ], [ false, %331 ]
  %334 = phi ptr [ null, %288 ], [ %294, %321 ], [ %294, %327 ], [ %294, %331 ]
  %335 = phi i1 [ %279, %288 ], [ %295, %321 ], [ %295, %327 ], [ %295, %331 ]
  %336 = phi ptr [ %278, %288 ], [ %296, %321 ], [ %296, %327 ], [ %296, %331 ]
  %337 = load i32, ptr %47, align 4
  %338 = icmp eq i32 %337, 0
  %339 = load i32, ptr %50, align 4
  %340 = icmp eq i32 %339, 2
  %341 = icmp ne i32 %339, 0
  %342 = select i1 %338, i1 %341, i1 %340
  br i1 %342, label %343, label %541

343:                                              ; preds = %332
  %344 = load i16, ptr %27, align 2
  %345 = and i16 %344, 192
  %346 = icmp eq i16 %345, 128
  br i1 %346, label %541, label %347

347:                                              ; preds = %343
  %348 = getelementptr inbounds %struct.inet6_dev, ptr %35, i32 0, i32 32, i32 23
  %349 = load i32, ptr %348, align 4
  %350 = icmp ne i32 %349, 0
  %351 = getelementptr inbounds [15 x ptr], ptr %2, i32 0, i32 3
  %352 = load ptr, ptr %351, align 4
  %353 = icmp ne ptr %352, null
  %354 = select i1 %350, i1 %353, i1 false
  br i1 %354, label %355, label %388

355:                                              ; preds = %347
  %356 = getelementptr inbounds [15 x ptr], ptr %2, i32 0, i32 1
  br label %357

357:                                              ; preds = %383, %355
  %358 = phi ptr [ %352, %355 ], [ %376, %383 ]
  %359 = load ptr, ptr %32, align 8
  %360 = getelementptr inbounds %struct.nd_opt_hdr, ptr %358, i32 0, i32 1
  %361 = load i8, ptr %360, align 1
  %362 = zext i8 %361 to i32
  %363 = shl nuw nsw i32 %362, 3
  %364 = load ptr, ptr %356, align 4
  %365 = icmp ne ptr %364, null
  call void @addrconf_prefix_rcv(ptr noundef %359, ptr noundef nonnull %358, i32 noundef %363, i1 noundef zeroext %365) #17
  %366 = load ptr, ptr %2, align 4
  %367 = icmp ult ptr %358, %366
  br i1 %367, label %368, label %388

368:                                              ; preds = %357
  %369 = load i8, ptr %358, align 1
  br label %370

370:                                              ; preds = %378, %368
  %371 = phi ptr [ %358, %368 ], [ %376, %378 ]
  %372 = getelementptr inbounds %struct.nd_opt_hdr, ptr %371, i32 0, i32 1
  %373 = load i8, ptr %372, align 1
  %374 = zext i8 %373 to i32
  %375 = shl nuw nsw i32 %374, 3
  %376 = getelementptr i8, ptr %371, i32 %375
  %377 = icmp ult ptr %376, %366
  br i1 %377, label %378, label %381

378:                                              ; preds = %370
  %379 = load i8, ptr %376, align 1
  %380 = icmp eq i8 %379, %369
  br i1 %380, label %381, label %370

381:                                              ; preds = %378, %370
  %382 = icmp ugt ptr %376, %366
  br i1 %382, label %388, label %383

383:                                              ; preds = %381
  %384 = load i8, ptr %376, align 1
  %385 = icmp ne i8 %384, %369
  %386 = icmp eq ptr %376, null
  %387 = select i1 %385, i1 true, i1 %386
  br i1 %387, label %388, label %357

388:                                              ; preds = %383, %381, %357, %347
  %389 = getelementptr inbounds [15 x ptr], ptr %2, i32 0, i32 5
  %390 = load ptr, ptr %389, align 4
  %391 = icmp eq ptr %390, null
  br i1 %391, label %418, label %392

392:                                              ; preds = %388
  %393 = getelementptr inbounds %struct.inet6_dev, ptr %35, i32 0, i32 32, i32 38
  %394 = load i32, ptr %393, align 4
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %418, label %396

396:                                              ; preds = %392
  %397 = getelementptr %struct.nd_opt_hdr, ptr %390, i32 2
  %398 = load i32, ptr %397, align 1
  %399 = call i32 @llvm.bswap.i32(i32 %398)
  %400 = getelementptr inbounds %struct.inet6_dev, ptr %35, i32 0, i32 39
  %401 = load i32, ptr %400, align 4
  %402 = icmp eq i32 %401, %399
  br i1 %402, label %404, label %403

403:                                              ; preds = %396
  store i32 %399, ptr %400, align 4
  br label %404

404:                                              ; preds = %403, %396
  %405 = phi i1 [ true, %403 ], [ %335, %396 ]
  %406 = icmp ult i32 %399, 1280
  br i1 %406, label %418, label %407

407:                                              ; preds = %404
  %408 = load ptr, ptr %32, align 8
  %409 = getelementptr inbounds %struct.net_device, ptr %408, i32 0, i32 20
  %410 = load i32, ptr %409, align 4
  %411 = icmp ugt i32 %399, %410
  br i1 %411, label %418, label %412

412:                                              ; preds = %407
  %413 = getelementptr inbounds %struct.inet6_dev, ptr %35, i32 0, i32 32, i32 2
  %414 = load i32, ptr %413, align 4
  %415 = icmp eq i32 %414, %399
  br i1 %415, label %418, label %416

416:                                              ; preds = %412
  store i32 %399, ptr %413, align 4
  call void @fib6_metric_set(ptr noundef %336, i32 noundef 2, i32 noundef %399) #17
  %417 = load ptr, ptr %32, align 8
  call void @rt6_mtu_change(ptr noundef %417, i32 noundef %399) #17
  br label %418

418:                                              ; preds = %416, %412, %407, %404, %392, %388
  %419 = phi i1 [ %335, %392 ], [ %335, %388 ], [ %405, %412 ], [ %405, %416 ], [ %405, %407 ], [ %405, %404 ]
  %420 = getelementptr inbounds %struct.ndisc_options, ptr %2, i32 0, i32 1
  %421 = load ptr, ptr %420, align 4
  %422 = icmp eq ptr %421, null
  br i1 %422, label %541, label %423

423:                                              ; preds = %418
  %424 = getelementptr inbounds %struct.ndisc_options, ptr %2, i32 0, i32 2
  br label %425

425:                                              ; preds = %539, %423
  %426 = phi ptr [ %421, %423 ], [ %508, %539 ]
  %427 = load ptr, ptr %3, align 8
  %428 = load i16, ptr %5, align 2
  %429 = zext i16 %428 to i32
  %430 = getelementptr i8, ptr %427, i32 %429
  %431 = getelementptr inbounds %struct.nd_opt_hdr, ptr %426, i32 0, i32 1
  %432 = load i8, ptr %431, align 1
  %433 = zext i8 %432 to i32
  %434 = shl nuw nsw i32 %433, 3
  %435 = add nuw nsw i32 %434, 19
  %436 = and i32 %435, 4088
  %437 = add nuw nsw i32 %436, 39
  %438 = and i32 %437, 8188
  %439 = call ptr @__alloc_skb(i32 noundef %438, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #17
  %440 = icmp eq ptr %439, null
  br i1 %440, label %494, label %441

441:                                              ; preds = %425
  %442 = getelementptr inbounds %struct.sk_buff, ptr %439, i32 0, i32 6
  %443 = load i32, ptr %442, align 4
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %445, label %453

445:                                              ; preds = %441
  %446 = getelementptr inbounds %struct.sk_buff, ptr %439, i32 0, i32 15
  %447 = load ptr, ptr %446, align 4
  %448 = getelementptr inbounds %struct.sk_buff, ptr %439, i32 0, i32 14
  %449 = load ptr, ptr %448, align 8
  %450 = ptrtoint ptr %447 to i32
  %451 = ptrtoint ptr %449 to i32
  %452 = sub i32 %450, %451
  br label %453

453:                                              ; preds = %445, %441
  %454 = phi i32 [ %452, %445 ], [ 0, %441 ]
  %455 = add nuw nsw i32 %436, 19
  %456 = and i32 %455, 8184
  %457 = icmp slt i32 %454, %456
  br i1 %457, label %493, label %458, !prof !12

458:                                              ; preds = %453
  %459 = call ptr @__nlmsg_put(ptr noundef nonnull %439, i32 noundef 0, i32 noundef 0, i32 noundef 68, i32 noundef %436, i32 noundef 0) #17
  %460 = icmp eq ptr %459, null
  br i1 %460, label %493, label %461

461:                                              ; preds = %458
  %462 = getelementptr i8, ptr %459, i32 16
  store i8 10, ptr %462, align 4
  %463 = load ptr, ptr %32, align 8
  %464 = getelementptr inbounds %struct.net_device, ptr %463, i32 0, i32 17
  %465 = load i32, ptr %464, align 4
  %466 = getelementptr i8, ptr %459, i32 20
  store i32 %465, ptr %466, align 4
  %467 = load i8, ptr %430, align 4
  %468 = getelementptr i8, ptr %459, i32 24
  store i8 %467, ptr %468, align 4
  %469 = getelementptr inbounds %struct.icmp6hdr, ptr %430, i32 0, i32 1
  %470 = load i8, ptr %469, align 1
  %471 = getelementptr i8, ptr %459, i32 25
  store i8 %470, ptr %471, align 1
  %472 = load i8, ptr %431, align 1
  %473 = zext i8 %472 to i16
  %474 = shl nuw nsw i16 %473, 3
  %475 = getelementptr i8, ptr %459, i32 18
  store i16 %474, ptr %475, align 2
  %476 = getelementptr i8, ptr %459, i32 32
  %477 = load i8, ptr %431, align 1
  %478 = zext i8 %477 to i32
  %479 = shl nuw nsw i32 %478, 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %476, ptr nonnull align 1 %426, i32 %479, i1 false) #17
  %480 = load ptr, ptr %3, align 8
  %481 = load i16, ptr %16, align 4
  %482 = zext i16 %481 to i32
  %483 = getelementptr i8, ptr %480, i32 %482
  %484 = getelementptr inbounds %struct.ipv6hdr, ptr %483, i32 0, i32 5
  %485 = call i32 @nla_put(ptr noundef nonnull %439, i32 noundef 1, i32 noundef 16, ptr noundef %484) #17
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %487, label %493

487:                                              ; preds = %461
  %488 = getelementptr inbounds %struct.sk_buff, ptr %439, i32 0, i32 14
  %489 = load ptr, ptr %488, align 8
  %490 = ptrtoint ptr %489 to i32
  %491 = ptrtoint ptr %459 to i32
  %492 = sub i32 %490, %491
  store i32 %492, ptr %459, align 4
  call void @rtnl_notify(ptr noundef nonnull %439, ptr noundef nonnull @init_net, i32 noundef 0, i32 noundef 20, ptr noundef null, i32 noundef 2592) #17
  br label %496

493:                                              ; preds = %461, %458, %453
  call void @kfree_skb_reason(ptr noundef nonnull %439, i32 noundef 0) #17
  br label %494

494:                                              ; preds = %493, %425
  %495 = phi i32 [ -90, %493 ], [ -105, %425 ]
  call void @rtnl_set_sk_err(ptr noundef nonnull @init_net, i32 noundef 20, i32 noundef %495) #17
  br label %496

496:                                              ; preds = %494, %487
  %497 = load ptr, ptr %424, align 4
  %498 = icmp ult ptr %426, %497
  br i1 %498, label %499, label %538

499:                                              ; preds = %496
  %500 = load ptr, ptr %32, align 8
  %501 = getelementptr inbounds %struct.net_device, ptr %500, i32 0, i32 43
  br label %502

502:                                              ; preds = %522, %499
  %503 = phi ptr [ %508, %522 ], [ %426, %499 ]
  %504 = getelementptr inbounds %struct.nd_opt_hdr, ptr %503, i32 0, i32 1
  %505 = load i8, ptr %504, align 1
  %506 = zext i8 %505 to i32
  %507 = shl nuw nsw i32 %506, 3
  %508 = getelementptr i8, ptr %503, i32 %507
  %509 = icmp ult ptr %508, %497
  br i1 %509, label %510, label %525

510:                                              ; preds = %502
  %511 = load i8, ptr %508, align 1
  switch i8 %511, label %512 [
    i8 25, label %525
    i8 31, label %525
    i8 37, label %525
    i8 38, label %525
  ]

512:                                              ; preds = %510
  %513 = load ptr, ptr %501, align 4
  %514 = icmp eq ptr %513, null
  br i1 %514, label %522, label %515

515:                                              ; preds = %512
  %516 = load ptr, ptr %513, align 4
  %517 = icmp eq ptr %516, null
  br i1 %517, label %522, label %518

518:                                              ; preds = %515
  %519 = call i32 %516(i8 noundef zeroext %511) #17
  %520 = icmp ne i32 %519, 0
  %521 = zext i1 %520 to i32
  br label %522

522:                                              ; preds = %518, %515, %512
  %523 = phi i32 [ %521, %518 ], [ 0, %515 ], [ 0, %512 ]
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %502, label %525

525:                                              ; preds = %522, %510, %510, %510, %510, %502
  %526 = icmp ugt ptr %508, %497
  br i1 %526, label %538, label %527

527:                                              ; preds = %525
  %528 = load i8, ptr %508, align 1
  switch i8 %528, label %529 [
    i8 25, label %539
    i8 31, label %539
    i8 37, label %539
    i8 38, label %539
  ]

529:                                              ; preds = %527
  %530 = load ptr, ptr %501, align 4
  %531 = icmp eq ptr %530, null
  br i1 %531, label %538, label %532

532:                                              ; preds = %529
  %533 = load ptr, ptr %530, align 4
  %534 = icmp eq ptr %533, null
  br i1 %534, label %538, label %535

535:                                              ; preds = %532
  %536 = call i32 %533(i8 noundef zeroext %528) #17
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %538, label %539

538:                                              ; preds = %535, %532, %529, %525, %496
  br i1 %419, label %546, label %550

539:                                              ; preds = %535, %527, %527, %527, %527
  %540 = icmp eq ptr %508, null
  br i1 %540, label %541, label %425

541:                                              ; preds = %539, %418, %343, %332, %301
  %542 = phi i1 [ %333, %343 ], [ %333, %332 ], [ %333, %418 ], [ false, %301 ], [ %333, %539 ]
  %543 = phi ptr [ %334, %343 ], [ %334, %332 ], [ %334, %418 ], [ %294, %301 ], [ %334, %539 ]
  %544 = phi ptr [ %336, %343 ], [ %336, %332 ], [ %336, %418 ], [ %296, %301 ], [ %336, %539 ]
  %545 = phi i1 [ %335, %343 ], [ %335, %332 ], [ %419, %418 ], [ %295, %301 ], [ %419, %539 ]
  br i1 %545, label %546, label %550

546:                                              ; preds = %541, %538
  %547 = phi ptr [ %336, %538 ], [ %544, %541 ]
  %548 = phi ptr [ %334, %538 ], [ %543, %541 ]
  %549 = phi i1 [ %333, %538 ], [ %542, %541 ]
  call void @inet6_ifinfo_notify(i32 noundef 16, ptr noundef nonnull %35) #17
  br label %550

550:                                              ; preds = %546, %541, %538
  %551 = phi ptr [ %336, %538 ], [ %547, %546 ], [ %544, %541 ]
  %552 = phi ptr [ %334, %538 ], [ %548, %546 ], [ %543, %541 ]
  %553 = phi i1 [ %333, %538 ], [ %549, %546 ], [ %542, %541 ]
  %554 = icmp eq ptr %551, null
  br i1 %554, label %565, label %555

555:                                              ; preds = %550
  %556 = getelementptr inbounds %struct.fib6_info, ptr %551, i32 0, i32 5
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %556) #17, !srcloc !10
  %557 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %556, ptr %556, i32 1, ptr elementtype(i32) %556) #17, !srcloc !16
  %558 = extractvalue { i32, i32, i32 } %557, 0
  %559 = icmp eq i32 %558, 1
  br i1 %559, label %563, label %560

560:                                              ; preds = %555
  %561 = icmp sgt i32 %558, 0
  br i1 %561, label %565, label %562, !prof !13

562:                                              ; preds = %560
  call void @refcount_warn_saturate(ptr noundef %556, i32 noundef 3) #17
  br label %565

563:                                              ; preds = %555
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %564 = getelementptr inbounds %struct.fib6_info, ptr %551, i32 0, i32 19
  call void @call_rcu(ptr noundef %564, ptr noundef nonnull @fib6_info_destroy_rcu) #17
  br label %565

565:                                              ; preds = %563, %562, %560, %550
  br i1 %553, label %575, label %566

566:                                              ; preds = %565
  %567 = getelementptr inbounds %struct.neighbour, ptr %552, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %567) #17, !srcloc !10
  %568 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %567, ptr %567, i32 1, ptr elementtype(i32) %567) #17, !srcloc !16
  %569 = extractvalue { i32, i32, i32 } %568, 0
  %570 = icmp eq i32 %569, 1
  br i1 %570, label %574, label %571

571:                                              ; preds = %566
  %572 = icmp sgt i32 %569, 0
  br i1 %572, label %575, label %573, !prof !13

573:                                              ; preds = %571
  call void @refcount_warn_saturate(ptr noundef %567, i32 noundef 3) #17
  br label %575

574:                                              ; preds = %566
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  call void @neigh_destroy(ptr noundef %552) #17
  br label %575

575:                                              ; preds = %574, %573, %571, %565, %187, %169, %166, %142, %43, %40, %37, %26, %1
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %2) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ndisc_redirect_rcv(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.ndisc_options, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %2) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %2, i8 0, i32 68, i1 false), !annotation !18
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %6 = load i16, ptr %5, align 2
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i8, ptr %8, i32 40
  %12 = ptrtoint ptr %10 to i32
  %13 = ptrtoint ptr %11 to i32
  %14 = sub i32 %12, %13
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %16 = load i16, ptr %15, align 2
  %17 = lshr i16 %16, 6
  %18 = and i16 %17, 3
  %19 = zext i16 %18 to i32
  %20 = add nsw i32 %19, -1
  %21 = icmp ult i32 %20, 2
  br i1 %21, label %75, label %22

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %24 = load i16, ptr %23, align 4
  %25 = zext i16 %24 to i32
  %26 = getelementptr i8, ptr %4, i32 %25
  %27 = getelementptr inbounds %struct.ipv6hdr, ptr %26, i32 0, i32 5
  %28 = tail call i32 @__ipv6_addr_type(ptr noundef %27) #17
  %29 = and i32 %28, 32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %75, label %31

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.anon.0, ptr %0, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = call ptr @ndisc_parse_options(ptr noundef %33, ptr noundef %11, i32 noundef %14, ptr noundef nonnull %2)
  %35 = icmp eq ptr %34, null
  br i1 %35, label %75, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds [15 x ptr], ptr %2, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load ptr, ptr %32, align 8
  %42 = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 17
  %43 = load i32, ptr %42, align 4
  call void @ip6_redirect_no_header(ptr noundef %0, ptr noundef nonnull @init_net, i32 noundef %43) #17
  br label %75

44:                                               ; preds = %36
  %45 = getelementptr i8, ptr %38, i32 8
  %46 = load ptr, ptr %3, align 8
  %47 = load i16, ptr %5, align 2
  %48 = zext i16 %47 to i32
  %49 = getelementptr i8, ptr %46, i32 %48
  %50 = ptrtoint ptr %45 to i32
  %51 = ptrtoint ptr %49 to i32
  %52 = sub i32 %50, %51
  %53 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %54 = load i32, ptr %53, align 8
  %55 = icmp ult i32 %54, %52
  br i1 %55, label %75, label %56, !prof !12

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %58 = load i32, ptr %57, align 4
  %59 = sub i32 %54, %58
  %60 = icmp ugt i32 %52, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = sub i32 %52, %59
  %63 = call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %62) #17
  %64 = icmp eq ptr %63, null
  br i1 %64, label %75, label %65

65:                                               ; preds = %61
  %66 = load i32, ptr %53, align 8
  br label %67

67:                                               ; preds = %65, %56
  %68 = phi i32 [ %66, %65 ], [ %54, %56 ]
  %69 = sub i32 %68, %52
  store i32 %69, ptr %53, align 8
  %70 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr i8, ptr %71, i32 %52
  store ptr %72, ptr %70, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %67
  call void @icmpv6_notify(ptr noundef %0, i8 noundef zeroext -119, i8 noundef zeroext 0, i32 noundef 0) #17
  br label %75

75:                                               ; preds = %74, %67, %61, %44, %40, %31, %22, %1
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %2) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ndisc_ifinfo_sysctl_change(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  %6 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %0, align 4
  %9 = tail call i32 @strcmp(ptr noundef %8, ptr noundef nonnull dereferenceable(13) @.str.1)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = tail call i32 @strcmp(ptr noundef %8, ptr noundef nonnull dereferenceable(20) @.str.2)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %11, %5
  %15 = tail call ptr @llvm.thread.pointer() #17
  %16 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 85
  %17 = tail call i32 @strcmp(ptr noundef nonnull @ndisc_warn_deprecated_sysctl.warncomm, ptr noundef %16) #17
  %18 = icmp ne i32 %17, 0
  %19 = load i32, ptr @ndisc_warn_deprecated_sysctl.warned, align 4
  %20 = icmp slt i32 %19, 5
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %31

22:                                               ; preds = %14
  %23 = icmp eq ptr %7, null
  %24 = select i1 %23, ptr @.str.4, ptr %7
  %25 = tail call ptr @strcpy(ptr noundef nonnull @ndisc_warn_deprecated_sysctl.warncomm, ptr noundef %16) #17
  %26 = load ptr, ptr %0, align 4
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @ndisc_warn_deprecated_sysctl.warncomm, ptr noundef nonnull @.str.3, ptr noundef %24, ptr noundef %26, ptr noundef %24, ptr noundef %26) #18
  %28 = load i32, ptr @ndisc_warn_deprecated_sysctl.warned, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr @ndisc_warn_deprecated_sysctl.warned, align 4
  %30 = load ptr, ptr %0, align 4
  br label %31

31:                                               ; preds = %22, %14, %11
  %32 = phi ptr [ %30, %22 ], [ %8, %14 ], [ %8, %11 ]
  %33 = tail call i32 @strcmp(ptr noundef %32, ptr noundef nonnull dereferenceable(13) @.str.1)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = tail call i32 @neigh_proc_dointvec(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #17
  br label %50

37:                                               ; preds = %31
  %38 = tail call i32 @strcmp(ptr noundef %32, ptr noundef nonnull dereferenceable(20) @.str.2)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = tail call i32 @neigh_proc_dointvec_jiffies(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #17
  br label %50

42:                                               ; preds = %37
  %43 = tail call i32 @strcmp(ptr noundef %32, ptr noundef nonnull dereferenceable(16) @.str.5)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = tail call i32 @strcmp(ptr noundef %32, ptr noundef nonnull dereferenceable(23) @.str.6)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %95

48:                                               ; preds = %45, %42
  %49 = tail call i32 @neigh_proc_dointvec_ms_jiffies(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #17
  br label %50

50:                                               ; preds = %48, %40, %35
  %51 = phi i32 [ %36, %35 ], [ %41, %40 ], [ %49, %48 ]
  %52 = icmp ne i32 %1, 0
  %53 = icmp eq i32 %51, 0
  %54 = select i1 %52, i1 %53, i1 false
  %55 = icmp ne ptr %7, null
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %57, label %95

57:                                               ; preds = %50
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %58 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 69
  %59 = load volatile ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %72, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.inet6_dev, ptr %59, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %62) #17, !srcloc !10
  %63 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %62, ptr %62, i32 1, ptr elementtype(i32) %62) #17, !srcloc !11
  %64 = extractvalue { i32, i32, i32 } %63, 0
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66, !prof !12

66:                                               ; preds = %61
  %67 = add i32 %64, 1
  %68 = or i32 %67, %64
  %69 = icmp sgt i32 %68, -1
  br i1 %69, label %73, label %70, !prof !13

70:                                               ; preds = %66, %61
  %71 = phi i32 [ 2, %61 ], [ 1, %66 ]
  tail call void @refcount_warn_saturate(ptr noundef %62, i32 noundef %71) #17
  br label %73

72:                                               ; preds = %57
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  br label %95

73:                                               ; preds = %70, %66
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %74 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.inet6_dev, ptr %59, i32 0, i32 31
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr %struct.neigh_parms, ptr %77, i32 0, i32 11, i32 5
  %79 = icmp eq ptr %75, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load i32, ptr %75, align 4
  %82 = tail call i32 @neigh_rand_reach_time(i32 noundef %81) #17
  %83 = load ptr, ptr %76, align 4
  %84 = getelementptr inbounds %struct.neigh_parms, ptr %83, i32 0, i32 10
  store i32 %82, ptr %84, align 4
  br label %85

85:                                               ; preds = %80, %73
  %86 = load volatile i32, ptr @jiffies, align 64
  %87 = getelementptr inbounds %struct.inet6_dev, ptr %59, i32 0, i32 37
  store i32 %86, ptr %87, align 4
  tail call void @inet6_ifinfo_notify(i32 noundef 16, ptr noundef nonnull %59) #17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %62) #17, !srcloc !10
  %88 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %62, ptr %62, i32 1, ptr elementtype(i32) %62) #17, !srcloc !16
  %89 = extractvalue { i32, i32, i32 } %88, 0
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %94, label %91

91:                                               ; preds = %85
  %92 = icmp sgt i32 %89, 0
  br i1 %92, label %95, label %93, !prof !13

93:                                               ; preds = %91
  tail call void @refcount_warn_saturate(ptr noundef %62, i32 noundef 3) #17
  br label %95

94:                                               ; preds = %85
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  tail call void @in6_dev_finish_destroy(ptr noundef nonnull %59) #17
  br label %95

95:                                               ; preds = %94, %93, %91, %72, %50, %45
  %96 = phi i32 [ 0, %72 ], [ %51, %50 ], [ 0, %91 ], [ 0, %93 ], [ 0, %94 ], [ -1, %45 ]
  ret i32 %96
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_proc_dointvec_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_proc_dointvec_ms_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_rand_reach_time(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet6_ifinfo_notify(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @ndisc_init() local_unnamed_addr #9 section ".init.text" {
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ndisc_net_ops) #17
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  tail call void @neigh_table_init(i32 noundef 1, ptr noundef nonnull @nd_tbl) #17
  %4 = tail call i32 @neigh_sysctl_register(ptr noundef null, ptr noundef getelementptr inbounds (%struct.neigh_table, ptr @nd_tbl, i32 0, i32 13), ptr noundef nonnull @ndisc_ifinfo_sysctl_change) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ndisc_net_ops) #17
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ %1, %0 ], [ 0, %3 ], [ %4, %6 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_table_init(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_sysctl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @ndisc_late_init() local_unnamed_addr #9 section ".init.text" {
  %1 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @ndisc_netdev_notifier) #17
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ndisc_late_cleanup() local_unnamed_addr #1 {
  %1 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @ndisc_netdev_notifier) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ndisc_cleanup() local_unnamed_addr #1 {
  tail call void @neigh_sysctl_unregister(ptr noundef getelementptr inbounds (%struct.neigh_table, ptr @nd_tbl, i32 0, i32 13)) #17
  %1 = tail call i32 @neigh_table_clear(i32 noundef 1, ptr noundef nonnull @nd_tbl) #17
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ndisc_net_ops) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_sysctl_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_table_clear(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_direct_output(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ndisc_solicit(ptr noundef %0, ptr noundef readonly %1) #1 {
  %3 = alloca %struct.in6_addr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  %4 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 26
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 28
  %7 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 11
  %8 = load volatile i32, ptr %7, align 4
  %9 = icmp eq ptr %1, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = getelementptr i8, ptr %12, i32 %15
  %17 = getelementptr inbounds %struct.ipv6hdr, ptr %16, i32 0, i32 5
  %18 = tail call i32 @ipv6_chk_addr_and_flags(ptr noundef nonnull @init_net, ptr noundef %17, ptr noundef %5, i1 noundef zeroext false, i32 noundef 1, i32 noundef 68) #17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %10
  %21 = load ptr, ptr %11, align 8
  %22 = load i16, ptr %13, align 4
  %23 = zext i16 %22 to i32
  %24 = getelementptr i8, ptr %21, i32 %23
  %25 = getelementptr inbounds %struct.ipv6hdr, ptr %24, i32 0, i32 5
  br label %26

26:                                               ; preds = %20, %10, %2
  %27 = phi ptr [ %25, %20 ], [ null, %10 ], [ null, %2 ]
  %28 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr %struct.neigh_parms, ptr %29, i32 0, i32 11, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = sub i32 %8, %31
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  tail call void @ndisc_send_ns(ptr noundef %5, ptr noundef %6, ptr noundef %6, ptr noundef %27, i64 noundef 0)
  br label %48

35:                                               ; preds = %26
  %36 = getelementptr %struct.neigh_parms, ptr %29, i32 0, i32 11, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = sub i32 %32, %37
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  tail call void @neigh_app_ns(ptr noundef %0) #17
  br label %48

41:                                               ; preds = %35
  %42 = getelementptr %struct.neighbour, ptr %0, i32 1, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = or i32 %43, 255
  store i32 767, ptr %3, align 4
  %45 = getelementptr inbounds i32, ptr %3, i32 1
  store i32 0, ptr %45, align 4
  %46 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 2
  store i32 16777216, ptr %46, align 4
  %47 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 3
  store i32 %44, ptr %47, align 4
  call void @ndisc_send_ns(ptr noundef %5, ptr noundef %6, ptr noundef nonnull %3, ptr noundef %27, i64 noundef 0)
  br label %48

48:                                               ; preds = %41, %40, %34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ndisc_error_report(ptr nocapture noundef readnone %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, -2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = inttoptr i32 %5 to ptr
  %9 = getelementptr inbounds %struct.dst_entry, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.dst_ops, ptr %10, i32 0, i32 10
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void %14(ptr noundef %1) #17
  br label %17

17:                                               ; preds = %16, %12, %7, %2
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_resolve_output(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_addr_and_flags(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_app_ns(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_connected_output(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_dev_mc_inc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_dev_mc_dec(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet6_ifa_finish_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_set_owner_w(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @icmp6_dst_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_route_output_flags(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_getpeer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @addrconf_dad_failure(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get_rcu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_chk_acast_addr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pndisc_is_router(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  tail call void @_raw_read_lock_bh(ptr noundef getelementptr inbounds (%struct.neigh_table, ptr @nd_tbl, i32 0, i32 28)) #17
  %3 = tail call ptr @__pneigh_lookup(ptr noundef nonnull @nd_tbl, ptr noundef nonnull @init_net, ptr noundef %0, ptr noundef %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.pneigh_entry, ptr %3, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %7, 7
  %9 = and i32 %8, 1
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i32 [ %9, %5 ], [ -1, %2 ]
  tail call void @_raw_read_unlock_bh(ptr noundef getelementptr inbounds (%struct.neigh_table, ptr @nd_tbl, i32 0, i32 28)) #17
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pneigh_enqueue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__neigh_lookup(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #7 {
  %4 = tail call ptr @neigh_lookup(ptr noundef nonnull @nd_tbl, ptr noundef %0, ptr noundef %1) #17
  %5 = icmp eq ptr %4, null
  %6 = icmp ne i32 %2, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = tail call ptr @__neigh_create(ptr noundef nonnull @nd_tbl, ptr noundef %0, ptr noundef %1, i1 noundef zeroext true) #17
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  %11 = select i1 %10, ptr null, ptr %9
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi ptr [ %11, %8 ], [ %4, %3 ]
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pneigh_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @neigh_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__neigh_create(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pneigh_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt6_clean_tohost(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_addr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rt6_get_dflt_router(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_neigh_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fib6_info_release(ptr noundef %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.fib6_info, ptr %0, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #17, !srcloc !10
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #17, !srcloc !16
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %13, label %10, !prof !13

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #17
  br label %13

11:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %12 = getelementptr inbounds %struct.fib6_info, ptr %0, i32 0, i32 19
  tail call void @call_rcu(ptr noundef %12, ptr noundef nonnull @fib6_info_destroy_rcu) #17
  br label %13

13:                                               ; preds = %11, %10, %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_del_rt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rt6_add_dflt_router(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib6_metric_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @addrconf_prefix_rcv(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt6_mtu_change(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib6_info_destroy_rcu(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_notify(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_set_sk_err(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_redirect_no_header(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmpv6_notify(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @in6_dev_finish_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ndisc_net_init(ptr noundef %0) #9 section ".init.text" {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  store ptr null, ptr %2, align 4, !annotation !18
  %3 = call i32 @inet_ctl_sock_create(ptr noundef nonnull %2, i16 noundef zeroext 10, i16 noundef zeroext 3, i8 noundef zeroext 58, ptr noundef %0) #17
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = call i32 @net_ratelimit() #17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %5
  %9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %3) #18
  br label %28

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 25
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 4
  %14 = load volatile i8, ptr %13, align 2
  %15 = zext i8 %14 to i32
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, -4161
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.inet_sock, ptr %11, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  br label %22

22:                                               ; preds = %19, %10
  %23 = phi ptr [ %21, %19 ], [ null, %10 ]
  %24 = getelementptr inbounds %struct.ipv6_pinfo, ptr %23, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, -130945
  %27 = or i32 %26, 32640
  store i32 %27, ptr %24, align 4
  br label %28

28:                                               ; preds = %22, %8, %5
  %29 = phi i32 [ 0, %22 ], [ %3, %8 ], [ %3, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  ret i32 %29
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ndisc_net_exit(ptr nocapture noundef readonly %0) #15 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 25
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 71
  %7 = load ptr, ptr %6, align 8
  tail call void @sock_release(ptr noundef %7) #17
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_ctl_sock_create(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ndisc_netdev_event(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = load ptr, ptr %2, align 4
  switch i32 %1, label %92 [
    i32 8, label %5
    i32 1, label %6
    i32 4, label %40
    i32 2, label %89
    i32 19, label %91
  ]

5:                                                ; preds = %3
  tail call void @neigh_changeaddr(ptr noundef nonnull @nd_tbl, ptr noundef %4) #17
  tail call void @fib6_run_gc(i32 noundef 0, ptr noundef nonnull @init_net, i1 noundef zeroext false) #17
  br label %6

6:                                                ; preds = %5, %3
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %7 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 69
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.inet6_dev, ptr %8, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #17, !srcloc !10
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #17, !srcloc !11
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !12

15:                                               ; preds = %10
  %16 = add i32 %13, 1
  %17 = or i32 %16, %13
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %22, label %19, !prof !13

19:                                               ; preds = %15, %10
  %20 = phi i32 [ 2, %10 ], [ 1, %15 ]
  tail call void @refcount_warn_saturate(ptr noundef %11, i32 noundef %20) #17
  br label %22

21:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  br label %92

22:                                               ; preds = %19, %15
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %23 = getelementptr inbounds %struct.inet6_dev, ptr %8, i32 0, i32 32, i32 36
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %28 = getelementptr inbounds %struct.ipv6_devconf, ptr %27, i32 0, i32 36
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26, %22
  tail call fastcc void @ndisc_send_unsol_na(ptr noundef %4)
  br label %32

32:                                               ; preds = %31, %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #17, !srcloc !10
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #17, !srcloc !16
  %34 = extractvalue { i32, i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = icmp sgt i32 %34, 0
  br i1 %37, label %92, label %38, !prof !13

38:                                               ; preds = %36
  tail call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #17
  br label %92

39:                                               ; preds = %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  tail call void @in6_dev_finish_destroy(ptr noundef nonnull %8) #17
  br label %92

40:                                               ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %41 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 69
  %42 = load volatile ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %55, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.inet6_dev, ptr %42, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #17, !srcloc !10
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 1, ptr elementtype(i32) %45) #17, !srcloc !11
  %47 = extractvalue { i32, i32, i32 } %46, 0
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49, !prof !12

49:                                               ; preds = %44
  %50 = add i32 %47, 1
  %51 = or i32 %50, %47
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %56, label %53, !prof !13

53:                                               ; preds = %49, %44
  %54 = phi i32 [ 2, %44 ], [ 1, %49 ]
  tail call void @refcount_warn_saturate(ptr noundef %45, i32 noundef %54) #17
  br label %56

55:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  br label %74

56:                                               ; preds = %53, %49
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %57 = getelementptr inbounds %struct.inet6_dev, ptr %42, i32 0, i32 32, i32 52
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %62 = getelementptr inbounds %struct.ipv6_devconf, ptr %61, i32 0, i32 52
  %63 = load i8, ptr %62, align 1
  %64 = icmp ne i8 %63, 0
  br label %65

65:                                               ; preds = %60, %56
  %66 = phi i1 [ false, %56 ], [ %64, %60 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #17, !srcloc !10
  %67 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 1, ptr elementtype(i32) %45) #17, !srcloc !16
  %68 = extractvalue { i32, i32, i32 } %67, 0
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = icmp sgt i32 %68, 0
  br i1 %71, label %74, label %72, !prof !13

72:                                               ; preds = %70
  tail call void @refcount_warn_saturate(ptr noundef %45, i32 noundef 3) #17
  br label %74

73:                                               ; preds = %65
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  tail call void @in6_dev_finish_destroy(ptr noundef nonnull %42) #17
  br label %74

74:                                               ; preds = %73, %72, %70, %55
  %75 = phi i1 [ true, %55 ], [ %66, %70 ], [ %66, %72 ], [ %66, %73 ]
  %76 = getelementptr inbounds %struct.netdev_notifier_change_info, ptr %2, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, 128
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  tail call void @neigh_changeaddr(ptr noundef nonnull @nd_tbl, ptr noundef %4) #17
  br label %81

81:                                               ; preds = %80, %74
  br i1 %75, label %82, label %92

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 6
  %84 = load volatile i32, ptr %83, align 4
  %85 = and i32 %84, 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = tail call i32 @neigh_carrier_down(ptr noundef nonnull @nd_tbl, ptr noundef %4) #17
  br label %92

89:                                               ; preds = %3
  %90 = tail call i32 @neigh_ifdown(ptr noundef nonnull @nd_tbl, ptr noundef %4) #17
  tail call void @fib6_run_gc(i32 noundef 0, ptr noundef nonnull @init_net, i1 noundef zeroext false) #17
  br label %92

91:                                               ; preds = %3
  tail call fastcc void @ndisc_send_unsol_na(ptr noundef %4)
  br label %92

92:                                               ; preds = %91, %89, %87, %82, %81, %39, %38, %36, %21, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_changeaddr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib6_run_gc(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ndisc_send_unsol_na(ptr noundef %0) unnamed_addr #1 {
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !9
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 69
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.inet6_dev, ptr %3, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #17, !srcloc !10
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #17, !srcloc !11
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10, !prof !12

10:                                               ; preds = %5
  %11 = add i32 %8, 1
  %12 = or i32 %11, %8
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %17, label %14, !prof !13

14:                                               ; preds = %10, %5
  %15 = phi i32 [ 2, %5 ], [ 1, %10 ]
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef %15) #17
  br label %17

16:                                               ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  br label %45

17:                                               ; preds = %14, %10
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !14
  %18 = getelementptr inbounds %struct.inet6_dev, ptr %3, i32 0, i32 24
  tail call void @_raw_read_lock_bh(ptr noundef %18) #17
  %19 = getelementptr inbounds %struct.inet6_dev, ptr %3, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %37, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.inet6_dev, ptr %3, i32 0, i32 32
  br label %24

24:                                               ; preds = %34, %22
  %25 = phi ptr [ %20, %22 ], [ %35, %34 ]
  %26 = getelementptr i8, ptr %25, i32 -88
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 68
  %29 = icmp eq i32 %28, 64
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = getelementptr i8, ptr %25, i32 -132
  %32 = load i32, ptr %23, align 4
  %33 = icmp ne i32 %32, 0
  tail call void @ndisc_send_na(ptr noundef %0, ptr noundef nonnull @in6addr_linklocal_allnodes, ptr noundef %31, i1 noundef zeroext %33, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %34

34:                                               ; preds = %30, %24
  %35 = load ptr, ptr %25, align 4
  %36 = icmp eq ptr %35, %19
  br i1 %36, label %37, label %24

37:                                               ; preds = %34, %17
  tail call void @_raw_read_unlock_bh(ptr noundef %18) #17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #17, !srcloc !10
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #17, !srcloc !16
  %39 = extractvalue { i32, i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = icmp sgt i32 %39, 0
  br i1 %42, label %45, label %43, !prof !13

43:                                               ; preds = %41
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 3) #17
  br label %45

44:                                               ; preds = %37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  tail call void @in6_dev_finish_destroy(ptr noundef nonnull %3) #17
  br label %45

45:                                               ; preds = %44, %43, %41, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_carrier_down(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_ifdown(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind readnone }

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
!9 = !{i64 2149092998}
!10 = !{i64 590118, i64 2148080089, i64 2148080115, i64 2148080162, i64 2148080184, i64 2148080212, i64 2148080232}
!11 = !{i64 2148092962, i64 2148092994, i64 2148093023, i64 2148093057, i64 2148093088, i64 2148093111}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2149093215}
!15 = !{i64 2148193184}
!16 = !{i64 2148095319, i64 2148095351, i64 2148095380, i64 2148095414, i64 2148095445, i64 2148095468}
!17 = !{i64 2149042631}
!18 = !{!"auto-init"}
!19 = !{i64 5391706}
!20 = !{i64 495796, i64 495857}
!21 = !{i64 514496}
!22 = !{i64 498813}
!23 = !{i64 2148091504, i64 2148091530, i64 2148091559, i64 2148091593, i64 2148091624, i64 2148091647}
