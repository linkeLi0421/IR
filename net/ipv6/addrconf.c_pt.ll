; ModuleID = '/llk/IR/net/ipv6/addrconf.c_pt.bc'
source_filename = "../net/ipv6/addrconf.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_dev_get_saddr:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_dev_get_saddr\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_dev_get_saddr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_chk_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_chk_addr\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_chk_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_chk_addr_and_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_chk_addr_and_flags\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_chk_addr_and_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_chk_custom_prefix:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_chk_custom_prefix\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_chk_custom_prefix:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_chk_prefix:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_chk_prefix\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_chk_prefix:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_dev_find:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_dev_find\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_dev_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_addrconf_prefix_rcv_add_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22addrconf_prefix_rcv_add_addr\22\09\09\09\09\09"
module asm "__kstrtabns_addrconf_prefix_rcv_add_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_addrconf_add_linklocal:\09\09\09\09\09"
module asm "\09.asciz \09\22addrconf_add_linklocal\22\09\09\09\09\09"
module asm "__kstrtabns_addrconf_add_linklocal:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.10, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.181, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.181 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.rtnl_af_ops = type { %struct.list_head, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.in6_addr = type { %union.anon.132 }
%union.anon.132 = type { [4 x i32] }
%union.anon.188 = type { [64 x i8] }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_params = type { i32, i32 }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.Qdisc = type { ptr, ptr, i32, i32, ptr, ptr, %struct.hlist_node, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, i32, i32, ptr, %struct.sk_buff_head, [16 x i8], %struct.spinlock, %struct.spinlock, %struct.callback_head, %struct.netdevice_tracker, [48 x i8], [0 x i32] }
%struct.qdisc_skb_head = type { ptr, ptr, i32, %struct.spinlock }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [12 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.82, i32, %struct.spinlock }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.neigh_table = type { i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, ptr, ptr, ptr }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, %struct.netdevice_tracker, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.possible_net_t = type {}
%struct.nla_policy = type { i8, i8, i16, %union.anon.84 }
%union.anon.84 = type { i32 }
%struct.sk_buff = type { %union.anon.75, %union.anon.147, %union.anon.148, [48 x i8], %union.anon.149, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.151, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { ptr, ptr, %union.anon.77 }
%union.anon.77 = type { ptr }
%union.anon.147 = type { ptr }
%union.anon.148 = type { i64 }
%union.anon.149 = type { %struct.anon.150 }
%struct.anon.150 = type { i32, ptr }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.153, i32, i32, i32, i16, i16, %union.anon.155, %union.anon.156, %union.anon.157, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.153 = type { i32 }
%union.anon.155 = type { i32 }
%union.anon.156 = type { i32 }
%union.anon.157 = type { i16 }
%struct.inet6_ifaddr = type { %struct.in6_addr, i32, i32, i32, i32, %struct.refcount_struct, %struct.spinlock, i32, i32, i8, i8, i16, i64, i32, i32, %struct.delayed_work, ptr, ptr, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, %struct.callback_head, %struct.in6_addr }
%struct.inet6_dev = type { ptr, %struct.netdevice_tracker, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.ipv6_saddr_score = type { i32, i32, ptr, [1 x i32], i32, i32 }
%struct.ipv6_saddr_dst = type { ptr, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.78, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.146, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.78 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.146 = type { ptr }
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
%struct.ifa6_config = type { ptr, i32, ptr, i32, i32, i32, i32, i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.in6_validator_info = type { %struct.in6_addr, ptr, ptr }
%struct.fib6_info = type { ptr, ptr, ptr, %union.anon.133, i32, %struct.refcount_struct, i32, ptr, %struct.rt6key, i32, %struct.rt6key, %struct.rt6key, i32, i8, i8, i8, i8, i8, i8, %struct.callback_head, ptr, [0 x %struct.fib6_nh] }
%union.anon.133 = type { %struct.list_head }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.fib6_nh = type { %struct.fib_nh_common, i32, ptr, ptr }
%struct.fib_nh_common = type { ptr, %struct.netdevice_tracker, i32, i8, i8, i8, i8, ptr, %union.anon.136, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.136 = type { %struct.in6_addr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.prefix_info = type { i8, i8, i8, i8, i32, i32, i32, %struct.in6_addr }
%struct.prefix_cacheinfo = type { i32, i32 }
%struct.ndisc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fib6_table = type { %struct.hlist_node, i32, %struct.spinlock, %struct.fib6_node, %struct.inet_peer_base, i32, i32 }
%struct.fib6_node = type { ptr, ptr, ptr, ptr, i16, i16, i32, ptr, %struct.callback_head }
%struct.inet_peer_base = type { %struct.rb_root, %struct.seqlock_t, i32 }
%struct.fib6_config = type { i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, i32, ptr, i32, i32, ptr, %struct.nl_info, ptr, i16, i8 }
%struct.nl_info = type { ptr, ptr, i32, i8 }
%struct.ip_tunnel_parm = type { [16 x i8], i32, i16, i16, i32, i32, %struct.iphdr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.in6_ifreq = type { %struct.in6_addr, i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.86 }
%union.anon.86 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.inet6_fill_args = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.if6_iter_state = type { %struct.seq_net_private, i32, i32 }
%struct.seq_net_private = type {}
%struct.ifla_cacheinfo = type { i32, i32, i32, i32 }
%struct.ifa_cacheinfo = type { i32, i32, i32, i32 }
%struct.netdev_notifier_info = type { ptr, ptr }
%struct.netdev_notifier_change_info = type { %struct.netdev_notifier_info, i32 }
%struct.netdev_notifier_changeupper_info = type { %struct.netdev_notifier_info, ptr, i8, i8, ptr }
%struct.in_device = type { ptr, %struct.netdevice_tracker, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.in_ifaddr = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i32, [16 x i8], i32, i32, i32, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.ifmcaddr6 = type { %struct.in6_addr, ptr, ptr, ptr, ptr, i32, i8, [2 x i32], %struct.delayed_work, i32, i32, %struct.refcount_struct, i32, i32, %struct.callback_head }
%struct.ifacaddr6 = type { %struct.in6_addr, ptr, ptr, %struct.hlist_node, i32, %struct.refcount_struct, i32, i32, %struct.callback_head }
%struct.nexthop = type { %struct.rb_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, i8, i8, i8, %struct.refcount_struct, %struct.callback_head, %union.anon.134 }
%union.anon.134 = type { ptr }
%struct.nh_group = type { ptr, i16, i8, i8, i8, i8, i8, ptr, [0 x %struct.nh_grp_entry] }
%struct.nh_grp_entry = type { ptr, i8, %union.anon.138, %struct.list_head, ptr }
%union.anon.138 = type { %struct.anon.140 }
%struct.anon.140 = type { %struct.list_head, i16, i16 }
%struct.nh_info = type { %struct.hlist_node, ptr, i8, i8, i8, %union.anon.135 }
%union.anon.135 = type { %struct.fib_nh }
%struct.fib_nh = type { %struct.fib_nh_common, %struct.hlist_node, ptr, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"net/ipv6/addrconf.c\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"\015IPv6: delayed DAD work was pending while freeing ifa=%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"\014IPv6: Freeing alive inet6 address %p\0A\00", align 1
@__kstrtab_ipv6_dev_get_saddr = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_dev_get_saddr = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_dev_get_saddr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_dev_get_saddr to i32), ptr @__kstrtab_ipv6_dev_get_saddr, ptr @__kstrtabns_ipv6_dev_get_saddr }, section "___ksymtab+ipv6_dev_get_saddr", align 4
@__kstrtab_ipv6_chk_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_chk_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_chk_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_chk_addr to i32), ptr @__kstrtab_ipv6_chk_addr, ptr @__kstrtabns_ipv6_chk_addr }, section "___ksymtab+ipv6_chk_addr", align 4
@__kstrtab_ipv6_chk_addr_and_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_chk_addr_and_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_chk_addr_and_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_chk_addr_and_flags to i32), ptr @__kstrtab_ipv6_chk_addr_and_flags, ptr @__kstrtabns_ipv6_chk_addr_and_flags }, section "___ksymtab+ipv6_chk_addr_and_flags", align 4
@__kstrtab_ipv6_chk_custom_prefix = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_chk_custom_prefix = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_chk_custom_prefix = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_chk_custom_prefix to i32), ptr @__kstrtab_ipv6_chk_custom_prefix, ptr @__kstrtabns_ipv6_chk_custom_prefix }, section "___ksymtab+ipv6_chk_custom_prefix", align 4
@__kstrtab_ipv6_chk_prefix = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_chk_prefix = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_chk_prefix = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_chk_prefix to i32), ptr @__kstrtab_ipv6_chk_prefix, ptr @__kstrtabns_ipv6_chk_prefix }, section "___ksymtab+ipv6_chk_prefix", align 4
@__kstrtab_ipv6_dev_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_dev_find = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_dev_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_dev_find to i32), ptr @__kstrtab_ipv6_dev_find, ptr @__kstrtabns_ipv6_dev_find }, section "___ksymtab+ipv6_dev_find", align 4
@inet6_addr_lst = internal global [256 x %struct.hlist_head] zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"\016IPv6: %s: IPv6 duplicate address %pI6c used by %pM detected!\0A\00", align 1
@.str.4 = private unnamed_addr constant [80 x i8] c"\016IPv6: %s: privacy stable address generation failed because of DAD conflicts!\0A\00", align 1
@.str.5 = private unnamed_addr constant [75 x i8] c"\016IPv6: %s: generating new stable privacy address because of DAD conflict\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_addrconf_prefix_rcv_add_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_addrconf_prefix_rcv_add_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_addrconf_prefix_rcv_add_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @addrconf_prefix_rcv_add_addr to i32), ptr @__kstrtab_addrconf_prefix_rcv_add_addr, ptr @__kstrtabns_addrconf_prefix_rcv_add_addr }, section "___ksymtab_gpl+addrconf_prefix_rcv_add_addr", align 4
@.str.6 = private unnamed_addr constant [54 x i8] c"\014IPv6: addrconf: prefix option has invalid lifetime\0A\00", align 1
@__const.addrconf_add_ifaddr.cfg = private unnamed_addr constant { ptr, i32, ptr, i32, i32, i32, i32, i16, [2 x i8] } { ptr null, i32 0, ptr null, i32 0, i32 128, i32 -1, i32 -1, i16 0, [2 x i8] zeroinitializer }, align 4
@__kstrtab_addrconf_add_linklocal = external dso_local constant [0 x i8], align 1
@__kstrtabns_addrconf_add_linklocal = external dso_local constant [0 x i8], align 1
@__ksymtab_addrconf_add_linklocal = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @addrconf_add_linklocal to i32), ptr @__kstrtab_addrconf_add_linklocal, ptr @__kstrtabns_addrconf_add_linklocal }, section "___ksymtab_gpl+addrconf_add_linklocal", align 4
@if6_proc_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @if6_proc_net_init, ptr null, ptr @if6_proc_net_exit, ptr null, ptr null, i32 0 }, align 4
@.str.7 = private unnamed_addr constant [56 x i8] c"\012IPv6: %s: cannot initialize default policy table: %d\0A\00", align 1
@__func__.addrconf_init = private unnamed_addr constant [14 x i8] c"addrconf_init\00", align 1
@addrconf_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @addrconf_init_net, ptr null, ptr @addrconf_exit_net, ptr null, ptr null, i32 0 }, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"ipv6_addrconf\00", align 1
@addrconf_wq = internal unnamed_addr global ptr null, align 4
@init_net = external dso_local global %struct.net, align 64
@ipv6_dev_notf = internal global %struct.notifier_block { ptr @addrconf_notify, ptr null, i32 0 }, align 4
@inet6_ops = internal global %struct.rtnl_af_ops { %struct.list_head zeroinitializer, i32 10, ptr @inet6_fill_link_af, ptr @inet6_get_link_af_size, ptr @inet6_validate_link_af, ptr @inet6_set_link_af, ptr null, ptr null }, section ".data..read_mostly", align 4
@addrconf_hash_lock = internal global %struct.spinlock zeroinitializer, align 4
@addr_chk_work = internal global %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @addr_chk_work, i64 4), ptr getelementptr (i8, ptr @addr_chk_work, i64 4) }, ptr @addrconf_verify_work }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152 }, ptr null, i32 0 }, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"include/net/netlink.h\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.11 = private unnamed_addr constant [34 x i8] c"\016IPv6: %s: IPv6 being disabled!\0A\00", align 1
@in6addr_any = external dso_local constant %struct.in6_addr, align 4
@.str.12 = private unnamed_addr constant [38 x i8] c"\016IPv6: %s: use_tempaddr is disabled\0A\00", align 1
@__func__.ipv6_create_tempaddr = private unnamed_addr constant [21 x i8] c"ipv6_create_tempaddr\00", align 1
@.str.13 = private unnamed_addr constant [77 x i8] c"\014IPv6: %s: regeneration time exceeded - disabled temporary address support\0A\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"\016IPv6: %s: retry temporary address regeneration\0A\00", align 1
@ipv6_del_addr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", align 1
@in6addr_linklocal_allnodes = external dso_local constant %struct.in6_addr, align 4
@in6addr_linklocal_allrouters = external dso_local constant %struct.in6_addr, align 4
@__fib6_flush_trees = external dso_local local_unnamed_addr global ptr, align 4
@addrconf_verify_rtnl.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@inet6_addr_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@addrconf_add_dev.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ipv6_find_idev.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ipv6_mc_config.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ipv6_generate_stable_address.lock = internal global %struct.spinlock zeroinitializer, align 4
@ipv6_generate_stable_address.digest = internal global [5 x i32] zeroinitializer, align 4
@ipv6_generate_stable_address.workspace = internal global [16 x i32] zeroinitializer, align 4
@ipv6_generate_stable_address.data = internal global %union.anon.188 zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"if_inet6\00", align 1
@if6_seq_ops = internal constant %struct.seq_operations { ptr @if6_seq_start, ptr @if6_seq_stop, ptr @if6_seq_next, ptr @if6_seq_show }, align 4
@.str.19 = private unnamed_addr constant [30 x i8] c"%pi6 %02x %02x %02x %02x %8s\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__ipv6_ifa_notify.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = private unnamed_addr constant [68 x i8] c"\014IPv6: BUG: Address %pI6c on device %s is missing its host route.\0A\00", align 1
@ipv6_devconf = internal global %struct.ipv6_devconf { i32 0, i32 64, i32 1280, i32 1, i32 1, i32 1, i32 1, i32 -1, i32 400, i32 360000, i32 100, i32 0, i32 1000, i32 100, i32 0, i32 604800, i32 86400, i32 3, i32 600, i32 16, i32 1, i32 1024, i32 1, i32 1, i32 0, i32 1, i32 6000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, %struct.ipv6_stable_secret zeroinitializer, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 65535, i32 -1, i8 0, i8 1, ptr null }, section ".data..read_mostly", align 4
@ipv6_devconf_dflt = internal global %struct.ipv6_devconf { i32 0, i32 64, i32 1280, i32 1, i32 1, i32 1, i32 1, i32 -1, i32 400, i32 360000, i32 100, i32 0, i32 1000, i32 100, i32 0, i32 604800, i32 86400, i32 3, i32 600, i32 16, i32 1, i32 1024, i32 1, i32 1, i32 0, i32 1, i32 6000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, %struct.ipv6_stable_secret zeroinitializer, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 65535, i32 -1, i8 0, i8 1, ptr null }, section ".data..read_mostly", align 4
@ipv6_defaults = external dso_local local_unnamed_addr global %struct.ipv6_params, align 4
@.str.21 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@addrconf_sysctl = internal constant [54 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.24, ptr @ipv6_devconf, i32 4, i16 420, ptr null, ptr @addrconf_sysctl_forward, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.25, ptr getelementptr (i8, ptr @ipv6_devconf, i64 4), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr @two_five_five }, %struct.ctl_table { ptr @.str.26, ptr getelementptr (i8, ptr @ipv6_devconf, i64 8), i32 4, i16 420, ptr null, ptr @addrconf_sysctl_mtu, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.27, ptr getelementptr (i8, ptr @ipv6_devconf, i64 12), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.28, ptr getelementptr (i8, ptr @ipv6_devconf, i64 16), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.29, ptr getelementptr (i8, ptr @ipv6_devconf, i64 20), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.30, ptr getelementptr (i8, ptr @ipv6_devconf, i64 24), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.31, ptr getelementptr (i8, ptr @ipv6_devconf, i64 28), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @minus_one, ptr null }, %struct.ctl_table { ptr @.str.32, ptr getelementptr (i8, ptr @ipv6_devconf, i64 32), i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.33, ptr getelementptr (i8, ptr @ipv6_devconf, i64 36), i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.34, ptr getelementptr (i8, ptr @ipv6_devconf, i64 40), i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.35, ptr getelementptr (i8, ptr @ipv6_devconf, i64 44), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.36, ptr getelementptr (i8, ptr @ipv6_devconf, i64 48), i32 4, i16 420, ptr null, ptr @proc_dointvec_ms_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.37, ptr getelementptr (i8, ptr @ipv6_devconf, i64 52), i32 4, i16 420, ptr null, ptr @proc_dointvec_ms_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.38, ptr getelementptr (i8, ptr @ipv6_devconf, i64 56), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.39, ptr getelementptr (i8, ptr @ipv6_devconf, i64 60), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.40, ptr getelementptr (i8, ptr @ipv6_devconf, i64 64), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.41, ptr getelementptr (i8, ptr @ipv6_devconf, i64 68), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.42, ptr getelementptr (i8, ptr @ipv6_devconf, i64 72), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.43, ptr getelementptr (i8, ptr @ipv6_devconf, i64 76), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.44, ptr getelementptr (i8, ptr @ipv6_devconf, i64 80), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.45, ptr getelementptr (i8, ptr @ipv6_devconf, i64 84), i32 4, i16 420, ptr null, ptr @proc_douintvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 8), ptr null }, %struct.ctl_table { ptr @.str.46, ptr getelementptr (i8, ptr @ipv6_devconf, i64 88), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.47, ptr getelementptr (i8, ptr @ipv6_devconf, i64 92), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.48, ptr getelementptr (i8, ptr @ipv6_devconf, i64 100), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.49, ptr getelementptr (i8, ptr @ipv6_devconf, i64 104), i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.50, ptr getelementptr (i8, ptr @ipv6_devconf, i64 108), i32 4, i16 420, ptr null, ptr @addrconf_sysctl_proxy_ndp, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.51, ptr getelementptr (i8, ptr @ipv6_devconf, i64 112), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.52, ptr getelementptr (i8, ptr @ipv6_devconf, i64 120), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.53, ptr getelementptr (i8, ptr @ipv6_devconf, i64 124), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.54, ptr getelementptr (i8, ptr @ipv6_devconf, i64 128), i32 4, i16 420, ptr null, ptr @addrconf_sysctl_disable, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.55, ptr getelementptr (i8, ptr @ipv6_devconf, i64 136), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.56, ptr getelementptr (i8, ptr @ipv6_devconf, i64 140), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.57, ptr getelementptr (i8, ptr @ipv6_devconf, i64 144), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.58, ptr getelementptr (i8, ptr @ipv6_devconf, i64 148), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.59, ptr getelementptr (i8, ptr @ipv6_devconf, i64 116), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.60, ptr getelementptr (i8, ptr @ipv6_devconf, i64 152), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.61, ptr getelementptr (i8, ptr @ipv6_devconf, i64 160), i32 46, i16 384, ptr null, ptr @addrconf_sysctl_stable_secret, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.62, ptr getelementptr (i8, ptr @ipv6_devconf, i64 180), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.63, ptr getelementptr (i8, ptr @ipv6_devconf, i64 96), i32 4, i16 420, ptr null, ptr @addrconf_sysctl_ignore_routes_with_linkdown, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.64, ptr getelementptr (i8, ptr @ipv6_devconf, i64 132), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.65, ptr getelementptr (i8, ptr @ipv6_devconf, i64 156), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.66, ptr getelementptr (i8, ptr @ipv6_devconf, i64 184), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.67, ptr getelementptr (i8, ptr @ipv6_devconf, i64 188), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.68, ptr getelementptr (i8, ptr @ipv6_devconf, i64 192), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.69, ptr getelementptr (i8, ptr @ipv6_devconf, i64 196), i32 4, i16 420, ptr null, ptr @addrconf_sysctl_addr_gen_mode, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.70, ptr getelementptr (i8, ptr @ipv6_devconf, i64 200), i32 4, i16 420, ptr null, ptr @addrconf_sysctl_disable_policy, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.71, ptr getelementptr (i8, ptr @ipv6_devconf, i64 204), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @two_five_five }, %struct.ctl_table { ptr @.str.72, ptr getelementptr (i8, ptr @ipv6_devconf, i64 208), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.73, ptr getelementptr (i8, ptr @ipv6_devconf, i64 220), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.74, ptr getelementptr (i8, ptr @ipv6_devconf, i64 212), i32 4, i16 420, ptr null, ptr @proc_douintvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @ioam6_if_id_max }, %struct.ctl_table { ptr @.str.75, ptr getelementptr (i8, ptr @ipv6_devconf, i64 216), i32 4, i16 420, ptr null, ptr @proc_douintvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.76, ptr getelementptr (i8, ptr @ipv6_devconf, i64 221), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table zeroinitializer], align 4
@.str.23 = private unnamed_addr constant [17 x i8] c"net/ipv6/conf/%s\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"forwarding\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"hop_limit\00", align 1
@sysctl_vals = external dso_local constant [0 x i32], align 4
@two_five_five = internal constant i32 255, align 4
@.str.26 = private unnamed_addr constant [4 x i8] c"mtu\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"accept_ra\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"accept_redirects\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"autoconf\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"dad_transmits\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"router_solicitations\00", align 1
@minus_one = internal global i32 -1, align 4
@.str.32 = private unnamed_addr constant [29 x i8] c"router_solicitation_interval\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"router_solicitation_max_interval\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"router_solicitation_delay\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"force_mld_version\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"mldv1_unsolicited_report_interval\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"mldv2_unsolicited_report_interval\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"use_tempaddr\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"temp_valid_lft\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"temp_prefered_lft\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"regen_max_retry\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"max_desync_factor\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"max_addresses\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"accept_ra_defrtr\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"ra_defrtr_metric\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"accept_ra_min_hop_limit\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"accept_ra_pinfo\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"accept_ra_rtr_pref\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"router_probe_interval\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"proxy_ndp\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"accept_source_route\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"optimistic_dad\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"use_optimistic\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"disable_ipv6\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"accept_dad\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"force_tllao\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"ndisc_notify\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"suppress_frag_ndisc\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"accept_ra_from_local\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"accept_ra_mtu\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"stable_secret\00", align 1
@.str.62 = private unnamed_addr constant [19 x i8] c"use_oif_addrs_only\00", align 1
@.str.63 = private unnamed_addr constant [28 x i8] c"ignore_routes_with_linkdown\00", align 1
@.str.64 = private unnamed_addr constant [29 x i8] c"drop_unicast_in_l2_multicast\00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c"drop_unsolicited_na\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"keep_addr_on_down\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"seg6_enabled\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"enhanced_dad\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"addr_gen_mode\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"disable_policy\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"ndisc_tclass\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"rpl_seg_enabled\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c"ioam6_enabled\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"ioam6_id\00", align 1
@ioam6_if_id_max = internal global i32 65535, align 4
@.str.75 = private unnamed_addr constant [14 x i8] c"ioam6_id_wide\00", align 1
@.str.76 = private unnamed_addr constant [22 x i8] c"ndisc_evict_nocarrier\00", align 1
@in6addr_interfacelocal_allrouters = external dso_local constant %struct.in6_addr, align 4
@in6addr_sitelocal_allrouters = external dso_local constant %struct.in6_addr, align 4
@.str.77 = private unnamed_addr constant [57 x i8] c"\016IPv6: ADDRCONF(NETDEV_CHANGE): %s: link becomes ready\0A\00", align 1
@.str.78 = private unnamed_addr constant [68 x i8] c"\016IPv6: %s: Failed to add prefix route for address %pI6c; dropping\0A\00", align 1
@noop_qdisc = external dso_local global %struct.Qdisc, align 64
@addrconf_sit_config.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@add_v4_addrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@init_loopback.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@in6addr_loopback = external dso_local constant %struct.in6_addr, align 4
@addrconf_dev_config.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@addrconf_type_change.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"%pI6\00", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@ipv6_add_dev.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nd_tbl = external dso_local global %struct.neigh_table, align 4
@.str.80 = private unnamed_addr constant [35 x i8] c"\016IPv6: %s: Disabled Multicast RS\0A\00", align 1
@in6addr_interfacelocal_allnodes = external dso_local constant %struct.in6_addr, align 4
@.str.81 = private unnamed_addr constant [33 x i8] c"IFLA_INET6_RA_MTU can not be set\00", align 1
@inet6_af_policy = internal constant <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { ptr } } }> <{ %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.84 zeroinitializer }, { i8, i8, i16, { ptr } } { i8 17, i8 0, i16 0, { ptr } { ptr @.str.81 } } }>, align 4
@inet6_set_iftoken.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@inet6_set_iftoken.__msg = internal constant [25 x i8] c"ipv6: Device is loopback\00", align 1
@inet6_set_iftoken.__msg.83 = internal constant [45 x i8] c"ipv6: Device does not do neighbour discovery\00", align 1
@inet6_set_iftoken.__msg.84 = internal constant [49 x i8] c"ipv6: Router advertisement is disabled on device\00", align 1
@inet6_set_iftoken.__msg.85 = internal constant [42 x i8] c"Router solicitation is disabled on device\00", align 1
@inet6_valid_dump_ifinfo.__msg = internal constant [43 x i8] c"ipv6: Invalid header for link dump request\00", align 1
@inet6_valid_dump_ifinfo.__msg.86 = internal constant [32 x i8] c"ipv6: Invalid data after header\00", align 1
@inet6_valid_dump_ifinfo.__msg.87 = internal constant [48 x i8] c"ipv6: Invalid values in header for dump request\00", align 1
@ifa_ipv6_policy = internal constant [11 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.84 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.84 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 14, i8 0, i16 0, %union.anon.84 zeroinitializer }], align 4
@inet6_rtm_newaddr.__msg = internal constant [56 x i8] c"IFA_F_NODAD and IFA_F_OPTIMISTIC are mutually exclusive\00", align 1
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@inet6_addr_modify.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@inet6_rtm_valid_getaddr_req.__msg = internal constant [45 x i8] c"ipv6: Invalid header for get address request\00", align 1
@inet6_rtm_valid_getaddr_req.__msg.88 = internal constant [55 x i8] c"ipv6: Invalid values in header for get address request\00", align 1
@inet6_rtm_valid_getaddr_req.__msg.89 = internal constant [51 x i8] c"ipv6: Unsupported attribute in get address request\00", align 1
@inet6_valid_dump_ifaddr_req.__msg = internal constant [46 x i8] c"ipv6: Invalid header for address dump request\00", align 1
@inet6_valid_dump_ifaddr_req.__msg.90 = internal constant [56 x i8] c"ipv6: Invalid values in header for address dump request\00", align 1
@inet6_valid_dump_ifaddr_req.__msg.91 = internal constant [42 x i8] c"ipv6: Invalid target network namespace id\00", align 1
@inet6_valid_dump_ifaddr_req.__msg.92 = internal constant [44 x i8] c"ipv6: Unsupported attribute in dump request\00", align 1
@inet6_netconf_valid_get_req.__msg = internal constant [45 x i8] c"ipv6: Invalid header for netconf get request\00", align 1
@devconf_ipv6_policy = internal constant [9 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.84 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.84 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.84 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], align 4
@inet6_netconf_valid_get_req.__msg.93 = internal constant [51 x i8] c"ipv6: Unsupported attribute in netconf get request\00", align 1
@inet6_netconf_dump_devconf.__msg = internal constant [46 x i8] c"ipv6: Invalid header for netconf dump request\00", align 1
@inet6_netconf_dump_devconf.__msg.94 = internal constant [56 x i8] c"ipv6: Invalid data after header in netconf dump request\00", align 1
@addrconf_ifdown.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_addrconf_add_linklocal, ptr @__ksymtab_addrconf_prefix_rcv_add_addr, ptr @__ksymtab_ipv6_chk_addr, ptr @__ksymtab_ipv6_chk_addr_and_flags, ptr @__ksymtab_ipv6_chk_custom_prefix, ptr @__ksymtab_ipv6_chk_prefix, ptr @__ksymtab_ipv6_dev_find, ptr @__ksymtab_ipv6_dev_get_saddr], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet6_netconf_notify_devconf(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq i32 %2, -1
  %7 = icmp eq i32 %2, 2
  %8 = or i1 %6, %7
  %9 = select i1 %8, i32 20, i32 12
  switch i32 %2, label %12 [
    i32 -1, label %10
    i32 5, label %10
  ]

10:                                               ; preds = %5, %5
  %11 = add nuw nsw i32 %9, 8
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi i32 [ %11, %10 ], [ %9, %5 ]
  switch i32 %2, label %16 [
    i32 -1, label %14
    i32 6, label %14
  ]

14:                                               ; preds = %12, %12
  %15 = add nuw nsw i32 %13, 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %15, %14 ], [ %13, %12 ]
  %18 = add nuw nsw i32 %17, 19
  %19 = and i32 %18, -4
  %20 = tail call ptr @__alloc_skb(i32 noundef %19, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #22
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %16
  %23 = tail call fastcc i32 @inet6_netconf_fill_devconf(ptr noundef nonnull %20, i32 noundef %3, ptr noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef %1, i32 noundef 0, i32 noundef %2)
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = icmp eq i32 %23, -90
  br i1 %26, label %27, label %28, !prof !9

27:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 592, i32 noundef 9, ptr noundef null) #22
  br label %28

28:                                               ; preds = %27, %25
  tail call void @kfree_skb_reason(ptr noundef nonnull %20, i32 noundef 0) #22
  br label %30

29:                                               ; preds = %22
  tail call void @rtnl_notify(ptr noundef nonnull %20, ptr noundef %0, i32 noundef 0, i32 noundef 25, ptr noundef null, i32 noundef 3264) #22
  br label %32

30:                                               ; preds = %28, %16
  %31 = phi i32 [ %23, %28 ], [ -105, %16 ]
  tail call void @rtnl_set_sk_err(ptr noundef %0, i32 noundef 25, i32 noundef %31) #22
  br label %32

32:                                               ; preds = %30, %29
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @inet6_netconf_fill_devconf(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %69

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %20 = load ptr, ptr %19, align 8
  %21 = ptrtoint ptr %18 to i32
  %22 = ptrtoint ptr %20 to i32
  %23 = sub i32 %21, %22
  %24 = icmp slt i32 %23, 20
  br i1 %24, label %69, label %25, !prof !9

25:                                               ; preds = %16
  %26 = tail call ptr @__nlmsg_put(ptr noundef %0, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 1, i32 noundef %6) #22
  %27 = icmp eq ptr %26, null
  br i1 %27, label %69, label %28

28:                                               ; preds = %25
  %29 = getelementptr i8, ptr %26, i32 16
  store i8 10, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #22
  store i32 %1, ptr %12, align 4
  %30 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #22
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %58, label %32

32:                                               ; preds = %28
  %33 = icmp eq ptr %2, null
  br i1 %33, label %53, label %34

34:                                               ; preds = %32
  switch i32 %7, label %53 [
    i32 -1, label %35
    i32 2, label %35
    i32 5, label %41
    i32 6, label %48
  ]

35:                                               ; preds = %34, %34
  %36 = load i32, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #22
  store i32 %36, ptr %11, align 4
  %37 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #22
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %35
  %40 = icmp eq i32 %7, -1
  br i1 %40, label %41, label %53

41:                                               ; preds = %39, %34
  %42 = getelementptr inbounds %struct.ipv6_devconf, ptr %2, i32 0, i32 27
  %43 = load i32, ptr %42, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #22
  store i32 %43, ptr %10, align 4
  %44 = call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #22
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %41
  %47 = icmp eq i32 %7, -1
  br i1 %47, label %48, label %53

48:                                               ; preds = %46, %34
  %49 = getelementptr inbounds %struct.ipv6_devconf, ptr %2, i32 0, i32 24
  %50 = load i32, ptr %49, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  store i32 %50, ptr %9, align 4
  %51 = call i32 @nla_put(ptr noundef %0, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48, %46, %39, %34, %32
  %54 = load ptr, ptr %19, align 8
  %55 = ptrtoint ptr %54 to i32
  %56 = ptrtoint ptr %26 to i32
  %57 = sub i32 %55, %56
  store i32 %57, ptr %26, align 4
  br label %69

58:                                               ; preds = %48, %41, %35, %28
  %59 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %60 = load ptr, ptr %59, align 4
  %61 = icmp ugt ptr %60, %26
  br i1 %61, label %62, label %64, !prof !9

62:                                               ; preds = %58
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 991, i32 noundef 9, ptr noundef null) #22
  %63 = load ptr, ptr %59, align 4
  br label %64

64:                                               ; preds = %62, %58
  %65 = phi ptr [ %63, %62 ], [ %60, %58 ]
  %66 = ptrtoint ptr %26 to i32
  %67 = ptrtoint ptr %65 to i32
  %68 = sub i32 %66, %67
  call void @skb_trim(ptr noundef %0, i32 noundef %68) #22
  br label %69

69:                                               ; preds = %64, %53, %25, %16, %8
  %70 = phi i32 [ -90, %64 ], [ 0, %53 ], [ -90, %25 ], [ -90, %16 ], [ -90, %8 ]
  ret i32 %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_notify(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_set_sk_err(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet6_ifa_finish_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 18, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !10

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 962, i32 noundef 9, ptr noundef null) #22
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.inet6_dev, ptr %8, i32 0, i32 25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #22, !srcloc !12
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #22, !srcloc !13
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %17, label %15, !prof !10

15:                                               ; preds = %13
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef 3) #22
  br label %17

16:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  tail call void @in6_dev_finish_destroy(ptr noundef %8) #22
  br label %17

17:                                               ; preds = %16, %15, %13
  %18 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 15
  %19 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %18) #22
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %0) #23
  br label %22

22:                                               ; preds = %20, %17
  %23 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 7
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %0) #23
  br label %32

28:                                               ; preds = %22
  %29 = icmp eq ptr %0, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 24
  tail call void @kvfree_call_rcu(ptr noundef %31, ptr noundef nonnull inttoptr (i32 160 to ptr)) #22
  br label %32

32:                                               ; preds = %30, %28, %26
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @in6_dev_put(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #22, !srcloc !12
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #22, !srcloc !13
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %10, label %8, !prof !10

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #22
  br label %10

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  tail call void @in6_dev_finish_destroy(ptr noundef %0) #22
  br label %10

10:                                               ; preds = %9, %8, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipv6_dev_get_saddr(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = alloca [2 x %struct.ipv6_saddr_score], align 4
  %7 = alloca %struct.ipv6_saddr_dst, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #22
  %8 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %8, i8 0, i32 44, i1 false), !annotation !15
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #22
  %9 = tail call i32 @__ipv6_addr_type(ptr noundef %2) #22
  store ptr %2, ptr %7, align 4
  %10 = icmp eq ptr %1, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi i32 [ %13, %11 ], [ 0, %5 ]
  %16 = getelementptr inbounds %struct.ipv6_saddr_dst, ptr %7, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  %17 = icmp eq i32 %9, 0
  %18 = ashr i32 %9, 16
  %19 = select i1 %17, i32 -1, i32 %18
  %20 = getelementptr inbounds %struct.ipv6_saddr_dst, ptr %7, i32 0, i32 2
  store i32 %19, ptr %20, align 4
  %21 = tail call i32 @ipv6_addr_label(ptr noundef %0, ptr noundef %2, i32 noundef %9, i32 noundef %15) #22
  %22 = getelementptr inbounds %struct.ipv6_saddr_dst, ptr %7, i32 0, i32 3
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ipv6_saddr_dst, ptr %7, i32 0, i32 4
  store i32 %3, ptr %23, align 4
  store i32 -1, ptr %6, align 4
  %24 = getelementptr inbounds %struct.ipv6_saddr_score, ptr %6, i32 0, i32 2
  store ptr null, ptr %24, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  br i1 %10, label %41, label %25

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 69
  %27 = load volatile ptr, ptr %26, align 4
  %28 = and i32 %9, 2
  %29 = icmp ne i32 %28, 0
  %30 = icmp slt i32 %19, 3
  %31 = select i1 %29, i1 true, i1 %30
  %32 = icmp eq ptr %27, null
  br i1 %31, label %38, label %33

33:                                               ; preds = %25
  br i1 %32, label %41, label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.inet6_dev, ptr %27, i32 0, i32 32, i32 41
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %39

38:                                               ; preds = %25
  br i1 %32, label %57, label %39

39:                                               ; preds = %38, %34
  %40 = call fastcc i32 @__ipv6_dev_get_saddr(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %27, ptr noundef nonnull %6, i32 noundef 0)
  br label %57

41:                                               ; preds = %34, %33, %14
  %42 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 16
  %43 = load volatile ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, %42
  br i1 %44, label %57, label %45

45:                                               ; preds = %53, %41
  %46 = phi ptr [ %55, %53 ], [ %43, %41 ]
  %47 = phi i32 [ %54, %53 ], [ 0, %41 ]
  %48 = getelementptr i8, ptr %46, i32 428
  %49 = load volatile ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %45
  %52 = call fastcc i32 @__ipv6_dev_get_saddr(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %49, ptr noundef nonnull %6, i32 noundef %47)
  br label %53

53:                                               ; preds = %51, %45
  %54 = phi i32 [ %52, %51 ], [ %47, %45 ]
  %55 = load volatile ptr, ptr %46, align 8
  %56 = icmp eq ptr %55, %42
  br i1 %56, label %57, label %45

57:                                               ; preds = %53, %41, %39, %38
  %58 = phi i32 [ %40, %39 ], [ 0, %38 ], [ 0, %41 ], [ %54, %53 ]
  %59 = getelementptr [2 x %struct.ipv6_saddr_score], ptr %6, i32 0, i32 %58, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %60, i32 16, i1 false)
  br label %63

63:                                               ; preds = %62, %57
  %64 = phi i32 [ 0, %62 ], [ -99, %57 ]
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #22
  ret i32 %64
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_addr_label(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__ipv6_dev_get_saddr(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = sub i32 1, %4
  %7 = getelementptr inbounds %struct.inet6_dev, ptr %2, i32 0, i32 2
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 -132
  %10 = getelementptr %struct.ipv6_saddr_score, ptr %3, i32 %6, i32 2
  store ptr %9, ptr %10, align 4
  %11 = icmp eq ptr %8, %7
  br i1 %11, label %64, label %12

12:                                               ; preds = %5
  %13 = getelementptr %struct.ipv6_saddr_score, ptr %3, i32 %4
  %14 = getelementptr %struct.ipv6_saddr_score, ptr %3, i32 %6
  br label %15

15:                                               ; preds = %54, %12
  %16 = phi ptr [ %62, %54 ], [ %9, %12 ]
  %17 = phi i32 [ %57, %54 ], [ %4, %12 ]
  %18 = phi ptr [ %56, %54 ], [ %14, %12 ]
  %19 = phi ptr [ %55, %54 ], [ %13, %12 ]
  %20 = getelementptr inbounds %struct.inet6_ifaddr, ptr %16, i32 0, i32 8
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 68
  %23 = icmp eq i32 %22, 64
  br i1 %23, label %54, label %24

24:                                               ; preds = %15
  %25 = tail call i32 @__ipv6_addr_type(ptr noundef %16) #22
  %26 = getelementptr inbounds %struct.ipv6_saddr_score, ptr %18, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  %27 = icmp eq i32 %25, 0
  %28 = and i32 %25, 2
  %29 = icmp ne i32 %28, 0
  %30 = or i1 %27, %29
  br i1 %30, label %54, label %31, !prof !9

31:                                               ; preds = %24
  store i32 -1, ptr %18, align 4
  %32 = getelementptr inbounds %struct.ipv6_saddr_score, ptr %18, i32 0, i32 3
  store i32 0, ptr %32, align 4
  br label %33

33:                                               ; preds = %51, %31
  %34 = phi i32 [ 0, %31 ], [ %52, %51 ]
  %35 = tail call fastcc i32 @ipv6_get_saddr_eval(ptr noundef %0, ptr noundef %19, ptr noundef %1, i32 noundef %34)
  %36 = tail call fastcc i32 @ipv6_get_saddr_eval(ptr noundef %0, ptr noundef %18, ptr noundef %1, i32 noundef %34)
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = icmp eq i32 %34, 2
  br i1 %39, label %40, label %54

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.ipv6_saddr_score, ptr %18, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %64, label %54

44:                                               ; preds = %33
  %45 = icmp slt i32 %35, %36
  br i1 %45, label %46, label %51

46:                                               ; preds = %44
  %47 = sub i32 1, %17
  %48 = getelementptr inbounds %struct.ipv6_saddr_score, ptr %18, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.ipv6_saddr_score, ptr %19, i32 0, i32 2
  store ptr %49, ptr %50, align 4
  br label %54

51:                                               ; preds = %44
  %52 = add nuw nsw i32 %34, 1
  %53 = icmp eq i32 %52, 10
  br i1 %53, label %54, label %33

54:                                               ; preds = %51, %46, %40, %38, %24, %15
  %55 = phi ptr [ %19, %24 ], [ %19, %15 ], [ %18, %46 ], [ %19, %40 ], [ %19, %38 ], [ %19, %51 ]
  %56 = phi ptr [ %18, %24 ], [ %18, %15 ], [ %19, %46 ], [ %18, %40 ], [ %18, %38 ], [ %18, %51 ]
  %57 = phi i32 [ %17, %24 ], [ %17, %15 ], [ %47, %46 ], [ %17, %40 ], [ %17, %38 ], [ %17, %51 ]
  %58 = getelementptr inbounds %struct.ipv6_saddr_score, ptr %56, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.inet6_ifaddr, ptr %59, i32 0, i32 19
  %61 = load volatile ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %61, i32 -132
  store ptr %62, ptr %58, align 4
  %63 = icmp eq ptr %61, %7
  br i1 %63, label %64, label %15

64:                                               ; preds = %54, %40, %5
  %65 = phi i32 [ %4, %5 ], [ %17, %40 ], [ %57, %54 ]
  ret i32 %65
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipv6_get_lladdr(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 69
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.inet6_dev, ptr %5, i32 0, i32 24
  tail call void @_raw_read_lock_bh(ptr noundef %8) #22
  %9 = getelementptr inbounds %struct.inet6_dev, ptr %5, i32 0, i32 2
  %10 = getelementptr inbounds %struct.inet6_dev, ptr %5, i32 0, i32 2, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %9
  br i1 %12, label %31, label %13

13:                                               ; preds = %27, %7
  %14 = phi ptr [ %29, %27 ], [ %11, %7 ]
  %15 = getelementptr i8, ptr %14, i32 -82
  %16 = load i16, ptr %15, align 2
  %17 = icmp ugt i16 %16, 32
  br i1 %17, label %31, label %18

18:                                               ; preds = %13
  %19 = icmp eq i16 %16, 32
  br i1 %19, label %20, label %27

20:                                               ; preds = %18
  %21 = getelementptr i8, ptr %14, i32 -88
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, %2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %14, i32 -132
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %1, ptr noundef align 8 dereferenceable(16) %26, i32 16, i1 false) #22
  br label %31

27:                                               ; preds = %20, %18
  %28 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %9
  br i1 %30, label %31, label %13

31:                                               ; preds = %27, %25, %13, %7
  %32 = phi i32 [ 0, %25 ], [ -99, %7 ], [ -99, %27 ], [ -99, %13 ]
  tail call void @_raw_read_unlock_bh(ptr noundef %8) #22
  br label %33

33:                                               ; preds = %31, %3
  %34 = phi i32 [ %32, %31 ], [ -99, %3 ]
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipv6_chk_addr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq ptr %2, null
  %6 = tail call fastcc ptr @__ipv6_chk_addr_and_flags(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %5, i32 noundef %3, i32 noundef 64) #22
  %7 = icmp ne ptr %6, null
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipv6_chk_addr_and_flags(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = tail call fastcc ptr @__ipv6_chk_addr_and_flags(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5)
  %8 = icmp ne ptr %7, null
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__ipv6_chk_addr_and_flags(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = load i32, ptr %1, align 4
  %8 = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = xor i32 %9, %7
  %11 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = xor i32 %10, %12
  %14 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = xor i32 %13, %15
  %17 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 26
  %18 = load i32, ptr %17, align 4
  %19 = xor i32 %16, %18
  %20 = mul i32 %19, 1640531527
  %21 = lshr i32 %20, 24
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %22 = select i1 %3, ptr null, ptr %2
  %23 = getelementptr [256 x %struct.hlist_head], ptr @inet6_addr_lst, i32 0, i32 %21
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  %26 = getelementptr i8, ptr %24, i32 -124
  %27 = icmp eq ptr %26, null
  %28 = or i1 %25, %27
  br i1 %28, label %82, label %29

29:                                               ; preds = %6
  %30 = load i32, ptr %1, align 4
  %31 = load i32, ptr %8, align 4
  %32 = load i32, ptr %11, align 4
  %33 = load i32, ptr %14, align 4
  %34 = icmp eq ptr %22, null
  %35 = icmp ne i32 %4, 0
  br label %36

36:                                               ; preds = %75, %29
  %37 = phi ptr [ %26, %29 ], [ %79, %75 ]
  %38 = getelementptr inbounds %struct.inet6_ifaddr, ptr %37, i32 0, i32 16
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.inet6_ifaddr, ptr %37, i32 0, i32 8
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 4
  %44 = icmp eq i32 %43, 0
  %45 = and i32 %42, -65
  %46 = select i1 %44, i32 %42, i32 %45
  %47 = load i32, ptr %37, align 4
  %48 = xor i32 %30, %47
  %49 = getelementptr [4 x i32], ptr %37, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = xor i32 %31, %50
  %52 = or i32 %51, %48
  %53 = getelementptr [4 x i32], ptr %37, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = xor i32 %32, %54
  %56 = or i32 %52, %55
  %57 = getelementptr [4 x i32], ptr %37, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = xor i32 %33, %58
  %60 = or i32 %56, %59
  %61 = icmp eq i32 %60, 0
  %62 = and i32 %46, %5
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %65, label %75

65:                                               ; preds = %36
  %66 = icmp eq ptr %40, %22
  %67 = or i1 %34, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.inet6_ifaddr, ptr %37, i32 0, i32 11
  %70 = load i16, ptr %69, align 2
  %71 = and i16 %70, 48
  %72 = icmp ne i16 %71, 0
  %73 = or i1 %35, %72
  br i1 %73, label %75, label %74

74:                                               ; preds = %68, %65
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  br label %83

75:                                               ; preds = %68, %36
  %76 = getelementptr inbounds %struct.inet6_ifaddr, ptr %37, i32 0, i32 18
  %77 = load volatile ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  %79 = getelementptr i8, ptr %77, i32 -124
  %80 = icmp eq ptr %79, null
  %81 = or i1 %78, %80
  br i1 %81, label %82, label %36

82:                                               ; preds = %75, %6
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  br label %83

83:                                               ; preds = %82, %74
  %84 = phi ptr [ %40, %74 ], [ null, %82 ]
  ret ptr %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ipv6_chk_custom_prefix(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %4 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 69
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %38, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.inet6_dev, ptr %5, i32 0, i32 2
  %9 = lshr i32 %1, 5
  %10 = getelementptr i32, ptr %0, i32 %9
  %11 = load volatile ptr, ptr %8, align 4
  %12 = icmp eq ptr %11, %8
  br i1 %12, label %38, label %13

13:                                               ; preds = %7
  %14 = icmp ult i32 %1, 32
  %15 = shl nuw nsw i32 %9, 2
  %16 = and i32 %1, 31
  %17 = icmp eq i32 %16, 0
  %18 = sub nuw nsw i32 32, %16
  %19 = shl nsw i32 -1, %18
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #22
  br label %21

21:                                               ; preds = %35, %13
  %22 = phi ptr [ %11, %13 ], [ %36, %35 ]
  %23 = getelementptr i8, ptr %22, i32 -132
  br i1 %14, label %27, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @bcmp(ptr %0, ptr %23, i32 %15) #22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24, %21
  br i1 %17, label %38, label %28

28:                                               ; preds = %27
  %29 = load i32, ptr %10, align 4
  %30 = getelementptr i32, ptr %23, i32 %9
  %31 = load i32, ptr %30, align 4
  %32 = xor i32 %31, %29
  %33 = and i32 %32, %20
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %28, %24
  %36 = load volatile ptr, ptr %22, align 4
  %37 = icmp eq ptr %36, %8
  br i1 %37, label %38, label %21

38:                                               ; preds = %35, %28, %27, %7, %3
  %39 = phi i1 [ false, %3 ], [ false, %7 ], [ false, %35 ], [ true, %27 ], [ true, %28 ]
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  ret i1 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipv6_chk_prefix(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %3 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 69
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.inet6_dev, ptr %4, i32 0, i32 2
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %38, label %10

10:                                               ; preds = %35, %6
  %11 = phi ptr [ %36, %35 ], [ %8, %6 ]
  %12 = getelementptr i8, ptr %11, i32 -132
  %13 = getelementptr i8, ptr %11, i32 -116
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 5
  %16 = icmp ult i32 %14, 32
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = shl nuw nsw i32 %15, 2
  %19 = tail call i32 @bcmp(ptr %0, ptr %12, i32 %18) #22
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %17, %10
  %22 = and i32 %14, 31
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %21
  %25 = getelementptr i32, ptr %0, i32 %15
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr i32, ptr %12, i32 %15
  %28 = load i32, ptr %27, align 4
  %29 = xor i32 %28, %26
  %30 = sub nuw nsw i32 32, %22
  %31 = shl nsw i32 -1, %30
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #22
  %33 = and i32 %29, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %24, %17
  %36 = load volatile ptr, ptr %11, align 4
  %37 = icmp eq ptr %36, %7
  br i1 %37, label %38, label %10

38:                                               ; preds = %35, %24, %21, %6, %2
  %39 = phi i32 [ 0, %2 ], [ 0, %6 ], [ 0, %35 ], [ 1, %21 ], [ 1, %24 ]
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ipv6_dev_find(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %2, null
  %5 = tail call fastcc ptr @__ipv6_chk_addr_and_flags(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %4, i32 noundef 1, i32 noundef 64)
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ipv6_get_ifaddr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load i32, ptr %1, align 4
  %6 = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = xor i32 %7, %5
  %9 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = xor i32 %8, %10
  %12 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = xor i32 %11, %13
  %15 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 26
  %16 = load i32, ptr %15, align 4
  %17 = xor i32 %14, %16
  %18 = mul i32 %17, 1640531527
  %19 = lshr i32 %18, 24
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %20 = getelementptr [256 x %struct.hlist_head], ptr @inet6_addr_lst, i32 0, i32 %19
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  %23 = getelementptr i8, ptr %21, i32 -124
  %24 = icmp eq ptr %23, null
  %25 = or i1 %22, %24
  br i1 %25, label %80, label %26

26:                                               ; preds = %4
  %27 = load i32, ptr %1, align 4
  %28 = load i32, ptr %6, align 4
  %29 = load i32, ptr %9, align 4
  %30 = load i32, ptr %12, align 4
  %31 = icmp eq ptr %2, null
  %32 = icmp ne i32 %3, 0
  br label %33

33:                                               ; preds = %73, %26
  %34 = phi ptr [ %23, %26 ], [ %77, %73 ]
  %35 = getelementptr inbounds %struct.inet6_ifaddr, ptr %34, i32 0, i32 16
  %36 = load ptr, ptr %35, align 4
  %37 = load i32, ptr %34, align 4
  %38 = xor i32 %27, %37
  %39 = getelementptr [4 x i32], ptr %34, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = xor i32 %28, %40
  %42 = or i32 %41, %38
  %43 = getelementptr [4 x i32], ptr %34, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = xor i32 %29, %44
  %46 = or i32 %42, %45
  %47 = getelementptr [4 x i32], ptr %34, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = xor i32 %30, %48
  %50 = or i32 %46, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %33
  br i1 %31, label %62, label %53

53:                                               ; preds = %52
  %54 = load ptr, ptr %36, align 4
  %55 = icmp eq ptr %54, %2
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.inet6_ifaddr, ptr %34, i32 0, i32 11
  %58 = load i16, ptr %57, align 2
  %59 = and i16 %58, 48
  %60 = icmp ne i16 %59, 0
  %61 = or i1 %32, %60
  br i1 %61, label %73, label %62

62:                                               ; preds = %56, %53, %52
  %63 = getelementptr inbounds %struct.inet6_ifaddr, ptr %34, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %63) #22, !srcloc !12
  %64 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %63, ptr %63, i32 1, ptr elementtype(i32) %63) #22, !srcloc !18
  %65 = extractvalue { i32, i32, i32 } %64, 0
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67, !prof !9

67:                                               ; preds = %62
  %68 = add i32 %65, 1
  %69 = or i32 %68, %65
  %70 = icmp sgt i32 %69, -1
  br i1 %70, label %80, label %71, !prof !10

71:                                               ; preds = %67, %62
  %72 = phi i32 [ 2, %62 ], [ 1, %67 ]
  tail call void @refcount_warn_saturate(ptr noundef %63, i32 noundef %72) #22
  br label %80

73:                                               ; preds = %56, %33
  %74 = getelementptr inbounds %struct.inet6_ifaddr, ptr %34, i32 0, i32 18
  %75 = load volatile ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  %77 = getelementptr i8, ptr %75, i32 -124
  %78 = icmp eq ptr %77, null
  %79 = or i1 %76, %78
  br i1 %79, label %80, label %33

80:                                               ; preds = %73, %71, %67, %4
  %81 = phi ptr [ %34, %71 ], [ %34, %67 ], [ null, %4 ], [ null, %73 ]
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  ret ptr %81
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @in6_ifa_hold(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #22, !srcloc !12
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #22, !srcloc !18
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !9

6:                                                ; preds = %1
  %7 = add i32 %4, 1
  %8 = or i32 %7, %4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10, !prof !10

10:                                               ; preds = %6, %1
  %11 = phi i32 [ 2, %1 ], [ 1, %6 ]
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef %11) #22
  br label %12

12:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @addrconf_dad_failure(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.in6_addr, align 4
  %4 = alloca %struct.ifa6_config, align 4
  %5 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %7) #22
  %8 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 7
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  tail call void @_raw_spin_unlock_bh(ptr noundef %7) #22
  %12 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #22, !srcloc !12
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #22, !srcloc !13
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = icmp sgt i32 %14, 0
  br i1 %17, label %113, label %18, !prof !10

18:                                               ; preds = %16
  tail call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 3) #22
  br label %113

19:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  tail call void @inet6_ifa_finish_destroy(ptr noundef %1) #22
  br label %113

20:                                               ; preds = %2
  store i32 2, ptr %8, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %7) #22
  %21 = tail call i32 @net_ratelimit() #22
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %5, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = getelementptr i8, ptr %27, i32 %30
  %32 = getelementptr inbounds %struct.ethhdr, ptr %31, i32 0, i32 1
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %25, ptr noundef %1, ptr noundef %32) #23
  br label %34

34:                                               ; preds = %23, %20
  tail call void @_raw_spin_lock_bh(ptr noundef %7) #22
  %35 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 8
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 2048
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %104, label %39

39:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !15
  %40 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 10
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  %43 = getelementptr inbounds i8, ptr %4, i32 28
  store i32 0, ptr %43, align 4, !annotation !15
  store ptr %3, ptr %4, align 4
  %44 = getelementptr inbounds %struct.ifa6_config, ptr %4, i32 0, i32 1
  %45 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 1
  %46 = load i32, ptr %45, align 8
  store i32 %46, ptr %44, align 4
  %47 = getelementptr inbounds %struct.ifa6_config, ptr %4, i32 0, i32 2
  store ptr null, ptr %47, align 4
  %48 = getelementptr inbounds %struct.ifa6_config, ptr %4, i32 0, i32 3
  store i32 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.ifa6_config, ptr %4, i32 0, i32 4
  store i32 %36, ptr %49, align 4
  %50 = getelementptr inbounds %struct.ifa6_config, ptr %4, i32 0, i32 5
  %51 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  store i32 %52, ptr %50, align 4
  %53 = getelementptr inbounds %struct.ifa6_config, ptr %4, i32 0, i32 6
  %54 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 3
  %55 = load i32, ptr %54, align 8
  store i32 %55, ptr %53, align 4
  %56 = getelementptr inbounds %struct.ifa6_config, ptr %4, i32 0, i32 7
  %57 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 11
  %58 = load i16, ptr %57, align 2
  store i16 %58, ptr %56, align 4
  %59 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 28), align 4
  %60 = icmp sgt i32 %59, %42
  br i1 %60, label %68, label %61

61:                                               ; preds = %39
  %62 = call i32 @net_ratelimit() #22
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %103, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %5, align 4
  %66 = load ptr, ptr %65, align 4
  %67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %66) #23
  br label %103

68:                                               ; preds = %39
  %69 = add i8 %41, 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef align 8 dereferenceable(16) %1, i32 16, i1 false)
  %70 = call fastcc i32 @ipv6_generate_stable_address(ptr noundef nonnull %3, i8 noundef zeroext %69, ptr noundef %6)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %103

72:                                               ; preds = %68
  call void @_raw_spin_unlock_bh(ptr noundef %7) #22
  %73 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 32, i32 19
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %72
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %77 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 2
  br label %78

78:                                               ; preds = %78, %76
  %79 = phi i32 [ 0, %76 ], [ %83, %78 ]
  %80 = phi ptr [ %77, %76 ], [ %81, %78 ]
  %81 = load volatile ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, %77
  %83 = add i32 %79, 1
  br i1 %82, label %84, label %78

84:                                               ; preds = %78
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  %85 = load i32, ptr %73, align 4
  %86 = icmp slt i32 %79, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %84, %72
  %88 = call i32 @net_ratelimit() #22
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr %5, align 4
  %92 = load ptr, ptr %91, align 4
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %92) #23
  br label %94

94:                                               ; preds = %90, %87
  %95 = call fastcc ptr @ipv6_add_addr(ptr noundef %6, ptr noundef nonnull %4, i1 noundef zeroext false, ptr noundef null)
  %96 = icmp ugt ptr %95, inttoptr (i32 -4096 to ptr)
  br i1 %96, label %102, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.inet6_ifaddr, ptr %95, i32 0, i32 6
  call void @_raw_spin_lock_bh(ptr noundef %98) #22
  %99 = getelementptr inbounds %struct.inet6_ifaddr, ptr %95, i32 0, i32 10
  store i8 %69, ptr %99, align 1
  %100 = getelementptr inbounds %struct.inet6_ifaddr, ptr %95, i32 0, i32 7
  store i32 0, ptr %100, align 8
  call void @_raw_spin_unlock_bh(ptr noundef %98) #22
  %101 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 29), align 16
  call fastcc void @addrconf_mod_dad_work(ptr noundef %95, i32 noundef %101)
  call fastcc void @in6_ifa_put(ptr noundef %95)
  br label %102

102:                                              ; preds = %97, %94, %84
  call void @_raw_spin_lock_bh(ptr noundef %7) #22
  br label %103

103:                                              ; preds = %102, %68, %64, %61
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  br label %104

104:                                              ; preds = %103, %34
  store i32 3, ptr %8, align 8
  call void @_raw_spin_unlock_bh(ptr noundef %7) #22
  call fastcc void @addrconf_mod_dad_work(ptr noundef %1, i32 noundef 0)
  %105 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 5
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %105) #22, !srcloc !12
  %106 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %105, ptr %105, i32 1, ptr elementtype(i32) %105) #22, !srcloc !13
  %107 = extractvalue { i32, i32, i32 } %106, 0
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %112, label %109

109:                                              ; preds = %104
  %110 = icmp sgt i32 %107, 0
  br i1 %110, label %113, label %111, !prof !10

111:                                              ; preds = %109
  call void @refcount_warn_saturate(ptr noundef %105, i32 noundef 3) #22
  br label %113

112:                                              ; preds = %104
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  call void @inet6_ifa_finish_destroy(ptr noundef %1) #22
  br label %113

113:                                              ; preds = %112, %111, %109, %19, %18, %16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @in6_ifa_put(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #22, !srcloc !12
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #22, !srcloc !13
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %10, label %8, !prof !10

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #22
  br label %10

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  tail call void @inet6_ifa_finish_destroy(ptr noundef %0)
  br label %10

10:                                               ; preds = %9, %8, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ipv6_generate_stable_address(ptr nocapture noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [4 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  %5 = getelementptr inbounds %struct.inet6_dev, ptr %2, i32 0, i32 32, i32 40
  %6 = load i8, ptr %5, align 4, !range !19
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.inet6_dev, ptr %2, i32 0, i32 32, i32 40, i32 1
  br label %17

10:                                               ; preds = %3
  %11 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 3), align 4
  %12 = getelementptr inbounds %struct.ipv6_devconf, ptr %11, i32 0, i32 40
  %13 = load i8, ptr %12, align 4, !range !19
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %53, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ipv6_devconf, ptr %11, i32 0, i32 40, i32 1
  br label %17

17:                                               ; preds = %15, %8
  %18 = phi ptr [ %16, %15 ], [ %9, %8 ]
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef align 4 dereferenceable(16) %18, i32 16, i1 false)
  %19 = getelementptr [4 x i32], ptr %0, i32 0, i32 1
  br label %20

20:                                               ; preds = %45, %17
  %21 = phi i8 [ %1, %17 ], [ %46, %45 ]
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @ipv6_generate_stable_address.lock) #22
  tail call void @sha1_init(ptr noundef nonnull @ipv6_generate_stable_address.digest) #22
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) @ipv6_generate_stable_address.data, i8 0, i32 64, i1 false)
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) @ipv6_generate_stable_address.workspace, i8 0, i32 64, i1 false)
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 49
  %24 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 51
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 getelementptr inbounds (%union.anon.188, ptr @ipv6_generate_stable_address.data, i32 0, i32 0, i32 24), ptr align 8 %23, i32 %26, i1 false)
  %27 = load i32, ptr %0, align 4
  store i32 %27, ptr getelementptr inbounds (%union.anon.188, ptr @ipv6_generate_stable_address.data, i32 0, i32 0, i32 16), align 1
  %28 = load i32, ptr %19, align 4
  store i32 %28, ptr getelementptr inbounds (%union.anon.188, ptr @ipv6_generate_stable_address.data, i32 0, i32 0, i32 20), align 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) @ipv6_generate_stable_address.data, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  store i8 %21, ptr getelementptr inbounds (%union.anon.188, ptr @ipv6_generate_stable_address.data, i32 0, i32 0, i32 56), align 1
  tail call void @sha1_transform(ptr noundef nonnull @ipv6_generate_stable_address.digest, ptr noundef nonnull @ipv6_generate_stable_address.data, ptr noundef nonnull @ipv6_generate_stable_address.workspace) #22
  %29 = load i32, ptr %0, align 4
  %30 = load i32, ptr %19, align 4
  %31 = load i32, ptr @ipv6_generate_stable_address.digest, align 4
  %32 = load i32, ptr getelementptr inbounds ([5 x i32], ptr @ipv6_generate_stable_address.digest, i32 0, i32 1), align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ipv6_generate_stable_address.lock) #22
  %33 = or i32 %32, %31
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %20
  %36 = icmp eq i32 %31, -10616830
  %37 = and i32 %32, 254
  %38 = icmp eq i32 %37, 254
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = icmp eq i32 %31, -3
  %42 = and i32 %32, -2130706433
  %43 = icmp eq i32 %42, -2130706433
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %50

45:                                               ; preds = %40, %35, %20
  %46 = add i8 %21, 1
  %47 = zext i8 %46 to i32
  %48 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 28), align 4
  %49 = icmp slt i32 %48, %47
  br i1 %49, label %53, label %20

50:                                               ; preds = %40
  %51 = getelementptr inbounds i8, ptr %0, i32 12
  %52 = getelementptr inbounds i8, ptr %0, i32 8
  store i32 %29, ptr %0, align 4
  store i32 %30, ptr %19, align 4
  store i32 %31, ptr %52, align 4
  store i32 %32, ptr %51, align 4
  br label %53

53:                                               ; preds = %50, %45, %10
  %54 = phi i32 [ 0, %50 ], [ -1, %10 ], [ -1, %45 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ipv6_add_addr(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.in6_validator_info, align 4
  %6 = select i1 %2, i32 3264, i32 2592
  %7 = load ptr, ptr %1, align 4
  %8 = tail call i32 @__ipv6_addr_type(ptr noundef %7) #22
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %160, label %11

11:                                               ; preds = %4
  %12 = and i32 %8, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.ifa6_config, ptr %1, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 1024
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %160, label %19

19:                                               ; preds = %14, %11
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 14
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 15
  %27 = load i64, ptr %26, align 16
  %28 = and i64 %27, 262144
  %29 = icmp ne i64 %28, 0
  %30 = and i32 %8, 16
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %33, label %160

33:                                               ; preds = %25, %19
  %34 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 27
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %146

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 32, i32 32
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %146

41:                                               ; preds = %37
  br i1 %2, label %42, label %52

42:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
  %43 = load ptr, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef align 4 dereferenceable(16) %43, i32 16, i1 false)
  %44 = getelementptr inbounds %struct.in6_validator_info, ptr %5, i32 0, i32 1
  store ptr %0, ptr %44, align 4
  %45 = getelementptr inbounds %struct.in6_validator_info, ptr %5, i32 0, i32 2
  store ptr %3, ptr %45, align 4
  %46 = call i32 @inet6addr_validator_notifier_call_chain(i32 noundef 1, ptr noundef nonnull %5) #22
  %47 = and i32 %46, -32769
  %48 = icmp sgt i32 %47, 1
  %49 = sub i32 1, %47
  %50 = icmp slt i32 %49, 0
  %51 = and i1 %48, %50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  br i1 %51, label %146, label %52

52:                                               ; preds = %42, %41
  %53 = or i32 %6, 4194560
  %54 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %55 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %54, i32 noundef %53, i32 noundef 184) #24
  %56 = icmp eq ptr %55, null
  br i1 %56, label %146, label %57

57:                                               ; preds = %52
  %58 = load ptr, ptr %1, align 4
  %59 = call ptr @addrconf_f6i_alloc(ptr noundef nonnull @init_net, ptr noundef %0, ptr noundef %58, i1 noundef zeroext false, i32 noundef %6) #22
  %60 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %142, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %63 = getelementptr inbounds %struct.ipv6_devconf, ptr %62, i32 0, i32 46
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 32, i32 46
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66, %61
  %71 = getelementptr inbounds %struct.fib6_info, ptr %59, i32 0, i32 18
  %72 = load i8, ptr %71, align 1
  %73 = or i8 %72, 4
  store i8 %73, ptr %71, align 1
  br label %74

74:                                               ; preds = %70, %66
  %75 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 31
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.neigh_parms, ptr %76, i32 0, i32 12
  store i32 -1, ptr %77, align 4
  %78 = load ptr, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %55, ptr noundef align 4 dereferenceable(16) %78, i32 16, i1 false)
  %79 = getelementptr inbounds %struct.ifa6_config, ptr %1, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.inet6_ifaddr, ptr %55, i32 0, i32 25
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %83, ptr noundef nonnull align 4 dereferenceable(16) %80, i32 16, i1 false)
  br label %84

84:                                               ; preds = %82, %74
  %85 = getelementptr inbounds %struct.inet6_ifaddr, ptr %55, i32 0, i32 6
  store i32 0, ptr %85, align 4
  %86 = getelementptr inbounds %struct.inet6_ifaddr, ptr %55, i32 0, i32 15
  store i32 -32, ptr %86, align 8
  %87 = getelementptr inbounds %struct.inet6_ifaddr, ptr %55, i32 0, i32 15, i32 0, i32 1
  store volatile ptr %87, ptr %87, align 4
  %88 = getelementptr inbounds %struct.inet6_ifaddr, ptr %55, i32 0, i32 15, i32 0, i32 1, i32 1
  store ptr %87, ptr %88, align 8
  %89 = getelementptr inbounds %struct.inet6_ifaddr, ptr %55, i32 0, i32 15, i32 0, i32 2
  store ptr @addrconf_dad_work, ptr %89, align 4
  %90 = getelementptr inbounds %struct.inet6_ifaddr, ptr %55, i32 0, i32 15, i32 1
  call void @init_timer_key(ptr noundef %90, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #22
  %91 = getelementptr inbounds %struct.inet6_ifaddr, ptr %55, i32 0, i32 18
  store ptr null, ptr %91, align 4
  %92 = getelementptr inbounds %struct.inet6_ifaddr, ptr %55, i32 0, i32 18, i32 1
  store ptr null, ptr %92, align 8
  %93 = getelementptr inbounds %struct.ifa6_config, ptr %1, i32 0, i32 7
  %94 = load i16, ptr %93, align 4
  %95 = getelementptr inbounds %struct.inet6_ifaddr, ptr %55, i32 0, i32 11
  store i16 %94, ptr %95, align 2
  %96 = getelementptr inbounds %struct.ifa6_config, ptr %1, i32 0, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr inbounds %struct.inet6_ifaddr, ptr %55, i32 0, i32 1
  store i32 %97, ptr %98, align 8
  %99 = getelementptr inbounds %struct.ifa6_config, ptr %1, i32 0, i32 3
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr inbounds %struct.inet6_ifaddr, ptr %55, i32 0, i32 2
  store i32 %100, ptr %101, align 4
  %102 = getelementptr inbounds %struct.ifa6_config, ptr %1, i32 0, i32 4
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds %struct.inet6_ifaddr, ptr %55, i32 0, i32 8
  %105 = shl i32 %103, 5
  %106 = and i32 %105, 64
  %107 = xor i32 %106, 64
  %108 = or i32 %107, %103
  store i32 %108, ptr %104, align 4
  %109 = getelementptr inbounds %struct.ifa6_config, ptr %1, i32 0, i32 6
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr inbounds %struct.inet6_ifaddr, ptr %55, i32 0, i32 3
  store i32 %110, ptr %111, align 8
  %112 = getelementptr inbounds %struct.ifa6_config, ptr %1, i32 0, i32 5
  %113 = load i32, ptr %112, align 4
  %114 = getelementptr inbounds %struct.inet6_ifaddr, ptr %55, i32 0, i32 4
  store i32 %113, ptr %114, align 4
  %115 = load volatile i32, ptr @jiffies, align 64
  %116 = getelementptr inbounds %struct.inet6_ifaddr, ptr %55, i32 0, i32 14
  store i32 %115, ptr %116, align 4
  %117 = getelementptr inbounds %struct.inet6_ifaddr, ptr %55, i32 0, i32 13
  store i32 %115, ptr %117, align 8
  %118 = getelementptr inbounds %struct.inet6_ifaddr, ptr %55, i32 0, i32 23
  store i8 0, ptr %118, align 4
  %119 = getelementptr inbounds %struct.inet6_ifaddr, ptr %55, i32 0, i32 17
  store ptr %59, ptr %119, align 8
  %120 = getelementptr inbounds %struct.inet6_ifaddr, ptr %55, i32 0, i32 16
  store ptr %0, ptr %120, align 4
  call fastcc void @in6_dev_hold(ptr noundef %0)
  %121 = getelementptr inbounds %struct.inet6_ifaddr, ptr %55, i32 0, i32 5
  store volatile i32 1, ptr %121, align 8
  %122 = tail call ptr @llvm.thread.pointer() #22
  %123 = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 1
  %124 = load volatile i32, ptr %123, align 4
  %125 = add i32 %124, 512
  store volatile i32 %125, ptr %123, align 4
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !20
  %126 = load ptr, ptr %0, align 4
  %127 = call fastcc i32 @ipv6_add_addr_hash(ptr noundef %126, ptr noundef nonnull %55)
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %148, label %129

129:                                              ; preds = %84
  %130 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 24
  call void @_raw_write_lock(ptr noundef %130) #22
  call fastcc void @ipv6_link_dev_addr(ptr noundef %0, ptr noundef nonnull %55)
  %131 = load i32, ptr %104, align 4
  %132 = and i32 %131, 1
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.inet6_ifaddr, ptr %55, i32 0, i32 20
  %136 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 29
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.list_head, ptr %137, i32 0, i32 1
  store ptr %135, ptr %138, align 4
  store ptr %137, ptr %135, align 4
  %139 = getelementptr inbounds %struct.inet6_ifaddr, ptr %55, i32 0, i32 20, i32 1
  store ptr %136, ptr %139, align 8
  store volatile ptr %135, ptr %136, align 4
  call fastcc void @in6_ifa_hold(ptr noundef nonnull %55)
  br label %140

140:                                              ; preds = %134, %129
  call fastcc void @in6_ifa_hold(ptr noundef nonnull %55)
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !21
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %130, i32 0) #22, !srcloc !22
  call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !25
  call fastcc void @local_bh_enable() #22
  %141 = call i32 @inet6addr_notifier_call_chain(i32 noundef 1, ptr noundef nonnull %55) #22
  br label %160

142:                                              ; preds = %57
  %143 = icmp slt ptr %59, null
  br i1 %143, label %144, label %160, !prof !9

144:                                              ; preds = %142
  %145 = ptrtoint ptr %59 to i32
  br label %149

146:                                              ; preds = %52, %42, %37, %33
  %147 = phi i32 [ %49, %42 ], [ -19, %33 ], [ -13, %37 ], [ -105, %52 ]
  call fastcc void @fib6_info_release(ptr noundef null)
  br label %157

148:                                              ; preds = %84
  call fastcc void @local_bh_enable() #22
  br label %149

149:                                              ; preds = %148, %144
  %150 = phi ptr [ %59, %148 ], [ null, %144 ]
  %151 = phi i32 [ %127, %148 ], [ %145, %144 ]
  call fastcc void @fib6_info_release(ptr noundef %150)
  %152 = getelementptr inbounds %struct.inet6_ifaddr, ptr %55, i32 0, i32 16
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %156, label %155

155:                                              ; preds = %149
  call fastcc void @in6_dev_put(ptr noundef nonnull %153)
  br label %156

156:                                              ; preds = %155, %149
  call void @kfree(ptr noundef nonnull %55) #22
  br label %157

157:                                              ; preds = %156, %146
  %158 = phi i32 [ %151, %156 ], [ %147, %146 ]
  %159 = inttoptr i32 %158 to ptr
  br label %160

160:                                              ; preds = %157, %142, %140, %25, %14, %4
  %161 = phi ptr [ %159, %157 ], [ %55, %142 ], [ inttoptr (i32 -99 to ptr), %25 ], [ inttoptr (i32 -99 to ptr), %14 ], [ inttoptr (i32 -99 to ptr), %4 ], [ %55, %140 ]
  ret ptr %161
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @addrconf_mod_dad_work(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #22, !srcloc !12
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #22, !srcloc !18
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7, !prof !9

7:                                                ; preds = %2
  %8 = add i32 %5, 1
  %9 = or i32 %8, %5
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %13, label %11, !prof !10

11:                                               ; preds = %7, %2
  %12 = phi i32 [ 2, %2 ], [ 1, %7 ]
  tail call void @refcount_warn_saturate(ptr noundef %3, i32 noundef %12) #22
  br label %13

13:                                               ; preds = %11, %7
  %14 = load ptr, ptr @addrconf_wq, align 4
  %15 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 15
  %16 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %14, ptr noundef %15, i32 noundef %1) #22
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #22, !srcloc !12
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #22, !srcloc !13
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = icmp sgt i32 %19, 0
  br i1 %22, label %25, label %23, !prof !10

23:                                               ; preds = %21
  tail call void @refcount_warn_saturate(ptr noundef %3, i32 noundef 3) #22
  br label %25

24:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  tail call void @inet6_ifa_finish_destroy(ptr noundef %0) #22
  br label %25

25:                                               ; preds = %24, %23, %21, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @addrconf_join_solict(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.in6_addr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 136
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %10, 255
  store i32 767, ptr %3, align 4
  %12 = getelementptr inbounds i32, ptr %3, i32 1
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 2
  store i32 16777216, ptr %13, align 4
  %14 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 3
  store i32 %11, ptr %14, align 4
  %15 = call i32 @ipv6_dev_mc_inc(ptr noundef %0, ptr noundef nonnull %3) #22
  br label %16

16:                                               ; preds = %8, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_dev_mc_inc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @addrconf_leave_solict(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.in6_addr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 14
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 136
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %11, 255
  store i32 767, ptr %3, align 4
  %13 = getelementptr inbounds i32, ptr %3, i32 1
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 2
  store i32 16777216, ptr %14, align 4
  %15 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 3
  store i32 %12, ptr %15, align 4
  %16 = call i32 @__ipv6_dev_mc_dec(ptr noundef %0, ptr noundef nonnull %3) #22
  br label %17

17:                                               ; preds = %9, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_dev_mc_dec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @addrconf_prefix_rcv_add_addr(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7, i1 noundef zeroext %8, i32 noundef %9, i32 noundef %10) #0 {
  %12 = alloca %struct.ifa6_config, align 4
  %13 = zext i1 %8 to i8
  %14 = tail call ptr @ipv6_get_ifaddr(ptr noundef %0, ptr noundef %4, ptr noundef %1, i32 noundef 1)
  %15 = icmp eq ptr %14, null
  %16 = icmp ne i32 %9, 0
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %81

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.inet6_dev, ptr %3, i32 0, i32 32, i32 19
  %20 = load i32, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #22
  %21 = getelementptr inbounds i8, ptr %12, i32 28
  store i32 0, ptr %21, align 4, !annotation !15
  store ptr %4, ptr %12, align 4
  %22 = getelementptr inbounds %struct.ifa6_config, ptr %12, i32 0, i32 1
  %23 = getelementptr inbounds %struct.prefix_info, ptr %2, i32 0, i32 2
  %24 = load i8, ptr %23, align 2
  %25 = zext i8 %24 to i32
  store i32 %25, ptr %22, align 4
  %26 = getelementptr inbounds %struct.ifa6_config, ptr %12, i32 0, i32 2
  store ptr null, ptr %26, align 4
  %27 = getelementptr inbounds %struct.ifa6_config, ptr %12, i32 0, i32 3
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.ifa6_config, ptr %12, i32 0, i32 4
  store i32 %6, ptr %28, align 4
  %29 = getelementptr inbounds %struct.ifa6_config, ptr %12, i32 0, i32 5
  store i32 %10, ptr %29, align 4
  %30 = getelementptr inbounds %struct.ifa6_config, ptr %12, i32 0, i32 6
  store i32 %9, ptr %30, align 4
  %31 = getelementptr inbounds %struct.ifa6_config, ptr %12, i32 0, i32 7
  %32 = trunc i32 %5 to i16
  %33 = and i16 %32, 240
  store i16 %33, ptr %31, align 4
  %34 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 2
  %35 = load ptr, ptr %34, align 32
  %36 = getelementptr inbounds %struct.ipv6_devconf, ptr %35, i32 0, i32 30
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %18
  %40 = getelementptr inbounds %struct.inet6_dev, ptr %3, i32 0, i32 32, i32 30
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %39, %18
  %44 = load i32, ptr %35, align 4
  %45 = icmp eq i32 %44, 0
  %46 = and i1 %45, %7
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = or i32 %6, 4
  store i32 %48, ptr %28, align 4
  br label %49

49:                                               ; preds = %47, %43, %39
  %50 = icmp eq i32 %20, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %49
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %52 = getelementptr inbounds %struct.inet6_dev, ptr %3, i32 0, i32 2
  br label %53

53:                                               ; preds = %53, %51
  %54 = phi i32 [ 0, %51 ], [ %58, %53 ]
  %55 = phi ptr [ %52, %51 ], [ %56, %53 ]
  %56 = load volatile ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, %52
  %58 = add i32 %54, 1
  br i1 %57, label %59, label %53

59:                                               ; preds = %53
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  %60 = icmp slt i32 %54, %20
  br i1 %60, label %61, label %79

61:                                               ; preds = %59, %49
  %62 = call fastcc ptr @ipv6_add_addr(ptr noundef %3, ptr noundef nonnull %12, i1 noundef zeroext false, ptr noundef null)
  %63 = icmp eq ptr %62, null
  %64 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  %65 = or i1 %63, %64
  br i1 %65, label %79, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.inet6_ifaddr, ptr %62, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %67) #22
  %68 = getelementptr inbounds %struct.inet6_ifaddr, ptr %62, i32 0, i32 8
  %69 = load i32, ptr %68, align 4
  %70 = or i32 %69, 256
  store i32 %70, ptr %68, align 4
  %71 = load volatile i32, ptr @jiffies, align 64
  %72 = getelementptr inbounds %struct.inet6_ifaddr, ptr %62, i32 0, i32 13
  store i32 %71, ptr %72, align 8
  %73 = getelementptr inbounds %struct.inet6_ifaddr, ptr %62, i32 0, i32 23
  store i8 %13, ptr %73, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %67) #22
  tail call void @_raw_spin_lock_bh(ptr noundef %67) #22
  %74 = getelementptr inbounds %struct.inet6_ifaddr, ptr %62, i32 0, i32 7
  %75 = load i32, ptr %74, align 8
  %76 = icmp eq i32 %75, 4
  br i1 %76, label %78, label %77

77:                                               ; preds = %66
  store i32 0, ptr %74, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %67) #22
  tail call fastcc void @addrconf_mod_dad_work(ptr noundef nonnull %62, i32 noundef 0) #22
  br label %80

78:                                               ; preds = %66
  tail call void @_raw_spin_unlock_bh(ptr noundef %67) #22
  br label %80

79:                                               ; preds = %61, %59
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #22
  br label %126

80:                                               ; preds = %78, %77
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #22
  br label %82

81:                                               ; preds = %11
  br i1 %15, label %126, label %82

82:                                               ; preds = %81, %80
  %83 = phi ptr [ %62, %80 ], [ %14, %81 ]
  %84 = xor i1 %17, true
  %85 = getelementptr inbounds %struct.inet6_ifaddr, ptr %83, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %85) #22
  %86 = load volatile i32, ptr @jiffies, align 64
  %87 = getelementptr inbounds %struct.inet6_ifaddr, ptr %83, i32 0, i32 3
  %88 = load i32, ptr %87, align 8
  %89 = getelementptr inbounds %struct.inet6_ifaddr, ptr %83, i32 0, i32 14
  %90 = load i32, ptr %89, align 4
  %91 = sub i32 %86, %90
  %92 = udiv i32 %91, 100
  %93 = tail call i32 @llvm.usub.sat.i32(i32 %88, i32 %92)
  %94 = icmp ugt i32 %88, %92
  %95 = select i1 %84, i1 %94, i1 false
  %96 = tail call i32 @llvm.umin.i32(i32 %93, i32 7200)
  %97 = tail call i32 @llvm.umax.i32(i32 %96, i32 %9)
  %98 = select i1 %95, i32 %97, i32 %9
  br i1 %95, label %99, label %113

99:                                               ; preds = %82
  store i32 %98, ptr %87, align 8
  %100 = getelementptr inbounds %struct.inet6_ifaddr, ptr %83, i32 0, i32 4
  store i32 %10, ptr %100, align 4
  store i32 %86, ptr %89, align 4
  %101 = getelementptr inbounds %struct.inet6_ifaddr, ptr %83, i32 0, i32 8
  %102 = load i32, ptr %101, align 4
  %103 = and i32 %102, -33
  store i32 %103, ptr %101, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %85) #22
  %104 = and i32 %102, 64
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.inet6_ifaddr, ptr %83, i32 0, i32 16
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.inet6_dev, ptr %108, i32 0, i32 27
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %114, !prof !10

112:                                              ; preds = %106
  tail call fastcc void @__ipv6_ifa_notify(i32 noundef 0, ptr noundef nonnull %83) #22
  br label %114

113:                                              ; preds = %82
  tail call void @_raw_spin_unlock_bh(ptr noundef %85) #22
  br label %114

114:                                              ; preds = %113, %112, %106, %99
  tail call fastcc void @manage_tempaddrs(ptr noundef %3, ptr noundef nonnull %83, i32 noundef %98, i32 noundef %10, i1 noundef zeroext %17, i32 noundef %86)
  %115 = getelementptr inbounds %struct.inet6_ifaddr, ptr %83, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %115) #22, !srcloc !12
  %116 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %115, ptr %115, i32 1, ptr elementtype(i32) %115) #22, !srcloc !13
  %117 = extractvalue { i32, i32, i32 } %116, 0
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = icmp sgt i32 %117, 0
  br i1 %120, label %123, label %121, !prof !10

121:                                              ; preds = %119
  tail call void @refcount_warn_saturate(ptr noundef %115, i32 noundef 3) #22
  br label %123

122:                                              ; preds = %114
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  tail call void @inet6_ifa_finish_destroy(ptr noundef nonnull %83) #22
  br label %123

123:                                              ; preds = %122, %121, %119
  %124 = load ptr, ptr @addrconf_wq, align 4
  %125 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %124, ptr noundef nonnull @addr_chk_work, i32 noundef 0) #22
  br label %126

126:                                              ; preds = %123, %81, %79
  %127 = phi i32 [ 0, %123 ], [ 0, %81 ], [ -1, %79 ]
  ret i32 %127
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @addrconf_dad_start(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %2) #22
  %3 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 4
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, ptr %3, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %2) #22
  tail call fastcc void @addrconf_mod_dad_work(ptr noundef %0, i32 noundef 0)
  br label %8

7:                                                ; preds = %1
  tail call void @_raw_spin_unlock_bh(ptr noundef %2) #22
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @manage_tempaddrs(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 24
  tail call void @_raw_read_lock_bh(ptr noundef %7) #22
  %8 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 29
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %64, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 32, i32 15
  %13 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 32, i32 16
  %14 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 28
  br label %15

15:                                               ; preds = %59, %11
  %16 = phi ptr [ %9, %11 ], [ %62, %59 ]
  %17 = phi i32 [ %2, %11 ], [ %61, %59 ]
  %18 = phi i32 [ %3, %11 ], [ %60, %59 ]
  %19 = getelementptr i8, ptr %16, i32 -140
  %20 = getelementptr i8, ptr %16, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %23, label %59

23:                                               ; preds = %15
  %24 = getelementptr i8, ptr %16, i32 -76
  %25 = load i32, ptr %24, align 8
  %26 = sub i32 %5, %25
  %27 = udiv i32 %26, 100
  %28 = load i32, ptr %12, align 4
  %29 = sub i32 %28, %27
  %30 = tail call i32 @llvm.smax.i32(i32 %29, i32 0)
  %31 = load i32, ptr %13, align 4
  %32 = load i32, ptr %14, align 4
  %33 = add i32 %27, %32
  %34 = sub i32 %31, %33
  %35 = tail call i32 @llvm.smax.i32(i32 %34, i32 0)
  %36 = tail call i32 @llvm.umin.i32(i32 %17, i32 %30)
  %37 = tail call i32 @llvm.umin.i32(i32 %18, i32 %35)
  %38 = getelementptr i8, ptr %16, i32 -104
  tail call void @_raw_spin_lock(ptr noundef %38) #22
  %39 = getelementptr i8, ptr %16, i32 -96
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr i8, ptr %16, i32 -116
  store i32 %36, ptr %41, align 8
  %42 = getelementptr i8, ptr %16, i32 -112
  store i32 %37, ptr %42, align 4
  %43 = getelementptr i8, ptr %16, i32 -72
  store i32 %5, ptr %43, align 4
  %44 = icmp eq i32 %37, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %23
  %46 = and i32 %40, -33
  store i32 %46, ptr %39, align 4
  br label %47

47:                                               ; preds = %45, %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !26
  %48 = load i16, ptr %38, align 4
  %49 = add i16 %48, 1
  store i16 %49, ptr %38, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !27
  %50 = and i32 %40, 64
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = getelementptr i8, ptr %16, i32 -24
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.inet6_dev, ptr %54, i32 0, i32 27
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59, !prof !10

58:                                               ; preds = %52
  tail call fastcc void @__ipv6_ifa_notify(i32 noundef 0, ptr noundef %19) #22
  br label %59

59:                                               ; preds = %58, %52, %47, %15
  %60 = phi i32 [ %18, %15 ], [ %37, %47 ], [ %37, %52 ], [ %37, %58 ]
  %61 = phi i32 [ %17, %15 ], [ %36, %47 ], [ %36, %52 ], [ %36, %58 ]
  %62 = load ptr, ptr %16, align 4
  %63 = icmp eq ptr %62, %8
  br i1 %63, label %64, label %15

64:                                               ; preds = %59, %6
  br i1 %4, label %68, label %65

65:                                               ; preds = %64
  %66 = load volatile ptr, ptr %8, align 4
  %67 = icmp eq ptr %66, %8
  br i1 %67, label %68, label %73

68:                                               ; preds = %65, %64
  %69 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 32, i32 14
  %70 = load i32, ptr %69, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  tail call void @_raw_read_unlock_bh(ptr noundef %7) #22
  tail call fastcc void @ipv6_create_tempaddr(ptr noundef %1, i1 noundef zeroext false)
  br label %74

73:                                               ; preds = %68, %65
  tail call void @_raw_read_unlock_bh(ptr noundef %7) #22
  br label %74

74:                                               ; preds = %73, %72
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @addrconf_prefix_rcv(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.prefix_cacheinfo, align 8
  %6 = alloca %struct.in6_addr, align 8
  %7 = icmp ult i32 %2, 32
  br i1 %7, label %235, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.prefix_info, ptr %1, i32 0, i32 7
  %10 = tail call i32 @__ipv6_addr_type(ptr noundef %9) #22
  %11 = and i32 %10, 65535
  %12 = and i32 %10, 34
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %235

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.prefix_info, ptr %1, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = getelementptr inbounds %struct.prefix_info, ptr %1, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = icmp ugt i32 %20, %17
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = tail call i32 @net_ratelimit() #22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %235, label %25

25:                                               ; preds = %22
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #23
  br label %235

27:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %28 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 69
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %42, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.inet6_dev, ptr %29, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #22, !srcloc !12
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #22, !srcloc !18
  %34 = extractvalue { i32, i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36, !prof !9

36:                                               ; preds = %31
  %37 = add i32 %34, 1
  %38 = or i32 %37, %34
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %43, label %40, !prof !10

40:                                               ; preds = %36, %31
  %41 = phi i32 [ 2, %31 ], [ 1, %36 ]
  tail call void @refcount_warn_saturate(ptr noundef %32, i32 noundef %41) #22
  br label %43

42:                                               ; preds = %27
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  br label %235

43:                                               ; preds = %40, %36
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  %44 = getelementptr inbounds %struct.prefix_info, ptr %1, i32 0, i32 3
  %45 = load i8, ptr %44, align 1
  %46 = icmp sgt i8 %45, -1
  br i1 %46, label %93, label %47

47:                                               ; preds = %43
  %48 = icmp eq i32 %16, -1
  %49 = tail call i32 @llvm.umin.i32(i32 %17, i32 21474836) #22
  %50 = mul nuw nsw i32 %49, 100
  %51 = select i1 %48, i32 -1, i32 %50
  %52 = getelementptr inbounds %struct.prefix_info, ptr %1, i32 0, i32 2
  %53 = load i8, ptr %52, align 2
  %54 = zext i8 %53 to i32
  %55 = tail call fastcc ptr @addrconf_get_prefix_route(ptr noundef %9, i32 noundef %54, ptr noundef %0, i32 noundef 786432, i32 noundef 65536, i1 noundef zeroext true)
  %56 = icmp eq ptr %55, null
  %57 = icmp eq i32 %16, 0
  br i1 %56, label %72, label %58

58:                                               ; preds = %47
  br i1 %57, label %59, label %61

59:                                               ; preds = %58
  %60 = tail call i32 @ip6_del_rt(ptr noundef nonnull @init_net, ptr noundef nonnull %55, i1 noundef zeroext false) #22
  br label %93

61:                                               ; preds = %58
  br i1 %48, label %68, label %62

62:                                               ; preds = %61
  %63 = load volatile i32, ptr @jiffies, align 64
  %64 = add i32 %63, %51
  %65 = getelementptr inbounds %struct.fib6_info, ptr %55, i32 0, i32 9
  %66 = load i32, ptr %65, align 4
  %67 = or i32 %66, 4194304
  store i32 %67, ptr %65, align 4
  br label %81

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.fib6_info, ptr %55, i32 0, i32 9
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, -4194305
  store i32 %71, ptr %69, align 4
  br label %81

72:                                               ; preds = %47
  br i1 %57, label %93, label %73

73:                                               ; preds = %72
  br i1 %48, label %76, label %74

74:                                               ; preds = %73
  %75 = tail call i32 @jiffies_to_clock_t(i32 noundef %51) #22
  br label %76

76:                                               ; preds = %74, %73
  %77 = phi i32 [ %75, %74 ], [ 0, %73 ]
  %78 = phi i32 [ 4980736, %74 ], [ 786432, %73 ]
  %79 = load i8, ptr %52, align 2
  %80 = zext i8 %79 to i32
  tail call fastcc void @addrconf_prefix_route(ptr noundef %9, i32 noundef %80, i32 noundef 0, ptr noundef %0, i32 noundef %77, i32 noundef %78, i32 noundef 2592)
  br label %93

81:                                               ; preds = %68, %62
  %82 = phi i32 [ 0, %68 ], [ %64, %62 ]
  %83 = getelementptr inbounds %struct.fib6_info, ptr %55, i32 0, i32 6
  store i32 %82, ptr %83, align 4
  %84 = getelementptr inbounds %struct.fib6_info, ptr %55, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %84) #22, !srcloc !12
  %85 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %84, ptr %84, i32 1, ptr elementtype(i32) %84) #22, !srcloc !13
  %86 = extractvalue { i32, i32, i32 } %85, 0
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %91, label %88

88:                                               ; preds = %81
  %89 = icmp sgt i32 %86, 0
  br i1 %89, label %93, label %90, !prof !10

90:                                               ; preds = %88
  tail call void @refcount_warn_saturate(ptr noundef %84, i32 noundef 3) #22
  br label %93

91:                                               ; preds = %81
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  %92 = getelementptr inbounds %struct.fib6_info, ptr %55, i32 0, i32 19
  tail call void @call_rcu(ptr noundef %92, ptr noundef nonnull @fib6_info_destroy_rcu) #22
  br label %93

93:                                               ; preds = %91, %90, %88, %76, %72, %59, %43
  %94 = load i8, ptr %44, align 1
  %95 = and i8 %94, 64
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %156, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.inet6_dev, ptr %29, i32 0, i32 32, i32 5
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %156, label %101

101:                                              ; preds = %97
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #22
  %102 = getelementptr inbounds i8, ptr %6, i32 8
  store i64 0, ptr %102, align 8, !annotation !15
  %103 = getelementptr inbounds %struct.prefix_info, ptr %1, i32 0, i32 2
  %104 = load i8, ptr %103, align 2
  %105 = icmp eq i8 %104, 64
  br i1 %105, label %106, label %155

106:                                              ; preds = %101
  %107 = load i64, ptr %9, align 4
  store i64 %107, ptr %6, align 8
  %108 = getelementptr inbounds %struct.inet6_dev, ptr %29, i32 0, i32 30
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr %struct.inet6_dev, ptr %29, i32 0, i32 30, i32 0, i32 0, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = or i32 %111, %109
  %113 = getelementptr %struct.inet6_dev, ptr %29, i32 0, i32 30, i32 0, i32 0, i32 2
  %114 = load i32, ptr %113, align 4
  %115 = or i32 %112, %114
  %116 = getelementptr %struct.inet6_dev, ptr %29, i32 0, i32 30, i32 0, i32 0, i32 3
  %117 = load i32, ptr %116, align 4
  %118 = or i32 %115, %117
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %106
  %121 = getelementptr inbounds %struct.inet6_dev, ptr %29, i32 0, i32 24
  tail call void @_raw_read_lock_bh(ptr noundef %121) #22
  %122 = getelementptr inbounds i8, ptr %6, i32 8
  %123 = load i64, ptr %113, align 1
  store i64 %123, ptr %122, align 8
  tail call void @_raw_read_unlock_bh(ptr noundef %121) #22
  br label %139

124:                                              ; preds = %106
  %125 = getelementptr inbounds %struct.inet6_dev, ptr %29, i32 0, i32 32, i32 45
  %126 = load i32, ptr %125, align 4
  %127 = and i32 %126, -2
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = call fastcc i32 @ipv6_generate_stable_address(ptr noundef nonnull %6, i8 noundef zeroext 0, ptr noundef nonnull %29)
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %129, %124
  %133 = getelementptr inbounds i8, ptr %6, i32 8
  %134 = call fastcc i32 @ipv6_generate_eui64(ptr noundef %133, ptr noundef %0)
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %132
  %137 = call fastcc i32 @ipv6_inherit_eui64(ptr noundef %133, ptr noundef nonnull %29)
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %155

139:                                              ; preds = %136, %132, %129, %120
  %140 = phi i32 [ 0, %120 ], [ 2048, %129 ], [ 0, %136 ], [ 0, %132 ]
  %141 = phi i1 [ false, %120 ], [ false, %129 ], [ true, %136 ], [ true, %132 ]
  %142 = xor i1 %119, true
  %143 = call i32 @addrconf_prefix_rcv_add_addr(ptr noundef nonnull @init_net, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %29, ptr noundef nonnull %6, i32 noundef %11, i32 noundef %140, i1 noundef zeroext %3, i1 noundef zeroext %142, i32 noundef %17, i32 noundef %20)
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 43
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %154, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.ndisc_ops, ptr %147, i32 0, i32 5
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %154, label %153

153:                                              ; preds = %149
  call void %151(ptr noundef nonnull @init_net, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %29, ptr noundef nonnull %6, i32 noundef %11, i32 noundef %140, i1 noundef zeroext %3, i1 noundef zeroext %142, i32 noundef %17, i32 noundef %20, i1 noundef zeroext %141) #22
  br label %154

154:                                              ; preds = %153, %149, %145
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #22
  br label %156

155:                                              ; preds = %139, %136, %101
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #22
  br label %227

156:                                              ; preds = %154, %97, %93
  %157 = call ptr @__alloc_skb(i32 noundef 60, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #22
  %158 = icmp eq ptr %157, null
  br i1 %158, label %225, label %159

159:                                              ; preds = %156
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  store i64 0, ptr %5, align 8, !annotation !15
  %160 = getelementptr inbounds %struct.sk_buff, ptr %157, i32 0, i32 6
  %161 = load i32, ptr %160, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %219

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.sk_buff, ptr %157, i32 0, i32 15
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr inbounds %struct.sk_buff, ptr %157, i32 0, i32 14
  %167 = load ptr, ptr %166, align 8
  %168 = ptrtoint ptr %165 to i32
  %169 = ptrtoint ptr %167 to i32
  %170 = sub i32 %168, %169
  %171 = icmp slt i32 %170, 28
  br i1 %171, label %219, label %172, !prof !9

172:                                              ; preds = %163
  %173 = call ptr @__nlmsg_put(ptr noundef nonnull %157, i32 noundef 0, i32 noundef 0, i32 noundef 52, i32 noundef 12, i32 noundef 0) #22
  %174 = icmp eq ptr %173, null
  br i1 %174, label %219, label %175

175:                                              ; preds = %172
  %176 = getelementptr i8, ptr %173, i32 16
  store i8 10, ptr %176, align 4
  %177 = getelementptr i8, ptr %173, i32 17
  store i8 0, ptr %177, align 1
  %178 = getelementptr i8, ptr %173, i32 18
  store i16 0, ptr %178, align 2
  %179 = load ptr, ptr %29, align 4
  %180 = getelementptr inbounds %struct.net_device, ptr %179, i32 0, i32 17
  %181 = load i32, ptr %180, align 4
  %182 = getelementptr i8, ptr %173, i32 20
  store i32 %181, ptr %182, align 4
  %183 = getelementptr inbounds %struct.prefix_info, ptr %1, i32 0, i32 2
  %184 = load i8, ptr %183, align 2
  %185 = getelementptr i8, ptr %173, i32 25
  store i8 %184, ptr %185, align 1
  %186 = load i8, ptr %1, align 4
  %187 = getelementptr i8, ptr %173, i32 24
  store i8 %186, ptr %187, align 4
  %188 = getelementptr i8, ptr %173, i32 27
  store i8 0, ptr %188, align 1
  %189 = getelementptr i8, ptr %173, i32 26
  store i8 0, ptr %189, align 2
  %190 = load i8, ptr %44, align 1
  %191 = lshr i8 %190, 7
  store i8 %191, ptr %189, align 2
  %192 = load i8, ptr %44, align 1
  %193 = and i8 %192, 64
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %175
  %196 = or i8 %191, 2
  store i8 %196, ptr %189, align 2
  br label %197

197:                                              ; preds = %195, %175
  %198 = call i32 @nla_put(ptr noundef nonnull %157, i32 noundef 1, i32 noundef 16, ptr noundef %9) #22
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %208

200:                                              ; preds = %197
  %201 = load i32, ptr %18, align 4
  %202 = call i32 @llvm.bswap.i32(i32 %201) #22
  store i32 %202, ptr %5, align 8
  %203 = load i32, ptr %15, align 4
  %204 = call i32 @llvm.bswap.i32(i32 %203) #22
  %205 = getelementptr inbounds %struct.prefix_cacheinfo, ptr %5, i32 0, i32 1
  store i32 %204, ptr %205, align 4
  %206 = call i32 @nla_put(ptr noundef nonnull %157, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %5) #22
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %220, label %208

208:                                              ; preds = %200, %197
  %209 = getelementptr inbounds %struct.sk_buff, ptr %157, i32 0, i32 17
  %210 = load ptr, ptr %209, align 4
  %211 = icmp ugt ptr %210, %173
  br i1 %211, label %212, label %214, !prof !9

212:                                              ; preds = %208
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 991, i32 noundef 9, ptr noundef null) #22
  %213 = load ptr, ptr %209, align 4
  br label %214

214:                                              ; preds = %212, %208
  %215 = phi ptr [ %213, %212 ], [ %210, %208 ]
  %216 = ptrtoint ptr %173 to i32
  %217 = ptrtoint ptr %215 to i32
  %218 = sub i32 %216, %217
  call void @skb_trim(ptr noundef nonnull %157, i32 noundef %218) #22
  br label %219

219:                                              ; preds = %214, %172, %163, %159
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 6102, i32 noundef 9, ptr noundef null) #22
  call void @kfree_skb_reason(ptr noundef nonnull %157, i32 noundef 0) #22
  br label %225

220:                                              ; preds = %200
  %221 = load ptr, ptr %166, align 8
  %222 = ptrtoint ptr %221 to i32
  %223 = ptrtoint ptr %173 to i32
  %224 = sub i32 %222, %223
  store i32 %224, ptr %173, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @rtnl_notify(ptr noundef nonnull %157, ptr noundef nonnull @init_net, i32 noundef 0, i32 noundef 18, ptr noundef null, i32 noundef 2592) #22
  br label %227

225:                                              ; preds = %219, %156
  %226 = phi i32 [ -90, %219 ], [ -105, %156 ]
  call void @rtnl_set_sk_err(ptr noundef nonnull @init_net, i32 noundef 18, i32 noundef %226) #22
  br label %227

227:                                              ; preds = %225, %220, %155
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #22, !srcloc !12
  %228 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #22, !srcloc !13
  %229 = extractvalue { i32, i32, i32 } %228, 0
  %230 = icmp eq i32 %229, 1
  br i1 %230, label %234, label %231

231:                                              ; preds = %227
  %232 = icmp sgt i32 %229, 0
  br i1 %232, label %235, label %233, !prof !10

233:                                              ; preds = %231
  call void @refcount_warn_saturate(ptr noundef %32, i32 noundef 3) #22
  br label %235

234:                                              ; preds = %227
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  call void @in6_dev_finish_destroy(ptr noundef nonnull %29) #22
  br label %235

235:                                              ; preds = %234, %233, %231, %42, %25, %22, %8, %4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @addrconf_get_prefix_route(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #0 {
  %7 = tail call ptr @fib6_get_table(ptr noundef nonnull @init_net, i32 noundef 254) #22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %74, label %9

9:                                                ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %10 = getelementptr inbounds %struct.fib6_table, ptr %7, i32 0, i32 3
  %11 = tail call ptr @fib6_locate(ptr noundef %10, ptr noundef %0, i32 noundef %1, ptr noundef null, i32 noundef 0, i1 noundef zeroext true) #22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %72, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.fib6_node, ptr %11, i32 0, i32 3
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %72, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 17
  br label %19

19:                                               ; preds = %68, %17
  %20 = phi ptr [ %15, %17 ], [ %70, %68 ]
  %21 = getelementptr inbounds %struct.fib6_info, ptr %20, i32 0, i32 20
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %68

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.fib6_info, ptr %20, i32 0, i32 21
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 17
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr %18, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %68

31:                                               ; preds = %24
  br i1 %5, label %32, label %36

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.fib_nh_common, ptr %25, i32 0, i32 5
  %34 = load i8, ptr %33, align 2
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %68

36:                                               ; preds = %32, %31
  %37 = getelementptr inbounds %struct.fib6_info, ptr %20, i32 0, i32 9
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, %3
  %40 = icmp eq i32 %39, %3
  %41 = and i32 %38, %4
  %42 = icmp eq i32 %41, 0
  %43 = and i1 %40, %42
  br i1 %43, label %44, label %68

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.fib6_info, ptr %20, i32 0, i32 5
  %46 = load volatile i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %58, %44
  %49 = phi i32 [ %56, %58 ], [ %46, %44 ]
  %50 = add i32 %49, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #22, !srcloc !12
  br label %51

51:                                               ; preds = %51, %48
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 %49, i32 %50, ptr elementtype(i32) %45) #22, !srcloc !28
  %53 = extractvalue { i32, i32 } %52, 0
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %51

55:                                               ; preds = %51
  %56 = extractvalue { i32, i32 } %52, 1
  %57 = icmp eq i32 %56, %49
  br i1 %57, label %60, label %58, !prof !10

58:                                               ; preds = %55
  %59 = icmp eq i32 %56, 0
  br i1 %59, label %60, label %48

60:                                               ; preds = %58, %55, %44
  %61 = phi i32 [ 0, %44 ], [ %49, %55 ], [ 0, %58 ]
  %62 = add i32 %61, 1
  %63 = or i32 %62, %61
  %64 = icmp sgt i32 %63, -1
  br i1 %64, label %66, label %65, !prof !10

65:                                               ; preds = %60
  tail call void @refcount_warn_saturate(ptr noundef %45, i32 noundef 0) #22
  br label %66

66:                                               ; preds = %65, %60
  %67 = icmp eq i32 %61, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %66, %36, %32, %24, %19
  %69 = getelementptr inbounds %struct.fib6_info, ptr %20, i32 0, i32 1
  %70 = load volatile ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %19

72:                                               ; preds = %68, %66, %13, %9
  %73 = phi ptr [ null, %9 ], [ null, %13 ], [ %20, %66 ], [ null, %68 ]
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  br label %74

74:                                               ; preds = %72, %6
  %75 = phi ptr [ %73, %72 ], [ null, %6 ]
  ret ptr %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_del_rt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_clock_t(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @addrconf_prefix_route(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = alloca %struct.fib6_config, align 4
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %8) #22
  %9 = getelementptr inbounds i8, ptr %8, i32 12
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(132) %9, i8 0, i64 132, i1 false)
  store i32 254, ptr %8, align 4
  %10 = getelementptr inbounds %struct.fib6_config, ptr %8, i32 0, i32 1
  %11 = icmp eq i32 %2, 0
  %12 = select i1 %11, i32 256, i32 %2
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.fib6_config, ptr %8, i32 0, i32 2
  store i32 %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.fib6_config, ptr %8, i32 0, i32 4
  %15 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 17
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.fib6_config, ptr %8, i32 0, i32 5
  %18 = or i32 %5, 1
  store i32 %18, ptr %17, align 4
  %19 = getelementptr inbounds %struct.fib6_config, ptr %8, i32 0, i32 6
  store i32 2, ptr %19, align 4
  %20 = getelementptr inbounds %struct.fib6_config, ptr %8, i32 0, i32 7
  store i16 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.fib6_config, ptr %8, i32 0, i32 14
  store i32 %4, ptr %21, align 4
  %22 = getelementptr inbounds %struct.fib6_config, ptr %8, i32 0, i32 19, i32 1
  store ptr @init_net, ptr %22, align 4
  %23 = getelementptr inbounds %struct.fib6_config, ptr %8, i32 0, i32 10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %23, ptr noundef align 4 dereferenceable(16) %0, i32 16, i1 false)
  %24 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 32
  %25 = load i16, ptr %24, align 16
  %26 = icmp eq i16 %25, 776
  br i1 %26, label %27, label %34

27:                                               ; preds = %7
  %28 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 14
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = or i32 %5, 2097153
  store i32 %33, ptr %17, align 4
  br label %34

34:                                               ; preds = %32, %27, %7
  %35 = call i32 @ip6_route_add(ptr noundef nonnull %8, i32 noundef %6, ptr noundef null) #22
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %8) #22
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fib6_info_release(ptr noundef %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.fib6_info, ptr %0, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #22, !srcloc !12
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #22, !srcloc !13
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %13, label %10, !prof !10

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #22
  br label %13

11:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  %12 = getelementptr inbounds %struct.fib6_info, ptr %0, i32 0, i32 19
  tail call void @call_rcu(ptr noundef %12, ptr noundef nonnull @fib6_info_destroy_rcu) #22
  br label %13

13:                                               ; preds = %11, %10, %8, %1
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc i32 @ipv6_generate_eui64(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %4 = load i16, ptr %3, align 16
  switch i16 %4, label %151 [
    i16 1, label %5
    i16 774, label %5
    i16 7, label %27
    i16 32, label %36
    i16 776, label %47
    i16 778, label %84
    i16 768, label %84
    i16 825, label %116
    i16 24, label %133
    i16 769, label %143
    i16 823, label %143
    i16 519, label %143
  ]

5:                                                ; preds = %2, %2
  %6 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 51
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 6
  br i1 %8, label %9, label %151

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 72
  %11 = load ptr, ptr %10, align 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %0, ptr noundef align 1 dereferenceable(3) %11, i32 3, i1 false) #22
  %12 = getelementptr i8, ptr %0, i32 3
  store i8 -1, ptr %12, align 1
  %13 = getelementptr i8, ptr %0, i32 4
  store i8 -2, ptr %13, align 1
  %14 = getelementptr i8, ptr %0, i32 5
  %15 = getelementptr i8, ptr %11, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %14, ptr noundef align 1 dereferenceable(3) %15, i32 3, i1 false) #22
  %16 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 55
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %9
  %20 = lshr i16 %17, 8
  %21 = trunc i16 %20 to i8
  store i8 %21, ptr %12, align 1
  %22 = load i16, ptr %16, align 2
  %23 = trunc i16 %22 to i8
  store i8 %23, ptr %13, align 1
  br label %151

24:                                               ; preds = %9
  %25 = load i8, ptr %0, align 1
  %26 = xor i8 %25, 2
  store i8 %26, ptr %0, align 1
  br label %151

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 51
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 1
  br i1 %30, label %31, label %151

31:                                               ; preds = %27
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(7) %0, i8 0, i32 7, i1 false) #22
  %32 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 72
  %33 = load ptr, ptr %32, align 32
  %34 = load i8, ptr %33, align 1
  %35 = getelementptr i8, ptr %0, i32 7
  store i8 %34, ptr %35, align 1
  br label %151

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 51
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, 20
  br i1 %39, label %40, label %151

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 72
  %42 = load ptr, ptr %41, align 32
  %43 = getelementptr i8, ptr %42, i32 12
  %44 = load i64, ptr %43, align 1
  store i64 %44, ptr %0, align 1
  %45 = trunc i64 %44 to i8
  %46 = or i8 %45, 2
  store i8 %46, ptr %0, align 1
  br label %151

47:                                               ; preds = %2
  %48 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %49 = load i64, ptr %48, align 16
  %50 = and i64 %49, 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %151, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 72
  %54 = load ptr, ptr %53, align 32
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %151, label %57

57:                                               ; preds = %52
  %58 = trunc i32 %55 to i8
  switch i8 %58, label %59 [
    i8 10, label %78
    i8 127, label %78
  ]

59:                                               ; preds = %57
  %60 = and i32 %55, 65535
  %61 = icmp eq i32 %60, 65193
  %62 = and i32 %55, 61695
  %63 = icmp eq i32 %62, 4268
  %64 = or i1 %61, %63
  br i1 %64, label %78, label %65

65:                                               ; preds = %59
  %66 = and i32 %55, 16777215
  switch i32 %66, label %67 [
    i32 131264, label %78
    i32 6510784, label %78
  ]

67:                                               ; preds = %65
  %68 = icmp eq i32 %60, 43200
  %69 = and i32 %55, 65279
  %70 = icmp eq i32 %69, 4806
  %71 = or i1 %68, %70
  %72 = and i32 %55, 240
  %73 = icmp eq i32 %72, 224
  %74 = or i1 %73, %71
  br i1 %74, label %78, label %75

75:                                               ; preds = %67
  %76 = icmp eq i32 %55, -1
  %77 = select i1 %76, i8 0, i8 2
  br label %78

78:                                               ; preds = %75, %67, %65, %65, %59, %57, %57
  %79 = phi i8 [ 0, %67 ], [ 0, %65 ], [ 0, %59 ], [ 0, %57 ], [ %77, %75 ], [ 0, %57 ], [ 0, %65 ]
  store i8 %79, ptr %0, align 1
  %80 = getelementptr i8, ptr %0, i32 1
  store i8 0, ptr %80, align 1
  %81 = getelementptr i8, ptr %0, i32 2
  store i8 94, ptr %81, align 1
  %82 = getelementptr i8, ptr %0, i32 3
  store i8 -2, ptr %82, align 1
  %83 = getelementptr i8, ptr %0, i32 4
  store i32 %55, ptr %83, align 1
  br label %151

84:                                               ; preds = %2, %2
  %85 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 72
  %86 = load ptr, ptr %85, align 32
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %151, label %89

89:                                               ; preds = %84
  %90 = trunc i32 %87 to i8
  switch i8 %90, label %91 [
    i8 10, label %110
    i8 127, label %110
  ]

91:                                               ; preds = %89
  %92 = and i32 %87, 65535
  %93 = icmp eq i32 %92, 65193
  %94 = and i32 %87, 61695
  %95 = icmp eq i32 %94, 4268
  %96 = or i1 %93, %95
  br i1 %96, label %110, label %97

97:                                               ; preds = %91
  %98 = and i32 %87, 16777215
  switch i32 %98, label %99 [
    i32 131264, label %110
    i32 6510784, label %110
  ]

99:                                               ; preds = %97
  %100 = icmp eq i32 %92, 43200
  %101 = and i32 %87, 65279
  %102 = icmp eq i32 %101, 4806
  %103 = or i1 %100, %102
  %104 = and i32 %87, 240
  %105 = icmp eq i32 %104, 224
  %106 = or i1 %105, %103
  br i1 %106, label %110, label %107

107:                                              ; preds = %99
  %108 = icmp eq i32 %87, -1
  %109 = select i1 %108, i8 0, i8 2
  br label %110

110:                                              ; preds = %107, %99, %97, %97, %91, %89, %89
  %111 = phi i8 [ 0, %99 ], [ 0, %97 ], [ 0, %91 ], [ 0, %89 ], [ %109, %107 ], [ 0, %89 ], [ 0, %97 ]
  store i8 %111, ptr %0, align 1
  %112 = getelementptr i8, ptr %0, i32 1
  store i8 0, ptr %112, align 1
  %113 = getelementptr i8, ptr %0, i32 2
  store i8 94, ptr %113, align 1
  %114 = getelementptr i8, ptr %0, i32 3
  store i8 -2, ptr %114, align 1
  %115 = getelementptr i8, ptr %0, i32 4
  store i32 %87, ptr %115, align 1
  br label %151

116:                                              ; preds = %2
  %117 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 51
  %118 = load i8, ptr %117, align 1
  switch i8 %118, label %151 [
    i8 6, label %119
    i8 8, label %127
  ]

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 72
  %121 = load ptr, ptr %120, align 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %0, ptr noundef align 1 dereferenceable(3) %121, i32 3, i1 false) #22
  %122 = getelementptr i8, ptr %0, i32 3
  store i8 -1, ptr %122, align 1
  %123 = getelementptr i8, ptr %0, i32 4
  store i8 -2, ptr %123, align 1
  %124 = getelementptr i8, ptr %0, i32 5
  %125 = load ptr, ptr %120, align 32
  %126 = getelementptr i8, ptr %125, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %124, ptr noundef align 1 dereferenceable(3) %126, i32 3, i1 false) #22
  br label %151

127:                                              ; preds = %116
  %128 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 72
  %129 = load ptr, ptr %128, align 32
  %130 = load i64, ptr %129, align 1
  store i64 %130, ptr %0, align 1
  %131 = trunc i64 %130 to i8
  %132 = xor i8 %131, 2
  store i8 %132, ptr %0, align 1
  br label %151

133:                                              ; preds = %2
  %134 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 51
  %135 = load i8, ptr %134, align 1
  %136 = icmp eq i8 %135, 16
  br i1 %136, label %137, label %151

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 72
  %139 = load ptr, ptr %138, align 32
  %140 = load i64, ptr %139, align 1
  store i64 %140, ptr %0, align 1
  %141 = trunc i64 %140 to i8
  %142 = xor i8 %141, 2
  store i8 %142, ptr %0, align 1
  br label %151

143:                                              ; preds = %2, %2, %2
  %144 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 49
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %0, ptr noundef align 8 dereferenceable(3) %144, i32 3, i1 false) #22
  %145 = getelementptr i8, ptr %0, i32 5
  %146 = getelementptr %struct.net_device, ptr %1, i32 0, i32 49, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %145, ptr noundef align 1 dereferenceable(3) %146, i32 3, i1 false) #22
  %147 = getelementptr i8, ptr %0, i32 3
  store i8 -1, ptr %147, align 1
  %148 = getelementptr i8, ptr %0, i32 4
  store i8 -2, ptr %148, align 1
  %149 = load i8, ptr %0, align 1
  %150 = xor i8 %149, 2
  store i8 %150, ptr %0, align 1
  br label %151

151:                                              ; preds = %143, %137, %133, %127, %119, %116, %110, %84, %78, %52, %47, %40, %36, %31, %27, %24, %19, %5, %2
  %152 = phi i32 [ 0, %143 ], [ -1, %2 ], [ -1, %5 ], [ 0, %24 ], [ 0, %19 ], [ 0, %31 ], [ -1, %27 ], [ 0, %40 ], [ -1, %36 ], [ -1, %47 ], [ 0, %78 ], [ -1, %52 ], [ 0, %110 ], [ -1, %84 ], [ -1, %116 ], [ 0, %127 ], [ 0, %119 ], [ 0, %137 ], [ -1, %133 ]
  ret i32 %152
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ipv6_inherit_eui64(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 24
  tail call void @_raw_read_lock_bh(ptr noundef %3) #22
  %4 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 2
  %5 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %4
  br i1 %7, label %27, label %8

8:                                                ; preds = %23, %2
  %9 = phi ptr [ %25, %23 ], [ %6, %2 ]
  %10 = getelementptr i8, ptr %9, i32 -82
  %11 = load i16, ptr %10, align 2
  %12 = icmp ugt i16 %11, 32
  br i1 %12, label %27, label %13

13:                                               ; preds = %8
  %14 = icmp eq i16 %11, 32
  br i1 %14, label %15, label %23

15:                                               ; preds = %13
  %16 = getelementptr i8, ptr %9, i32 -88
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 64
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %9, i32 -124
  %22 = load i64, ptr %21, align 1
  store i64 %22, ptr %0, align 1
  br label %27

23:                                               ; preds = %15, %13
  %24 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %4
  br i1 %26, label %27, label %8

27:                                               ; preds = %23, %20, %8, %2
  %28 = phi i32 [ 0, %20 ], [ -1, %2 ], [ -1, %8 ], [ -1, %23 ]
  tail call void @_raw_read_unlock_bh(ptr noundef %3) #22
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @addrconf_set_dstaddr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ip_tunnel_parm, align 4
  %4 = alloca %struct.in6_ifreq, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !15
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 24, i32 -1090519040) #25, !srcloc !29
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16, !prof !10

8:                                                ; preds = %2
  %9 = tail call ptr @llvm.thread.pointer() #22
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #18, !srcloc !30
  %12 = and i32 %11, -13
  %13 = or i32 %12, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #22, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !32
  %14 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 24) #22
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #22, !srcloc !31
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !10

16:                                               ; preds = %8, %2
  %17 = phi i32 [ %14, %8 ], [ 24, %2 ]
  %18 = sub i32 24, %17
  %19 = getelementptr i8, ptr %4, i32 %18
  call void @llvm.memset.p0.i32(ptr align 1 %19, i8 0, i32 %17, i1 false) #22
  br label %57

20:                                               ; preds = %8
  call void @rtnl_lock() #22
  %21 = getelementptr inbounds %struct.in6_ifreq, ptr %4, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = call ptr @__dev_get_by_index(ptr noundef %0, i32 noundef %22) #22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %55, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 32
  %27 = load i16, ptr %26, align 16
  %28 = icmp eq i16 %27, 776
  br i1 %28, label %29, label %55

29:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %3, i8 0, i32 48, i1 false) #22
  %30 = call i32 @__ipv6_addr_type(ptr noundef nonnull %4) #22
  %31 = and i32 %30, 128
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %3, i32 0, i32 6
  %37 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %3, i32 0, i32 6, i32 9
  store i32 %35, ptr %37, align 4
  store i8 69, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %3, i32 0, i32 6, i32 6
  store i8 41, ptr %38, align 1
  %39 = getelementptr inbounds %struct.ip_tunnel_parm, ptr %3, i32 0, i32 6, i32 5
  store i8 64, ptr %39, align 4
  %40 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 16
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.net_device_ops, ptr %41, i32 0, i32 71
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %33
  %46 = call i32 %43(ptr noundef nonnull %23, ptr noundef nonnull %3, i32 noundef 35313) #22
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = call ptr @__dev_get_by_name(ptr noundef %0, ptr noundef nonnull %3) #22
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = call i32 @dev_open(ptr noundef nonnull %49, ptr noundef null) #22
  br label %53

53:                                               ; preds = %51, %48, %45, %33, %29
  %54 = phi i32 [ %52, %51 ], [ -99, %29 ], [ -95, %33 ], [ %46, %45 ], [ -105, %48 ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %3) #22
  br label %55

55:                                               ; preds = %53, %25, %20
  %56 = phi i32 [ %54, %53 ], [ -19, %25 ], [ -19, %20 ]
  call void @rtnl_unlock() #22
  br label %57

57:                                               ; preds = %55, %16
  %58 = phi i32 [ %56, %55 ], [ -14, %16 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @addrconf_add_ifaddr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ifa6_config, align 4
  %4 = alloca %struct.in6_ifreq, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(32) @__const.addrconf_add_ifaddr.cfg, i32 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !15
  %5 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = tail call zeroext i1 @ns_capable(ptr noundef %6, i32 noundef 12) #22
  br i1 %7, label %8, label %31

8:                                                ; preds = %2
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 24, i32 -1090519040) #25, !srcloc !29
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20, !prof !10

12:                                               ; preds = %8
  %13 = tail call ptr @llvm.thread.pointer() #22
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #18, !srcloc !30
  %16 = and i32 %15, -13
  %17 = or i32 %16, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #22, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !32
  %18 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 24) #22
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #22, !srcloc !31
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !10

20:                                               ; preds = %12, %8
  %21 = phi i32 [ %18, %12 ], [ 24, %8 ]
  %22 = sub i32 24, %21
  %23 = getelementptr i8, ptr %4, i32 %22
  call void @llvm.memset.p0.i32(ptr align 1 %23, i8 0, i32 %21, i1 false) #22
  br label %31

24:                                               ; preds = %12
  store ptr %4, ptr %3, align 4
  %25 = getelementptr inbounds %struct.in6_ifreq, ptr %4, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ifa6_config, ptr %3, i32 0, i32 1
  store i32 %26, ptr %27, align 4
  call void @rtnl_lock() #22
  %28 = getelementptr inbounds %struct.in6_ifreq, ptr %4, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = call fastcc i32 @inet6_addr_add(ptr noundef %0, i32 noundef %29, ptr noundef nonnull %3, ptr noundef null)
  call void @rtnl_unlock() #22
  br label %31

31:                                               ; preds = %24, %20, %2
  %32 = phi i32 [ %30, %24 ], [ -1, %2 ], [ -14, %20 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @inet6_addr_add(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = tail call i32 @rtnl_is_locked() #22
  %6 = icmp eq i32 %5, 0
  %7 = load i1, ptr @inet6_addr_add.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %4
  store i1 true, ptr @inet6_addr_add.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2919, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str, i32 noundef 2919) #22
  br label %11

11:                                               ; preds = %10, %4
  %12 = getelementptr inbounds %struct.ifa6_config, ptr %2, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, 128
  br i1 %14, label %119, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ifa6_config, ptr %2, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %119, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ifa6_config, ptr %2, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, %17
  br i1 %22, label %119, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ifa6_config, ptr %2, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 256
  %27 = icmp eq i32 %26, 0
  %28 = icmp eq i32 %13, 64
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %30, label %119

30:                                               ; preds = %23
  %31 = tail call ptr @__dev_get_by_index(ptr noundef %0, i32 noundef %1) #22
  %32 = icmp eq ptr %31, null
  br i1 %32, label %119, label %33

33:                                               ; preds = %30
  %34 = tail call fastcc ptr @addrconf_add_dev(ptr noundef nonnull %31)
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = ptrtoint ptr %34 to i32
  br label %119

38:                                               ; preds = %33
  %39 = load i32, ptr %24, align 4
  %40 = and i32 %39, 1024
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 28
  %44 = load ptr, ptr %43, align 8
  %45 = load ptr, ptr %2, align 4
  %46 = tail call fastcc i32 @ipv6_mc_config(ptr noundef %44, i1 noundef zeroext true, ptr noundef %45, i32 noundef %1)
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %119, label %48

48:                                               ; preds = %42, %38
  %49 = load ptr, ptr %2, align 4
  %50 = tail call i32 @__ipv6_addr_type(ptr noundef %49) #22
  %51 = trunc i32 %50 to i16
  %52 = and i16 %51, 240
  %53 = getelementptr inbounds %struct.ifa6_config, ptr %2, i32 0, i32 7
  store i16 %52, ptr %53, align 4
  %54 = load i32, ptr %16, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %60, label %56

56:                                               ; preds = %48
  %57 = tail call i32 @llvm.umin.i32(i32 %54, i32 21474836) #22
  %58 = mul nuw nsw i32 %57, 100
  %59 = tail call i32 @jiffies_to_clock_t(i32 noundef %58) #22
  store i32 %57, ptr %16, align 4
  br label %63

60:                                               ; preds = %48
  %61 = load i32, ptr %24, align 4
  %62 = or i32 %61, 128
  store i32 %62, ptr %24, align 4
  br label %63

63:                                               ; preds = %60, %56
  %64 = phi i32 [ %59, %56 ], [ 0, %60 ]
  %65 = phi i32 [ 4194304, %56 ], [ 0, %60 ]
  %66 = load i32, ptr %20, align 4
  %67 = icmp eq i32 %66, -1
  %68 = tail call i32 @llvm.umin.i32(i32 %66, i32 21474836) #22
  %69 = select i1 %67, i32 -1, i32 %68
  br i1 %67, label %76, label %70

70:                                               ; preds = %63
  %71 = icmp eq i32 %69, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %70
  %73 = load i32, ptr %24, align 4
  %74 = or i32 %73, 32
  store i32 %74, ptr %24, align 4
  br label %75

75:                                               ; preds = %72, %70
  store i32 %69, ptr %20, align 4
  br label %76

76:                                               ; preds = %75, %63
  %77 = tail call fastcc ptr @ipv6_add_addr(ptr noundef %34, ptr noundef %2, i1 noundef zeroext true, ptr noundef %3)
  %78 = icmp ugt ptr %77, inttoptr (i32 -4096 to ptr)
  %79 = load i32, ptr %24, align 4
  br i1 %78, label %109, label %80

80:                                               ; preds = %76
  %81 = and i32 %79, 512
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.inet6_ifaddr, ptr %77, i32 0, i32 1
  %85 = load i32, ptr %84, align 8
  %86 = getelementptr inbounds %struct.inet6_ifaddr, ptr %77, i32 0, i32 2
  %87 = load i32, ptr %86, align 4
  tail call fastcc void @addrconf_prefix_route(ptr noundef %77, i32 noundef %85, i32 noundef %87, ptr noundef nonnull %31, i32 noundef %64, i32 noundef %65, i32 noundef 3264)
  br label %88

88:                                               ; preds = %83, %80
  %89 = getelementptr inbounds %struct.inet6_ifaddr, ptr %77, i32 0, i32 8
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, 6
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.inet6_ifaddr, ptr %77, i32 0, i32 16
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.inet6_dev, ptr %95, i32 0, i32 27
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100, !prof !10

99:                                               ; preds = %93
  tail call fastcc void @__ipv6_ifa_notify(i32 noundef 0, ptr noundef %77) #22
  br label %100

100:                                              ; preds = %99, %93, %88
  tail call fastcc void @addrconf_dad_start(ptr noundef %77)
  %101 = load i32, ptr %24, align 4
  %102 = and i32 %101, 256
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = load i32, ptr %16, align 4
  %106 = load i32, ptr %20, align 4
  %107 = load volatile i32, ptr @jiffies, align 64
  tail call fastcc void @manage_tempaddrs(ptr noundef %34, ptr noundef %77, i32 noundef %105, i32 noundef %106, i1 noundef zeroext true, i32 noundef %107)
  br label %108

108:                                              ; preds = %104, %100
  tail call fastcc void @in6_ifa_put(ptr noundef %77)
  tail call fastcc void @addrconf_verify_rtnl()
  br label %119

109:                                              ; preds = %76
  %110 = and i32 %79, 1024
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 28
  %114 = load ptr, ptr %113, align 8
  %115 = load ptr, ptr %2, align 4
  %116 = tail call fastcc i32 @ipv6_mc_config(ptr noundef %114, i1 noundef zeroext false, ptr noundef %115, i32 noundef %1)
  br label %117

117:                                              ; preds = %112, %109
  %118 = ptrtoint ptr %77 to i32
  br label %119

119:                                              ; preds = %117, %108, %42, %36, %30, %23, %19, %15, %11
  %120 = phi i32 [ %37, %36 ], [ %118, %117 ], [ 0, %108 ], [ %46, %42 ], [ -22, %11 ], [ -22, %19 ], [ -22, %15 ], [ -22, %23 ], [ -19, %30 ]
  ret i32 %120
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @addrconf_del_ifaddr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.in6_ifreq, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !15
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = tail call zeroext i1 @ns_capable(ptr noundef %5, i32 noundef 12) #22
  br i1 %6, label %7, label %29

7:                                                ; preds = %2
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 24, i32 -1090519040) #25, !srcloc !29
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19, !prof !10

11:                                               ; preds = %7
  %12 = tail call ptr @llvm.thread.pointer() #22
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #18, !srcloc !30
  %15 = and i32 %14, -13
  %16 = or i32 %15, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #22, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !32
  %17 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 24) #22
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #22, !srcloc !31
  call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !10

19:                                               ; preds = %11, %7
  %20 = phi i32 [ %17, %11 ], [ 24, %7 ]
  %21 = sub i32 24, %20
  %22 = getelementptr i8, ptr %3, i32 %21
  call void @llvm.memset.p0.i32(ptr align 1 %22, i8 0, i32 %20, i1 false) #22
  br label %29

23:                                               ; preds = %11
  call void @rtnl_lock() #22
  %24 = getelementptr inbounds %struct.in6_ifreq, ptr %3, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.in6_ifreq, ptr %3, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = call fastcc i32 @inet6_addr_del(ptr noundef %0, i32 noundef %25, i32 noundef 0, ptr noundef nonnull %3, i32 noundef %27)
  call void @rtnl_unlock() #22
  br label %29

29:                                               ; preds = %23, %19, %2
  %30 = phi i32 [ %28, %23 ], [ -1, %2 ], [ -14, %19 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @inet6_addr_del(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = icmp ugt i32 %4, 128
  br i1 %6, label %92, label %7

7:                                                ; preds = %5
  %8 = tail call ptr @__dev_get_by_index(ptr noundef %0, i32 noundef %1) #22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %92, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 69
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %92, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.inet6_dev, ptr %12, i32 0, i32 24
  tail call void @_raw_read_lock_bh(ptr noundef %15) #22
  %16 = getelementptr inbounds %struct.inet6_dev, ptr %12, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %91, label %19

19:                                               ; preds = %14
  %20 = getelementptr [4 x i32], ptr %3, i32 0, i32 1
  %21 = getelementptr [4 x i32], ptr %3, i32 0, i32 2
  %22 = getelementptr [4 x i32], ptr %3, i32 0, i32 3
  br label %23

23:                                               ; preds = %88, %19
  %24 = phi ptr [ %17, %19 ], [ %89, %88 ]
  %25 = getelementptr i8, ptr %24, i32 -116
  %26 = load i32, ptr %25, align 8
  %27 = icmp eq i32 %26, %4
  br i1 %27, label %28, label %88

28:                                               ; preds = %23
  %29 = getelementptr i8, ptr %24, i32 -132
  %30 = load i32, ptr %3, align 4
  %31 = load i32, ptr %29, align 4
  %32 = xor i32 %31, %30
  %33 = load i32, ptr %20, align 4
  %34 = getelementptr i8, ptr %24, i32 -128
  %35 = load i32, ptr %34, align 4
  %36 = xor i32 %35, %33
  %37 = or i32 %36, %32
  %38 = load i32, ptr %21, align 4
  %39 = getelementptr i8, ptr %24, i32 -124
  %40 = load i32, ptr %39, align 4
  %41 = xor i32 %40, %38
  %42 = or i32 %37, %41
  %43 = load i32, ptr %22, align 4
  %44 = getelementptr i8, ptr %24, i32 -120
  %45 = load i32, ptr %44, align 4
  %46 = xor i32 %45, %43
  %47 = or i32 %42, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %88

49:                                               ; preds = %28
  %50 = getelementptr i8, ptr %24, i32 -132
  %51 = getelementptr i8, ptr %24, i32 -100
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #22, !srcloc !12
  %52 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 1, ptr elementtype(i32) %51) #22, !srcloc !18
  %53 = extractvalue { i32, i32, i32 } %52, 0
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55, !prof !9

55:                                               ; preds = %49
  %56 = add i32 %53, 1
  %57 = or i32 %56, %53
  %58 = icmp sgt i32 %57, -1
  br i1 %58, label %61, label %59, !prof !10

59:                                               ; preds = %55, %49
  %60 = phi i32 [ 2, %49 ], [ 1, %55 ]
  tail call void @refcount_warn_saturate(ptr noundef %51, i32 noundef %60) #22
  br label %61

61:                                               ; preds = %59, %55
  tail call void @_raw_read_unlock_bh(ptr noundef %15) #22
  %62 = getelementptr i8, ptr %24, i32 -88
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 1
  %65 = icmp ne i32 %64, 0
  %66 = and i32 %2, 256
  %67 = icmp eq i32 %66, 0
  %68 = or i1 %67, %65
  br i1 %68, label %71, label %69

69:                                               ; preds = %61
  %70 = load volatile i32, ptr @jiffies, align 64
  tail call fastcc void @manage_tempaddrs(ptr noundef nonnull %12, ptr noundef %50, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false, i32 noundef %70)
  br label %71

71:                                               ; preds = %69, %61
  tail call fastcc void @ipv6_del_addr(ptr noundef %50)
  tail call fastcc void @addrconf_verify_rtnl()
  %72 = load i32, ptr %3, align 4
  %73 = and i32 %72, 255
  %74 = icmp eq i32 %73, 255
  br i1 %74, label %75, label %92

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 28
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 17
  %79 = load i32, ptr %78, align 4
  %80 = tail call i32 @rtnl_is_locked() #22
  %81 = icmp eq i32 %80, 0
  %82 = load i1, ptr @ipv6_mc_config.__already_done, align 1
  %83 = xor i1 %82, true
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %85, label %86, !prof !9

85:                                               ; preds = %75
  store i1 true, ptr @ipv6_mc_config.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2893, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str, i32 noundef 2893) #22
  br label %86

86:                                               ; preds = %85, %75
  tail call void @lock_sock_nested(ptr noundef %77, i32 noundef 0) #22
  %87 = tail call i32 @ipv6_sock_mc_drop(ptr noundef %77, i32 noundef %79, ptr noundef %3) #22
  tail call void @release_sock(ptr noundef %77) #22
  br label %92

88:                                               ; preds = %28, %23
  %89 = load ptr, ptr %24, align 4
  %90 = icmp eq ptr %89, %16
  br i1 %90, label %91, label %23

91:                                               ; preds = %88, %14
  tail call void @_raw_read_unlock_bh(ptr noundef %15) #22
  br label %92

92:                                               ; preds = %91, %86, %71, %10, %7, %5
  %93 = phi i32 [ -99, %91 ], [ -22, %5 ], [ -19, %7 ], [ -6, %10 ], [ 0, %86 ], [ 0, %71 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @addrconf_add_linklocal(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.fib6_config, align 4
  %5 = alloca %struct.ifa6_config, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #22
  %6 = getelementptr inbounds i8, ptr %5, i32 28
  store i32 0, ptr %6, align 4, !annotation !15
  store ptr %1, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ifa6_config, ptr %5, i32 0, i32 1
  store i32 64, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ifa6_config, ptr %5, i32 0, i32 2
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ifa6_config, ptr %5, i32 0, i32 3
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ifa6_config, ptr %5, i32 0, i32 4
  %11 = or i32 %2, 128
  store i32 %11, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ifa6_config, ptr %5, i32 0, i32 5
  store i32 -1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ifa6_config, ptr %5, i32 0, i32 6
  store i32 -1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ifa6_config, ptr %5, i32 0, i32 7
  store i16 32, ptr %14, align 4
  %15 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %16 = getelementptr inbounds %struct.ipv6_devconf, ptr %15, i32 0, i32 30
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 32, i32 30
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19, %3
  %24 = load i32, ptr %15, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = or i32 %2, 132
  store i32 %27, ptr %10, align 4
  br label %28

28:                                               ; preds = %26, %23, %19
  %29 = call fastcc ptr @ipv6_add_addr(ptr noundef %0, ptr noundef nonnull %5, i1 noundef zeroext true, ptr noundef null)
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %72, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.inet6_ifaddr, ptr %29, i32 0, i32 1
  %33 = load i32, ptr %32, align 8
  %34 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #22
  %35 = getelementptr inbounds i8, ptr %4, i32 12
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(132) %35, i8 0, i64 132, i1 false) #22
  store i32 254, ptr %4, align 4
  %36 = getelementptr inbounds %struct.fib6_config, ptr %4, i32 0, i32 1
  store i32 256, ptr %36, align 4
  %37 = getelementptr inbounds %struct.fib6_config, ptr %4, i32 0, i32 2
  store i32 %33, ptr %37, align 4
  %38 = getelementptr inbounds %struct.fib6_config, ptr %4, i32 0, i32 4
  %39 = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 17
  %40 = load i32, ptr %39, align 4
  store i32 %40, ptr %38, align 4
  %41 = getelementptr inbounds %struct.fib6_config, ptr %4, i32 0, i32 5
  store i32 1, ptr %41, align 4
  %42 = getelementptr inbounds %struct.fib6_config, ptr %4, i32 0, i32 6
  store i32 2, ptr %42, align 4
  %43 = getelementptr inbounds %struct.fib6_config, ptr %4, i32 0, i32 7
  store i16 1, ptr %43, align 4
  %44 = getelementptr inbounds %struct.fib6_config, ptr %4, i32 0, i32 19, i32 1
  store ptr @init_net, ptr %44, align 4
  %45 = getelementptr inbounds %struct.fib6_config, ptr %4, i32 0, i32 10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %45, ptr noundef align 4 dereferenceable(16) %29, i32 16, i1 false) #22
  %46 = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 32
  %47 = load i16, ptr %46, align 16
  %48 = icmp eq i16 %47, 776
  br i1 %48, label %49, label %55

49:                                               ; preds = %31
  %50 = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 14
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 16
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  store i32 2097153, ptr %41, align 4
  br label %55

55:                                               ; preds = %54, %49, %31
  %56 = call i32 @ip6_route_add(ptr noundef nonnull %4, i32 noundef 2592, ptr noundef null) #22
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #22
  %57 = getelementptr inbounds %struct.inet6_ifaddr, ptr %29, i32 0, i32 6
  call void @_raw_spin_lock_bh(ptr noundef %57) #22
  %58 = getelementptr inbounds %struct.inet6_ifaddr, ptr %29, i32 0, i32 7
  %59 = load i32, ptr %58, align 8
  %60 = icmp eq i32 %59, 4
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  store i32 0, ptr %58, align 8
  call void @_raw_spin_unlock_bh(ptr noundef %57) #22
  call fastcc void @addrconf_mod_dad_work(ptr noundef %29, i32 noundef 0) #22
  br label %63

62:                                               ; preds = %55
  call void @_raw_spin_unlock_bh(ptr noundef %57) #22
  br label %63

63:                                               ; preds = %62, %61
  %64 = getelementptr inbounds %struct.inet6_ifaddr, ptr %29, i32 0, i32 5
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %64) #22, !srcloc !12
  %65 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %64, ptr %64, i32 1, ptr elementtype(i32) %64) #22, !srcloc !13
  %66 = extractvalue { i32, i32, i32 } %65, 0
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = icmp sgt i32 %66, 0
  br i1 %69, label %72, label %70, !prof !10

70:                                               ; preds = %68
  call void @refcount_warn_saturate(ptr noundef %64, i32 noundef 3) #22
  br label %72

71:                                               ; preds = %63
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  call void @inet6_ifa_finish_destroy(ptr noundef %29) #22
  br label %72

72:                                               ; preds = %71, %70, %68, %28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #22
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @if6_proc_init() local_unnamed_addr #9 section ".init.text" {
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @if6_proc_net_ops) #22
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @if6_proc_exit() local_unnamed_addr #0 {
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @if6_proc_net_ops) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipv6_chk_home_addr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = xor i32 %5, %3
  %7 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = xor i32 %6, %8
  %10 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = xor i32 %9, %11
  %13 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 26
  %14 = load i32, ptr %13, align 4
  %15 = xor i32 %12, %14
  %16 = mul i32 %15, 1640531527
  %17 = lshr i32 %16, 24
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %18 = getelementptr [256 x %struct.hlist_head], ptr @inet6_addr_lst, i32 0, i32 %17
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = getelementptr i8, ptr %19, i32 -124
  %22 = icmp eq ptr %21, null
  %23 = or i1 %20, %22
  br i1 %23, label %58, label %24

24:                                               ; preds = %2
  %25 = load i32, ptr %1, align 4
  %26 = load i32, ptr %4, align 4
  %27 = load i32, ptr %7, align 4
  %28 = load i32, ptr %10, align 4
  br label %29

29:                                               ; preds = %51, %24
  %30 = phi ptr [ %21, %24 ], [ %55, %51 ]
  %31 = load i32, ptr %30, align 4
  %32 = xor i32 %25, %31
  %33 = getelementptr [4 x i32], ptr %30, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = xor i32 %26, %34
  %36 = or i32 %35, %32
  %37 = getelementptr [4 x i32], ptr %30, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = xor i32 %27, %38
  %40 = or i32 %36, %39
  %41 = getelementptr [4 x i32], ptr %30, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = xor i32 %28, %42
  %44 = or i32 %40, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %29
  %47 = getelementptr inbounds %struct.inet6_ifaddr, ptr %30, i32 0, i32 8
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46, %29
  %52 = getelementptr inbounds %struct.inet6_ifaddr, ptr %30, i32 0, i32 18
  %53 = load volatile ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  %55 = getelementptr i8, ptr %53, i32 -124
  %56 = icmp eq ptr %55, null
  %57 = or i1 %54, %56
  br i1 %57, label %58, label %29

58:                                               ; preds = %51, %46, %2
  %59 = phi i32 [ 0, %2 ], [ 1, %46 ], [ 0, %51 ]
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipv6_chk_rpl_srh_loop(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %4 = zext i8 %2 to i32
  %5 = icmp eq i8 %2, 0
  br i1 %5, label %67, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 26
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %62, %6
  %10 = phi i32 [ 0, %6 ], [ %65, %62 ]
  %11 = phi i32 [ 0, %6 ], [ %64, %62 ]
  %12 = phi i1 [ false, %6 ], [ %63, %62 ]
  %13 = getelementptr %struct.in6_addr, ptr %1, i32 %10
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr [4 x i32], ptr %13, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = xor i32 %16, %14
  %18 = getelementptr [4 x i32], ptr %13, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = xor i32 %17, %19
  %21 = getelementptr [4 x i32], ptr %13, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = xor i32 %20, %22
  %24 = xor i32 %23, %8
  %25 = mul i32 %24, 1640531527
  %26 = lshr i32 %25, 24
  %27 = getelementptr [256 x %struct.hlist_head], ptr @inet6_addr_lst, i32 0, i32 %26
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  %30 = getelementptr i8, ptr %28, i32 -124
  %31 = icmp eq ptr %30, null
  %32 = or i1 %29, %31
  br i1 %32, label %62, label %33

33:                                               ; preds = %50, %9
  %34 = phi ptr [ %54, %50 ], [ %30, %9 ]
  %35 = load i32, ptr %34, align 4
  %36 = xor i32 %35, %14
  %37 = getelementptr [4 x i32], ptr %34, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = xor i32 %38, %16
  %40 = or i32 %39, %36
  %41 = getelementptr [4 x i32], ptr %34, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = xor i32 %42, %19
  %44 = or i32 %40, %43
  %45 = getelementptr [4 x i32], ptr %34, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = xor i32 %46, %22
  %48 = or i32 %44, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %33
  %51 = getelementptr inbounds %struct.inet6_ifaddr, ptr %34, i32 0, i32 18
  %52 = load volatile ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  %54 = getelementptr i8, ptr %52, i32 -124
  %55 = icmp eq ptr %54, null
  %56 = or i1 %53, %55
  br i1 %56, label %62, label %33

57:                                               ; preds = %33
  %58 = icmp sgt i32 %11, 1
  %59 = and i1 %12, %58
  br i1 %59, label %67, label %60

60:                                               ; preds = %57
  %61 = add i32 %11, 1
  br label %62

62:                                               ; preds = %60, %50, %9
  %63 = phi i1 [ false, %60 ], [ true, %9 ], [ true, %50 ]
  %64 = phi i32 [ %61, %60 ], [ %11, %9 ], [ %11, %50 ]
  %65 = add nuw nsw i32 %10, 1
  %66 = icmp eq i32 %65, %4
  br i1 %66, label %67, label %9

67:                                               ; preds = %62, %57, %3
  %68 = phi i32 [ 0, %3 ], [ 1, %57 ], [ 0, %62 ]
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inet6_ifinfo_notify(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @__alloc_skb(i32 noundef 764, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @inet6_fill_ifinfo(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %0, i32 noundef 0)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = icmp eq i32 %6, -90
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 6030, i32 noundef 9, ptr noundef null) #22
  br label %11

11:                                               ; preds = %10, %8
  tail call void @kfree_skb_reason(ptr noundef nonnull %3, i32 noundef 0) #22
  br label %13

12:                                               ; preds = %5
  tail call void @rtnl_notify(ptr noundef nonnull %3, ptr noundef nonnull @init_net, i32 noundef 0, i32 noundef 12, ptr noundef null, i32 noundef 2592) #22
  br label %15

13:                                               ; preds = %11, %2
  %14 = phi i32 [ %6, %11 ], [ -105, %2 ]
  tail call void @rtnl_set_sk_err(ptr noundef nonnull @init_net, i32 noundef 12, i32 noundef %14) #22
  br label %15

15:                                               ; preds = %13, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @inet6_fill_ifinfo(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load ptr, ptr %1, align 4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %107

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %18 = load ptr, ptr %17, align 8
  %19 = ptrtoint ptr %16 to i32
  %20 = ptrtoint ptr %18 to i32
  %21 = sub i32 %19, %20
  %22 = icmp slt i32 %21, 32
  br i1 %22, label %107, label %23, !prof !9

23:                                               ; preds = %14
  %24 = tail call ptr @__nlmsg_put(ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 16, i32 noundef %5) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %107, label %26

26:                                               ; preds = %23
  %27 = getelementptr i8, ptr %24, i32 16
  store i8 10, ptr %27, align 4
  %28 = getelementptr i8, ptr %24, i32 17
  store i8 0, ptr %28, align 1
  %29 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 32
  %30 = load i16, ptr %29, align 16
  %31 = getelementptr i8, ptr %24, i32 18
  store i16 %30, ptr %31, align 2
  %32 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 17
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr i8, ptr %24, i32 20
  store i32 %33, ptr %34, align 4
  %35 = tail call i32 @dev_get_flags(ptr noundef %10) #22
  %36 = getelementptr i8, ptr %24, i32 24
  store i32 %35, ptr %36, align 4
  %37 = getelementptr i8, ptr %24, i32 28
  store i32 0, ptr %37, align 4
  %38 = tail call i32 @strlen(ptr noundef %10) #22
  %39 = add i32 %38, 1
  %40 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 3, i32 noundef %39, ptr noundef %10) #22
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %96

42:                                               ; preds = %26
  %43 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 51
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = zext i8 %44 to i32
  %48 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 72
  %49 = load ptr, ptr %48, align 32
  %50 = tail call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef %47, ptr noundef %49) #22
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %96

52:                                               ; preds = %46, %42
  %53 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 20
  %54 = load i32, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  store i32 %54, ptr %9, align 4
  %55 = call i32 @nla_put(ptr noundef %0, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %96

57:                                               ; preds = %52
  %58 = load i32, ptr %32, align 4
  %59 = call i32 @dev_get_iflink(ptr noundef %10) #22
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = call i32 @dev_get_iflink(ptr noundef %10) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  store i32 %62, ptr %8, align 4
  %63 = call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %96

65:                                               ; preds = %61, %57
  %66 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 6
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 45
  %72 = load i8, ptr %71, align 4
  br label %73

73:                                               ; preds = %70, %65
  %74 = phi i8 [ %72, %70 ], [ 2, %65 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #22
  store i8 %74, ptr %7, align 1
  %75 = call i32 @nla_put(ptr noundef %0, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #22
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %73
  %78 = load ptr, ptr %17, align 8
  %79 = call i32 @nla_put(ptr noundef %0, i32 noundef 12, i32 noundef 0, ptr noundef null) #22
  %80 = icmp slt i32 %79, 0
  %81 = icmp eq ptr %78, null
  %82 = select i1 %80, i1 true, i1 %81
  br i1 %82, label %96, label %83

83:                                               ; preds = %77
  %84 = call fastcc i32 @inet6_fill_ifla6_attrs(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %17, align 8
  %88 = ptrtoint ptr %87 to i32
  %89 = ptrtoint ptr %78 to i32
  %90 = sub i32 %88, %89
  %91 = trunc i32 %90 to i16
  store i16 %91, ptr %78, align 2
  %92 = load ptr, ptr %17, align 8
  %93 = ptrtoint ptr %92 to i32
  %94 = ptrtoint ptr %24 to i32
  %95 = sub i32 %93, %94
  store i32 %95, ptr %24, align 4
  br label %107

96:                                               ; preds = %83, %77, %73, %61, %52, %46, %26
  %97 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %98 = load ptr, ptr %97, align 4
  %99 = icmp ugt ptr %98, %24
  br i1 %99, label %100, label %102, !prof !9

100:                                              ; preds = %96
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 991, i32 noundef 9, ptr noundef null) #22
  %101 = load ptr, ptr %97, align 4
  br label %102

102:                                              ; preds = %100, %96
  %103 = phi ptr [ %101, %100 ], [ %98, %96 ]
  %104 = ptrtoint ptr %24 to i32
  %105 = ptrtoint ptr %103 to i32
  %106 = sub i32 %104, %105
  call void @skb_trim(ptr noundef %0, i32 noundef %106) #22
  br label %107

107:                                              ; preds = %102, %86, %23, %14, %6
  %108 = phi i32 [ -90, %102 ], [ 0, %86 ], [ -90, %23 ], [ -90, %14 ], [ -90, %6 ]
  ret i32 %108
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @addrconf_init() local_unnamed_addr #9 section ".init.text" {
  %1 = tail call i32 @ipv6_addr_label_init() #22
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.addrconf_init, i32 noundef %1) #23
  br label %54

5:                                                ; preds = %0
  %6 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @addrconf_ops) #22
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %52, label %8

8:                                                ; preds = %5
  %9 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.8, i32 noundef 262152, i32 noundef 1, ptr noundef nonnull @.str.9) #22
  store ptr %9, ptr @addrconf_wq, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %50, label %11

11:                                               ; preds = %8
  tail call void @rtnl_lock() #22
  %12 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 27), align 64
  %13 = tail call fastcc ptr @ipv6_add_dev(ptr noundef %12)
  tail call void @rtnl_unlock() #22
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = ptrtoint ptr %13 to i32
  br label %47

17:                                               ; preds = %11
  tail call void @ip6_route_init_special_entries() #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(1024) @inet6_addr_lst, i8 0, i32 1024, i1 false)
  %18 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @ipv6_dev_notf) #22
  %19 = load ptr, ptr @addrconf_wq, align 4
  %20 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %19, ptr noundef nonnull @addr_chk_work, i32 noundef 0) #22
  tail call void @rtnl_af_register(ptr noundef nonnull @inet6_ops) #22
  %21 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 10, i32 noundef 18, ptr noundef null, ptr noundef nonnull @inet6_dump_ifinfo, i32 noundef 0) #22
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %17
  %24 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 10, i32 noundef 20, ptr noundef nonnull @inet6_rtm_newaddr, ptr noundef null, i32 noundef 0) #22
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 10, i32 noundef 21, ptr noundef nonnull @inet6_rtm_deladdr, ptr noundef null, i32 noundef 0) #22
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 10, i32 noundef 22, ptr noundef nonnull @inet6_rtm_getaddr, ptr noundef nonnull @inet6_dump_ifaddr, i32 noundef 1) #22
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 10, i32 noundef 58, ptr noundef null, ptr noundef nonnull @inet6_dump_ifmcaddr, i32 noundef 0) #22
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 10, i32 noundef 62, ptr noundef null, ptr noundef nonnull @inet6_dump_ifacaddr, i32 noundef 0) #22
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 10, i32 noundef 82, ptr noundef nonnull @inet6_netconf_get_devconf, ptr noundef nonnull @inet6_netconf_dump_devconf, i32 noundef 1) #22
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = tail call i32 @ipv6_addr_label_rtnl_register() #22
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41, %38, %35, %32, %29, %26, %23, %17
  %45 = phi i32 [ %21, %17 ], [ %24, %23 ], [ %27, %26 ], [ %30, %29 ], [ %33, %32 ], [ %36, %35 ], [ %39, %38 ], [ %42, %41 ]
  tail call void @rtnl_unregister_all(i32 noundef 10) #22
  tail call void @rtnl_af_unregister(ptr noundef nonnull @inet6_ops) #22
  %46 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @ipv6_dev_notf) #22
  br label %47

47:                                               ; preds = %44, %15
  %48 = phi i32 [ %16, %15 ], [ %45, %44 ]
  %49 = load ptr, ptr @addrconf_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %49) #22
  br label %50

50:                                               ; preds = %47, %8
  %51 = phi i32 [ %48, %47 ], [ -12, %8 ]
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @addrconf_ops) #22
  br label %52

52:                                               ; preds = %50, %5
  %53 = phi i32 [ %6, %5 ], [ %51, %50 ]
  tail call void @ipv6_addr_label_cleanup() #22
  br label %54

54:                                               ; preds = %52, %41, %3
  %55 = phi i32 [ 0, %41 ], [ %1, %3 ], [ %53, %52 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_addr_label_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ipv6_add_dev(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @rtnl_is_locked() #22
  %3 = icmp eq i32 %2, 0
  %4 = load i1, ptr @ipv6_add_dev.__already_done, align 1
  %5 = xor i1 %4, true
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %8, !prof !9

7:                                                ; preds = %1
  store i1 true, ptr @ipv6_add_dev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 380, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str, i32 noundef 380) #22
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %10, 1280
  br i1 %11, label %202, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 660) #24
  %15 = icmp eq ptr %14, null
  br i1 %15, label %202, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 24
  store i32 0, ptr %17, align 4
  store ptr %0, ptr %14, align 8
  %18 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 2
  store volatile ptr %18, ptr %18, align 4
  %19 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 2, i32 1
  store ptr %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 34
  tail call void @init_timer_key(ptr noundef %20, ptr noundef nonnull @addrconf_rs_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #22
  %21 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 32
  %22 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 3), align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(228) %21, ptr noundef align 4 dereferenceable(228) %22, i32 228, i1 false)
  %23 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 32, i32 40
  %24 = load i8, ptr %23, align 4, !range !19
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 32, i32 45
  store i32 2, ptr %27, align 8
  br label %28

28:                                               ; preds = %26, %16
  %29 = load i32, ptr %9, align 4
  %30 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 32, i32 2
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 39
  store i32 0, ptr %31, align 8
  %32 = tail call ptr @neigh_parms_alloc(ptr noundef %0, ptr noundef nonnull @nd_tbl) #22
  %33 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 31
  store ptr %32, ptr %33, align 8
  %34 = icmp eq ptr %32, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  tail call void @kfree(ptr noundef nonnull %14) #22
  br label %202

36:                                               ; preds = %28
  %37 = load i32, ptr %21, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  tail call void @dev_disable_lro(ptr noundef %0) #22
  br label %40

40:                                               ; preds = %39, %36
  %41 = icmp eq ptr %0, null
  br i1 %41, label %54, label %42

42:                                               ; preds = %40
  %43 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !33
  %44 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 99
  %45 = load ptr, ptr %44, align 8
  %46 = ptrtoint ptr %45 to i32
  %47 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %48 = inttoptr i32 %47 to ptr
  %49 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %48) #18, !srcloc !34
  %50 = add i32 %49, %46
  %51 = inttoptr i32 %50 to ptr
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %51, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %43) #22, !srcloc !35
  br label %54

54:                                               ; preds = %42, %40
  %55 = tail call noalias ptr @__alloc_percpu(i32 noundef 304, i32 noundef 8) #26
  %56 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 33, i32 1
  store ptr %55, ptr %56, align 4
  %57 = icmp eq ptr %55, null
  br i1 %57, label %96, label %58

58:                                               ; preds = %54
  %59 = load i32, ptr @nr_cpu_ids, align 4
  %60 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #27
  %61 = icmp ult i32 %60, %59
  br i1 %61, label %62, label %82

62:                                               ; preds = %58
  %63 = ptrtoint ptr %55 to i32
  %64 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %60
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, %63
  %67 = inttoptr i32 %66 to ptr
  %68 = getelementptr inbounds %struct.ipstats_mib, ptr %67, i32 0, i32 1
  store i32 0, ptr %68, align 4
  %69 = tail call i32 @cpumask_next(i32 noundef %60, ptr noundef nonnull @__cpu_possible_mask) #27
  %70 = icmp ult i32 %69, %59
  br i1 %70, label %71, label %82

71:                                               ; preds = %71, %62
  %72 = phi i32 [ %80, %71 ], [ %69, %62 ]
  %73 = load ptr, ptr %56, align 4
  %74 = ptrtoint ptr %73 to i32
  %75 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %72
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %76, %74
  %78 = inttoptr i32 %77 to ptr
  %79 = getelementptr inbounds %struct.ipstats_mib, ptr %78, i32 0, i32 1
  store i32 0, ptr %79, align 4
  %80 = tail call i32 @cpumask_next(i32 noundef %72, ptr noundef nonnull @__cpu_possible_mask) #27
  %81 = icmp ult i32 %80, %59
  br i1 %81, label %71, label %82

82:                                               ; preds = %71, %62, %58
  %83 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %84 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %83, i32 noundef 3520, i32 noundef 24) #24
  %85 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 33, i32 2
  store ptr %84, ptr %85, align 8
  %86 = icmp eq ptr %84, null
  br i1 %86, label %94, label %87

87:                                               ; preds = %82
  %88 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %89 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %88, i32 noundef 3520, i32 noundef 2048) #24
  %90 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 33, i32 3
  store ptr %89, ptr %90, align 4
  %91 = icmp eq ptr %89, null
  br i1 %91, label %92, label %111

92:                                               ; preds = %87
  %93 = load ptr, ptr %85, align 8
  tail call void @kfree(ptr noundef %93) #22
  br label %94

94:                                               ; preds = %92, %82
  %95 = load ptr, ptr %56, align 4
  tail call void @free_percpu(ptr noundef %95) #22
  br label %96

96:                                               ; preds = %94, %54
  %97 = load ptr, ptr %33, align 8
  tail call void @neigh_parms_release(ptr noundef nonnull @nd_tbl, ptr noundef %97) #22
  br i1 %41, label %110, label %98

98:                                               ; preds = %96
  %99 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !33
  %100 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 99
  %101 = load ptr, ptr %100, align 8
  %102 = ptrtoint ptr %101 to i32
  %103 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %104 = inttoptr i32 %103 to ptr
  %105 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %104) #18, !srcloc !34
  %106 = add i32 %105, %102
  %107 = inttoptr i32 %106 to ptr
  %108 = load i32, ptr %107, align 4
  %109 = add i32 %108, -1
  store i32 %109, ptr %107, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %99) #22, !srcloc !35
  br label %110

110:                                              ; preds = %98, %96
  tail call void @kfree(ptr noundef nonnull %14) #22
  br label %202

111:                                              ; preds = %87
  %112 = tail call i32 @snmp6_register_dev(ptr noundef nonnull %14) #22
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %198, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 25
  store volatile i32 1, ptr %115, align 8
  %116 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %117 = load i32, ptr %116, align 8
  %118 = and i32 %117, 136
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 32, i32 34
  store i32 -1, ptr %121, align 4
  br label %122

122:                                              ; preds = %120, %114
  %123 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 32
  %124 = load i16, ptr %123, align 16
  %125 = icmp eq i16 %124, 776
  br i1 %125, label %126, label %134

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 15
  %128 = load i64, ptr %127, align 16
  %129 = and i64 %128, 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %0) #23
  %133 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 32, i32 7
  store i32 0, ptr %133, align 8
  br label %134

134:                                              ; preds = %131, %126, %122
  %135 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 29
  store volatile ptr %135, ptr %135, align 8
  %136 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 29, i32 1
  store ptr %135, ptr %136, align 4
  %137 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 28
  store i32 -1, ptr %137, align 4
  %138 = load i32, ptr %116, align 8
  %139 = and i32 %138, 8
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %134
  %142 = load i16, ptr %123, align 16
  switch i16 %142, label %145 [
    i16 768, label %143
    i16 769, label %143
    i16 776, label %143
    i16 -2, label %143
  ]

143:                                              ; preds = %141, %141, %141, %141, %134
  %144 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 32, i32 14
  store i32 -1, ptr %144, align 4
  br label %145

145:                                              ; preds = %143, %141
  %146 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 30
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %146, ptr noundef nonnull align 4 dereferenceable(16) @in6addr_any, i32 16, i1 false)
  %147 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 6
  %148 = load volatile i32, ptr %147, align 4
  %149 = and i32 %148, 1
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %178, label %151

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 45
  %153 = load i8, ptr %152, align 4
  switch i8 %153, label %178 [
    i8 6, label %154
    i8 0, label %154
  ]

154:                                              ; preds = %151, %151
  %155 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %156 = load i32, ptr %155, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %178, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %160 = load ptr, ptr %159, align 64
  %161 = getelementptr %struct.netdev_queue, ptr %160, i32 0, i32 2
  %162 = load volatile ptr, ptr %161, align 4
  %163 = icmp eq ptr %162, @noop_qdisc
  br i1 %163, label %164, label %174

164:                                              ; preds = %168, %158
  %165 = phi i32 [ %166, %168 ], [ 0, %158 ]
  %166 = add nuw i32 %165, 1
  %167 = icmp eq i32 %166, %156
  br i1 %167, label %178, label %168

168:                                              ; preds = %164
  %169 = getelementptr %struct.netdev_queue, ptr %160, i32 %166, i32 2
  %170 = load volatile ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, @noop_qdisc
  br i1 %171, label %164, label %172

172:                                              ; preds = %168
  %173 = icmp ult i32 %166, %156
  br i1 %173, label %174, label %178

174:                                              ; preds = %172, %158
  %175 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 26
  %176 = load i32, ptr %175, align 4
  %177 = or i32 %176, -2147483648
  store i32 %177, ptr %175, align 4
  br label %178

178:                                              ; preds = %174, %172, %164, %154, %151, %145
  tail call void @ipv6_mc_init_dev(ptr noundef nonnull %14) #22
  %179 = load volatile i32, ptr @jiffies, align 64
  %180 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 37
  store i32 %179, ptr %180, align 4
  %181 = tail call fastcc i32 @addrconf_sysctl_register(ptr noundef nonnull %14)
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %178
  tail call void @ipv6_mc_destroy_dev(ptr noundef nonnull %14) #22
  %184 = tail call i32 @snmp6_unregister_dev(ptr noundef nonnull %14) #22
  %185 = inttoptr i32 %181 to ptr
  br label %198

186:                                              ; preds = %178
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !36
  %187 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 69
  store volatile ptr %14, ptr %187, align 4
  %188 = tail call i32 @ipv6_dev_mc_inc(ptr noundef %0, ptr noundef nonnull @in6addr_interfacelocal_allnodes) #22
  %189 = tail call i32 @ipv6_dev_mc_inc(ptr noundef %0, ptr noundef nonnull @in6addr_linklocal_allnodes) #22
  %190 = load i32, ptr %21, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %202, label %192

192:                                              ; preds = %186
  %193 = load i32, ptr %116, align 8
  %194 = and i32 %193, 4096
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %202, label %196

196:                                              ; preds = %192
  %197 = tail call i32 @ipv6_dev_mc_inc(ptr noundef %0, ptr noundef nonnull @in6addr_linklocal_allrouters) #22
  br label %202

198:                                              ; preds = %183, %111
  %199 = phi ptr [ inttoptr (i32 -12 to ptr), %111 ], [ %185, %183 ]
  %200 = load ptr, ptr %33, align 8
  tail call void @neigh_parms_release(ptr noundef nonnull @nd_tbl, ptr noundef %200) #22
  %201 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 27
  store i32 1, ptr %201, align 8
  tail call void @in6_dev_finish_destroy(ptr noundef nonnull %14) #22
  br label %202

202:                                              ; preds = %198, %196, %192, %186, %110, %35, %12, %8
  %203 = phi ptr [ inttoptr (i32 -12 to ptr), %110 ], [ %199, %198 ], [ inttoptr (i32 -12 to ptr), %35 ], [ %14, %196 ], [ %14, %192 ], [ %14, %186 ], [ inttoptr (i32 -22 to ptr), %8 ], [ inttoptr (i32 -12 to ptr), %12 ]
  ret ptr %203
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip6_route_init_special_entries() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_af_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_register_module(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet6_dump_ifinfo(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 12
  %4 = load i8, ptr %3, align 4, !range !19
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %43, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %8, align 4
  %12 = icmp ult i32 %11, 32
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @inet6_valid_dump_ifinfo.__msg) #22
  %14 = icmp eq ptr %10, null
  br i1 %14, label %95, label %41

15:                                               ; preds = %6
  %16 = icmp eq i32 %11, 32
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @inet6_valid_dump_ifinfo.__msg.86) #22
  %18 = icmp eq ptr %10, null
  br i1 %18, label %95, label %41

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %8, i32 17
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %8, i32 18
  %25 = load i16, ptr %24, align 2
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %8, i32 24
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %8, i32 28
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %8, i32 20
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35, %31, %27, %23, %19
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @inet6_valid_dump_ifinfo.__msg.87) #22
  %40 = icmp eq ptr %10, null
  br i1 %40, label %95, label %41

41:                                               ; preds = %39, %17, %13
  %42 = phi ptr [ @inet6_valid_dump_ifinfo.__msg, %13 ], [ @inet6_valid_dump_ifinfo.__msg.86, %17 ], [ @inet6_valid_dump_ifinfo.__msg.87, %39 ]
  store ptr %42, ptr %10, align 4
  br label %95

43:                                               ; preds = %35, %2
  %44 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %48 = icmp slt i32 %45, 256
  br i1 %48, label %49, label %90

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  br label %51

51:                                               ; preds = %86, %49
  %52 = phi i32 [ %45, %49 ], [ %88, %86 ]
  %53 = phi i32 [ %47, %49 ], [ 0, %86 ]
  %54 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 24), align 4
  %55 = getelementptr %struct.hlist_head, ptr %54, i32 %52
  %56 = load volatile ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  %58 = getelementptr i8, ptr %56, i32 -560
  %59 = icmp eq ptr %58, null
  %60 = or i1 %57, %59
  br i1 %60, label %86, label %61

61:                                               ; preds = %78, %51
  %62 = phi i32 [ %79, %78 ], [ 0, %51 ]
  %63 = phi ptr [ %83, %78 ], [ %58, %51 ]
  %64 = icmp slt i32 %62, %53
  br i1 %64, label %78, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.net_device, ptr %63, i32 0, i32 69
  %67 = load volatile ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %78, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %1, align 4
  %71 = getelementptr inbounds %struct.sk_buff, ptr %70, i32 0, i32 3, i32 12
  %72 = load i32, ptr %71, align 4
  %73 = load ptr, ptr %50, align 4
  %74 = getelementptr inbounds %struct.nlmsghdr, ptr %73, i32 0, i32 3
  %75 = load i32, ptr %74, align 4
  %76 = tail call fastcc i32 @inet6_fill_ifinfo(ptr noundef %0, ptr noundef nonnull %67, i32 noundef %72, i32 noundef %75, i32 noundef 16, i32 noundef 2)
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %90, label %78

78:                                               ; preds = %69, %65, %61
  %79 = add i32 %62, 1
  %80 = getelementptr inbounds %struct.net_device, ptr %63, i32 0, i32 85
  %81 = load volatile ptr, ptr %80, align 16
  %82 = icmp eq ptr %81, null
  %83 = getelementptr i8, ptr %81, i32 -560
  %84 = icmp eq ptr %83, null
  %85 = or i1 %82, %84
  br i1 %85, label %86, label %61

86:                                               ; preds = %78, %51
  %87 = phi i32 [ 0, %51 ], [ %79, %78 ]
  %88 = add nsw i32 %52, 1
  %89 = icmp eq i32 %88, 256
  br i1 %89, label %90, label %51

90:                                               ; preds = %86, %69, %43
  %91 = phi i32 [ %45, %43 ], [ %52, %69 ], [ 256, %86 ]
  %92 = phi i32 [ 0, %43 ], [ %62, %69 ], [ %87, %86 ]
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  store i32 %92, ptr %46, align 4
  store i32 %91, ptr %44, align 4
  %93 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %94 = load i32, ptr %93, align 8
  br label %95

95:                                               ; preds = %90, %41, %39, %17, %13
  %96 = phi i32 [ %94, %90 ], [ -22, %13 ], [ -22, %17 ], [ -22, %39 ], [ -22, %41 ]
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet6_rtm_newaddr(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.fib6_config, align 4
  %5 = alloca %struct.fib6_config, align 4
  %6 = alloca i32, align 4
  %7 = alloca [11 x ptr], align 4
  %8 = alloca %struct.ifa6_config, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %7) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %7, i8 0, i32 44, i1 false), !annotation !15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #22
  %9 = load i32, ptr %1, align 4
  %10 = icmp ult i32 %9, 24
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #22
  %12 = icmp eq ptr %2, null
  br i1 %12, label %408, label %13

13:                                               ; preds = %11
  store ptr @__nlmsg_parse.__msg, ptr %2, align 4
  br label %408

14:                                               ; preds = %3
  %15 = getelementptr i8, ptr %1, i32 24
  %16 = add i32 %9, -24
  %17 = call i32 @__nla_parse(ptr noundef nonnull %7, i32 noundef 10, ptr noundef %15, i32 noundef %16, ptr noundef nonnull @ifa_ipv6_policy, i32 noundef 0, ptr noundef %2) #22
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %408, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds i8, ptr %8, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %20, i8 0, i32 20, i1 false)
  %21 = getelementptr inbounds [11 x ptr], ptr %7, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds [11 x ptr], ptr %7, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %22, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = getelementptr i8, ptr %22, i32 4
  %28 = icmp eq ptr %24, null
  br i1 %28, label %40, label %31

29:                                               ; preds = %19
  %30 = icmp eq ptr %24, null
  br i1 %30, label %408, label %37

31:                                               ; preds = %26
  %32 = icmp eq ptr %27, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %31
  %34 = call i32 @nla_memcmp(ptr noundef nonnull %24, ptr noundef nonnull %27, i32 noundef 16) #22
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, ptr null, ptr %27
  br label %37

37:                                               ; preds = %33, %31, %29
  %38 = phi ptr [ null, %29 ], [ null, %31 ], [ %36, %33 ]
  %39 = getelementptr i8, ptr %24, i32 4
  br label %40

40:                                               ; preds = %37, %26
  %41 = phi ptr [ %38, %37 ], [ null, %26 ]
  %42 = phi ptr [ %39, %37 ], [ %27, %26 ]
  store ptr %42, ptr %8, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %408, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ifa6_config, ptr %8, i32 0, i32 2
  store ptr %41, ptr %45, align 4
  %46 = getelementptr i8, ptr %1, i32 17
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = getelementptr inbounds %struct.ifa6_config, ptr %8, i32 0, i32 1
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds [11 x ptr], ptr %7, i32 0, i32 9
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %44
  %54 = getelementptr i8, ptr %51, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.ifa6_config, ptr %8, i32 0, i32 3
  store i32 %55, ptr %56, align 4
  br label %57

57:                                               ; preds = %53, %44
  %58 = phi i32 [ %55, %53 ], [ 0, %44 ]
  %59 = getelementptr inbounds %struct.ifa6_config, ptr %8, i32 0, i32 6
  store i32 -1, ptr %59, align 4
  %60 = getelementptr inbounds %struct.ifa6_config, ptr %8, i32 0, i32 5
  store i32 -1, ptr %60, align 4
  %61 = getelementptr inbounds [11 x ptr], ptr %7, i32 0, i32 6
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %57
  %65 = getelementptr i8, ptr %62, i32 4
  %66 = getelementptr i8, ptr %62, i32 8
  %67 = load i32, ptr %66, align 4
  store i32 %67, ptr %59, align 4
  %68 = load i32, ptr %65, align 4
  store i32 %68, ptr %60, align 4
  br label %69

69:                                               ; preds = %64, %57
  %70 = phi i32 [ %68, %64 ], [ -1, %57 ]
  %71 = phi i32 [ %67, %64 ], [ -1, %57 ]
  %72 = getelementptr i8, ptr %1, i32 20
  %73 = load i32, ptr %72, align 4
  %74 = call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %73) #22
  %75 = icmp eq ptr %74, null
  br i1 %75, label %408, label %76

76:                                               ; preds = %69
  %77 = getelementptr inbounds [11 x ptr], ptr %7, i32 0, i32 8
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = getelementptr i8, ptr %78, i32 4
  %82 = load i32, ptr %81, align 4
  br label %87

83:                                               ; preds = %76
  %84 = getelementptr i8, ptr %1, i32 18
  %85 = load i8, ptr %84, align 2
  %86 = zext i8 %85 to i32
  br label %87

87:                                               ; preds = %83, %80
  %88 = phi i32 [ %86, %83 ], [ %82, %80 ]
  %89 = getelementptr inbounds %struct.ifa6_config, ptr %8, i32 0, i32 4
  %90 = and i32 %88, 1814
  store i32 %90, ptr %89, align 4
  %91 = call i32 @rtnl_is_locked() #22
  %92 = icmp eq i32 %91, 0
  %93 = load i1, ptr @ipv6_find_idev.__already_done, align 1
  %94 = xor i1 %93, true
  %95 = select i1 %92, i1 %94, i1 false
  br i1 %95, label %96, label %97, !prof !9

96:                                               ; preds = %87
  store i1 true, ptr @ipv6_find_idev.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 487, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str, i32 noundef 487) #22
  br label %97

97:                                               ; preds = %96, %87
  %98 = getelementptr inbounds %struct.net_device, ptr %74, i32 0, i32 69
  %99 = load volatile ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = call fastcc ptr @ipv6_add_dev(ptr noundef nonnull %74) #22
  %103 = icmp ugt ptr %102, inttoptr (i32 -4096 to ptr)
  br i1 %103, label %111, label %104

104:                                              ; preds = %101, %97
  %105 = phi ptr [ %99, %97 ], [ %102, %101 ]
  %106 = getelementptr inbounds %struct.net_device, ptr %74, i32 0, i32 14
  %107 = load i32, ptr %106, align 8
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %104
  call void @ipv6_mc_up(ptr noundef %105) #22
  br label %111

111:                                              ; preds = %110, %104, %101
  %112 = phi ptr [ %102, %101 ], [ %105, %110 ], [ %105, %104 ]
  %113 = icmp ugt ptr %112, inttoptr (i32 -4096 to ptr)
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = ptrtoint ptr %112 to i32
  br label %408

116:                                              ; preds = %111
  %117 = icmp eq ptr %112, null
  br i1 %117, label %127, label %118

118:                                              ; preds = %116
  %119 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %120 = getelementptr inbounds %struct.ipv6_devconf, ptr %119, i32 0, i32 30
  %121 = load i32, ptr %120, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.inet6_dev, ptr %112, i32 0, i32 32, i32 30
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %123, %116
  %128 = and i32 %88, 1810
  store i32 %128, ptr %89, align 4
  br label %129

129:                                              ; preds = %127, %123, %118
  %130 = phi i32 [ %90, %123 ], [ %90, %118 ], [ %128, %127 ]
  %131 = and i32 %130, 6
  %132 = icmp eq i32 %131, 6
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  call void @do_trace_netlink_extack(ptr noundef nonnull @inet6_rtm_newaddr.__msg) #22
  %134 = icmp eq ptr %2, null
  br i1 %134, label %408, label %135

135:                                              ; preds = %133
  store ptr @inet6_rtm_newaddr.__msg, ptr %2, align 4
  br label %408

136:                                              ; preds = %129
  %137 = call ptr @ipv6_get_ifaddr(ptr noundef nonnull @init_net, ptr noundef nonnull %42, ptr noundef nonnull %74, i32 noundef 1)
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32, ptr %72, align 4
  %141 = call fastcc i32 @inet6_addr_add(ptr noundef nonnull @init_net, i32 noundef %140, ptr noundef nonnull %8, ptr noundef %2)
  br label %408

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 2
  %144 = load i16, ptr %143, align 2
  %145 = and i16 %144, 768
  %146 = icmp eq i16 %145, 256
  br i1 %146, label %147, label %398

147:                                              ; preds = %142
  %148 = call i32 @rtnl_is_locked() #22
  %149 = icmp eq i32 %148, 0
  %150 = load i1, ptr @inet6_addr_modify.__already_done, align 1
  %151 = xor i1 %150, true
  %152 = select i1 %149, i1 %151, i1 false
  br i1 %152, label %153, label %154, !prof !9

153:                                              ; preds = %147
  store i1 true, ptr @inet6_addr_modify.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4724, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str, i32 noundef 4724) #22
  br label %154

154:                                              ; preds = %153, %147
  %155 = icmp eq i32 %71, 0
  %156 = icmp ugt i32 %70, %71
  %157 = select i1 %155, i1 true, i1 %156
  br i1 %157, label %398, label %158

158:                                              ; preds = %154
  %159 = and i32 %130, 256
  %160 = icmp eq i32 %159, 0
  %161 = getelementptr inbounds %struct.inet6_ifaddr, ptr %137, i32 0, i32 8
  %162 = load i32, ptr %161, align 4
  br i1 %160, label %170, label %163

163:                                              ; preds = %158
  %164 = and i32 %162, 1
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %398

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.inet6_ifaddr, ptr %137, i32 0, i32 1
  %168 = load i32, ptr %167, align 8
  %169 = icmp eq i32 %168, 64
  br i1 %169, label %170, label %398

170:                                              ; preds = %166, %158
  %171 = and i32 %162, 72
  %172 = icmp eq i32 %171, 64
  br i1 %172, label %175, label %173

173:                                              ; preds = %170
  %174 = and i32 %130, 1810
  store i32 %174, ptr %89, align 4
  br label %175

175:                                              ; preds = %173, %170
  %176 = phi i32 [ %130, %170 ], [ %174, %173 ]
  %177 = icmp eq i32 %71, -1
  br i1 %177, label %182, label %178

178:                                              ; preds = %175
  %179 = call i32 @llvm.umin.i32(i32 %71, i32 21474836) #22
  %180 = mul nuw nsw i32 %179, 100
  %181 = call i32 @jiffies_to_clock_t(i32 noundef %180) #22
  store i32 %179, ptr %59, align 4
  br label %184

182:                                              ; preds = %175
  %183 = or i32 %176, 128
  store i32 %183, ptr %89, align 4
  br label %184

184:                                              ; preds = %182, %178
  %185 = phi i32 [ %179, %178 ], [ -1, %182 ]
  %186 = phi i32 [ %176, %178 ], [ %183, %182 ]
  %187 = phi i32 [ %181, %178 ], [ 0, %182 ]
  %188 = phi i32 [ 4194304, %178 ], [ 0, %182 ]
  %189 = icmp eq i32 %70, -1
  %190 = call i32 @llvm.umin.i32(i32 %70, i32 21474836) #22
  %191 = select i1 %189, i32 -1, i32 %190
  br i1 %189, label %198, label %192

192:                                              ; preds = %184
  %193 = icmp eq i32 %191, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %192
  %195 = or i32 %186, 32
  store i32 %195, ptr %89, align 4
  br label %196

196:                                              ; preds = %194, %192
  %197 = phi i32 [ %195, %194 ], [ %186, %192 ]
  store i32 %191, ptr %60, align 4
  br label %198

198:                                              ; preds = %196, %184
  %199 = phi i32 [ %190, %196 ], [ -1, %184 ]
  %200 = phi i32 [ %197, %196 ], [ %186, %184 ]
  %201 = icmp eq ptr %41, null
  br i1 %201, label %228, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.inet6_ifaddr, ptr %137, i32 0, i32 25
  %204 = call i32 @bcmp(ptr noundef dereferenceable(16) %203, ptr noundef nonnull dereferenceable(16) %41, i32 16) #22
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %228, label %206

206:                                              ; preds = %202
  %207 = load i32, ptr %203, align 4
  %208 = getelementptr %struct.inet6_ifaddr, ptr %137, i32 0, i32 25, i32 0, i32 0, i32 1
  %209 = load i32, ptr %208, align 4
  %210 = or i32 %209, %207
  %211 = getelementptr %struct.inet6_ifaddr, ptr %137, i32 0, i32 25, i32 0, i32 0, i32 2
  %212 = load i32, ptr %211, align 4
  %213 = or i32 %210, %212
  %214 = getelementptr %struct.inet6_ifaddr, ptr %137, i32 0, i32 25, i32 0, i32 0, i32 3
  %215 = load i32, ptr %214, align 4
  %216 = or i32 %213, %215
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %228, label %218

218:                                              ; preds = %206
  %219 = getelementptr inbounds %struct.inet6_ifaddr, ptr %137, i32 0, i32 1
  %220 = load i32, ptr %219, align 8
  %221 = getelementptr inbounds %struct.inet6_ifaddr, ptr %137, i32 0, i32 16
  %222 = load ptr, ptr %221, align 4
  %223 = load ptr, ptr %222, align 4
  %224 = call fastcc ptr @addrconf_get_prefix_route(ptr noundef %203, i32 noundef %220, ptr noundef %223, i32 noundef 0, i32 noundef 65536, i1 noundef zeroext true) #22
  %225 = icmp eq ptr %224, null
  br i1 %225, label %228, label %226

226:                                              ; preds = %218
  %227 = call i32 @ip6_del_rt(ptr noundef nonnull @init_net, ptr noundef nonnull %224, i1 noundef zeroext false) #22
  br label %228

228:                                              ; preds = %226, %218, %206, %202, %198
  %229 = phi i1 [ false, %202 ], [ false, %198 ], [ true, %206 ], [ true, %218 ], [ true, %226 ]
  %230 = getelementptr inbounds %struct.inet6_ifaddr, ptr %137, i32 0, i32 6
  call void @_raw_spin_lock_bh(ptr noundef %230) #22
  %231 = load i32, ptr %161, align 4
  %232 = and i32 %231, 256
  %233 = icmp eq i32 %232, 0
  %234 = and i32 %231, 640
  %235 = icmp eq i32 %234, 128
  %236 = and i32 %231, -947
  %237 = or i32 %200, %236
  store i32 %237, ptr %161, align 4
  %238 = load volatile i32, ptr @jiffies, align 64
  %239 = getelementptr inbounds %struct.inet6_ifaddr, ptr %137, i32 0, i32 14
  store i32 %238, ptr %239, align 4
  %240 = getelementptr inbounds %struct.inet6_ifaddr, ptr %137, i32 0, i32 3
  store i32 %185, ptr %240, align 8
  %241 = getelementptr inbounds %struct.inet6_ifaddr, ptr %137, i32 0, i32 4
  store i32 %199, ptr %241, align 4
  %242 = icmp eq i32 %58, 0
  br i1 %242, label %248, label %243

243:                                              ; preds = %228
  %244 = getelementptr inbounds %struct.inet6_ifaddr, ptr %137, i32 0, i32 2
  %245 = load i32, ptr %244, align 4
  %246 = icmp eq i32 %58, %245
  br i1 %246, label %248, label %247

247:                                              ; preds = %243
  store i32 %58, ptr %244, align 4
  br label %248

248:                                              ; preds = %247, %243, %228
  br i1 %229, label %249, label %251

249:                                              ; preds = %248
  %250 = getelementptr inbounds %struct.inet6_ifaddr, ptr %137, i32 0, i32 25
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %250, ptr noundef align 4 dereferenceable(16) %41, i32 16, i1 false) #22
  br label %251

251:                                              ; preds = %249, %248
  call void @_raw_spin_unlock_bh(ptr noundef %230) #22
  %252 = load i32, ptr %161, align 4
  %253 = and i32 %252, 64
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %262

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.inet6_ifaddr, ptr %137, i32 0, i32 16
  %257 = load ptr, ptr %256, align 4
  %258 = getelementptr inbounds %struct.inet6_dev, ptr %257, i32 0, i32 27
  %259 = load i32, ptr %258, align 4
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %262, !prof !10

261:                                              ; preds = %255
  call fastcc void @__ipv6_ifa_notify(i32 noundef 0, ptr noundef nonnull %137) #22
  br label %262

262:                                              ; preds = %261, %255, %251
  %263 = and i32 %200, 512
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %371

265:                                              ; preds = %262
  br i1 %235, label %266, label %269

266:                                              ; preds = %265
  %267 = call fastcc i32 @modify_prefix_route(ptr noundef nonnull %137, i32 noundef %187, i32 noundef %188, i1 noundef zeroext false) #22
  %268 = icmp eq i32 %267, -2
  br i1 %268, label %269, label %304

269:                                              ; preds = %266, %265
  %270 = getelementptr inbounds %struct.inet6_ifaddr, ptr %137, i32 0, i32 1
  %271 = load i32, ptr %270, align 8
  %272 = getelementptr inbounds %struct.inet6_ifaddr, ptr %137, i32 0, i32 2
  %273 = load i32, ptr %272, align 4
  %274 = getelementptr inbounds %struct.inet6_ifaddr, ptr %137, i32 0, i32 16
  %275 = load ptr, ptr %274, align 4
  %276 = load ptr, ptr %275, align 4
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %5) #22
  %277 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(132) %277, i8 0, i64 132, i1 false) #22
  store i32 254, ptr %5, align 4
  %278 = getelementptr inbounds %struct.fib6_config, ptr %5, i32 0, i32 1
  %279 = icmp eq i32 %273, 0
  %280 = select i1 %279, i32 256, i32 %273
  store i32 %280, ptr %278, align 4
  %281 = getelementptr inbounds %struct.fib6_config, ptr %5, i32 0, i32 2
  store i32 %271, ptr %281, align 4
  %282 = getelementptr inbounds %struct.fib6_config, ptr %5, i32 0, i32 4
  %283 = getelementptr inbounds %struct.net_device, ptr %276, i32 0, i32 17
  %284 = load i32, ptr %283, align 4
  store i32 %284, ptr %282, align 4
  %285 = getelementptr inbounds %struct.fib6_config, ptr %5, i32 0, i32 5
  %286 = or i32 %188, 1
  store i32 %286, ptr %285, align 4
  %287 = getelementptr inbounds %struct.fib6_config, ptr %5, i32 0, i32 6
  store i32 2, ptr %287, align 4
  %288 = getelementptr inbounds %struct.fib6_config, ptr %5, i32 0, i32 7
  store i16 1, ptr %288, align 4
  %289 = getelementptr inbounds %struct.fib6_config, ptr %5, i32 0, i32 14
  store i32 %187, ptr %289, align 4
  %290 = getelementptr inbounds %struct.fib6_config, ptr %5, i32 0, i32 19, i32 1
  store ptr @init_net, ptr %290, align 4
  %291 = getelementptr inbounds %struct.fib6_config, ptr %5, i32 0, i32 10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %291, ptr noundef nonnull align 4 dereferenceable(16) %137, i32 16, i1 false) #22
  %292 = getelementptr inbounds %struct.net_device, ptr %276, i32 0, i32 32
  %293 = load i16, ptr %292, align 16
  %294 = icmp eq i16 %293, 776
  br i1 %294, label %295, label %302

295:                                              ; preds = %269
  %296 = getelementptr inbounds %struct.net_device, ptr %276, i32 0, i32 14
  %297 = load i32, ptr %296, align 8
  %298 = and i32 %297, 16
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %302, label %300

300:                                              ; preds = %295
  %301 = or i32 %188, 2097153
  store i32 %301, ptr %285, align 4
  br label %302

302:                                              ; preds = %300, %295, %269
  %303 = call i32 @ip6_route_add(ptr noundef nonnull %5, i32 noundef 3264, ptr noundef null) #22
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %5) #22
  br i1 %235, label %304, label %323

304:                                              ; preds = %302, %266
  %305 = phi i32 [ -2, %302 ], [ %267, %266 ]
  %306 = getelementptr inbounds %struct.inet6_ifaddr, ptr %137, i32 0, i32 25
  %307 = load i32, ptr %306, align 4
  %308 = getelementptr %struct.inet6_ifaddr, ptr %137, i32 0, i32 25, i32 0, i32 0, i32 1
  %309 = load i32, ptr %308, align 4
  %310 = or i32 %309, %307
  %311 = getelementptr %struct.inet6_ifaddr, ptr %137, i32 0, i32 25, i32 0, i32 0, i32 2
  %312 = load i32, ptr %311, align 4
  %313 = or i32 %310, %312
  %314 = getelementptr %struct.inet6_ifaddr, ptr %137, i32 0, i32 25, i32 0, i32 0, i32 3
  %315 = load i32, ptr %314, align 4
  %316 = or i32 %313, %315
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %320, label %318

318:                                              ; preds = %304
  %319 = call fastcc i32 @modify_prefix_route(ptr noundef nonnull %137, i32 noundef %187, i32 noundef %188, i1 noundef zeroext true) #22
  br label %320

320:                                              ; preds = %318, %304
  %321 = phi i32 [ %305, %304 ], [ %319, %318 ]
  %322 = icmp eq i32 %321, -2
  br i1 %322, label %323, label %384

323:                                              ; preds = %320, %302
  %324 = getelementptr inbounds %struct.inet6_ifaddr, ptr %137, i32 0, i32 25
  %325 = load i32, ptr %324, align 4
  %326 = getelementptr %struct.inet6_ifaddr, ptr %137, i32 0, i32 25, i32 0, i32 0, i32 1
  %327 = load i32, ptr %326, align 4
  %328 = or i32 %327, %325
  %329 = getelementptr %struct.inet6_ifaddr, ptr %137, i32 0, i32 25, i32 0, i32 0, i32 2
  %330 = load i32, ptr %329, align 4
  %331 = or i32 %328, %330
  %332 = getelementptr %struct.inet6_ifaddr, ptr %137, i32 0, i32 25, i32 0, i32 0, i32 3
  %333 = load i32, ptr %332, align 4
  %334 = or i32 %331, %333
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %384, label %336

336:                                              ; preds = %323
  %337 = getelementptr inbounds %struct.inet6_ifaddr, ptr %137, i32 0, i32 1
  %338 = load i32, ptr %337, align 8
  %339 = getelementptr inbounds %struct.inet6_ifaddr, ptr %137, i32 0, i32 2
  %340 = load i32, ptr %339, align 4
  %341 = getelementptr inbounds %struct.inet6_ifaddr, ptr %137, i32 0, i32 16
  %342 = load ptr, ptr %341, align 4
  %343 = load ptr, ptr %342, align 4
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #22
  %344 = getelementptr inbounds i8, ptr %4, i32 12
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(132) %344, i8 0, i64 132, i1 false) #22
  store i32 254, ptr %4, align 4
  %345 = getelementptr inbounds %struct.fib6_config, ptr %4, i32 0, i32 1
  %346 = icmp eq i32 %340, 0
  %347 = select i1 %346, i32 256, i32 %340
  store i32 %347, ptr %345, align 4
  %348 = getelementptr inbounds %struct.fib6_config, ptr %4, i32 0, i32 2
  store i32 %338, ptr %348, align 4
  %349 = getelementptr inbounds %struct.fib6_config, ptr %4, i32 0, i32 4
  %350 = getelementptr inbounds %struct.net_device, ptr %343, i32 0, i32 17
  %351 = load i32, ptr %350, align 4
  store i32 %351, ptr %349, align 4
  %352 = getelementptr inbounds %struct.fib6_config, ptr %4, i32 0, i32 5
  %353 = or i32 %188, 1
  store i32 %353, ptr %352, align 4
  %354 = getelementptr inbounds %struct.fib6_config, ptr %4, i32 0, i32 6
  store i32 2, ptr %354, align 4
  %355 = getelementptr inbounds %struct.fib6_config, ptr %4, i32 0, i32 7
  store i16 1, ptr %355, align 4
  %356 = getelementptr inbounds %struct.fib6_config, ptr %4, i32 0, i32 14
  store i32 %187, ptr %356, align 4
  %357 = getelementptr inbounds %struct.fib6_config, ptr %4, i32 0, i32 19, i32 1
  store ptr @init_net, ptr %357, align 4
  %358 = getelementptr inbounds %struct.fib6_config, ptr %4, i32 0, i32 10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %358, ptr noundef align 4 dereferenceable(16) %324, i32 16, i1 false) #22
  %359 = getelementptr inbounds %struct.net_device, ptr %343, i32 0, i32 32
  %360 = load i16, ptr %359, align 16
  %361 = icmp eq i16 %360, 776
  br i1 %361, label %362, label %369

362:                                              ; preds = %336
  %363 = getelementptr inbounds %struct.net_device, ptr %343, i32 0, i32 14
  %364 = load i32, ptr %363, align 8
  %365 = and i32 %364, 16
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %369, label %367

367:                                              ; preds = %362
  %368 = or i32 %188, 2097153
  store i32 %368, ptr %352, align 4
  br label %369

369:                                              ; preds = %367, %362, %336
  %370 = call i32 @ip6_route_add(ptr noundef nonnull %4, i32 noundef 3264, ptr noundef null) #22
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #22
  br label %384

371:                                              ; preds = %262
  br i1 %235, label %372, label %384

372:                                              ; preds = %371
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  store i32 0, ptr %6, align 4, !annotation !15
  %373 = getelementptr inbounds %struct.inet6_ifaddr, ptr %137, i32 0, i32 16
  %374 = load ptr, ptr %373, align 4
  %375 = getelementptr inbounds %struct.inet6_dev, ptr %374, i32 0, i32 24
  call void @_raw_write_lock_bh(ptr noundef %375) #22
  %376 = call fastcc i32 @check_cleanup_prefix_route(ptr noundef nonnull %137, ptr noundef nonnull %6) #22
  %377 = load ptr, ptr %373, align 4
  %378 = getelementptr inbounds %struct.inet6_dev, ptr %377, i32 0, i32 24
  call void @_raw_write_unlock_bh(ptr noundef %378) #22
  %379 = icmp eq i32 %376, 0
  br i1 %379, label %383, label %380

380:                                              ; preds = %372
  %381 = load i32, ptr %6, align 4
  %382 = icmp eq i32 %376, 1
  call fastcc void @cleanup_prefix_route(ptr noundef nonnull %137, i32 noundef %381, i1 noundef zeroext %382, i1 noundef zeroext false) #22
  br label %383

383:                                              ; preds = %380, %372
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  br label %384

384:                                              ; preds = %383, %371, %369, %323, %320
  %385 = load i32, ptr %161, align 4
  %386 = and i32 %385, 256
  %387 = icmp eq i32 %386, 0
  br i1 %233, label %388, label %389

388:                                              ; preds = %384
  br i1 %387, label %397, label %391

389:                                              ; preds = %384
  br i1 %387, label %390, label %391

390:                                              ; preds = %389
  store i32 0, ptr %59, align 4
  store i32 0, ptr %60, align 4
  br label %391

391:                                              ; preds = %390, %389, %388
  %392 = phi i32 [ 0, %390 ], [ %199, %389 ], [ %199, %388 ]
  %393 = phi i32 [ 0, %390 ], [ %185, %389 ], [ %185, %388 ]
  %394 = getelementptr inbounds %struct.inet6_ifaddr, ptr %137, i32 0, i32 16
  %395 = load ptr, ptr %394, align 4
  %396 = load volatile i32, ptr @jiffies, align 64
  call fastcc void @manage_tempaddrs(ptr noundef %395, ptr noundef nonnull %137, i32 noundef %393, i32 noundef %392, i1 noundef zeroext %233, i32 noundef %396) #22
  br label %397

397:                                              ; preds = %391, %388
  call fastcc void @addrconf_verify_rtnl() #22
  br label %398

398:                                              ; preds = %397, %166, %163, %154, %142
  %399 = phi i32 [ -17, %142 ], [ 0, %397 ], [ -22, %154 ], [ -22, %166 ], [ -22, %163 ]
  %400 = getelementptr inbounds %struct.inet6_ifaddr, ptr %137, i32 0, i32 5
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %400) #22, !srcloc !12
  %401 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %400, ptr %400, i32 1, ptr elementtype(i32) %400) #22, !srcloc !13
  %402 = extractvalue { i32, i32, i32 } %401, 0
  %403 = icmp eq i32 %402, 1
  br i1 %403, label %407, label %404

404:                                              ; preds = %398
  %405 = icmp sgt i32 %402, 0
  br i1 %405, label %408, label %406, !prof !10

406:                                              ; preds = %404
  call void @refcount_warn_saturate(ptr noundef %400, i32 noundef 3) #22
  br label %408

407:                                              ; preds = %398
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  call void @inet6_ifa_finish_destroy(ptr noundef nonnull %137) #22
  br label %408

408:                                              ; preds = %407, %406, %404, %139, %135, %133, %114, %69, %40, %29, %14, %13, %11
  %409 = phi i32 [ %115, %114 ], [ %141, %139 ], [ %17, %14 ], [ -22, %40 ], [ -19, %69 ], [ -22, %135 ], [ -22, %133 ], [ %399, %404 ], [ %399, %406 ], [ %399, %407 ], [ -22, %13 ], [ -22, %11 ], [ -22, %29 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %7) #22
  ret i32 %409
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet6_rtm_deladdr(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [11 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %4, i8 0, i32 44, i1 false), !annotation !15
  %5 = load i32, ptr %1, align 4
  %6 = icmp ult i32 %5, 24
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #22
  %8 = icmp eq ptr %2, null
  br i1 %8, label %51, label %9

9:                                                ; preds = %7
  store ptr @__nlmsg_parse.__msg, ptr %2, align 4
  br label %51

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %1, i32 24
  %12 = add i32 %5, -24
  %13 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef 10, ptr noundef %11, i32 noundef %12, ptr noundef nonnull @ifa_ipv6_policy, i32 noundef 0, ptr noundef %2) #22
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %51, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds [11 x ptr], ptr %4, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds [11 x ptr], ptr %4, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %17, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = getelementptr i8, ptr %17, i32 4
  %23 = icmp eq ptr %19, null
  br i1 %23, label %32, label %26

24:                                               ; preds = %15
  %25 = icmp eq ptr %19, null
  br i1 %25, label %51, label %30

26:                                               ; preds = %21
  %27 = icmp eq ptr %22, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %26
  %29 = call i32 @nla_memcmp(ptr noundef nonnull %19, ptr noundef nonnull %22, i32 noundef 16) #22
  br label %30

30:                                               ; preds = %28, %26, %24
  %31 = getelementptr i8, ptr %19, i32 4
  br label %32

32:                                               ; preds = %30, %21
  %33 = phi ptr [ %31, %30 ], [ %22, %21 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %51, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds [11 x ptr], ptr %4, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr i8, ptr %37, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 256
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i32 [ %42, %39 ], [ 0, %35 ]
  %45 = getelementptr i8, ptr %1, i32 20
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr i8, ptr %1, i32 17
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = call fastcc i32 @inet6_addr_del(ptr noundef nonnull @init_net, i32 noundef %46, i32 noundef %44, ptr noundef nonnull %33, i32 noundef %49)
  br label %51

51:                                               ; preds = %43, %32, %24, %10, %9, %7
  %52 = phi i32 [ %50, %43 ], [ %13, %10 ], [ -22, %32 ], [ -22, %9 ], [ -22, %7 ], [ -22, %24 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #22
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet6_rtm_getaddr(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.inet6_fill_args, align 4
  %5 = alloca [11 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #22
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %4, align 4
  %8 = getelementptr inbounds %struct.inet6_fill_args, ptr %4, i32 0, i32 1
  %9 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.inet6_fill_args, ptr %4, i32 0, i32 2
  store i32 20, ptr %11, align 4
  %12 = getelementptr inbounds %struct.inet6_fill_args, ptr %4, i32 0, i32 3
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.inet6_fill_args, ptr %4, i32 0, i32 4
  store i32 -1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.inet6_fill_args, ptr %4, i32 0, i32 5
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.inet6_fill_args, ptr %4, i32 0, i32 6
  store i32 0, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %5) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %5, i8 0, i32 44, i1 false), !annotation !15
  %16 = load i32, ptr %1, align 4
  %17 = icmp ult i32 %16, 24
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @inet6_rtm_valid_getaddr_req.__msg) #22
  %19 = icmp eq ptr %2, null
  br i1 %19, label %170, label %20

20:                                               ; preds = %18
  store ptr @inet6_rtm_valid_getaddr_req.__msg, ptr %2, align 4
  br label %170

21:                                               ; preds = %3
  %22 = tail call zeroext i1 @netlink_strict_get_check(ptr noundef %0) #22
  br i1 %22, label %33, label %23

23:                                               ; preds = %21
  %24 = load i32, ptr %1, align 4
  %25 = icmp ult i32 %24, 24
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #22
  %27 = icmp eq ptr %2, null
  br i1 %27, label %170, label %28

28:                                               ; preds = %26
  store ptr @__nlmsg_parse.__msg, ptr %2, align 4
  br label %170

29:                                               ; preds = %23
  %30 = getelementptr i8, ptr %1, i32 24
  %31 = add i32 %24, -24
  %32 = call i32 @__nla_parse(ptr noundef nonnull %5, i32 noundef 10, ptr noundef %30, i32 noundef %31, ptr noundef nonnull @ifa_ipv6_policy, i32 noundef 0, ptr noundef %2) #22
  br label %85

33:                                               ; preds = %21
  %34 = getelementptr i8, ptr %1, i32 17
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = getelementptr i8, ptr %1, i32 18
  %39 = load i8, ptr %38, align 2
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = getelementptr i8, ptr %1, i32 19
  %43 = load i8, ptr %42, align 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41, %37, %33
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @inet6_rtm_valid_getaddr_req.__msg.88) #22
  %46 = icmp eq ptr %2, null
  br i1 %46, label %170, label %47

47:                                               ; preds = %45
  store ptr @inet6_rtm_valid_getaddr_req.__msg.88, ptr %2, align 4
  br label %170

48:                                               ; preds = %41
  %49 = call fastcc i32 @nlmsg_parse_deprecated_strict(ptr noundef %1, i32 noundef 8, ptr noundef nonnull %5, i32 noundef 10, ptr noundef nonnull @ifa_ipv6_policy, ptr noundef %2) #22
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %85

51:                                               ; preds = %48
  %52 = load ptr, ptr %5, align 4
  %53 = icmp eq ptr %52, null
  %54 = getelementptr inbounds ptr, ptr %5, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  %57 = select i1 %53, i1 %56, i1 false
  %58 = getelementptr inbounds ptr, ptr %5, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  %61 = select i1 %57, i1 %60, i1 false
  %62 = getelementptr inbounds ptr, ptr %5, i32 5
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  %65 = select i1 %61, i1 %64, i1 false
  %66 = getelementptr inbounds ptr, ptr %5, i32 6
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  %69 = select i1 %65, i1 %68, i1 false
  %70 = getelementptr inbounds ptr, ptr %5, i32 7
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  %73 = select i1 %69, i1 %72, i1 false
  %74 = getelementptr inbounds ptr, ptr %5, i32 8
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  %77 = select i1 %73, i1 %76, i1 false
  %78 = getelementptr inbounds ptr, ptr %5, i32 9
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  %81 = select i1 %77, i1 %80, i1 false
  br i1 %81, label %88, label %82

82:                                               ; preds = %51
  call void @do_trace_netlink_extack(ptr noundef nonnull @inet6_rtm_valid_getaddr_req.__msg.89) #22
  %83 = icmp eq ptr %2, null
  br i1 %83, label %170, label %84

84:                                               ; preds = %82
  store ptr @inet6_rtm_valid_getaddr_req.__msg.89, ptr %2, align 4
  br label %170

85:                                               ; preds = %48, %29
  %86 = phi i32 [ %49, %48 ], [ %32, %29 ]
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %170, label %88

88:                                               ; preds = %85, %51
  %89 = getelementptr inbounds [11 x ptr], ptr %5, i32 0, i32 10
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %101, label %92

92:                                               ; preds = %88
  %93 = getelementptr i8, ptr %90, i32 4
  %94 = load i32, ptr %93, align 4
  store i32 %94, ptr %13, align 4
  %95 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 24
  %96 = load ptr, ptr %95, align 8
  %97 = call ptr @rtnl_get_net_ns_capable(ptr noundef %96, i32 noundef %94) #22
  %98 = icmp ugt ptr %97, inttoptr (i32 -4096 to ptr)
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = ptrtoint ptr %97 to i32
  br label %170

101:                                              ; preds = %92, %88
  %102 = phi ptr [ %97, %92 ], [ @init_net, %88 ]
  %103 = getelementptr inbounds [11 x ptr], ptr %5, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds [11 x ptr], ptr %5, i32 0, i32 2
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %104, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %101
  %109 = getelementptr i8, ptr %104, i32 4
  %110 = icmp eq ptr %106, null
  br i1 %110, label %119, label %113

111:                                              ; preds = %101
  %112 = icmp eq ptr %106, null
  br i1 %112, label %170, label %117

113:                                              ; preds = %108
  %114 = icmp eq ptr %109, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %113
  %116 = call i32 @nla_memcmp(ptr noundef nonnull %106, ptr noundef nonnull %109, i32 noundef 16) #22
  br label %117

117:                                              ; preds = %115, %113, %111
  %118 = getelementptr i8, ptr %106, i32 4
  br label %119

119:                                              ; preds = %117, %108
  %120 = phi ptr [ %118, %117 ], [ %109, %108 ]
  %121 = icmp eq ptr %120, null
  br i1 %121, label %170, label %122

122:                                              ; preds = %119
  %123 = getelementptr i8, ptr %1, i32 20
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %122
  %127 = call ptr @dev_get_by_index(ptr noundef %102, i32 noundef %124) #22
  br label %128

128:                                              ; preds = %126, %122
  %129 = phi ptr [ %127, %126 ], [ null, %122 ]
  %130 = call ptr @ipv6_get_ifaddr(ptr noundef %102, ptr noundef nonnull %120, ptr noundef %129, i32 noundef 1)
  %131 = icmp eq ptr %130, null
  br i1 %131, label %155, label %132

132:                                              ; preds = %128
  %133 = call ptr @__alloc_skb(i32 noundef 100, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #22
  %134 = icmp eq ptr %133, null
  br i1 %134, label %145, label %135

135:                                              ; preds = %132
  %136 = call fastcc i32 @inet6_fill_ifaddr(ptr noundef nonnull %133, ptr noundef nonnull %130, ptr noundef nonnull %4)
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = icmp eq i32 %136, -90
  br i1 %139, label %140, label %141, !prof !9

140:                                              ; preds = %138
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5445, i32 noundef 9, ptr noundef null) #22
  br label %141

141:                                              ; preds = %140, %138
  call void @kfree_skb_reason(ptr noundef nonnull %133, i32 noundef 0) #22
  br label %145

142:                                              ; preds = %135
  %143 = load i32, ptr %6, align 4
  %144 = call i32 @rtnl_unicast(ptr noundef nonnull %133, ptr noundef %102, i32 noundef %143) #22
  br label %145

145:                                              ; preds = %142, %141, %132
  %146 = phi i32 [ %136, %141 ], [ %144, %142 ], [ -105, %132 ]
  %147 = getelementptr inbounds %struct.inet6_ifaddr, ptr %130, i32 0, i32 5
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %147) #22, !srcloc !12
  %148 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %147, ptr %147, i32 1, ptr elementtype(i32) %147) #22, !srcloc !13
  %149 = extractvalue { i32, i32, i32 } %148, 0
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %154, label %151

151:                                              ; preds = %145
  %152 = icmp sgt i32 %149, 0
  br i1 %152, label %155, label %153, !prof !10

153:                                              ; preds = %151
  call void @refcount_warn_saturate(ptr noundef %147, i32 noundef 3) #22
  br label %155

154:                                              ; preds = %145
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  call void @inet6_ifa_finish_destroy(ptr noundef nonnull %130) #22
  br label %155

155:                                              ; preds = %154, %153, %151, %128
  %156 = phi i32 [ -99, %128 ], [ %146, %151 ], [ %146, %153 ], [ %146, %154 ]
  %157 = icmp eq ptr %129, null
  br i1 %157, label %170, label %158

158:                                              ; preds = %155
  %159 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !33
  %160 = getelementptr inbounds %struct.net_device, ptr %129, i32 0, i32 99
  %161 = load ptr, ptr %160, align 8
  %162 = ptrtoint ptr %161 to i32
  %163 = call i32 @llvm.read_register.i32(metadata !0) #22
  %164 = inttoptr i32 %163 to ptr
  %165 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %164) #18, !srcloc !34
  %166 = add i32 %165, %162
  %167 = inttoptr i32 %166 to ptr
  %168 = load i32, ptr %167, align 4
  %169 = add i32 %168, -1
  store i32 %169, ptr %167, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %159) #22, !srcloc !35
  br label %170

170:                                              ; preds = %158, %155, %119, %111, %99, %85, %84, %82, %47, %45, %28, %26, %20, %18
  %171 = phi i32 [ %100, %99 ], [ %86, %85 ], [ -22, %119 ], [ -22, %20 ], [ -22, %18 ], [ -22, %47 ], [ -22, %45 ], [ -22, %84 ], [ -22, %82 ], [ -22, %28 ], [ -22, %26 ], [ -22, %111 ], [ %156, %155 ], [ %156, %158 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #22
  ret i32 %171
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet6_dump_ifaddr(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call fastcc i32 @inet6_dump_addr(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet6_dump_ifmcaddr(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call fastcc i32 @inet6_dump_addr(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet6_dump_ifacaddr(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call fastcc i32 @inet6_dump_addr(ptr noundef %0, ptr noundef %1, i32 noundef 2)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet6_netconf_get_devconf(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [9 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false), !annotation !15
  %5 = load i32, ptr %1, align 4
  %6 = icmp ult i32 %5, 17
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @inet6_netconf_valid_get_req.__msg) #22
  %8 = icmp eq ptr %2, null
  br i1 %8, label %148, label %9

9:                                                ; preds = %7
  store ptr @inet6_netconf_valid_get_req.__msg, ptr %2, align 4
  br label %148

10:                                               ; preds = %3
  %11 = tail call zeroext i1 @netlink_strict_get_check(ptr noundef %0) #22
  %12 = load i32, ptr %1, align 4
  %13 = icmp ult i32 %12, 17
  br i1 %11, label %22, label %14

14:                                               ; preds = %10
  br i1 %13, label %15, label %18

15:                                               ; preds = %14
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #22
  %16 = icmp eq ptr %2, null
  br i1 %16, label %148, label %17

17:                                               ; preds = %15
  store ptr @__nlmsg_parse.__msg, ptr %2, align 4
  br label %148

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %1, i32 20
  %20 = add i32 %12, -20
  %21 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef 8, ptr noundef %19, i32 noundef %20, ptr noundef nonnull @devconf_ipv6_policy, i32 noundef 0, ptr noundef %2) #22
  br label %65

22:                                               ; preds = %10
  br i1 %13, label %23, label %26

23:                                               ; preds = %22
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #22
  %24 = icmp eq ptr %2, null
  br i1 %24, label %148, label %25

25:                                               ; preds = %23
  store ptr @__nlmsg_parse.__msg, ptr %2, align 4
  br label %148

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %1, i32 20
  %28 = add i32 %12, -20
  %29 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef 8, ptr noundef %27, i32 noundef %28, ptr noundef nonnull @devconf_ipv6_policy, i32 noundef 3, ptr noundef %2) #22
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %65

31:                                               ; preds = %26
  %32 = load ptr, ptr %4, align 4
  %33 = icmp eq ptr %32, null
  %34 = getelementptr inbounds ptr, ptr %4, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  %37 = select i1 %33, i1 %36, i1 false
  %38 = getelementptr inbounds ptr, ptr %4, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  %41 = select i1 %37, i1 %40, i1 false
  %42 = getelementptr inbounds ptr, ptr %4, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  %45 = select i1 %41, i1 %44, i1 false
  %46 = getelementptr inbounds ptr, ptr %4, i32 5
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  %49 = select i1 %45, i1 %48, i1 false
  %50 = getelementptr inbounds ptr, ptr %4, i32 6
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  %53 = select i1 %49, i1 %52, i1 false
  %54 = getelementptr inbounds ptr, ptr %4, i32 7
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  %57 = select i1 %53, i1 %56, i1 false
  %58 = getelementptr inbounds ptr, ptr %4, i32 8
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  %61 = select i1 %57, i1 %60, i1 false
  br i1 %61, label %68, label %62

62:                                               ; preds = %31
  call void @do_trace_netlink_extack(ptr noundef nonnull @inet6_netconf_valid_get_req.__msg.93) #22
  %63 = icmp eq ptr %2, null
  br i1 %63, label %148, label %64

64:                                               ; preds = %62
  store ptr @inet6_netconf_valid_get_req.__msg.93, ptr %2, align 4
  br label %148

65:                                               ; preds = %26, %18
  %66 = phi i32 [ %29, %26 ], [ %21, %18 ]
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %148, label %68

68:                                               ; preds = %65, %31
  %69 = getelementptr inbounds [9 x ptr], ptr %4, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %148, label %72

72:                                               ; preds = %68
  %73 = getelementptr i8, ptr %70, i32 4
  %74 = load i32, ptr %73, align 4
  switch i32 %74, label %79 [
    i32 -1, label %75
    i32 -2, label %77
  ]

75:                                               ; preds = %72
  %76 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  br label %100

77:                                               ; preds = %72
  %78 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 3), align 4
  br label %100

79:                                               ; preds = %72
  %80 = call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %74) #22
  %81 = icmp eq ptr %80, null
  br i1 %81, label %148, label %82

82:                                               ; preds = %79
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %83 = getelementptr inbounds %struct.net_device, ptr %80, i32 0, i32 69
  %84 = load volatile ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %97, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.inet6_dev, ptr %84, i32 0, i32 25
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %87) #22, !srcloc !12
  %88 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %87, ptr %87, i32 1, ptr elementtype(i32) %87) #22, !srcloc !18
  %89 = extractvalue { i32, i32, i32 } %88, 0
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91, !prof !9

91:                                               ; preds = %86
  %92 = add i32 %89, 1
  %93 = or i32 %92, %89
  %94 = icmp sgt i32 %93, -1
  br i1 %94, label %98, label %95, !prof !10

95:                                               ; preds = %91, %86
  %96 = phi i32 [ 2, %86 ], [ 1, %91 ]
  call void @refcount_warn_saturate(ptr noundef %87, i32 noundef %96) #22
  br label %98

97:                                               ; preds = %82
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  br label %134

98:                                               ; preds = %95, %91
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  %99 = getelementptr inbounds %struct.inet6_dev, ptr %84, i32 0, i32 32
  br label %100

100:                                              ; preds = %98, %77, %75
  %101 = phi ptr [ %84, %98 ], [ null, %77 ], [ null, %75 ]
  %102 = phi ptr [ %80, %98 ], [ null, %77 ], [ null, %75 ]
  %103 = phi ptr [ %99, %98 ], [ %78, %77 ], [ %76, %75 ]
  %104 = call ptr @__alloc_skb(i32 noundef 52, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #22
  %105 = icmp eq ptr %104, null
  br i1 %105, label %120, label %106

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 3
  %110 = load i32, ptr %109, align 4
  %111 = call fastcc i32 @inet6_netconf_fill_devconf(ptr noundef nonnull %104, i32 noundef %74, ptr noundef %103, i32 noundef %108, i32 noundef %110, i32 noundef 80, i32 noundef 0, i32 noundef -1)
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = icmp eq i32 %111, -90
  br i1 %114, label %115, label %116, !prof !9

115:                                              ; preds = %113
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 699, i32 noundef 9, ptr noundef null) #22
  br label %116

116:                                              ; preds = %115, %113
  call void @kfree_skb_reason(ptr noundef nonnull %104, i32 noundef 0) #22
  br label %120

117:                                              ; preds = %106
  %118 = load i32, ptr %107, align 4
  %119 = call i32 @rtnl_unicast(ptr noundef nonnull %104, ptr noundef nonnull @init_net, i32 noundef %118) #22
  br label %120

120:                                              ; preds = %117, %116, %100
  %121 = phi i32 [ %111, %116 ], [ %119, %117 ], [ -105, %100 ]
  %122 = icmp eq ptr %101, null
  br i1 %122, label %132, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.inet6_dev, ptr %101, i32 0, i32 25
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %124) #22, !srcloc !12
  %125 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %124, ptr %124, i32 1, ptr elementtype(i32) %124) #22, !srcloc !13
  %126 = extractvalue { i32, i32, i32 } %125, 0
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %131, label %128

128:                                              ; preds = %123
  %129 = icmp sgt i32 %126, 0
  br i1 %129, label %132, label %130, !prof !10

130:                                              ; preds = %128
  call void @refcount_warn_saturate(ptr noundef %124, i32 noundef 3) #22
  br label %132

131:                                              ; preds = %123
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  call void @in6_dev_finish_destroy(ptr noundef nonnull %101) #22
  br label %132

132:                                              ; preds = %131, %130, %128, %120
  %133 = icmp eq ptr %102, null
  br i1 %133, label %148, label %134

134:                                              ; preds = %132, %97
  %135 = phi ptr [ %80, %97 ], [ %102, %132 ]
  %136 = phi i32 [ -22, %97 ], [ %121, %132 ]
  %137 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !33
  %138 = getelementptr inbounds %struct.net_device, ptr %135, i32 0, i32 99
  %139 = load ptr, ptr %138, align 8
  %140 = ptrtoint ptr %139 to i32
  %141 = call i32 @llvm.read_register.i32(metadata !0) #22
  %142 = inttoptr i32 %141 to ptr
  %143 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %142) #18, !srcloc !34
  %144 = add i32 %143, %140
  %145 = inttoptr i32 %144 to ptr
  %146 = load i32, ptr %145, align 4
  %147 = add i32 %146, -1
  store i32 %147, ptr %145, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %137) #22, !srcloc !35
  br label %148

148:                                              ; preds = %134, %132, %79, %68, %65, %64, %62, %25, %23, %17, %15, %9, %7
  %149 = phi i32 [ %66, %65 ], [ -22, %68 ], [ -22, %79 ], [ %121, %132 ], [ %136, %134 ], [ -22, %9 ], [ -22, %7 ], [ -22, %64 ], [ -22, %62 ], [ -22, %17 ], [ -22, %15 ], [ -22, %25 ], [ -22, %23 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #22
  ret i32 %149
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet6_netconf_dump_devconf(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 12
  %6 = load i8, ptr %5, align 4, !range !19
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %4, align 4
  %12 = icmp ult i32 %11, 17
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @inet6_netconf_dump_devconf.__msg) #22
  %14 = icmp eq ptr %10, null
  br i1 %14, label %116, label %15

15:                                               ; preds = %13
  store ptr @inet6_netconf_dump_devconf.__msg, ptr %10, align 4
  br label %116

16:                                               ; preds = %8
  %17 = icmp eq i32 %11, 20
  br i1 %17, label %21, label %18

18:                                               ; preds = %16
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @inet6_netconf_dump_devconf.__msg.94) #22
  %19 = icmp eq ptr %10, null
  br i1 %19, label %116, label %20

20:                                               ; preds = %18
  store ptr @inet6_netconf_dump_devconf.__msg.94, ptr %10, align 4
  br label %116

21:                                               ; preds = %16, %2
  %22 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp slt i32 %23, 256
  br i1 %26, label %27, label %89

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 11
  %29 = getelementptr inbounds %struct.nlmsghdr, ptr %4, i32 0, i32 3
  %30 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %31 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 10
  br label %32

32:                                               ; preds = %85, %27
  %33 = phi i32 [ %23, %27 ], [ %87, %85 ]
  %34 = phi i32 [ %25, %27 ], [ 0, %85 ]
  %35 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 24), align 4
  %36 = getelementptr %struct.hlist_head, ptr %35, i32 %33
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %37 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 29), align 4
  %38 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 3), align 4
  %39 = xor i32 %38, %37
  store i32 %39, ptr %28, align 4
  %40 = load volatile ptr, ptr %36, align 4
  %41 = icmp eq ptr %40, null
  %42 = getelementptr i8, ptr %40, i32 -560
  %43 = icmp eq ptr %42, null
  %44 = or i1 %41, %43
  br i1 %44, label %85, label %45

45:                                               ; preds = %77, %32
  %46 = phi i32 [ %78, %77 ], [ 0, %32 ]
  %47 = phi ptr [ %82, %77 ], [ %42, %32 ]
  %48 = icmp slt i32 %46, %34
  br i1 %48, label %77, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 69
  %51 = load volatile ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %77, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 17
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.inet6_dev, ptr %51, i32 0, i32 32
  %57 = load ptr, ptr %1, align 4
  %58 = getelementptr inbounds %struct.sk_buff, ptr %57, i32 0, i32 3, i32 12
  %59 = load i32, ptr %58, align 4
  %60 = load i32, ptr %29, align 4
  %61 = tail call fastcc i32 @inet6_netconf_fill_devconf(ptr noundef %0, i32 noundef %55, ptr noundef %56, i32 noundef %59, i32 noundef %60, i32 noundef 80, i32 noundef 2, i32 noundef -1)
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  br label %111

64:                                               ; preds = %53
  %65 = load ptr, ptr %30, align 4
  %66 = load i32, ptr %31, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %64
  %69 = load i32, ptr %28, align 4
  %70 = icmp eq i32 %69, %66
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.nlmsghdr, ptr %65, i32 0, i32 2
  %73 = load i16, ptr %72, align 2
  %74 = or i16 %73, 16
  store i16 %74, ptr %72, align 2
  br label %75

75:                                               ; preds = %71, %68, %64
  %76 = load i32, ptr %28, align 4
  store i32 %76, ptr %31, align 4
  br label %77

77:                                               ; preds = %75, %49, %45
  %78 = add i32 %46, 1
  %79 = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 85
  %80 = load volatile ptr, ptr %79, align 16
  %81 = icmp eq ptr %80, null
  %82 = getelementptr i8, ptr %80, i32 -560
  %83 = icmp eq ptr %82, null
  %84 = or i1 %81, %83
  br i1 %84, label %85, label %45

85:                                               ; preds = %77, %32
  %86 = phi i32 [ 0, %32 ], [ %78, %77 ]
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  %87 = add nsw i32 %33, 1
  %88 = icmp eq i32 %87, 256
  br i1 %88, label %90, label %32

89:                                               ; preds = %21
  switch i32 %23, label %111 [
    i32 256, label %90
    i32 257, label %100
  ]

90:                                               ; preds = %89, %85
  %91 = phi i32 [ %25, %89 ], [ %86, %85 ]
  %92 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %93 = load ptr, ptr %1, align 4
  %94 = getelementptr inbounds %struct.sk_buff, ptr %93, i32 0, i32 3, i32 12
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds %struct.nlmsghdr, ptr %4, i32 0, i32 3
  %97 = load i32, ptr %96, align 4
  %98 = tail call fastcc i32 @inet6_netconf_fill_devconf(ptr noundef %0, i32 noundef -1, ptr noundef %92, i32 noundef %95, i32 noundef %97, i32 noundef 80, i32 noundef 2, i32 noundef -1)
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %111, label %100

100:                                              ; preds = %90, %89
  %101 = phi i32 [ %25, %89 ], [ %91, %90 ]
  %102 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 3), align 4
  %103 = load ptr, ptr %1, align 4
  %104 = getelementptr inbounds %struct.sk_buff, ptr %103, i32 0, i32 3, i32 12
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr inbounds %struct.nlmsghdr, ptr %4, i32 0, i32 3
  %107 = load i32, ptr %106, align 4
  %108 = tail call fastcc i32 @inet6_netconf_fill_devconf(ptr noundef %0, i32 noundef -2, ptr noundef %102, i32 noundef %105, i32 noundef %107, i32 noundef 80, i32 noundef 2, i32 noundef -1)
  %109 = icmp slt i32 %108, 0
  %110 = select i1 %109, i32 257, i32 258
  br label %111

111:                                              ; preds = %100, %90, %89, %63
  %112 = phi i32 [ %46, %63 ], [ %91, %90 ], [ %101, %100 ], [ %25, %89 ]
  %113 = phi i32 [ %33, %63 ], [ 256, %90 ], [ %110, %100 ], [ %23, %89 ]
  store i32 %113, ptr %22, align 4
  store i32 %112, ptr %24, align 4
  %114 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %115 = load i32, ptr %114, align 8
  br label %116

116:                                              ; preds = %111, %20, %18, %15, %13
  %117 = phi i32 [ %115, %111 ], [ -22, %15 ], [ -22, %20 ], [ -22, %13 ], [ -22, %18 ]
  ret i32 %117
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_addr_label_rtnl_register() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unregister_all(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_af_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_addr_label_cleanup() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @addrconf_cleanup() local_unnamed_addr #0 {
  %1 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @ipv6_dev_notf) #22
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @addrconf_ops) #22
  tail call void @ipv6_addr_label_cleanup() #22
  tail call void @rtnl_af_unregister(ptr noundef nonnull @inet6_ops) #22
  tail call void @rtnl_lock() #22
  %2 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 32
  %3 = icmp eq ptr %2, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %3, label %14, label %4

4:                                                ; preds = %11, %0
  %5 = phi ptr [ %12, %11 ], [ %2, %0 ]
  %6 = getelementptr i8, ptr %5, i32 428
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %5, i32 -40
  tail call fastcc void @addrconf_ifdown(ptr noundef %10, i1 noundef zeroext true)
  br label %11

11:                                               ; preds = %9, %4
  %12 = load ptr, ptr %5, align 8
  %13 = icmp eq ptr %12, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %13, label %14, label %4

14:                                               ; preds = %11, %0
  %15 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 27), align 64
  tail call fastcc void @addrconf_ifdown(ptr noundef %15, i1 noundef zeroext true)
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @addrconf_hash_lock) #22
  br label %16

16:                                               ; preds = %22, %14
  %17 = phi i32 [ 0, %14 ], [ %23, %22 ]
  %18 = getelementptr [256 x %struct.hlist_head], ptr @inet6_addr_lst, i32 0, i32 %17
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21, !prof !10

21:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 7349, i32 noundef 9, ptr noundef null) #22
  br label %22

22:                                               ; preds = %21, %16
  %23 = add nuw nsw i32 %17, 1
  %24 = icmp eq i32 %23, 256
  br i1 %24, label %25, label %16

25:                                               ; preds = %22
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @addrconf_hash_lock) #22
  %26 = tail call zeroext i1 @cancel_delayed_work(ptr noundef nonnull @addr_chk_work) #22
  tail call void @rtnl_unlock() #22
  %27 = load ptr, ptr @addrconf_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %27) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @addrconf_ifdown(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.in6_addr, align 4
  %4 = alloca %struct.in6_addr, align 4
  %5 = select i1 %1, i32 6, i32 2
  %6 = tail call i32 @rtnl_is_locked() #22
  %7 = icmp eq i32 %6, 0
  %8 = load i1, ptr @addrconf_ifdown.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %2
  store i1 true, ptr @addrconf_ifdown.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3738, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str, i32 noundef 3738) #22
  br label %12

12:                                               ; preds = %11, %2
  tail call void @rt6_disable_ip(ptr noundef %0, i32 noundef %5) #22
  %13 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 69
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %306, label %16

16:                                               ; preds = %12
  br i1 %1, label %17, label %20

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 27
  store i32 1, ptr %18, align 4
  store volatile ptr null, ptr %13, align 4
  %19 = tail call i32 @snmp6_unregister_dev(ptr noundef nonnull %14) #22
  br label %35

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 32, i32 32
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %26 = getelementptr inbounds %struct.ipv6_devconf, ptr %25, i32 0, i32 42
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 32, i32 42
  %31 = load i32, ptr %30, align 4
  br label %32

32:                                               ; preds = %29, %24
  %33 = phi i32 [ %27, %24 ], [ %31, %29 ]
  %34 = icmp sgt i32 %33, 0
  br label %35

35:                                               ; preds = %32, %20, %17
  %36 = phi i1 [ false, %20 ], [ %34, %32 ], [ false, %17 ]
  br label %37

37:                                               ; preds = %95, %35
  %38 = phi i32 [ 0, %35 ], [ %96, %95 ]
  %39 = getelementptr [256 x %struct.hlist_head], ptr @inet6_addr_lst, i32 0, i32 %38
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @addrconf_hash_lock) #22
  %40 = load volatile ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  %42 = getelementptr i8, ptr %40, i32 -124
  %43 = icmp eq ptr %42, null
  %44 = or i1 %41, %43
  br i1 %44, label %95, label %45

45:                                               ; preds = %93, %37
  %46 = phi ptr [ %94, %93 ], [ %42, %37 ]
  %47 = getelementptr inbounds %struct.inet6_ifaddr, ptr %46, i32 0, i32 16
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, %14
  br i1 %49, label %50, label %86

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.inet6_ifaddr, ptr %46, i32 0, i32 15
  %52 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %51) #22
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.inet6_ifaddr, ptr %46, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %54) #22, !srcloc !12
  %55 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %54, ptr %54, i32 1, ptr elementtype(i32) %54) #22, !srcloc !13
  %56 = extractvalue { i32, i32, i32 } %55, 0
  %57 = icmp slt i32 %56, 2
  br i1 %57, label %58, label %59, !prof !9

58:                                               ; preds = %53
  tail call void @refcount_warn_saturate(ptr noundef %54, i32 noundef 4) #22
  br label %59

59:                                               ; preds = %58, %53, %50
  br i1 %36, label %60, label %69

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.inet6_ifaddr, ptr %46, i32 0, i32 8
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, 128
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  %66 = tail call i32 @__ipv6_addr_type(ptr noundef nonnull %46) #22
  %67 = and i32 %66, 48
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %86, label %69

69:                                               ; preds = %65, %60, %59
  %70 = getelementptr inbounds %struct.inet6_ifaddr, ptr %46, i32 0, i32 18, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.inet6_ifaddr, ptr %46, i32 0, i32 18
  %75 = load ptr, ptr %74, align 4
  store volatile ptr %75, ptr %71, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.hlist_node, ptr %75, i32 0, i32 1
  store volatile ptr %71, ptr %78, align 4
  br label %79

79:                                               ; preds = %77, %73
  store volatile ptr null, ptr %70, align 4
  br label %80

80:                                               ; preds = %79, %69
  %81 = load volatile ptr, ptr %39, align 4
  %82 = icmp eq ptr %81, null
  %83 = getelementptr i8, ptr %81, i32 -124
  %84 = icmp eq ptr %83, null
  %85 = or i1 %82, %84
  br i1 %85, label %95, label %93

86:                                               ; preds = %65, %45
  %87 = getelementptr inbounds %struct.inet6_ifaddr, ptr %46, i32 0, i32 18
  %88 = load volatile ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  %90 = getelementptr i8, ptr %88, i32 -124
  %91 = icmp eq ptr %90, null
  %92 = or i1 %89, %91
  br i1 %92, label %95, label %93

93:                                               ; preds = %86, %80
  %94 = phi ptr [ %90, %86 ], [ %83, %80 ]
  br label %45

95:                                               ; preds = %86, %80, %37
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @addrconf_hash_lock) #22
  %96 = add nuw nsw i32 %38, 1
  %97 = icmp eq i32 %96, 256
  br i1 %97, label %98, label %37

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 24
  tail call void @_raw_write_lock_bh(ptr noundef %99) #22
  %100 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 34
  %101 = tail call i32 @del_timer(ptr noundef %100) #22
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %104) #22, !srcloc !12
  %105 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %104, ptr %104, i32 1, ptr elementtype(i32) %104) #22, !srcloc !13
  %106 = extractvalue { i32, i32, i32 } %105, 0
  %107 = icmp slt i32 %106, 2
  br i1 %107, label %108, label %109, !prof !9

108:                                              ; preds = %103
  tail call void @refcount_warn_saturate(ptr noundef %104, i32 noundef 4) #22
  br label %109

109:                                              ; preds = %108, %103, %98
  %110 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 26
  %111 = load i32, ptr %110, align 4
  %112 = icmp sgt i32 %111, -1
  br i1 %1, label %115, label %113

113:                                              ; preds = %109
  %114 = and i32 %111, 2147483599
  store i32 %114, ptr %110, align 4
  br label %115

115:                                              ; preds = %113, %109
  %116 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 29
  %117 = load volatile ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, %116
  br i1 %118, label %152, label %119

119:                                              ; preds = %149, %115
  %120 = phi ptr [ %150, %149 ], [ %117, %115 ]
  %121 = getelementptr i8, ptr %120, i32 -140
  %122 = getelementptr inbounds %struct.list_head, ptr %120, i32 0, i32 1
  %123 = load ptr, ptr %122, align 4
  %124 = load ptr, ptr %120, align 4
  %125 = getelementptr inbounds %struct.list_head, ptr %124, i32 0, i32 1
  store ptr %123, ptr %125, align 4
  store volatile ptr %124, ptr %123, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %120, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %122, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %99) #22
  %126 = getelementptr i8, ptr %120, i32 -104
  tail call void @_raw_spin_lock_bh(ptr noundef %126) #22
  %127 = getelementptr i8, ptr %120, i32 8
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %140, label %130

130:                                              ; preds = %119
  %131 = getelementptr inbounds %struct.inet6_ifaddr, ptr %128, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %131) #22, !srcloc !12
  %132 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %131, ptr %131, i32 1, ptr elementtype(i32) %131) #22, !srcloc !13
  %133 = extractvalue { i32, i32, i32 } %132, 0
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %138, label %135

135:                                              ; preds = %130
  %136 = icmp sgt i32 %133, 0
  br i1 %136, label %139, label %137, !prof !10

137:                                              ; preds = %135
  tail call void @refcount_warn_saturate(ptr noundef %131, i32 noundef 3) #22
  br label %139

138:                                              ; preds = %130
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  tail call void @inet6_ifa_finish_destroy(ptr noundef nonnull %128) #22
  br label %139

139:                                              ; preds = %138, %137, %135
  store ptr null, ptr %127, align 4
  br label %140

140:                                              ; preds = %139, %119
  tail call void @_raw_spin_unlock_bh(ptr noundef %126) #22
  %141 = getelementptr i8, ptr %120, i32 -108
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %141) #22, !srcloc !12
  %142 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %141, ptr %141, i32 1, ptr elementtype(i32) %141) #22, !srcloc !13
  %143 = extractvalue { i32, i32, i32 } %142, 0
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %148, label %145

145:                                              ; preds = %140
  %146 = icmp sgt i32 %143, 0
  br i1 %146, label %149, label %147, !prof !10

147:                                              ; preds = %145
  tail call void @refcount_warn_saturate(ptr noundef %141, i32 noundef 3) #22
  br label %149

148:                                              ; preds = %140
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  tail call void @inet6_ifa_finish_destroy(ptr noundef %121) #22
  br label %149

149:                                              ; preds = %148, %147, %145
  tail call void @_raw_write_lock_bh(ptr noundef %99) #22
  %150 = load volatile ptr, ptr %116, align 4
  %151 = icmp eq ptr %150, %116
  br i1 %151, label %152, label %119

152:                                              ; preds = %149, %115
  %153 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 2
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, %153
  br i1 %155, label %270, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 32
  %158 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 1
  %159 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 2
  %160 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 3
  %161 = getelementptr inbounds i32, ptr %3, i32 1
  %162 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 2
  %163 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 3
  br label %164

164:                                              ; preds = %268, %156
  %165 = phi ptr [ %154, %156 ], [ %167, %268 ]
  %166 = getelementptr i8, ptr %165, i32 -132
  %167 = load ptr, ptr %165, align 4
  %168 = getelementptr i8, ptr %165, i32 -60
  %169 = call zeroext i1 @cancel_delayed_work(ptr noundef %168) #22
  br i1 %169, label %170, label %176

170:                                              ; preds = %164
  %171 = getelementptr i8, ptr %165, i32 -100
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %171) #22, !srcloc !12
  %172 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %171, ptr %171, i32 1, ptr elementtype(i32) %171) #22, !srcloc !13
  %173 = extractvalue { i32, i32, i32 } %172, 0
  %174 = icmp slt i32 %173, 2
  br i1 %174, label %175, label %176, !prof !9

175:                                              ; preds = %170
  call void @refcount_warn_saturate(ptr noundef %171, i32 noundef 4) #22
  br label %176

176:                                              ; preds = %175, %170, %164
  br i1 %36, label %177, label %186

177:                                              ; preds = %176
  %178 = getelementptr i8, ptr %165, i32 -88
  %179 = load i32, ptr %178, align 4
  %180 = and i32 %179, 128
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %177
  %183 = call i32 @__ipv6_addr_type(ptr noundef %166) #22
  %184 = and i32 %183, 48
  %185 = icmp eq i32 %184, 0
  br label %186

186:                                              ; preds = %182, %177, %176
  %187 = phi i1 [ false, %177 ], [ false, %176 ], [ %185, %182 ]
  call void @_raw_write_unlock_bh(ptr noundef %99) #22
  %188 = getelementptr i8, ptr %165, i32 -96
  call void @_raw_spin_lock_bh(ptr noundef %188) #22
  %189 = getelementptr i8, ptr %165, i32 -92
  br i1 %187, label %190, label %203

190:                                              ; preds = %186
  store i32 0, ptr %189, align 8
  %191 = getelementptr i8, ptr %165, i32 -88
  %192 = load i32, ptr %191, align 4
  %193 = and i32 %192, 2
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %190
  %196 = or i32 %192, 64
  store i32 %196, ptr %191, align 4
  br label %197

197:                                              ; preds = %195, %190
  %198 = getelementptr i8, ptr %165, i32 -12
  %199 = load ptr, ptr %198, align 8
  store ptr null, ptr %198, align 8
  call void @_raw_spin_unlock_bh(ptr noundef %188) #22
  %200 = icmp eq ptr %199, null
  br i1 %200, label %208, label %201

201:                                              ; preds = %197
  %202 = call i32 @ip6_del_rt(ptr noundef nonnull @init_net, ptr noundef nonnull %199, i1 noundef zeroext false) #22
  br label %208

203:                                              ; preds = %186
  %204 = load i32, ptr %189, align 8
  store i32 4, ptr %189, align 8
  call void @_raw_spin_unlock_bh(ptr noundef %188) #22
  %205 = icmp eq i32 %204, 4
  br i1 %205, label %208, label %206

206:                                              ; preds = %203
  call fastcc void @__ipv6_ifa_notify(i32 noundef 21, ptr noundef %166)
  %207 = call i32 @inet6addr_notifier_call_chain(i32 noundef 2, ptr noundef %166) #22
  call void @_raw_write_lock_bh(ptr noundef %99) #22
  br label %255

208:                                              ; preds = %203, %201, %197
  %209 = load i32, ptr %157, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %241, label %211

211:                                              ; preds = %208
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #22, !annotation !15
  %212 = getelementptr i8, ptr %165, i32 -116
  %213 = load i32, ptr %212, align 8
  %214 = icmp ugt i32 %213, 126
  br i1 %214, label %240, label %215

215:                                              ; preds = %211
  %216 = lshr i32 %213, 3
  %217 = and i32 %213, 7
  %218 = sub nuw nsw i32 16, %216
  %219 = getelementptr i8, ptr %4, i32 %216
  call void @llvm.memset.p0.i32(ptr align 1 %219, i8 0, i32 %218, i1 false) #22
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %4, ptr align 4 %166, i32 %216, i1 false) #22
  %220 = icmp eq i32 %217, 0
  br i1 %220, label %227, label %221

221:                                              ; preds = %215
  %222 = getelementptr [16 x i8], ptr %166, i32 0, i32 %216
  %223 = load i8, ptr %222, align 1
  %224 = lshr i32 65280, %217
  %225 = trunc i32 %224 to i8
  %226 = and i8 %223, %225
  store i8 %226, ptr %219, align 1
  br label %227

227:                                              ; preds = %221, %215
  %228 = load i32, ptr %4, align 4
  %229 = load i32, ptr %158, align 4
  %230 = or i32 %229, %228
  %231 = load i32, ptr %159, align 4
  %232 = or i32 %230, %231
  %233 = load i32, ptr %160, align 4
  %234 = or i32 %232, %233
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %240, label %236

236:                                              ; preds = %227
  %237 = getelementptr i8, ptr %165, i32 -16
  %238 = load ptr, ptr %237, align 4
  %239 = call i32 @__ipv6_dev_ac_dec(ptr noundef %238, ptr noundef nonnull %4) #22
  br label %240

240:                                              ; preds = %236, %227, %211
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  br label %241

241:                                              ; preds = %240, %208
  %242 = getelementptr i8, ptr %165, i32 -16
  %243 = load ptr, ptr %242, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %244 = load ptr, ptr %243, align 4
  %245 = getelementptr inbounds %struct.net_device, ptr %244, i32 0, i32 14
  %246 = load i32, ptr %245, align 8
  %247 = and i32 %246, 136
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %254

249:                                              ; preds = %241
  %250 = getelementptr i8, ptr %165, i32 -120
  %251 = load i32, ptr %250, align 4
  %252 = or i32 %251, 255
  store i32 767, ptr %3, align 4
  store i32 0, ptr %161, align 4
  store i32 16777216, ptr %162, align 4
  store i32 %252, ptr %163, align 4
  %253 = call i32 @__ipv6_dev_mc_dec(ptr noundef %243, ptr noundef nonnull %3) #22
  br label %254

254:                                              ; preds = %249, %241
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  call void @_raw_write_lock_bh(ptr noundef %99) #22
  br i1 %187, label %268, label %255

255:                                              ; preds = %254, %206
  %256 = getelementptr inbounds %struct.list_head, ptr %165, i32 0, i32 1
  %257 = load ptr, ptr %256, align 4
  %258 = load ptr, ptr %165, align 4
  %259 = getelementptr inbounds %struct.list_head, ptr %258, i32 0, i32 1
  store ptr %257, ptr %259, align 4
  store volatile ptr %258, ptr %257, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %256, align 4
  %260 = getelementptr i8, ptr %165, i32 -100
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %260) #22, !srcloc !12
  %261 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %260, ptr %260, i32 1, ptr elementtype(i32) %260) #22, !srcloc !13
  %262 = extractvalue { i32, i32, i32 } %261, 0
  %263 = icmp eq i32 %262, 1
  br i1 %263, label %267, label %264

264:                                              ; preds = %255
  %265 = icmp sgt i32 %262, 0
  br i1 %265, label %268, label %266, !prof !10

266:                                              ; preds = %264
  call void @refcount_warn_saturate(ptr noundef %260, i32 noundef 3) #22
  br label %268

267:                                              ; preds = %255
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  call void @inet6_ifa_finish_destroy(ptr noundef %166) #22
  br label %268

268:                                              ; preds = %267, %266, %264, %254
  %269 = icmp eq ptr %167, %153
  br i1 %269, label %270, label %164

270:                                              ; preds = %268, %152
  call void @_raw_write_unlock_bh(ptr noundef %99) #22
  br i1 %1, label %271, label %297

271:                                              ; preds = %270
  call void @ipv6_ac_destroy_dev(ptr noundef nonnull %14) #22
  call void @ipv6_mc_destroy_dev(ptr noundef nonnull %14) #22
  %272 = load volatile i32, ptr @jiffies, align 64
  %273 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 37
  store i32 %272, ptr %273, align 4
  %274 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 39
  store i32 0, ptr %274, align 4
  %275 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 32, i32 53
  %276 = load ptr, ptr %275, align 4
  %277 = icmp eq ptr %276, null
  br i1 %277, label %284, label %278

278:                                              ; preds = %271
  %279 = load ptr, ptr %14, align 4
  %280 = getelementptr inbounds %struct.net_device, ptr %279, i32 0, i32 17
  %281 = load i32, ptr %280, align 4
  %282 = getelementptr inbounds %struct.ctl_table_header, ptr %276, i32 0, i32 2
  %283 = load ptr, ptr %282, align 4
  call void @unregister_net_sysctl_table(ptr noundef nonnull %276) #22
  store ptr null, ptr %275, align 4
  call void @kfree(ptr noundef %283) #22
  call void @inet6_netconf_notify_devconf(ptr noundef nonnull @init_net, i32 noundef 81, i32 noundef 0, i32 noundef %281, ptr noundef null) #22
  br label %284

284:                                              ; preds = %278, %271
  %285 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 31
  %286 = load ptr, ptr %285, align 4
  call void @neigh_sysctl_unregister(ptr noundef %286) #22
  %287 = load ptr, ptr %285, align 4
  call void @neigh_parms_release(ptr noundef nonnull @nd_tbl, ptr noundef %287) #22
  %288 = call i32 @neigh_ifdown(ptr noundef nonnull @nd_tbl, ptr noundef %0) #22
  %289 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 25
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %289) #22, !srcloc !12
  %290 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %289, ptr %289, i32 1, ptr elementtype(i32) %289) #22, !srcloc !13
  %291 = extractvalue { i32, i32, i32 } %290, 0
  %292 = icmp eq i32 %291, 1
  br i1 %292, label %296, label %293

293:                                              ; preds = %284
  %294 = icmp sgt i32 %291, 0
  br i1 %294, label %306, label %295, !prof !10

295:                                              ; preds = %293
  call void @refcount_warn_saturate(ptr noundef %289, i32 noundef 3) #22
  br label %306

296:                                              ; preds = %284
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  call void @in6_dev_finish_destroy(ptr noundef nonnull %14) #22
  br label %306

297:                                              ; preds = %270
  br i1 %112, label %302, label %298

298:                                              ; preds = %297
  call void @ipv6_mc_down(ptr noundef nonnull %14) #22
  %299 = load volatile i32, ptr @jiffies, align 64
  %300 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 37
  store i32 %299, ptr %300, align 4
  %301 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 39
  store i32 0, ptr %301, align 4
  br label %306

302:                                              ; preds = %297
  %303 = load volatile i32, ptr @jiffies, align 64
  %304 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 37
  store i32 %303, ptr %304, align 4
  %305 = getelementptr inbounds %struct.inet6_dev, ptr %14, i32 0, i32 39
  store i32 0, ptr %305, align 4
  br label %306

306:                                              ; preds = %302, %298, %296, %295, %293, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @in6_dev_finish_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ipv6_get_saddr_eval(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load i32, ptr %1, align 4
  %6 = icmp slt i32 %5, %3
  br i1 %6, label %22, label %7

7:                                                ; preds = %4
  switch i32 %3, label %14 [
    i32 2, label %8
    i32 8, label %11
  ]

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.ipv6_saddr_score, ptr %1, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  br label %235

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ipv6_saddr_score, ptr %1, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  br label %235

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.ipv6_saddr_score, ptr %1, i32 0, i32 3
  %16 = lshr i32 %3, 5
  %17 = getelementptr i32, ptr %15, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %3, 31
  %20 = lshr i32 %18, %19
  %21 = and i32 %20, 1
  br label %235

22:                                               ; preds = %4
  switch i32 %3, label %233 [
    i32 0, label %23
    i32 1, label %28
    i32 2, label %55
    i32 3, label %68
    i32 4, label %105
    i32 5, label %119
    i32 6, label %134
    i32 7, label %161
    i32 8, label %173
    i32 9, label %214
  ]

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.ipv6_saddr_score, ptr %1, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp ne ptr %25, null
  %27 = zext i1 %26 to i32
  br label %222

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.ipv6_saddr_score, ptr %1, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %2, align 4
  %32 = load i32, ptr %30, align 4
  %33 = load i32, ptr %31, align 4
  %34 = xor i32 %33, %32
  %35 = getelementptr [4 x i32], ptr %30, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr [4 x i32], ptr %31, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = xor i32 %38, %36
  %40 = or i32 %39, %34
  %41 = getelementptr [4 x i32], ptr %30, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr [4 x i32], ptr %31, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = xor i32 %44, %42
  %46 = or i32 %40, %45
  %47 = getelementptr [4 x i32], ptr %30, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr [4 x i32], ptr %31, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = xor i32 %50, %48
  %52 = or i32 %46, %51
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i32
  br label %222

55:                                               ; preds = %22
  %56 = getelementptr inbounds %struct.ipv6_saddr_score, ptr %1, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  %59 = ashr i32 %57, 16
  %60 = select i1 %58, i32 -1, i32 %59
  %61 = getelementptr inbounds %struct.ipv6_saddr_dst, ptr %2, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = icmp slt i32 %60, %62
  %64 = sub nsw i32 0, %60
  %65 = add nsw i32 %60, -128
  %66 = select i1 %63, i32 %65, i32 %64
  %67 = getelementptr inbounds %struct.ipv6_saddr_score, ptr %1, i32 0, i32 4
  store i32 %66, ptr %67, align 4
  br label %222

68:                                               ; preds = %22
  %69 = getelementptr inbounds %struct.ipv6_saddr_score, ptr %1, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.inet6_ifaddr, ptr %70, i32 0, i32 16
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %92, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 2
  %76 = load ptr, ptr %75, align 32
  %77 = getelementptr inbounds %struct.ipv6_devconf, ptr %76, i32 0, i32 30
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.inet6_dev, ptr %72, i32 0, i32 32, i32 30
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %80, %74
  %85 = getelementptr inbounds %struct.ipv6_devconf, ptr %76, i32 0, i32 31
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.inet6_dev, ptr %72, i32 0, i32 32, i32 31
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88, %80, %68
  br label %93

93:                                               ; preds = %92, %88, %84
  %94 = phi i32 [ 36, %92 ], [ 32, %88 ], [ 32, %84 ]
  %95 = getelementptr inbounds %struct.ipv6_saddr_score, ptr %1, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = and i32 %96, 4240
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %225

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.inet6_ifaddr, ptr %70, i32 0, i32 8
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %101, %94
  %103 = icmp eq i32 %102, 0
  %104 = zext i1 %103 to i32
  br label %222

105:                                              ; preds = %22
  %106 = getelementptr inbounds %struct.ipv6_saddr_dst, ptr %2, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %225, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.ipv6_saddr_score, ptr %1, i32 0, i32 2
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.inet6_ifaddr, ptr %111, i32 0, i32 16
  %113 = load ptr, ptr %112, align 4
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.net_device, ptr %114, i32 0, i32 17
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %107, %116
  %118 = zext i1 %117 to i32
  br label %222

119:                                              ; preds = %22
  %120 = getelementptr inbounds %struct.ipv6_saddr_score, ptr %1, i32 0, i32 2
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.ipv6_saddr_score, ptr %1, i32 0, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr inbounds %struct.inet6_ifaddr, ptr %121, i32 0, i32 16
  %125 = load ptr, ptr %124, align 4
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.net_device, ptr %126, i32 0, i32 17
  %128 = load i32, ptr %127, align 4
  %129 = tail call i32 @ipv6_addr_label(ptr noundef %0, ptr noundef %121, i32 noundef %123, i32 noundef %128) #22
  %130 = getelementptr inbounds %struct.ipv6_saddr_dst, ptr %2, i32 0, i32 3
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %129, %131
  %133 = zext i1 %132 to i32
  br label %222

134:                                              ; preds = %22
  %135 = getelementptr inbounds %struct.ipv6_saddr_dst, ptr %2, i32 0, i32 4
  %136 = load i32, ptr %135, align 4
  %137 = and i32 %136, 3
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %134
  %140 = and i32 %136, 1
  %141 = icmp ne i32 %140, 0
  %142 = getelementptr inbounds %struct.ipv6_saddr_score, ptr %1, i32 0, i32 2
  %143 = load ptr, ptr %142, align 4
  br label %152

144:                                              ; preds = %134
  %145 = getelementptr inbounds %struct.ipv6_saddr_score, ptr %1, i32 0, i32 2
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.inet6_ifaddr, ptr %146, i32 0, i32 16
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr inbounds %struct.inet6_dev, ptr %148, i32 0, i32 32, i32 14
  %150 = load i32, ptr %149, align 4
  %151 = icmp sgt i32 %150, 1
  br label %152

152:                                              ; preds = %144, %139
  %153 = phi ptr [ %143, %139 ], [ %146, %144 ]
  %154 = phi i1 [ %141, %139 ], [ %151, %144 ]
  %155 = getelementptr inbounds %struct.inet6_ifaddr, ptr %153, i32 0, i32 8
  %156 = load i32, ptr %155, align 4
  %157 = and i32 %156, 1
  %158 = xor i1 %154, true
  %159 = zext i1 %158 to i32
  %160 = xor i32 %157, %159
  br label %222

161:                                              ; preds = %22
  %162 = getelementptr inbounds %struct.ipv6_saddr_score, ptr %1, i32 0, i32 2
  %163 = load ptr, ptr %162, align 4
  %164 = load i32, ptr %163, align 4
  %165 = and i32 %164, -251658241
  %166 = icmp ne i32 %165, 268435744
  %167 = load ptr, ptr %2, align 4
  %168 = load i32, ptr %167, align 4
  %169 = and i32 %168, -251658241
  %170 = icmp eq i32 %169, 268435744
  %171 = xor i1 %166, %170
  %172 = zext i1 %171 to i32
  br label %222

173:                                              ; preds = %22
  %174 = getelementptr inbounds %struct.ipv6_saddr_score, ptr %1, i32 0, i32 2
  %175 = load ptr, ptr %174, align 4
  %176 = load ptr, ptr %2, align 4
  %177 = load i32, ptr %175, align 4
  %178 = load i32, ptr %176, align 4
  %179 = xor i32 %178, %177
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %187, label %181

181:                                              ; preds = %201, %194, %187, %173
  %182 = phi i32 [ 0, %173 ], [ 32, %187 ], [ 64, %194 ], [ 96, %201 ]
  %183 = phi i32 [ %179, %173 ], [ %192, %187 ], [ %199, %194 ], [ %206, %201 ]
  %184 = tail call i32 @llvm.bswap.i32(i32 %183) #22
  %185 = tail call i32 @llvm.ctlz.i32(i32 %184, i1 false) #22, !range !37
  %186 = add nuw nsw i32 %185, %182
  br label %208

187:                                              ; preds = %173
  %188 = getelementptr i32, ptr %175, i32 1
  %189 = load i32, ptr %188, align 4
  %190 = getelementptr i32, ptr %176, i32 1
  %191 = load i32, ptr %190, align 4
  %192 = xor i32 %191, %189
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %181

194:                                              ; preds = %187
  %195 = getelementptr i32, ptr %175, i32 2
  %196 = load i32, ptr %195, align 4
  %197 = getelementptr i32, ptr %176, i32 2
  %198 = load i32, ptr %197, align 4
  %199 = xor i32 %198, %196
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %181

201:                                              ; preds = %194
  %202 = getelementptr i32, ptr %175, i32 3
  %203 = load i32, ptr %202, align 4
  %204 = getelementptr i32, ptr %176, i32 3
  %205 = load i32, ptr %204, align 4
  %206 = xor i32 %205, %203
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %181

208:                                              ; preds = %201, %181
  %209 = phi i32 [ %186, %181 ], [ 128, %201 ]
  %210 = getelementptr inbounds %struct.inet6_ifaddr, ptr %175, i32 0, i32 1
  %211 = load i32, ptr %210, align 8
  %212 = tail call i32 @llvm.umin.i32(i32 %209, i32 %211)
  %213 = getelementptr inbounds %struct.ipv6_saddr_score, ptr %1, i32 0, i32 5
  store i32 %212, ptr %213, align 4
  br label %222

214:                                              ; preds = %22
  %215 = getelementptr inbounds %struct.ipv6_saddr_score, ptr %1, i32 0, i32 2
  %216 = load ptr, ptr %215, align 4
  %217 = getelementptr inbounds %struct.inet6_ifaddr, ptr %216, i32 0, i32 8
  %218 = load i32, ptr %217, align 4
  %219 = lshr i32 %218, 2
  %220 = and i32 %219, 1
  %221 = xor i32 %220, 1
  br label %222

222:                                              ; preds = %214, %208, %161, %152, %119, %109, %99, %55, %28, %23
  %223 = phi i32 [ %221, %214 ], [ %212, %208 ], [ %172, %161 ], [ %160, %152 ], [ %133, %119 ], [ %66, %55 ], [ %54, %28 ], [ %27, %23 ], [ %104, %99 ], [ %118, %109 ]
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %233, label %225

225:                                              ; preds = %222, %105, %93
  %226 = phi i32 [ %223, %222 ], [ 1, %93 ], [ 1, %105 ]
  %227 = getelementptr inbounds %struct.ipv6_saddr_score, ptr %1, i32 0, i32 3
  %228 = shl nuw nsw i32 1, %3
  %229 = lshr i32 %3, 5
  %230 = getelementptr i32, ptr %227, i32 %229
  %231 = load i32, ptr %230, align 4
  %232 = or i32 %231, %228
  store i32 %232, ptr %230, align 4
  br label %233

233:                                              ; preds = %225, %222, %22
  %234 = phi i32 [ %226, %225 ], [ 0, %222 ], [ 0, %22 ]
  store i32 %3, ptr %1, align 4
  br label %235

235:                                              ; preds = %233, %14, %11, %8
  %236 = phi i32 [ %21, %14 ], [ %13, %11 ], [ %10, %8 ], [ %234, %233 ]
  ret i32 %236
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6addr_validator_notifier_call_chain(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @addrconf_f6i_alloc(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @addrconf_dad_work(ptr noundef %0) #0 {
  %2 = alloca %struct.in6_addr, align 4
  %3 = alloca %struct.in6_addr, align 4
  %4 = alloca %struct.in6_addr, align 4
  %5 = getelementptr i8, ptr %0, i32 -72
  %6 = getelementptr i8, ptr %0, i32 44
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !15
  tail call void @rtnl_lock() #22
  %8 = getelementptr i8, ptr %0, i32 -36
  tail call void @_raw_spin_lock_bh(ptr noundef %8) #22
  %9 = getelementptr i8, ptr %0, i32 -32
  %10 = load i32, ptr %9, align 8
  switch i32 %10, label %187 [
    i32 0, label %63
    i32 3, label %11
  ]

11:                                               ; preds = %1
  store i32 2, ptr %9, align 8
  %12 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %13 = getelementptr inbounds %struct.ipv6_devconf, ptr %12, i32 0, i32 34
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.inet6_dev, ptr %7, i32 0, i32 32, i32 34
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %172

20:                                               ; preds = %16, %11
  %21 = getelementptr inbounds %struct.inet6_dev, ptr %7, i32 0, i32 32, i32 32
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %172

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %0, i32 -28
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 2048
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %172

29:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  %30 = getelementptr inbounds i8, ptr %4, i32 8
  store i64 0, ptr %30, align 4, !annotation !15
  store i32 33022, ptr %4, align 4
  %31 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 1
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds i8, ptr %4, i32 8
  %33 = load ptr, ptr %7, align 4
  %34 = call fastcc i32 @ipv6_generate_eui64(ptr noundef %32, ptr noundef %33)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %29
  %37 = load i32, ptr %5, align 4
  %38 = load i32, ptr %4, align 4
  %39 = xor i32 %38, %37
  %40 = getelementptr i8, ptr %0, i32 -68
  %41 = load i32, ptr %40, align 4
  %42 = load i32, ptr %31, align 4
  %43 = xor i32 %42, %41
  %44 = or i32 %43, %39
  %45 = getelementptr i8, ptr %0, i32 -64
  %46 = load i32, ptr %45, align 4
  %47 = load i32, ptr %32, align 4
  %48 = xor i32 %47, %46
  %49 = or i32 %44, %48
  %50 = getelementptr i8, ptr %0, i32 -60
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = xor i32 %53, %51
  %55 = or i32 %49, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %36
  store i32 1, ptr %21, align 4
  %58 = load ptr, ptr %6, align 4
  %59 = load ptr, ptr %58, align 4
  %60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %59) #23
  br label %61

61:                                               ; preds = %57, %36, %29
  %62 = phi i1 [ false, %29 ], [ true, %57 ], [ false, %36 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  br label %172

63:                                               ; preds = %1
  store i32 1, ptr %9, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %8) #22
  %64 = load ptr, ptr %6, align 4
  %65 = load ptr, ptr %64, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #22
  %66 = getelementptr inbounds %struct.net_device, ptr %65, i32 0, i32 14
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 136
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = getelementptr i8, ptr %0, i32 -60
  %72 = load i32, ptr %71, align 4
  %73 = or i32 %72, 255
  store i32 767, ptr %2, align 4
  %74 = getelementptr inbounds i32, ptr %2, i32 1
  store i32 0, ptr %74, align 4
  %75 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 2
  store i32 16777216, ptr %75, align 4
  %76 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 3
  store i32 %73, ptr %76, align 4
  %77 = call i32 @ipv6_dev_mc_inc(ptr noundef %65, ptr noundef nonnull %2) #22
  br label %78

78:                                               ; preds = %70, %63
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #22
  %79 = getelementptr i8, ptr %0, i32 -60
  %80 = load i32, ptr %79, align 4
  call void @prandom_seed(i32 noundef %80) #22
  %81 = getelementptr inbounds %struct.inet6_dev, ptr %64, i32 0, i32 24
  call void @_raw_read_lock_bh(ptr noundef %81) #22
  call void @_raw_spin_lock(ptr noundef %8) #22
  %82 = load i32, ptr %9, align 8
  %83 = icmp eq i32 %82, 4
  br i1 %83, label %166, label %84

84:                                               ; preds = %78
  %85 = load i32, ptr %66, align 8
  %86 = and i32 %85, 136
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %84
  %89 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %90 = getelementptr inbounds %struct.ipv6_devconf, ptr %89, i32 0, i32 34
  %91 = load i32, ptr %90, align 4
  %92 = icmp slt i32 %91, 1
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.inet6_dev, ptr %64, i32 0, i32 32, i32 34
  %95 = load i32, ptr %94, align 4
  %96 = icmp slt i32 %95, 1
  br i1 %96, label %102, label %97

97:                                               ; preds = %93, %88
  %98 = getelementptr i8, ptr %0, i32 -28
  %99 = load i32, ptr %98, align 4
  %100 = and i32 %99, 66
  %101 = icmp eq i32 %100, 64
  br i1 %101, label %112, label %102

102:                                              ; preds = %97, %93, %84
  %103 = getelementptr i8, ptr %0, i32 -28
  %104 = load i32, ptr %103, align 4
  %105 = and i32 %104, 64
  %106 = icmp ne i32 %105, 0
  %107 = and i32 %104, 68
  %108 = icmp eq i32 %107, 64
  %109 = and i32 %104, -77
  store i32 %109, ptr %103, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !26
  %110 = load i16, ptr %8, align 4
  %111 = add i16 %110, 1
  store i16 %111, ptr %8, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !27
  call void @_raw_read_unlock_bh(ptr noundef %81) #22
  call fastcc void @addrconf_dad_completed(ptr noundef %5, i1 noundef zeroext %106, i1 noundef zeroext %108) #22
  br label %245

112:                                              ; preds = %97
  %113 = getelementptr inbounds %struct.inet6_dev, ptr %64, i32 0, i32 26
  %114 = load i32, ptr %113, align 4
  %115 = icmp sgt i32 %114, -1
  br i1 %115, label %116, label %130

116:                                              ; preds = %112
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !26
  %117 = load i16, ptr %8, align 4
  %118 = add i16 %117, 1
  store i16 %118, ptr %8, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !27
  call void @_raw_read_unlock_bh(ptr noundef %81) #22
  %119 = getelementptr i8, ptr %0, i32 -40
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %119) #22, !srcloc !12
  %120 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %119, ptr %119, i32 1, ptr elementtype(i32) %119) #22, !srcloc !18
  %121 = extractvalue { i32, i32, i32 } %120, 0
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %127, label %123, !prof !9

123:                                              ; preds = %116
  %124 = add i32 %121, 1
  %125 = or i32 %124, %121
  %126 = icmp sgt i32 %125, -1
  br i1 %126, label %129, label %127, !prof !10

127:                                              ; preds = %123, %116
  %128 = phi i32 [ 2, %116 ], [ 1, %123 ]
  call void @refcount_warn_saturate(ptr noundef %119, i32 noundef %128) #22
  br label %129

129:                                              ; preds = %127, %123
  call fastcc void @addrconf_dad_stop(ptr noundef %5, i32 noundef 0) #22
  br label %245

130:                                              ; preds = %112
  %131 = and i32 %99, 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %169, label %133

133:                                              ; preds = %130
  %134 = getelementptr i8, ptr %0, i32 48
  %135 = load ptr, ptr %134, align 8
  %136 = call i32 @ip6_ins_rt(ptr noundef nonnull @init_net, ptr noundef %135) #22
  %137 = icmp eq ptr %64, null
  br i1 %137, label %155, label %138

138:                                              ; preds = %133
  %139 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %140 = getelementptr inbounds %struct.ipv6_devconf, ptr %139, i32 0, i32 30
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.inet6_dev, ptr %64, i32 0, i32 32, i32 30
  %145 = load i32, ptr %144, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %155, label %147

147:                                              ; preds = %143, %138
  %148 = getelementptr inbounds %struct.ipv6_devconf, ptr %139, i32 0, i32 31
  %149 = load i32, ptr %148, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.inet6_dev, ptr %64, i32 0, i32 32, i32 31
  %153 = load i32, ptr %152, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %151, %143, %133
  call fastcc void @addrconf_dad_kick(ptr noundef %5) #22
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !26
  %156 = load i16, ptr %8, align 4
  %157 = add i16 %156, 1
  store i16 %157, ptr %8, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !27
  call void @_raw_read_unlock_bh(ptr noundef %81) #22
  br label %245

158:                                              ; preds = %151, %147
  call fastcc void @addrconf_dad_kick(ptr noundef %5) #22
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !26
  %159 = load i16, ptr %8, align 4
  %160 = add i16 %159, 1
  store i16 %160, ptr %8, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !27
  call void @_raw_read_unlock_bh(ptr noundef %81) #22
  %161 = load ptr, ptr %6, align 4
  %162 = getelementptr inbounds %struct.inet6_dev, ptr %161, i32 0, i32 27
  %163 = load i32, ptr %162, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %245, !prof !10

165:                                              ; preds = %158
  call fastcc void @__ipv6_ifa_notify(i32 noundef 20, ptr noundef %5) #22
  br label %245

166:                                              ; preds = %78
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !26
  %167 = load i16, ptr %8, align 4
  %168 = add i16 %167, 1
  store i16 %168, ptr %8, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !27
  call void @_raw_read_unlock_bh(ptr noundef %81) #22
  br label %245

169:                                              ; preds = %130
  call fastcc void @addrconf_dad_kick(ptr noundef %5) #22
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !26
  %170 = load i16, ptr %8, align 4
  %171 = add i16 %170, 1
  store i16 %171, ptr %8, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !27
  call void @_raw_read_unlock_bh(ptr noundef %81) #22
  br label %245

172:                                              ; preds = %61, %24, %20, %16
  %173 = phi i1 [ %62, %61 ], [ false, %24 ], [ false, %20 ], [ false, %16 ]
  call void @_raw_spin_unlock_bh(ptr noundef %8) #22
  %174 = getelementptr i8, ptr %0, i32 -40
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %174) #22, !srcloc !12
  %175 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %174, ptr %174, i32 1, ptr elementtype(i32) %174) #22, !srcloc !18
  %176 = extractvalue { i32, i32, i32 } %175, 0
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %182, label %178, !prof !9

178:                                              ; preds = %172
  %179 = add i32 %176, 1
  %180 = or i32 %179, %176
  %181 = icmp sgt i32 %180, -1
  br i1 %181, label %184, label %182, !prof !10

182:                                              ; preds = %178, %172
  %183 = phi i32 [ 2, %172 ], [ 1, %178 ]
  call void @refcount_warn_saturate(ptr noundef %174, i32 noundef %183) #22
  br label %184

184:                                              ; preds = %182, %178
  call fastcc void @addrconf_dad_stop(ptr noundef %5, i32 noundef 1)
  br i1 %173, label %185, label %245

185:                                              ; preds = %184
  %186 = load ptr, ptr %7, align 4
  call fastcc void @addrconf_ifdown(ptr noundef %186, i1 noundef zeroext false)
  br label %245

187:                                              ; preds = %1
  tail call void @_raw_spin_unlock_bh(ptr noundef %8) #22
  %188 = getelementptr i8, ptr %0, i32 -24
  %189 = load i8, ptr %188, align 8
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %187
  tail call void @_raw_spin_lock_bh(ptr noundef %8) #22
  %192 = load i32, ptr %9, align 8
  %193 = icmp eq i32 %192, 1
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  store i32 2, ptr %9, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %8) #22
  br label %196

195:                                              ; preds = %191
  tail call void @_raw_spin_unlock_bh(ptr noundef %8) #22
  br label %245

196:                                              ; preds = %194, %187
  %197 = getelementptr inbounds %struct.inet6_dev, ptr %7, i32 0, i32 24
  tail call void @_raw_write_lock_bh(ptr noundef %197) #22
  %198 = getelementptr inbounds %struct.inet6_dev, ptr %7, i32 0, i32 27
  %199 = load i32, ptr %198, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.inet6_dev, ptr %7, i32 0, i32 26
  %203 = load i32, ptr %202, align 4
  %204 = icmp sgt i32 %203, -1
  br i1 %204, label %205, label %206

205:                                              ; preds = %201, %196
  tail call void @_raw_write_unlock_bh(ptr noundef %197) #22
  br label %245

206:                                              ; preds = %201
  tail call void @_raw_spin_lock(ptr noundef %8) #22
  %207 = load i32, ptr %9, align 8
  %208 = icmp eq i32 %207, 4
  br i1 %208, label %209, label %212

209:                                              ; preds = %206
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !26
  %210 = load i16, ptr %8, align 4
  %211 = add i16 %210, 1
  store i16 %211, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !27
  tail call void @_raw_write_unlock_bh(ptr noundef %197) #22
  br label %245

212:                                              ; preds = %206
  %213 = load i8, ptr %188, align 8
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %215, label %225

215:                                              ; preds = %212
  %216 = getelementptr i8, ptr %0, i32 -28
  %217 = load i32, ptr %216, align 4
  %218 = and i32 %217, 64
  %219 = icmp ne i32 %218, 0
  %220 = and i32 %217, 68
  %221 = icmp eq i32 %220, 64
  %222 = and i32 %217, -77
  store i32 %222, ptr %216, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !26
  %223 = load i16, ptr %8, align 4
  %224 = add i16 %223, 1
  store i16 %224, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !27
  tail call void @_raw_write_unlock_bh(ptr noundef %197) #22
  tail call fastcc void @addrconf_dad_completed(ptr noundef %5, i1 noundef zeroext %219, i1 noundef zeroext %221)
  br label %245

225:                                              ; preds = %212
  %226 = add i8 %213, -1
  store i8 %226, ptr %188, align 8
  %227 = load ptr, ptr %6, align 4
  %228 = getelementptr inbounds %struct.inet6_dev, ptr %227, i32 0, i32 31
  %229 = load ptr, ptr %228, align 4
  %230 = getelementptr %struct.neigh_parms, ptr %229, i32 0, i32 11, i32 4
  %231 = load i32, ptr %230, align 4
  %232 = tail call i32 @llvm.smax.i32(i32 %231, i32 1)
  tail call fastcc void @addrconf_mod_dad_work(ptr noundef %5, i32 noundef %232)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !26
  %233 = load i16, ptr %8, align 4
  %234 = add i16 %233, 1
  store i16 %234, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !27
  tail call void @_raw_write_unlock_bh(ptr noundef %197) #22
  %235 = getelementptr i8, ptr %0, i32 -60
  %236 = load i32, ptr %235, align 4
  %237 = or i32 %236, 255
  store i32 767, ptr %3, align 4
  %238 = getelementptr inbounds i32, ptr %3, i32 1
  store i32 0, ptr %238, align 4
  %239 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 2
  store i32 16777216, ptr %239, align 4
  %240 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 3
  store i32 %237, ptr %240, align 4
  %241 = load ptr, ptr %6, align 4
  %242 = load ptr, ptr %241, align 4
  %243 = getelementptr i8, ptr %0, i32 -16
  %244 = load i64, ptr %243, align 8
  call void @ndisc_send_ns(ptr noundef %242, ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull @in6addr_any, i64 noundef %244) #22
  br label %245

245:                                              ; preds = %225, %215, %209, %205, %195, %185, %184, %169, %166, %165, %158, %155, %129, %102
  %246 = getelementptr i8, ptr %0, i32 -40
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %246) #22, !srcloc !12
  %247 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %246, ptr %246, i32 1, ptr elementtype(i32) %246) #22, !srcloc !13
  %248 = extractvalue { i32, i32, i32 } %247, 0
  %249 = icmp eq i32 %248, 1
  br i1 %249, label %253, label %250

250:                                              ; preds = %245
  %251 = icmp sgt i32 %248, 0
  br i1 %251, label %254, label %252, !prof !10

252:                                              ; preds = %250
  call void @refcount_warn_saturate(ptr noundef %246, i32 noundef 3) #22
  br label %254

253:                                              ; preds = %245
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  call void @inet6_ifa_finish_destroy(ptr noundef %5) #22
  br label %254

254:                                              ; preds = %253, %252, %250
  call void @rtnl_unlock() #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @in6_dev_hold(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #22, !srcloc !12
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #22, !srcloc !18
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !9

6:                                                ; preds = %1
  %7 = add i32 %4, 1
  %8 = or i32 %7, %4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10, !prof !10

10:                                               ; preds = %6, %1
  %11 = phi i32 [ 2, %1 ], [ 1, %6 ]
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef %11) #22
  br label %12

12:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ipv6_add_addr_hash(ptr noundef readnone %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = xor i32 %5, %3
  %7 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = xor i32 %6, %8
  %10 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = xor i32 %9, %11
  %13 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 26), align 4
  %14 = xor i32 %12, %13
  %15 = mul i32 %14, 1640531527
  %16 = lshr i32 %15, 24
  tail call void @_raw_spin_lock(ptr noundef nonnull @addrconf_hash_lock) #22
  %17 = getelementptr [256 x %struct.hlist_head], ptr @inet6_addr_lst, i32 0, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  %20 = getelementptr i8, ptr %18, i32 -124
  %21 = icmp eq ptr %20, null
  %22 = or i1 %19, %21
  br i1 %22, label %59, label %23

23:                                               ; preds = %2
  %24 = load i32, ptr %1, align 4
  %25 = load i32, ptr %4, align 4
  %26 = load i32, ptr %7, align 4
  %27 = load i32, ptr %10, align 4
  %28 = icmp eq ptr %0, null
  br label %29

29:                                               ; preds = %52, %23
  %30 = phi ptr [ %20, %23 ], [ %56, %52 ]
  %31 = getelementptr inbounds %struct.inet6_ifaddr, ptr %30, i32 0, i32 16
  %32 = load ptr, ptr %31, align 4
  %33 = load i32, ptr %30, align 4
  %34 = xor i32 %33, %24
  %35 = getelementptr [4 x i32], ptr %30, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = xor i32 %36, %25
  %38 = or i32 %37, %34
  %39 = getelementptr [4 x i32], ptr %30, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = xor i32 %40, %26
  %42 = or i32 %38, %41
  %43 = getelementptr [4 x i32], ptr %30, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = xor i32 %44, %27
  %46 = or i32 %42, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %29
  br i1 %28, label %64, label %49

49:                                               ; preds = %48
  %50 = load ptr, ptr %32, align 4
  %51 = icmp eq ptr %50, %0
  br i1 %51, label %64, label %52

52:                                               ; preds = %49, %29
  %53 = getelementptr inbounds %struct.inet6_ifaddr, ptr %30, i32 0, i32 18
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  %56 = getelementptr i8, ptr %54, i32 -124
  %57 = icmp eq ptr %56, null
  %58 = or i1 %55, %57
  br i1 %58, label %59, label %29

59:                                               ; preds = %52, %2
  %60 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 18
  store ptr %18, ptr %60, align 4
  %61 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 18, i32 1
  store volatile ptr %17, ptr %61, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !38
  store volatile ptr %60, ptr %17, align 4
  br i1 %19, label %64, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.hlist_node, ptr %18, i32 0, i32 1
  store volatile ptr %60, ptr %63, align 4
  br label %64

64:                                               ; preds = %62, %59, %49, %48
  %65 = phi i32 [ 0, %59 ], [ 0, %62 ], [ -17, %48 ], [ -17, %49 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !26
  %66 = load i16, ptr @addrconf_hash_lock, align 4
  %67 = add i16 %66, 1
  store i16 %67, ptr @addrconf_hash_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !27
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ipv6_link_dev_addr(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call i32 @__ipv6_addr_type(ptr noundef %1) #22
  %4 = icmp eq i32 %3, 0
  %5 = ashr i32 %3, 16
  %6 = select i1 %4, i32 -1, i32 %5
  %7 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 2
  br label %8

8:                                                ; preds = %12, %2
  %9 = phi ptr [ %7, %2 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %10, i32 -132
  %14 = tail call i32 @__ipv6_addr_type(ptr noundef %13) #22
  %15 = icmp eq i32 %14, 0
  %16 = ashr i32 %14, 16
  %17 = select i1 %15, i32 -1, i32 %16
  %18 = icmp slt i32 %6, %17
  br i1 %18, label %8, label %19

19:                                               ; preds = %12, %8
  %20 = phi ptr [ %10, %12 ], [ %7, %8 ]
  %21 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 19
  %22 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  store ptr %20, ptr %21, align 4
  %24 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 19, i32 1
  store ptr %23, ptr %24, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !39
  store volatile ptr %21, ptr %23, align 4
  store ptr %21, ptr %22, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6addr_notifier_call_chain(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @addrconf_dad_stop(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp ne i32 %1, 0
  %4 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  br i1 %3, label %6, label %8

6:                                                ; preds = %2
  %7 = or i32 %5, 8
  store i32 %7, ptr %4, align 4
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ %5, %2 ]
  %10 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 8
  %11 = and i32 %9, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %39, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %14) #22
  %15 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 21
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %37, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.inet6_ifaddr, ptr %16, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #22, !srcloc !12
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #22, !srcloc !18
  %21 = extractvalue { i32, i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23, !prof !9

23:                                               ; preds = %18
  %24 = add i32 %21, 1
  %25 = or i32 %24, %21
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %29, label %27, !prof !10

27:                                               ; preds = %23, %18
  %28 = phi i32 [ 2, %18 ], [ 1, %23 ]
  tail call void @refcount_warn_saturate(ptr noundef %19, i32 noundef %28) #22
  br label %29

29:                                               ; preds = %27, %23
  tail call void @_raw_spin_unlock_bh(ptr noundef %14) #22
  tail call fastcc void @ipv6_create_tempaddr(ptr noundef nonnull %16, i1 noundef zeroext true)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #22, !srcloc !12
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #22, !srcloc !13
  %31 = extractvalue { i32, i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = icmp sgt i32 %31, 0
  br i1 %34, label %38, label %35, !prof !10

35:                                               ; preds = %33
  tail call void @refcount_warn_saturate(ptr noundef %19, i32 noundef 3) #22
  br label %38

36:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  tail call void @inet6_ifa_finish_destroy(ptr noundef nonnull %16) #22
  br label %38

37:                                               ; preds = %13
  tail call void @_raw_spin_unlock_bh(ptr noundef %14) #22
  br label %38

38:                                               ; preds = %37, %36, %35, %33
  tail call fastcc void @ipv6_del_addr(ptr noundef %0)
  br label %75

39:                                               ; preds = %8
  %40 = and i32 %9, 128
  %41 = icmp eq i32 %40, 0
  %42 = and i1 %3, %41
  br i1 %42, label %74, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %44) #22
  %45 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 15
  %46 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %45) #22
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %48) #22, !srcloc !12
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %48, ptr %48, i32 1, ptr elementtype(i32) %48) #22, !srcloc !13
  %50 = extractvalue { i32, i32, i32 } %49, 0
  %51 = icmp slt i32 %50, 2
  br i1 %51, label %52, label %53, !prof !9

52:                                               ; preds = %47
  tail call void @refcount_warn_saturate(ptr noundef %48, i32 noundef 4) #22
  br label %53

53:                                               ; preds = %52, %47, %43
  %54 = load i32, ptr %10, align 4
  %55 = or i32 %54, 64
  %56 = and i32 %55, -5
  %57 = select i1 %3, i32 %56, i32 %55
  store i32 %57, ptr %10, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %44) #22
  br i1 %3, label %58, label %65

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 16
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.inet6_dev, ptr %60, i32 0, i32 27
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65, !prof !10

64:                                               ; preds = %58
  tail call fastcc void @__ipv6_ifa_notify(i32 noundef 0, ptr noundef %0) #22
  br label %65

65:                                               ; preds = %64, %58, %53
  %66 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %66) #22, !srcloc !12
  %67 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %66, ptr %66, i32 1, ptr elementtype(i32) %66) #22, !srcloc !13
  %68 = extractvalue { i32, i32, i32 } %67, 0
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = icmp sgt i32 %68, 0
  br i1 %71, label %75, label %72, !prof !10

72:                                               ; preds = %70
  tail call void @refcount_warn_saturate(ptr noundef %66, i32 noundef 3) #22
  br label %75

73:                                               ; preds = %65
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  tail call void @inet6_ifa_finish_destroy(ptr noundef %0) #22
  br label %75

74:                                               ; preds = %39
  tail call fastcc void @ipv6_del_addr(ptr noundef %0)
  br label %75

75:                                               ; preds = %74, %73, %72, %70, %38
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @addrconf_dad_completed(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.in6_addr, align 4
  %5 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !15
  %8 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 15
  %9 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %8) #22
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #22, !srcloc !12
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #22, !srcloc !13
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %16, !prof !9

15:                                               ; preds = %10
  tail call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 4) #22
  br label %16

16:                                               ; preds = %15, %10, %3
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr inbounds %struct.inet6_dev, ptr %17, i32 0, i32 27
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23, !prof !10

21:                                               ; preds = %16
  tail call fastcc void @__ipv6_ifa_notify(i32 noundef 20, ptr noundef %0) #22
  %22 = load ptr, ptr %5, align 4
  br label %23

23:                                               ; preds = %21, %16
  %24 = phi ptr [ %17, %16 ], [ %22, %21 ]
  %25 = getelementptr inbounds %struct.inet6_dev, ptr %24, i32 0, i32 24
  tail call void @_raw_read_lock_bh(ptr noundef %25) #22
  %26 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 11
  %27 = load i16, ptr %26, align 2
  %28 = icmp eq i16 %27, 32
  %29 = load ptr, ptr %5, align 4
  br i1 %28, label %30, label %72

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.inet6_dev, ptr %29, i32 0, i32 2
  %32 = getelementptr inbounds %struct.inet6_dev, ptr %29, i32 0, i32 2, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %31
  br i1 %34, label %54, label %35

35:                                               ; preds = %50, %30
  %36 = phi ptr [ %52, %50 ], [ %33, %30 ]
  %37 = getelementptr i8, ptr %36, i32 -82
  %38 = load i16, ptr %37, align 2
  %39 = icmp ugt i16 %38, 32
  br i1 %39, label %54, label %40

40:                                               ; preds = %35
  %41 = getelementptr i8, ptr %36, i32 -132
  %42 = icmp ne ptr %41, %0
  %43 = icmp eq i16 %38, 32
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = getelementptr i8, ptr %36, i32 -88
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 204
  %49 = icmp eq i32 %48, 128
  br i1 %49, label %72, label %50

50:                                               ; preds = %45, %40
  %51 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, %31
  br i1 %53, label %54, label %35

54:                                               ; preds = %50, %35, %30
  %55 = getelementptr inbounds %struct.inet6_dev, ptr %29, i32 0, i32 32
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  %58 = getelementptr inbounds %struct.inet6_dev, ptr %29, i32 0, i32 32, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 2
  %61 = icmp ne i32 %59, 0
  %62 = select i1 %57, i1 %61, i1 %60
  br i1 %62, label %63, label %74

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.inet6_dev, ptr %29, i32 0, i32 32, i32 7
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 14
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 8
  %71 = icmp eq i32 %70, 0
  br label %74

72:                                               ; preds = %45, %23
  %73 = getelementptr inbounds %struct.inet6_dev, ptr %29, i32 0, i32 24
  tail call void @_raw_read_unlock_bh(ptr noundef %73) #22
  br label %78

74:                                               ; preds = %67, %63, %54
  %75 = phi i1 [ %71, %67 ], [ false, %54 ], [ false, %63 ]
  %76 = getelementptr inbounds %struct.inet6_dev, ptr %29, i32 0, i32 24
  tail call void @_raw_read_unlock_bh(ptr noundef %76) #22
  %77 = load ptr, ptr %5, align 4
  tail call void @ipv6_mc_dad_complete(ptr noundef %77) #22
  br label %78

78:                                               ; preds = %74, %72
  %79 = phi i1 [ %75, %74 ], [ false, %72 ]
  br i1 %2, label %80, label %94

80:                                               ; preds = %78
  %81 = load ptr, ptr %5, align 4
  %82 = getelementptr inbounds %struct.inet6_dev, ptr %81, i32 0, i32 32, i32 36
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %87 = getelementptr inbounds %struct.ipv6_devconf, ptr %86, i32 0, i32 36
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %85, %80
  %91 = getelementptr inbounds %struct.inet6_dev, ptr %81, i32 0, i32 32
  %92 = load i32, ptr %91, align 4
  %93 = icmp ne i32 %92, 0
  tail call void @ndisc_send_na(ptr noundef %7, ptr noundef nonnull @in6addr_linklocal_allnodes, ptr noundef %0, i1 noundef zeroext %93, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #22
  br label %94

94:                                               ; preds = %90, %85, %78
  br i1 %79, label %95, label %176

95:                                               ; preds = %94
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %96 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 69
  %97 = load volatile ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  br label %189

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.inet6_dev, ptr %97, i32 0, i32 24
  tail call void @_raw_read_lock_bh(ptr noundef %101) #22
  %102 = getelementptr inbounds %struct.inet6_dev, ptr %97, i32 0, i32 2
  %103 = getelementptr inbounds %struct.inet6_dev, ptr %97, i32 0, i32 2, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, %102
  br i1 %105, label %187, label %106

106:                                              ; preds = %151, %100
  %107 = phi ptr [ %153, %151 ], [ %104, %100 ]
  %108 = getelementptr i8, ptr %107, i32 -82
  %109 = load i16, ptr %108, align 2
  %110 = icmp ugt i16 %109, 32
  br i1 %110, label %188, label %111

111:                                              ; preds = %106
  %112 = icmp eq i16 %109, 32
  br i1 %112, label %113, label %151

113:                                              ; preds = %111
  %114 = getelementptr i8, ptr %107, i32 -88
  %115 = load i32, ptr %114, align 4
  %116 = and i32 %115, 64
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %151

118:                                              ; preds = %113
  %119 = getelementptr i8, ptr %107, i32 -132
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef align 8 dereferenceable(16) %119, i32 16, i1 false) #22
  tail call void @_raw_read_unlock_bh(ptr noundef %101) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  call void @ndisc_send_rs(ptr noundef %7, ptr noundef nonnull %4, ptr noundef nonnull @in6addr_linklocal_allrouters) #22
  %120 = load ptr, ptr %5, align 4
  %121 = getelementptr inbounds %struct.inet6_dev, ptr %120, i32 0, i32 24
  call void @_raw_write_lock_bh(ptr noundef %121) #22
  %122 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %122) #22
  %123 = load ptr, ptr %5, align 4
  %124 = getelementptr inbounds %struct.inet6_dev, ptr %123, i32 0, i32 32, i32 8
  %125 = load i32, ptr %124, align 4
  %126 = call i32 @prandom_u32() #22
  %127 = urem i32 %126, 200001
  %128 = add nuw nsw i32 %127, 900000
  %129 = zext i32 %128 to i64
  %130 = sext i32 %125 to i64
  %131 = mul nsw i64 %129, %130
  %132 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %131) #25, !srcloc !40
  %133 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %131, i64 %132, i32 0) #25, !srcloc !41
  %134 = extractvalue { i64, i32 } %133, 0
  %135 = lshr i64 %134, 18
  %136 = trunc i64 %135 to i32
  %137 = load ptr, ptr %5, align 4
  %138 = getelementptr inbounds %struct.inet6_dev, ptr %137, i32 0, i32 35
  store i32 %136, ptr %138, align 4
  %139 = load ptr, ptr %5, align 4
  %140 = getelementptr inbounds %struct.inet6_dev, ptr %139, i32 0, i32 36
  store i8 1, ptr %140, align 4
  %141 = load ptr, ptr %5, align 4
  %142 = getelementptr inbounds %struct.inet6_dev, ptr %141, i32 0, i32 26
  %143 = load i32, ptr %142, align 4
  %144 = or i32 %143, 16
  store i32 %144, ptr %142, align 4
  %145 = load ptr, ptr %5, align 4
  %146 = getelementptr inbounds %struct.inet6_dev, ptr %145, i32 0, i32 35
  %147 = load i32, ptr %146, align 4
  %148 = getelementptr inbounds %struct.inet6_dev, ptr %145, i32 0, i32 34, i32 0, i32 1
  %149 = load volatile ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %156, label %167

151:                                              ; preds = %113, %111
  %152 = getelementptr inbounds %struct.list_head, ptr %107, i32 0, i32 1
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, %102
  br i1 %154, label %155, label %106

155:                                              ; preds = %151
  tail call void @_raw_read_unlock_bh(ptr noundef %101) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  br label %189

156:                                              ; preds = %118
  %157 = getelementptr inbounds %struct.inet6_dev, ptr %145, i32 0, i32 25
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %157) #22, !srcloc !12
  %158 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %157, ptr %157, i32 1, ptr elementtype(i32) %157) #22, !srcloc !18
  %159 = extractvalue { i32, i32, i32 } %158, 0
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %165, label %161, !prof !9

161:                                              ; preds = %156
  %162 = add i32 %159, 1
  %163 = or i32 %162, %159
  %164 = icmp sgt i32 %163, -1
  br i1 %164, label %167, label %165, !prof !10

165:                                              ; preds = %161, %156
  %166 = phi i32 [ 2, %156 ], [ 1, %161 ]
  call void @refcount_warn_saturate(ptr noundef %157, i32 noundef %166) #22
  br label %167

167:                                              ; preds = %165, %161, %118
  %168 = getelementptr inbounds %struct.inet6_dev, ptr %145, i32 0, i32 34
  %169 = load volatile i32, ptr @jiffies, align 64
  %170 = add i32 %169, %147
  %171 = call i32 @mod_timer(ptr noundef %168, i32 noundef %170) #22
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !26
  %172 = load i16, ptr %122, align 4
  %173 = add i16 %172, 1
  store i16 %173, ptr %122, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !27
  %174 = load ptr, ptr %5, align 4
  %175 = getelementptr inbounds %struct.inet6_dev, ptr %174, i32 0, i32 24
  call void @_raw_write_unlock_bh(ptr noundef %175) #22
  br label %176

176:                                              ; preds = %167, %94
  br i1 %1, label %177, label %181

177:                                              ; preds = %176
  %178 = load ptr, ptr @__fib6_flush_trees, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %181, label %180

180:                                              ; preds = %177
  call void %178(ptr noundef nonnull @init_net) #22
  br label %181

181:                                              ; preds = %180, %177, %176
  %182 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 8
  %183 = load i32, ptr %182, align 4
  %184 = and i32 %183, 1
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %181
  call fastcc void @addrconf_verify_rtnl()
  br label %189

187:                                              ; preds = %100
  tail call void @_raw_read_unlock_bh(ptr noundef %101) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  br label %189

188:                                              ; preds = %106
  tail call void @_raw_read_unlock_bh(ptr noundef %101) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  br label %189

189:                                              ; preds = %188, %187, %186, %181, %155, %99
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ndisc_send_ns(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prandom_seed(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_ins_rt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @addrconf_dad_kick(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %5 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = tail call i32 @prandom_u32() #22
  %11 = getelementptr inbounds %struct.inet6_dev, ptr %4, i32 0, i32 32, i32 10
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 1, i32 %12
  %15 = urem i32 %10, %14
  br label %16

16:                                               ; preds = %9, %1
  %17 = phi i32 [ %15, %9 ], [ 0, %1 ]
  store i64 0, ptr %2, align 8
  %18 = getelementptr inbounds %struct.inet6_dev, ptr %4, i32 0, i32 32, i32 44
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %23 = getelementptr inbounds %struct.ipv6_devconf, ptr %22, i32 0, i32 44
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21, %16
  br label %27

27:                                               ; preds = %27, %26
  call void @get_random_bytes(ptr noundef nonnull %2, i32 noundef 6) #22
  %28 = load i64, ptr %2, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %27, label %30

30:                                               ; preds = %27, %21
  %31 = phi i64 [ 0, %21 ], [ %28, %27 ]
  %32 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 12
  store i64 %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.inet6_dev, ptr %4, i32 0, i32 32, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 9
  store i8 %35, ptr %36, align 8
  call fastcc void @addrconf_mod_dad_work(ptr noundef %0, i32 noundef %17)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ipv6_create_tempaddr(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.ifa6_config, align 4
  %4 = alloca %struct.in6_addr, align 8
  %5 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = load volatile i32, ptr @jiffies, align 64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !15
  %8 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 24
  tail call void @_raw_write_lock_bh(ptr noundef %8) #22
  %9 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 25
  %10 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 32, i32 14
  %11 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 6
  %12 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 22
  %13 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 32, i32 17
  %14 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 5
  %15 = getelementptr inbounds [16 x i8], ptr %4, i32 0, i32 8
  %16 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 3
  %17 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 14
  %18 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 32, i32 6
  %19 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 31
  %20 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 32, i32 16
  %21 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 32, i32 18
  %22 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 28
  %23 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 3
  %24 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 32, i32 15
  %25 = getelementptr inbounds %struct.ifa6_config, ptr %3, i32 0, i32 6
  %26 = getelementptr inbounds %struct.ifa6_config, ptr %3, i32 0, i32 5
  %27 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 4
  %28 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 1
  %29 = getelementptr inbounds %struct.ifa6_config, ptr %3, i32 0, i32 1
  %30 = add i32 %7, 2
  %31 = getelementptr inbounds %struct.ifa6_config, ptr %3, i32 0, i32 4
  %32 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 8
  %33 = getelementptr inbounds %struct.ifa6_config, ptr %3, i32 0, i32 7
  %34 = getelementptr inbounds i8, ptr %3, i32 8
  br label %35

35:                                               ; preds = %168, %2
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #22, !srcloc !12
  %36 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #22, !srcloc !18
  %37 = extractvalue { i32, i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39, !prof !9

39:                                               ; preds = %35
  %40 = add i32 %37, 1
  %41 = or i32 %40, %37
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %45, label %43, !prof !10

43:                                               ; preds = %39, %35
  %44 = phi i32 [ 2, %35 ], [ 1, %39 ]
  call void @refcount_warn_saturate(ptr noundef %9, i32 noundef %44) #22
  br label %45

45:                                               ; preds = %43, %39
  %46 = load i32, ptr %10, align 4
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  call void @_raw_write_unlock_bh(ptr noundef %8) #22
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ipv6_create_tempaddr) #23
  call fastcc void @in6_dev_put(ptr noundef %6)
  br label %197

50:                                               ; preds = %45
  call void @_raw_spin_lock_bh(ptr noundef %11) #22
  %51 = load i32, ptr %12, align 8
  %52 = add i32 %51, 1
  store i32 %52, ptr %12, align 8
  %53 = load i32, ptr %13, align 4
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  store i32 -1, ptr %10, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %11) #22
  call void @_raw_write_unlock_bh(ptr noundef %8) #22
  %56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.ipv6_create_tempaddr) #23
  call fastcc void @in6_dev_put(ptr noundef %6)
  br label %197

57:                                               ; preds = %50
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #22, !srcloc !12
  %58 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #22, !srcloc !18
  %59 = extractvalue { i32, i32, i32 } %58, 0
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61, !prof !9

61:                                               ; preds = %57
  %62 = add i32 %59, 1
  %63 = or i32 %62, %59
  %64 = icmp sgt i32 %63, -1
  br i1 %64, label %67, label %65, !prof !10

65:                                               ; preds = %61, %57
  %66 = phi i32 [ 2, %57 ], [ 1, %61 ]
  call void @refcount_warn_saturate(ptr noundef %14, i32 noundef %66) #22
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i64, ptr %0, align 8
  store i64 %68, ptr %4, align 8
  br label %69

69:                                               ; preds = %84, %67
  call void @get_random_bytes(ptr noundef %15, i32 noundef 8) #22
  %70 = load i32, ptr %15, align 8
  %71 = load i32, ptr %16, align 4
  %72 = or i32 %71, %70
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %69
  %75 = icmp eq i32 %70, -10616830
  %76 = and i32 %71, 255
  %77 = icmp eq i32 %76, 254
  %78 = select i1 %75, i1 %77, i1 false
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = icmp eq i32 %70, -3
  %81 = call i32 @llvm.bswap.i32(i32 %71) #22
  %82 = icmp ugt i32 %81, -129
  %83 = select i1 %80, i1 %82, i1 false
  br i1 %83, label %84, label %85

84:                                               ; preds = %79, %74, %69
  br label %69

85:                                               ; preds = %79
  %86 = load i32, ptr %17, align 4
  %87 = sub i32 %7, %86
  %88 = udiv i32 %87, 100
  %89 = load i32, ptr %13, align 4
  %90 = load i32, ptr %18, align 4
  %91 = mul i32 %90, %89
  %92 = load ptr, ptr %19, align 4
  %93 = getelementptr %struct.neigh_parms, ptr %92, i32 0, i32 11, i32 4
  %94 = load i32, ptr %93, align 4
  %95 = call i32 @llvm.smax.i32(i32 %94, i32 1)
  %96 = mul i32 %91, %95
  %97 = sdiv i32 %96, 100
  %98 = load volatile i32, ptr %20, align 4
  %99 = load i32, ptr %21, align 4
  %100 = sub i32 %98, %97
  %101 = call i32 @llvm.umin.i32(i32 %99, i32 %100)
  %102 = load i32, ptr %22, align 4
  %103 = icmp ugt i32 %102, %101
  br i1 %103, label %104, label %111, !prof !9

104:                                              ; preds = %85
  %105 = icmp sgt i32 %101, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %104
  call void @get_random_bytes(ptr noundef %22, i32 noundef 4) #22
  %107 = load i32, ptr %22, align 4
  %108 = urem i32 %107, %101
  br label %109

109:                                              ; preds = %106, %104
  %110 = phi i32 [ %108, %106 ], [ 0, %104 ]
  store i32 %110, ptr %22, align 4
  br label %111

111:                                              ; preds = %109, %85
  %112 = phi i32 [ %102, %85 ], [ %110, %109 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %34, i8 0, i32 24, i1 false)
  %113 = load i32, ptr %23, align 8
  %114 = load i32, ptr %24, align 4
  %115 = add i32 %114, %88
  %116 = call i32 @llvm.umin.i32(i32 %113, i32 %115)
  store i32 %116, ptr %25, align 4
  %117 = add i32 %98, %88
  %118 = sub i32 %117, %112
  %119 = load i32, ptr %27, align 4
  %120 = call i32 @llvm.umin.i32(i32 %119, i32 %118)
  store i32 %120, ptr %26, align 4
  %121 = load i32, ptr %28, align 8
  store i32 %121, ptr %29, align 4
  %122 = load i32, ptr %17, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %11) #22
  call void @_raw_write_unlock_bh(ptr noundef %8) #22
  %123 = sub i32 %30, %122
  %124 = udiv i32 %123, 100
  %125 = add nsw i32 %124, %97
  %126 = icmp ugt i32 %120, %125
  br i1 %126, label %143, label %127

127:                                              ; preds = %111
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #22, !srcloc !12
  %128 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #22, !srcloc !13
  %129 = extractvalue { i32, i32, i32 } %128, 0
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %134, label %131

131:                                              ; preds = %127
  %132 = icmp sgt i32 %129, 0
  br i1 %132, label %135, label %133, !prof !10

133:                                              ; preds = %131
  call void @refcount_warn_saturate(ptr noundef %14, i32 noundef 3) #22
  br label %135

134:                                              ; preds = %127
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  call void @inet6_ifa_finish_destroy(ptr noundef %0) #22
  br label %135

135:                                              ; preds = %134, %133, %131
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #22, !srcloc !12
  %136 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #22, !srcloc !13
  %137 = extractvalue { i32, i32, i32 } %136, 0
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %142, label %139

139:                                              ; preds = %135
  %140 = icmp sgt i32 %137, 0
  br i1 %140, label %197, label %141, !prof !10

141:                                              ; preds = %139
  call void @refcount_warn_saturate(ptr noundef %9, i32 noundef 3) #22
  br label %197

142:                                              ; preds = %135
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  call void @in6_dev_finish_destroy(ptr noundef %6) #22
  br label %197

143:                                              ; preds = %111
  %144 = load i32, ptr %32, align 4
  %145 = and i32 %144, 4
  %146 = or i32 %145, 1
  store i32 %146, ptr %31, align 4
  store ptr %4, ptr %3, align 4
  %147 = call i32 @__ipv6_addr_type(ptr noundef nonnull %4) #22
  %148 = trunc i32 %147 to i16
  %149 = and i16 %148, 240
  store i16 %149, ptr %33, align 4
  %150 = call fastcc ptr @ipv6_add_addr(ptr noundef %6, ptr noundef nonnull %3, i1 noundef zeroext %1, ptr noundef null)
  %151 = icmp ugt ptr %150, inttoptr (i32 -4096 to ptr)
  br i1 %151, label %152, label %170

152:                                              ; preds = %143
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #22, !srcloc !12
  %153 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #22, !srcloc !13
  %154 = extractvalue { i32, i32, i32 } %153, 0
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %159, label %156

156:                                              ; preds = %152
  %157 = icmp sgt i32 %154, 0
  br i1 %157, label %160, label %158, !prof !10

158:                                              ; preds = %156
  call void @refcount_warn_saturate(ptr noundef %14, i32 noundef 3) #22
  br label %160

159:                                              ; preds = %152
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  call void @inet6_ifa_finish_destroy(ptr noundef %0) #22
  br label %160

160:                                              ; preds = %159, %158, %156
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #22, !srcloc !12
  %161 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #22, !srcloc !13
  %162 = extractvalue { i32, i32, i32 } %161, 0
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %167, label %164

164:                                              ; preds = %160
  %165 = icmp sgt i32 %162, 0
  br i1 %165, label %168, label %166, !prof !10

166:                                              ; preds = %164
  call void @refcount_warn_saturate(ptr noundef %9, i32 noundef 3) #22
  br label %168

167:                                              ; preds = %160
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  call void @in6_dev_finish_destroy(ptr noundef %6) #22
  br label %168

168:                                              ; preds = %167, %166, %164
  %169 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.ipv6_create_tempaddr) #23
  call void @_raw_write_lock_bh(ptr noundef %8) #22
  br label %35

170:                                              ; preds = %143
  %171 = getelementptr inbounds %struct.inet6_ifaddr, ptr %150, i32 0, i32 6
  call void @_raw_spin_lock_bh(ptr noundef %171) #22
  %172 = getelementptr inbounds %struct.inet6_ifaddr, ptr %150, i32 0, i32 21
  store ptr %0, ptr %172, align 4
  %173 = getelementptr inbounds %struct.inet6_ifaddr, ptr %150, i32 0, i32 13
  store i32 %7, ptr %173, align 8
  %174 = getelementptr inbounds %struct.inet6_ifaddr, ptr %150, i32 0, i32 14
  store i32 %122, ptr %174, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %171) #22
  call void @_raw_spin_lock_bh(ptr noundef %171) #22
  %175 = getelementptr inbounds %struct.inet6_ifaddr, ptr %150, i32 0, i32 7
  %176 = load i32, ptr %175, align 8
  %177 = icmp eq i32 %176, 4
  br i1 %177, label %179, label %178

178:                                              ; preds = %170
  store i32 0, ptr %175, align 8
  call void @_raw_spin_unlock_bh(ptr noundef %171) #22
  call fastcc void @addrconf_mod_dad_work(ptr noundef %150, i32 noundef 0) #22
  br label %180

179:                                              ; preds = %170
  call void @_raw_spin_unlock_bh(ptr noundef %171) #22
  br label %180

180:                                              ; preds = %179, %178
  %181 = getelementptr inbounds %struct.inet6_ifaddr, ptr %150, i32 0, i32 5
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %181) #22, !srcloc !12
  %182 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %181, ptr %181, i32 1, ptr elementtype(i32) %181) #22, !srcloc !13
  %183 = extractvalue { i32, i32, i32 } %182, 0
  %184 = icmp eq i32 %183, 1
  br i1 %184, label %188, label %185

185:                                              ; preds = %180
  %186 = icmp sgt i32 %183, 0
  br i1 %186, label %189, label %187, !prof !10

187:                                              ; preds = %185
  call void @refcount_warn_saturate(ptr noundef %181, i32 noundef 3) #22
  br label %189

188:                                              ; preds = %180
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  call void @inet6_ifa_finish_destroy(ptr noundef %150) #22
  br label %189

189:                                              ; preds = %188, %187, %185
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #22, !srcloc !12
  %190 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #22, !srcloc !13
  %191 = extractvalue { i32, i32, i32 } %190, 0
  %192 = icmp eq i32 %191, 1
  br i1 %192, label %196, label %193

193:                                              ; preds = %189
  %194 = icmp sgt i32 %191, 0
  br i1 %194, label %197, label %195, !prof !10

195:                                              ; preds = %193
  call void @refcount_warn_saturate(ptr noundef %9, i32 noundef 3) #22
  br label %197

196:                                              ; preds = %189
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  call void @in6_dev_finish_destroy(ptr noundef %6) #22
  br label %197

197:                                              ; preds = %196, %195, %193, %142, %141, %139, %55, %48
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ipv6_del_addr(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  store i32 0, ptr %2, align 4, !annotation !15
  %3 = tail call i32 @rtnl_is_locked() #22
  %4 = icmp eq i32 %3, 0
  %5 = load i1, ptr @ipv6_del_addr.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %1
  store i1 true, ptr @ipv6_del_addr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1268, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str, i32 noundef 1268) #22
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %10) #22
  %11 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 7
  %12 = load i32, ptr %11, align 8
  store i32 4, ptr %11, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %10) #22
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %99, label %14

14:                                               ; preds = %9
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @addrconf_hash_lock) #22
  %15 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 18, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 18
  %20 = load ptr, ptr %19, align 4
  store volatile ptr %20, ptr %16, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.hlist_node, ptr %20, i32 0, i32 1
  store volatile ptr %16, ptr %23, align 4
  br label %24

24:                                               ; preds = %22, %18
  store volatile ptr null, ptr %15, align 4
  br label %25

25:                                               ; preds = %24, %14
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @addrconf_hash_lock) #22
  %26 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 16
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.inet6_dev, ptr %27, i32 0, i32 24
  tail call void @_raw_write_lock_bh(ptr noundef %28) #22
  %29 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 8
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %58, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 20
  %35 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 20, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %34, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %36, ptr %38, align 4
  store volatile ptr %37, ptr %36, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %34, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %35, align 4
  %39 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 21
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.inet6_ifaddr, ptr %40, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #22, !srcloc !12
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #22, !srcloc !13
  %45 = extractvalue { i32, i32, i32 } %44, 0
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = icmp sgt i32 %45, 0
  br i1 %48, label %51, label %49, !prof !10

49:                                               ; preds = %47
  tail call void @refcount_warn_saturate(ptr noundef %43, i32 noundef 3) #22
  br label %51

50:                                               ; preds = %42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  tail call void @inet6_ifa_finish_destroy(ptr noundef nonnull %40) #22
  br label %51

51:                                               ; preds = %50, %49, %47
  store ptr null, ptr %39, align 4
  br label %52

52:                                               ; preds = %51, %33
  %53 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %53) #22, !srcloc !12
  %54 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %53, ptr %53, i32 1, ptr elementtype(i32) %53) #22, !srcloc !13
  %55 = extractvalue { i32, i32, i32 } %54, 0
  %56 = icmp slt i32 %55, 2
  br i1 %56, label %57, label %58, !prof !9

57:                                               ; preds = %52
  tail call void @refcount_warn_saturate(ptr noundef %53, i32 noundef 4) #22
  br label %58

58:                                               ; preds = %57, %52, %25
  %59 = load i32, ptr %29, align 4
  %60 = and i32 %59, 640
  %61 = icmp eq i32 %60, 128
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call fastcc i32 @check_cleanup_prefix_route(ptr noundef %0, ptr noundef nonnull %2)
  br label %64

64:                                               ; preds = %62, %58
  %65 = phi i32 [ %63, %62 ], [ 0, %58 ]
  %66 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 19
  %67 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 19, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = load ptr, ptr %66, align 4
  %70 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  store ptr %68, ptr %70, align 4
  store volatile ptr %69, ptr %68, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %67, align 4
  %71 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %71) #22, !srcloc !12
  %72 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %71, ptr %71, i32 1, ptr elementtype(i32) %71) #22, !srcloc !13
  %73 = extractvalue { i32, i32, i32 } %72, 0
  %74 = icmp slt i32 %73, 2
  br i1 %74, label %75, label %76, !prof !9

75:                                               ; preds = %64
  tail call void @refcount_warn_saturate(ptr noundef %71, i32 noundef 4) #22
  br label %76

76:                                               ; preds = %75, %64
  %77 = load ptr, ptr %26, align 4
  %78 = getelementptr inbounds %struct.inet6_dev, ptr %77, i32 0, i32 24
  tail call void @_raw_write_unlock_bh(ptr noundef %78) #22
  %79 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 15
  %80 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %79) #22
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %71) #22, !srcloc !12
  %82 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %71, ptr %71, i32 1, ptr elementtype(i32) %71) #22, !srcloc !13
  %83 = extractvalue { i32, i32, i32 } %82, 0
  %84 = icmp slt i32 %83, 2
  br i1 %84, label %85, label %86, !prof !9

85:                                               ; preds = %81
  tail call void @refcount_warn_saturate(ptr noundef %71, i32 noundef 4) #22
  br label %86

86:                                               ; preds = %85, %81, %76
  %87 = load ptr, ptr %26, align 4
  %88 = getelementptr inbounds %struct.inet6_dev, ptr %87, i32 0, i32 27
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92, !prof !10

91:                                               ; preds = %86
  tail call fastcc void @__ipv6_ifa_notify(i32 noundef 21, ptr noundef %0) #22
  br label %92

92:                                               ; preds = %91, %86
  %93 = tail call i32 @inet6addr_notifier_call_chain(i32 noundef 2, ptr noundef %0) #22
  %94 = icmp eq i32 %65, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i32, ptr %2, align 4
  %97 = icmp eq i32 %65, 1
  tail call fastcc void @cleanup_prefix_route(ptr noundef %0, i32 noundef %96, i1 noundef zeroext %97, i1 noundef zeroext false)
  br label %98

98:                                               ; preds = %95, %92
  tail call void @rt6_remove_prefsrc(ptr noundef %0) #22
  br label %99

99:                                               ; preds = %98, %9
  %100 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %100) #22, !srcloc !12
  %101 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %100, ptr %100, i32 1, ptr elementtype(i32) %100) #22, !srcloc !13
  %102 = extractvalue { i32, i32, i32 } %101, 0
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = icmp sgt i32 %102, 0
  br i1 %105, label %108, label %106, !prof !10

106:                                              ; preds = %104
  tail call void @refcount_warn_saturate(ptr noundef %100, i32 noundef 3) #22
  br label %108

107:                                              ; preds = %99
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  tail call void @inet6_ifa_finish_destroy(ptr noundef %0) #22
  br label %108

108:                                              ; preds = %107, %106, %104
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @check_cleanup_prefix_route(ptr noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = load volatile i32, ptr @jiffies, align 64
  store i32 %5, ptr %1, align 4
  %6 = getelementptr inbounds %struct.inet6_dev, ptr %4, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %69, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 1
  br label %11

11:                                               ; preds = %65, %9
  %12 = phi ptr [ %7, %9 ], [ %67, %65 ]
  %13 = phi i32 [ 1, %9 ], [ %66, %65 ]
  %14 = getelementptr i8, ptr %12, i32 -132
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %65, label %16

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %12, i32 -116
  %18 = load i32, ptr %17, align 8
  %19 = load i32, ptr %10, align 8
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %65

21:                                               ; preds = %16
  %22 = lshr i32 %18, 5
  %23 = icmp ult i32 %18, 32
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = shl nuw nsw i32 %22, 2
  %26 = tail call i32 @bcmp(ptr %14, ptr %0, i32 %25) #22
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %65

28:                                               ; preds = %24, %21
  %29 = and i32 %18, 31
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %28
  %32 = getelementptr i32, ptr %14, i32 %22
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr i32, ptr %0, i32 %22
  %35 = load i32, ptr %34, align 4
  %36 = xor i32 %35, %33
  %37 = sub nuw nsw i32 32, %29
  %38 = shl nsw i32 -1, %37
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #22
  %40 = and i32 %36, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %31, %28
  %43 = getelementptr i8, ptr %12, i32 -88
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 640
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %42
  %48 = getelementptr i8, ptr %12, i32 -96
  tail call void @_raw_spin_lock(ptr noundef %48) #22
  %49 = getelementptr i8, ptr %12, i32 -108
  %50 = load i32, ptr %49, align 8
  %51 = icmp eq i32 %50, -1
  %52 = tail call i32 @llvm.umin.i32(i32 %50, i32 21474836) #22
  %53 = load i32, ptr %1, align 4
  %54 = getelementptr i8, ptr %12, i32 -64
  %55 = load i32, ptr %54, align 4
  %56 = mul nuw nsw i32 %52, 100
  %57 = select i1 %51, i32 -100, i32 %56
  %58 = add i32 %57, %55
  %59 = sub i32 %53, %58
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %47
  store i32 %58, ptr %1, align 4
  br label %62

62:                                               ; preds = %61, %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !26
  %63 = load i16, ptr %48, align 4
  %64 = add i16 %63, 1
  store i16 %64, ptr %48, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !27
  br label %65

65:                                               ; preds = %62, %31, %24, %16, %11
  %66 = phi i32 [ %13, %11 ], [ %13, %16 ], [ 2, %62 ], [ %13, %24 ], [ %13, %31 ]
  %67 = load ptr, ptr %12, align 4
  %68 = icmp eq ptr %67, %6
  br i1 %68, label %69, label %11

69:                                               ; preds = %65, %42, %2
  %70 = phi i32 [ 1, %2 ], [ %66, %65 ], [ 0, %42 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cleanup_prefix_route(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 25
  %6 = select i1 %3, ptr %5, ptr %0
  %7 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 16
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call fastcc ptr @addrconf_get_prefix_route(ptr noundef %6, i32 noundef %8, ptr noundef %11, i32 noundef 0, i32 noundef 65536, i1 noundef zeroext true)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %35, label %14

14:                                               ; preds = %4
  br i1 %2, label %15, label %17

15:                                               ; preds = %14
  %16 = tail call i32 @ip6_del_rt(ptr noundef nonnull @init_net, ptr noundef nonnull %12, i1 noundef zeroext false) #22
  br label %35

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.fib6_info, ptr %12, i32 0, i32 9
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 4194304
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.fib6_info, ptr %12, i32 0, i32 6
  store i32 %1, ptr %23, align 4
  %24 = or i32 %19, 4194304
  store i32 %24, ptr %18, align 4
  br label %25

25:                                               ; preds = %22, %17
  %26 = getelementptr inbounds %struct.fib6_info, ptr %12, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #22, !srcloc !12
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #22, !srcloc !13
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = icmp sgt i32 %28, 0
  br i1 %31, label %35, label %32, !prof !10

32:                                               ; preds = %30
  tail call void @refcount_warn_saturate(ptr noundef %26, i32 noundef 3) #22
  br label %35

33:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  %34 = getelementptr inbounds %struct.fib6_info, ptr %12, i32 0, i32 19
  tail call void @call_rcu(ptr noundef %34, ptr noundef nonnull @fib6_info_destroy_rcu) #22
  br label %35

35:                                               ; preds = %33, %32, %30, %15, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt6_remove_prefsrc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_mc_dad_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ndisc_send_na(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ndisc_send_rs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rfc3315_s14_backoff_init(i32 noundef %0) unnamed_addr #3 {
  %2 = tail call i32 @prandom_u32() #22
  %3 = urem i32 %2, 200001
  %4 = add nuw nsw i32 %3, 900000
  %5 = zext i32 %4 to i64
  %6 = sext i32 %0 to i64
  %7 = mul nsw i64 %5, %6
  %8 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %7) #25, !srcloc !40
  %9 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %7, i64 %8, i32 0) #25, !srcloc !41
  %10 = extractvalue { i64, i32 } %9, 0
  %11 = lshr i64 %10, 18
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @addrconf_mod_rs_timer(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 34, i32 0, i32 1
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #22, !srcloc !12
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #22, !srcloc !18
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11, !prof !9

11:                                               ; preds = %6
  %12 = add i32 %9, 1
  %13 = or i32 %12, %9
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %17, label %15, !prof !10

15:                                               ; preds = %11, %6
  %16 = phi i32 [ 2, %6 ], [ 1, %11 ]
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef %16) #22
  br label %17

17:                                               ; preds = %15, %11, %2
  %18 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 34
  %19 = load volatile i32, ptr @jiffies, align 64
  %20 = add i32 %19, %1
  %21 = tail call i32 @mod_timer(ptr noundef %18, i32 noundef %20) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @addrconf_verify_rtnl() unnamed_addr #0 {
  %1 = tail call i32 @rtnl_is_locked() #22
  %2 = icmp eq i32 %1, 0
  %3 = load i1, ptr @addrconf_verify_rtnl.__already_done, align 1
  %4 = xor i1 %3, true
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %7, !prof !9

6:                                                ; preds = %0
  store i1 true, ptr @addrconf_verify_rtnl.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4497, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str, i32 noundef 4497) #22
  br label %7

7:                                                ; preds = %6, %0
  %8 = tail call ptr @llvm.thread.pointer() #22
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %10 = load volatile i32, ptr %9, align 4
  %11 = add i32 %10, 512
  store volatile i32 %11, ptr %9, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !20
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = add i32 %12, 12000
  %14 = tail call i32 @round_jiffies_up(i32 noundef %13) #22
  %15 = tail call zeroext i1 @cancel_delayed_work(ptr noundef nonnull @addr_chk_work) #22
  %16 = add i32 %12, 2
  br label %17

17:                                               ; preds = %233, %7
  %18 = phi i32 [ %14, %7 ], [ %234, %233 ]
  %19 = phi i32 [ 0, %7 ], [ %235, %233 ]
  %20 = getelementptr [256 x %struct.hlist_head], ptr @inet6_addr_lst, i32 0, i32 %19
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  %23 = getelementptr i8, ptr %21, i32 -124
  %24 = icmp eq ptr %23, null
  %25 = or i1 %22, %24
  br i1 %25, label %233, label %26

26:                                               ; preds = %230, %17
  %27 = phi i32 [ %231, %230 ], [ %18, %17 ]
  %28 = phi ptr [ %232, %230 ], [ %23, %17 ]
  %29 = getelementptr inbounds %struct.inet6_ifaddr, ptr %28, i32 0, i32 8
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 128
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.inet6_ifaddr, ptr %28, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %222, label %37

37:                                               ; preds = %33, %26
  %38 = getelementptr inbounds %struct.inet6_ifaddr, ptr %28, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %38) #22
  %39 = getelementptr inbounds %struct.inet6_ifaddr, ptr %28, i32 0, i32 14
  %40 = load i32, ptr %39, align 4
  %41 = sub i32 %16, %40
  %42 = udiv i32 %41, 100
  %43 = getelementptr inbounds %struct.inet6_ifaddr, ptr %28, i32 0, i32 3
  %44 = load i32, ptr %43, align 8
  %45 = icmp eq i32 %44, -1
  %46 = icmp ult i32 %42, %44
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %64, label %48

48:                                               ; preds = %37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !26
  %49 = load i16, ptr %38, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %38, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !27
  %51 = getelementptr inbounds %struct.inet6_ifaddr, ptr %28, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #22, !srcloc !12
  %52 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 1, ptr elementtype(i32) %51) #22, !srcloc !18
  %53 = extractvalue { i32, i32, i32 } %52, 0
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55, !prof !9

55:                                               ; preds = %48
  %56 = add i32 %53, 1
  %57 = or i32 %56, %53
  %58 = icmp sgt i32 %57, -1
  br i1 %58, label %61, label %59, !prof !10

59:                                               ; preds = %55, %48
  %60 = phi i32 [ 2, %48 ], [ 1, %55 ]
  tail call void @refcount_warn_saturate(ptr noundef %51, i32 noundef %60) #22
  br label %61

61:                                               ; preds = %59, %55
  tail call fastcc void @local_bh_enable() #22
  tail call fastcc void @ipv6_del_addr(ptr noundef nonnull %28)
  %62 = load volatile i32, ptr %9, align 4
  %63 = add i32 %62, 512
  store volatile i32 %63, ptr %9, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !20
  br label %215

64:                                               ; preds = %37
  %65 = getelementptr inbounds %struct.inet6_ifaddr, ptr %28, i32 0, i32 4
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !26
  %69 = load i16, ptr %38, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr %38, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !27
  br label %222

71:                                               ; preds = %64
  %72 = icmp ult i32 %42, %66
  %73 = load i32, ptr %29, align 4
  br i1 %72, label %116, label %74

74:                                               ; preds = %71
  %75 = and i32 %73, 32
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = or i32 %73, 32
  store i32 %78, ptr %29, align 4
  br label %79

79:                                               ; preds = %77, %74
  br i1 %45, label %86, label %80

80:                                               ; preds = %79
  %81 = mul i32 %44, 100
  %82 = add i32 %40, %81
  %83 = sub i32 %82, %27
  %84 = icmp slt i32 %83, 0
  %85 = select i1 %84, i32 %82, i32 %27
  br label %86

86:                                               ; preds = %80, %79
  %87 = phi i32 [ %27, %79 ], [ %85, %80 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !26
  %88 = load i16, ptr %38, align 4
  %89 = add i16 %88, 1
  store i16 %89, ptr %38, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !27
  br i1 %76, label %90, label %222

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.inet6_ifaddr, ptr %28, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %91) #22, !srcloc !12
  %92 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %91, ptr %91, i32 1, ptr elementtype(i32) %91) #22, !srcloc !18
  %93 = extractvalue { i32, i32, i32 } %92, 0
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %95, !prof !9

95:                                               ; preds = %90
  %96 = add i32 %93, 1
  %97 = or i32 %96, %93
  %98 = icmp sgt i32 %97, -1
  br i1 %98, label %101, label %99, !prof !10

99:                                               ; preds = %95, %90
  %100 = phi i32 [ 2, %90 ], [ 1, %95 ]
  tail call void @refcount_warn_saturate(ptr noundef %91, i32 noundef %100) #22
  br label %101

101:                                              ; preds = %99, %95
  %102 = getelementptr inbounds %struct.inet6_ifaddr, ptr %28, i32 0, i32 16
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.inet6_dev, ptr %103, i32 0, i32 27
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108, !prof !10

107:                                              ; preds = %101
  tail call fastcc void @__ipv6_ifa_notify(i32 noundef 0, ptr noundef nonnull %28) #22
  br label %108

108:                                              ; preds = %107, %101
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %91) #22, !srcloc !12
  %109 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %91, ptr %91, i32 1, ptr elementtype(i32) %91) #22, !srcloc !13
  %110 = extractvalue { i32, i32, i32 } %109, 0
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = icmp sgt i32 %110, 0
  br i1 %113, label %215, label %114, !prof !10

114:                                              ; preds = %112
  tail call void @refcount_warn_saturate(ptr noundef %91, i32 noundef 3) #22
  br label %215

115:                                              ; preds = %108
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  tail call void @inet6_ifa_finish_destroy(ptr noundef nonnull %28) #22
  br label %215

116:                                              ; preds = %71
  %117 = and i32 %73, 65
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %207

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.inet6_ifaddr, ptr %28, i32 0, i32 16
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.inet6_dev, ptr %121, i32 0, i32 32, i32 17
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr inbounds %struct.inet6_dev, ptr %121, i32 0, i32 32, i32 6
  %125 = load i32, ptr %124, align 4
  %126 = mul i32 %125, %123
  %127 = getelementptr inbounds %struct.inet6_dev, ptr %121, i32 0, i32 31
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr %struct.neigh_parms, ptr %128, i32 0, i32 11, i32 4
  %130 = load i32, ptr %129, align 4
  %131 = tail call i32 @llvm.smax.i32(i32 %130, i32 1)
  %132 = mul i32 %126, %131
  %133 = sdiv i32 %132, -100
  %134 = add i32 %133, %66
  %135 = icmp ult i32 %42, %134
  br i1 %135, label %194, label %136

136:                                              ; preds = %119
  %137 = getelementptr inbounds %struct.inet6_ifaddr, ptr %28, i32 0, i32 21
  %138 = load ptr, ptr %137, align 4
  %139 = mul i32 %66, 100
  %140 = add i32 %139, %40
  %141 = sub i32 %140, %27
  %142 = icmp slt i32 %141, 0
  %143 = select i1 %142, i32 %140, i32 %27
  %144 = getelementptr inbounds %struct.inet6_ifaddr, ptr %28, i32 0, i32 22
  %145 = load i32, ptr %144, align 8
  %146 = icmp eq i32 %145, 0
  %147 = icmp ne ptr %138, null
  %148 = select i1 %146, i1 %147, i1 false
  br i1 %148, label %149, label %200

149:                                              ; preds = %136
  %150 = getelementptr inbounds %struct.inet6_ifaddr, ptr %28, i32 0, i32 22
  store i32 1, ptr %150, align 8
  %151 = getelementptr inbounds %struct.inet6_ifaddr, ptr %28, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %151) #22, !srcloc !12
  %152 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %151, ptr %151, i32 1, ptr elementtype(i32) %151) #22, !srcloc !18
  %153 = extractvalue { i32, i32, i32 } %152, 0
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %159, label %155, !prof !9

155:                                              ; preds = %149
  %156 = add i32 %153, 1
  %157 = or i32 %156, %153
  %158 = icmp sgt i32 %157, -1
  br i1 %158, label %161, label %159, !prof !10

159:                                              ; preds = %155, %149
  %160 = phi i32 [ 2, %149 ], [ 1, %155 ]
  tail call void @refcount_warn_saturate(ptr noundef %151, i32 noundef %160) #22
  br label %161

161:                                              ; preds = %159, %155
  %162 = getelementptr inbounds %struct.inet6_ifaddr, ptr %138, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %162) #22, !srcloc !12
  %163 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %162, ptr %162, i32 1, ptr elementtype(i32) %162) #22, !srcloc !18
  %164 = extractvalue { i32, i32, i32 } %163, 0
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %170, label %166, !prof !9

166:                                              ; preds = %161
  %167 = add i32 %164, 1
  %168 = or i32 %167, %164
  %169 = icmp sgt i32 %168, -1
  br i1 %169, label %172, label %170, !prof !10

170:                                              ; preds = %166, %161
  %171 = phi i32 [ 2, %161 ], [ 1, %166 ]
  tail call void @refcount_warn_saturate(ptr noundef %162, i32 noundef %171) #22
  br label %172

172:                                              ; preds = %170, %166
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !26
  %173 = load i16, ptr %38, align 4
  %174 = add i16 %173, 1
  store i16 %174, ptr %38, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !27
  %175 = getelementptr inbounds %struct.inet6_ifaddr, ptr %138, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %175) #22
  %176 = getelementptr inbounds %struct.inet6_ifaddr, ptr %138, i32 0, i32 22
  store i32 0, ptr %176, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !26
  %177 = load i16, ptr %175, align 4
  %178 = add i16 %177, 1
  store i16 %178, ptr %175, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !27
  tail call fastcc void @local_bh_enable() #22
  tail call fastcc void @ipv6_create_tempaddr(ptr noundef nonnull %138, i1 noundef zeroext true)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %162) #22, !srcloc !12
  %179 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %162, ptr %162, i32 1, ptr elementtype(i32) %162) #22, !srcloc !13
  %180 = extractvalue { i32, i32, i32 } %179, 0
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %185, label %182

182:                                              ; preds = %172
  %183 = icmp sgt i32 %180, 0
  br i1 %183, label %186, label %184, !prof !10

184:                                              ; preds = %182
  tail call void @refcount_warn_saturate(ptr noundef %162, i32 noundef 3) #22
  br label %186

185:                                              ; preds = %172
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  tail call void @inet6_ifa_finish_destroy(ptr noundef nonnull %138) #22
  br label %186

186:                                              ; preds = %185, %184, %182
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %151) #22, !srcloc !12
  %187 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %151, ptr %151, i32 1, ptr elementtype(i32) %151) #22, !srcloc !13
  %188 = extractvalue { i32, i32, i32 } %187, 0
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %193, label %190

190:                                              ; preds = %186
  %191 = icmp sgt i32 %188, 0
  br i1 %191, label %204, label %192, !prof !10

192:                                              ; preds = %190
  tail call void @refcount_warn_saturate(ptr noundef %151, i32 noundef 3) #22
  br label %204

193:                                              ; preds = %186
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  tail call void @inet6_ifa_finish_destroy(ptr noundef nonnull %28) #22
  br label %204

194:                                              ; preds = %119
  %195 = mul i32 %134, 100
  %196 = add i32 %195, %40
  %197 = sub i32 %196, %27
  %198 = icmp slt i32 %197, 0
  %199 = select i1 %198, i32 %196, i32 %27
  br label %200

200:                                              ; preds = %194, %136
  %201 = phi i32 [ %199, %194 ], [ %143, %136 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !26
  %202 = load i16, ptr %38, align 4
  %203 = add i16 %202, 1
  store i16 %203, ptr %38, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !27
  br label %222

204:                                              ; preds = %193, %192, %190
  %205 = load volatile i32, ptr %9, align 4
  %206 = add i32 %205, 512
  store volatile i32 %206, ptr %9, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !20
  br label %215

207:                                              ; preds = %116
  %208 = mul i32 %66, 100
  %209 = add i32 %208, %40
  %210 = sub i32 %209, %27
  %211 = icmp slt i32 %210, 0
  %212 = select i1 %211, i32 %209, i32 %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !26
  %213 = load i16, ptr %38, align 4
  %214 = add i16 %213, 1
  store i16 %214, ptr %38, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !27
  br label %222

215:                                              ; preds = %204, %115, %114, %112, %61
  %216 = phi i32 [ %27, %61 ], [ %143, %204 ], [ %87, %115 ], [ %87, %114 ], [ %87, %112 ]
  %217 = load volatile ptr, ptr %20, align 4
  %218 = icmp eq ptr %217, null
  %219 = getelementptr i8, ptr %217, i32 -124
  %220 = icmp eq ptr %219, null
  %221 = or i1 %218, %220
  br i1 %221, label %233, label %230

222:                                              ; preds = %207, %200, %86, %68, %33
  %223 = phi i32 [ %201, %200 ], [ %87, %86 ], [ %212, %207 ], [ %27, %33 ], [ %27, %68 ]
  %224 = getelementptr inbounds %struct.inet6_ifaddr, ptr %28, i32 0, i32 18
  %225 = load volatile ptr, ptr %224, align 4
  %226 = icmp eq ptr %225, null
  %227 = getelementptr i8, ptr %225, i32 -124
  %228 = icmp eq ptr %227, null
  %229 = or i1 %226, %228
  br i1 %229, label %233, label %230

230:                                              ; preds = %222, %215
  %231 = phi i32 [ %223, %222 ], [ %216, %215 ]
  %232 = phi ptr [ %227, %222 ], [ %219, %215 ]
  br label %26

233:                                              ; preds = %222, %215, %17
  %234 = phi i32 [ %18, %17 ], [ %216, %215 ], [ %223, %222 ]
  %235 = add nuw nsw i32 %19, 1
  %236 = icmp eq i32 %235, 256
  br i1 %236, label %237, label %17

237:                                              ; preds = %233
  %238 = tail call i32 @round_jiffies_up(i32 noundef %234) #22
  %239 = sub i32 -25, %234
  %240 = add i32 %239, %238
  %241 = icmp slt i32 %240, 0
  %242 = select i1 %241, i32 %238, i32 %234
  %243 = load volatile i32, ptr @jiffies, align 64
  %244 = sub i32 -100, %243
  %245 = add i32 %244, %242
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %237
  %248 = load volatile i32, ptr @jiffies, align 64
  %249 = add i32 %248, 100
  br label %250

250:                                              ; preds = %247, %237
  %251 = phi i32 [ %249, %247 ], [ %242, %237 ]
  %252 = load ptr, ptr @addrconf_wq, align 4
  %253 = sub i32 %251, %12
  %254 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %252, ptr noundef nonnull @addr_chk_work, i32 noundef %253) #22
  tail call fastcc void @local_bh_enable() #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_up(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fib6_get_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fib6_locate(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_route_add(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib6_info_destroy_rcu(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @addrconf_add_dev(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.fib6_config, align 4
  %3 = tail call i32 @rtnl_is_locked() #22
  %4 = icmp eq i32 %3, 0
  %5 = load i1, ptr @addrconf_add_dev.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %1
  store i1 true, ptr @addrconf_add_dev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2495, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str, i32 noundef 2495) #22
  br label %9

9:                                                ; preds = %8, %1
  %10 = tail call i32 @rtnl_is_locked() #22
  %11 = icmp eq i32 %10, 0
  %12 = load i1, ptr @ipv6_find_idev.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !9

15:                                               ; preds = %9
  store i1 true, ptr @ipv6_find_idev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 487, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str, i32 noundef 487) #22
  br label %16

16:                                               ; preds = %15, %9
  %17 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 69
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = tail call fastcc ptr @ipv6_add_dev(ptr noundef %0) #22
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %30, label %23

23:                                               ; preds = %20, %16
  %24 = phi ptr [ %18, %16 ], [ %21, %20 ]
  %25 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  tail call void @ipv6_mc_up(ptr noundef %24) #22
  br label %30

30:                                               ; preds = %29, %23, %20
  %31 = phi ptr [ %21, %20 ], [ %24, %29 ], [ %24, %23 ]
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %60, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.inet6_dev, ptr %31, i32 0, i32 32, i32 32
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 15
  %44 = load i64, ptr %43, align 16
  %45 = and i64 %44, 262144
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #22
  %48 = getelementptr inbounds i8, ptr %2, i32 12
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(132) %48, i8 0, i64 132, i1 false) #22
  store i32 255, ptr %2, align 4
  %49 = getelementptr inbounds %struct.fib6_config, ptr %2, i32 0, i32 1
  store i32 256, ptr %49, align 4
  %50 = getelementptr inbounds %struct.fib6_config, ptr %2, i32 0, i32 2
  store i32 8, ptr %50, align 4
  %51 = getelementptr inbounds %struct.fib6_config, ptr %2, i32 0, i32 4
  %52 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 17
  %53 = load i32, ptr %52, align 4
  store i32 %53, ptr %51, align 4
  %54 = getelementptr inbounds %struct.fib6_config, ptr %2, i32 0, i32 5
  store i32 1, ptr %54, align 4
  %55 = getelementptr inbounds %struct.fib6_config, ptr %2, i32 0, i32 6
  store i32 2, ptr %55, align 4
  %56 = getelementptr inbounds %struct.fib6_config, ptr %2, i32 0, i32 7
  store i16 5, ptr %56, align 4
  %57 = getelementptr inbounds %struct.fib6_config, ptr %2, i32 0, i32 19, i32 1
  store ptr @init_net, ptr %57, align 4
  %58 = getelementptr inbounds %struct.fib6_config, ptr %2, i32 0, i32 10
  store i32 255, ptr %58, align 4
  %59 = call i32 @ip6_route_add(ptr noundef nonnull %2, i32 noundef 3264, ptr noundef null) #22
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #22
  br label %60

60:                                               ; preds = %47, %42, %37, %33, %30
  %61 = phi ptr [ %31, %30 ], [ %31, %47 ], [ %31, %42 ], [ %31, %37 ], [ inttoptr (i32 -13 to ptr), %33 ]
  ret ptr %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ipv6_mc_config(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call i32 @rtnl_is_locked() #22
  %6 = icmp eq i32 %5, 0
  %7 = load i1, ptr @ipv6_mc_config.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %4
  store i1 true, ptr @ipv6_mc_config.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2893, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str, i32 noundef 2893) #22
  br label %11

11:                                               ; preds = %10, %4
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #22
  br i1 %1, label %12, label %14

12:                                               ; preds = %11
  %13 = tail call i32 @ipv6_sock_mc_join(ptr noundef %0, i32 noundef %3, ptr noundef %2) #22
  br label %16

14:                                               ; preds = %11
  %15 = tail call i32 @ipv6_sock_mc_drop(ptr noundef %0, i32 noundef %3, ptr noundef %2) #22
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  tail call void @release_sock(ptr noundef %0) #22
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_mc_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_sock_mc_join(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_sock_mc_drop(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sha1_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sha1_transform(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @if6_proc_net_init(ptr nocapture noundef readonly %0) #9 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.18, i16 noundef zeroext 292, ptr noundef %3, ptr noundef nonnull @if6_seq_ops, i32 noundef 8, ptr noundef null) #22
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, i32 -12, i32 0
  ret i32 %6
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @if6_proc_net_exit(ptr nocapture noundef readonly %0) #12 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.18, ptr noundef %3) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @if6_seq_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %3 = load i64, ptr %1, align 8
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq i64 %3, 0
  %7 = getelementptr inbounds %struct.if6_iter_state, ptr %5, i32 0, i32 1
  br i1 %6, label %8, label %10

8:                                                ; preds = %2
  store i32 0, ptr %7, align 4
  %9 = getelementptr inbounds %struct.if6_iter_state, ptr %5, i32 0, i32 2
  store i32 0, ptr %9, align 4
  br label %13

10:                                               ; preds = %2
  %11 = load i32, ptr %7, align 4
  %12 = icmp slt i32 %11, 256
  br i1 %12, label %13, label %42

13:                                               ; preds = %10, %8
  %14 = phi i32 [ 0, %8 ], [ %11, %10 ]
  %15 = getelementptr inbounds %struct.if6_iter_state, ptr %5, i32 0, i32 2
  br label %16

16:                                               ; preds = %39, %13
  %17 = phi i32 [ %14, %13 ], [ %40, %39 ]
  %18 = getelementptr [256 x %struct.hlist_head], ptr @inet6_addr_lst, i32 0, i32 %17
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = getelementptr i8, ptr %19, i32 -124
  %22 = icmp eq ptr %21, null
  %23 = or i1 %20, %22
  br i1 %23, label %39, label %24

24:                                               ; preds = %16
  %25 = load i32, ptr %15, align 4
  %26 = tail call i32 @llvm.smax.i32(i32 %25, i32 0) #22
  br label %27

27:                                               ; preds = %31, %24
  %28 = phi ptr [ %21, %24 ], [ %36, %31 ]
  %29 = phi i32 [ 0, %24 ], [ %32, %31 ]
  %30 = icmp eq i32 %29, %26
  br i1 %30, label %42, label %31

31:                                               ; preds = %27
  %32 = add nuw i32 %29, 1
  %33 = getelementptr inbounds %struct.inet6_ifaddr, ptr %28, i32 0, i32 18
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  %36 = getelementptr i8, ptr %34, i32 -124
  %37 = icmp eq ptr %36, null
  %38 = or i1 %35, %37
  br i1 %38, label %39, label %27

39:                                               ; preds = %31, %16
  store i32 0, ptr %15, align 4
  %40 = add nsw i32 %17, 1
  store i32 %40, ptr %7, align 4
  %41 = icmp eq i32 %40, 256
  br i1 %41, label %42, label %16

42:                                               ; preds = %39, %27, %10
  %43 = phi ptr [ null, %10 ], [ %28, %27 ], [ null, %39 ]
  ret ptr %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @if6_seq_stop(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @if6_seq_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) #13 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 18
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = getelementptr i8, ptr %7, i32 -124
  %10 = icmp eq ptr %9, null
  %11 = or i1 %8, %10
  %12 = getelementptr inbounds %struct.if6_iter_state, ptr %5, i32 0, i32 2
  br i1 %11, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, ptr %12, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %12, align 4
  br label %30

16:                                               ; preds = %3
  store i32 0, ptr %12, align 4
  %17 = getelementptr inbounds %struct.if6_iter_state, ptr %5, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %23, %16
  %20 = phi i32 [ %21, %23 ], [ %18, %16 ]
  %21 = add i32 %20, 1
  store i32 %21, ptr %17, align 4
  %22 = icmp slt i32 %21, 256
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = getelementptr [256 x %struct.hlist_head], ptr @inet6_addr_lst, i32 0, i32 %21
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  %27 = getelementptr i8, ptr %25, i32 -124
  %28 = icmp eq ptr %27, null
  %29 = or i1 %26, %28
  br i1 %29, label %19, label %30

30:                                               ; preds = %23, %19, %13
  %31 = phi ptr [ %9, %13 ], [ null, %19 ], [ %27, %23 ]
  %32 = load i64, ptr %2, align 8
  %33 = add i64 %32, 1
  store i64 %33, ptr %2, align 8
  ret ptr %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @if6_seq_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 17
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 11
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef %1, i32 noundef %7, i32 noundef %9, i32 noundef %12, i32 noundef %15, ptr noundef %5) #22
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_iflink(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @inet6_fill_ifla6_attrs(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca [37 x i64], align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifla_cacheinfo, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #22
  %9 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 26
  %10 = load i32, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  store i32 %10, ptr %7, align 4
  %11 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %269

13:                                               ; preds = %3
  store i32 65535, ptr %8, align 4
  %14 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 37
  %15 = load i32, ptr %14, align 4
  %16 = mul i32 %15, 100
  %17 = add i32 %16, 3000000
  %18 = udiv i32 %17, 100
  %19 = getelementptr inbounds %struct.ifla_cacheinfo, ptr %8, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 31
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.neigh_parms, ptr %21, i32 0, i32 10
  %23 = load i32, ptr %22, align 4
  %24 = call i32 @jiffies_to_msecs(i32 noundef %23) #22
  %25 = getelementptr inbounds %struct.ifla_cacheinfo, ptr %8, i32 0, i32 2
  store i32 %24, ptr %25, align 4
  %26 = load ptr, ptr %20, align 4
  %27 = getelementptr %struct.neigh_parms, ptr %26, i32 0, i32 11, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = call i32 @jiffies_to_msecs(i32 noundef %28) #22
  %30 = getelementptr inbounds %struct.ifla_cacheinfo, ptr %8, i32 0, i32 3
  store i32 %29, ptr %30, align 4
  %31 = call i32 @nla_put(ptr noundef %0, i32 noundef 5, i32 noundef 16, ptr noundef nonnull %8) #22
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %269

33:                                               ; preds = %13
  %34 = call ptr @nla_reserve(ptr noundef %0, i32 noundef 2, i32 noundef 228) #22
  %35 = icmp eq ptr %34, null
  br i1 %35, label %269, label %36

36:                                               ; preds = %33
  %37 = load i16, ptr %34, align 2
  %38 = icmp ult i16 %37, 232
  br i1 %38, label %39, label %40, !prof !9

39:                                               ; preds = %36
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv6/addrconf.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5494, 0\0A.popsection", ""() #22, !srcloc !42
  unreachable

40:                                               ; preds = %36
  %41 = getelementptr i8, ptr %34, i32 4
  %42 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32
  %43 = zext i16 %37 to i32
  %44 = add nsw i32 %43, -4
  call void @llvm.memset.p0.i32(ptr align 4 %41, i8 0, i32 %44, i1 false) #22
  %45 = load i32, ptr %42, align 4
  store i32 %45, ptr %41, align 4
  %46 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr i8, ptr %34, i32 8
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr i8, ptr %34, i32 12
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr i8, ptr %34, i32 16
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 4
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr i8, ptr %34, i32 20
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr i8, ptr %34, i32 24
  store i32 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 6
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr i8, ptr %34, i32 28
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 7
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr i8, ptr %34, i32 32
  store i32 %65, ptr %66, align 4
  %67 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 8
  %68 = load i32, ptr %67, align 4
  %69 = call i32 @jiffies_to_msecs(i32 noundef %68) #22
  %70 = getelementptr i8, ptr %34, i32 36
  store i32 %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 9
  %72 = load i32, ptr %71, align 4
  %73 = call i32 @jiffies_to_msecs(i32 noundef %72) #22
  %74 = getelementptr i8, ptr %34, i32 176
  store i32 %73, ptr %74, align 4
  %75 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 10
  %76 = load i32, ptr %75, align 4
  %77 = call i32 @jiffies_to_msecs(i32 noundef %76) #22
  %78 = getelementptr i8, ptr %34, i32 40
  store i32 %77, ptr %78, align 4
  %79 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 11
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr i8, ptr %34, i32 68
  store i32 %80, ptr %81, align 4
  %82 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 12
  %83 = load i32, ptr %82, align 4
  %84 = call i32 @jiffies_to_msecs(i32 noundef %83) #22
  %85 = getelementptr i8, ptr %34, i32 124
  store i32 %84, ptr %85, align 4
  %86 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 13
  %87 = load i32, ptr %86, align 4
  %88 = call i32 @jiffies_to_msecs(i32 noundef %87) #22
  %89 = getelementptr i8, ptr %34, i32 128
  store i32 %88, ptr %89, align 4
  %90 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 14
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr i8, ptr %34, i32 44
  store i32 %91, ptr %92, align 4
  %93 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 15
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr i8, ptr %34, i32 48
  store i32 %94, ptr %95, align 4
  %96 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 16
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr i8, ptr %34, i32 52
  store i32 %97, ptr %98, align 4
  %99 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 17
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr i8, ptr %34, i32 56
  store i32 %100, ptr %101, align 4
  %102 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 18
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr i8, ptr %34, i32 60
  store i32 %103, ptr %104, align 4
  %105 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 19
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr i8, ptr %34, i32 64
  store i32 %106, ptr %107, align 4
  %108 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 20
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr i8, ptr %34, i32 72
  store i32 %109, ptr %110, align 4
  %111 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 21
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr i8, ptr %34, i32 212
  store i32 %112, ptr %113, align 4
  %114 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 22
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr i8, ptr %34, i32 156
  store i32 %115, ptr %116, align 4
  %117 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 23
  %118 = load i32, ptr %117, align 4
  %119 = getelementptr i8, ptr %34, i32 76
  store i32 %118, ptr %119, align 4
  %120 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 25
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr i8, ptr %34, i32 80
  store i32 %121, ptr %122, align 4
  %123 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 26
  %124 = load i32, ptr %123, align 4
  %125 = call i32 @jiffies_to_msecs(i32 noundef %124) #22
  %126 = getelementptr i8, ptr %34, i32 84
  store i32 %125, ptr %126, align 4
  %127 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 27
  %128 = load i32, ptr %127, align 4
  %129 = getelementptr i8, ptr %34, i32 92
  store i32 %128, ptr %129, align 4
  %130 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 28
  %131 = load i32, ptr %130, align 4
  %132 = getelementptr i8, ptr %34, i32 100
  store i32 %131, ptr %132, align 4
  %133 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 30
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr i8, ptr %34, i32 96
  store i32 %134, ptr %135, align 4
  %136 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 31
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr i8, ptr %34, i32 140
  store i32 %137, ptr %138, align 4
  %139 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 32
  %140 = load i32, ptr %139, align 4
  %141 = getelementptr i8, ptr %34, i32 108
  store i32 %140, ptr %141, align 4
  %142 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 34
  %143 = load i32, ptr %142, align 4
  %144 = getelementptr i8, ptr %34, i32 112
  store i32 %143, ptr %144, align 4
  %145 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 35
  %146 = load i32, ptr %145, align 4
  %147 = getelementptr i8, ptr %34, i32 116
  store i32 %146, ptr %147, align 4
  %148 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 36
  %149 = load i32, ptr %148, align 4
  %150 = getelementptr i8, ptr %34, i32 120
  store i32 %149, ptr %150, align 4
  %151 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 37
  %152 = load i32, ptr %151, align 4
  %153 = getelementptr i8, ptr %34, i32 132
  store i32 %152, ptr %153, align 4
  %154 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 29
  %155 = load i32, ptr %154, align 4
  %156 = getelementptr i8, ptr %34, i32 136
  store i32 %155, ptr %156, align 4
  %157 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 38
  %158 = load i32, ptr %157, align 4
  %159 = getelementptr i8, ptr %34, i32 144
  store i32 %158, ptr %159, align 4
  %160 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 24
  %161 = load i32, ptr %160, align 4
  %162 = getelementptr i8, ptr %34, i32 160
  store i32 %161, ptr %162, align 4
  %163 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 41
  %164 = load i32, ptr %163, align 4
  %165 = getelementptr i8, ptr %34, i32 152
  store i32 %164, ptr %165, align 4
  %166 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 33
  %167 = load i32, ptr %166, align 4
  %168 = getelementptr i8, ptr %34, i32 164
  store i32 %167, ptr %168, align 4
  %169 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 39
  %170 = load i32, ptr %169, align 4
  %171 = getelementptr i8, ptr %34, i32 168
  store i32 %170, ptr %171, align 4
  %172 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 42
  %173 = load i32, ptr %172, align 4
  %174 = getelementptr i8, ptr %34, i32 172
  store i32 %173, ptr %174, align 4
  %175 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 43
  %176 = load i32, ptr %175, align 4
  %177 = getelementptr i8, ptr %34, i32 180
  store i32 %176, ptr %177, align 4
  %178 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 44
  %179 = load i32, ptr %178, align 4
  %180 = getelementptr i8, ptr %34, i32 188
  store i32 %179, ptr %180, align 4
  %181 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 45
  %182 = load i32, ptr %181, align 4
  %183 = getelementptr i8, ptr %34, i32 192
  store i32 %182, ptr %183, align 4
  %184 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 46
  %185 = load i32, ptr %184, align 4
  %186 = getelementptr i8, ptr %34, i32 196
  store i32 %185, ptr %186, align 4
  %187 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 47
  %188 = load i32, ptr %187, align 4
  %189 = getelementptr i8, ptr %34, i32 204
  store i32 %188, ptr %189, align 4
  %190 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 48
  %191 = load i32, ptr %190, align 4
  %192 = getelementptr i8, ptr %34, i32 208
  store i32 %191, ptr %192, align 4
  %193 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 51
  %194 = load i8, ptr %193, align 4
  %195 = zext i8 %194 to i32
  %196 = getelementptr i8, ptr %34, i32 216
  store i32 %195, ptr %196, align 4
  %197 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 49
  %198 = load i32, ptr %197, align 4
  %199 = getelementptr i8, ptr %34, i32 220
  store i32 %198, ptr %199, align 4
  %200 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 50
  %201 = load i32, ptr %200, align 4
  %202 = getelementptr i8, ptr %34, i32 224
  store i32 %201, ptr %202, align 4
  %203 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 32, i32 52
  %204 = load i8, ptr %203, align 1
  %205 = zext i8 %204 to i32
  %206 = getelementptr i8, ptr %34, i32 228
  store i32 %205, ptr %206, align 4
  %207 = and i32 %2, 8
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %270

209:                                              ; preds = %40
  %210 = call ptr @nla_reserve(ptr noundef %0, i32 noundef 3, i32 noundef 296) #22
  %211 = icmp eq ptr %210, null
  br i1 %211, label %269, label %212

212:                                              ; preds = %209
  %213 = getelementptr i8, ptr %210, i32 4
  %214 = load i16, ptr %210, align 2
  %215 = zext i16 %214 to i32
  %216 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 33, i32 1
  %217 = load ptr, ptr %216, align 4
  call void @llvm.lifetime.start.p0(i64 296, ptr nonnull %6) #22
  %218 = add nsw i32 %215, -300
  %219 = icmp ult i16 %214, 300
  br i1 %219, label %220, label %221, !prof !9

220:                                              ; preds = %212
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv6/addrconf.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5618, 0\0A.popsection", ""() #22, !srcloc !43
  unreachable

221:                                              ; preds = %212
  %222 = getelementptr inbounds i8, ptr %6, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(296) %222, i8 0, i32 288, i1 false) #22
  store i64 37, ptr %6, align 8
  %223 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #27
  %224 = load i32, ptr @nr_cpu_ids, align 4
  %225 = icmp ult i32 %223, %224
  br i1 %225, label %230, label %240

226:                                              ; preds = %232
  %227 = call i32 @cpumask_next(i32 noundef %231, ptr noundef nonnull @__cpu_possible_mask) #27
  %228 = load i32, ptr @nr_cpu_ids, align 4
  %229 = icmp ult i32 %227, %228
  br i1 %229, label %230, label %240

230:                                              ; preds = %226, %221
  %231 = phi i32 [ %227, %226 ], [ %223, %221 ]
  br label %232

232:                                              ; preds = %232, %230
  %233 = phi i32 [ 1, %230 ], [ %238, %232 ]
  %234 = call i64 @snmp_get_cpu_field64(ptr noundef %217, i32 noundef %231, i32 noundef %233, i32 noundef 296) #22
  %235 = getelementptr [37 x i64], ptr %6, i32 0, i32 %233
  %236 = load i64, ptr %235, align 8
  %237 = add i64 %236, %234
  store i64 %237, ptr %235, align 8
  %238 = add nuw nsw i32 %233, 1
  %239 = icmp eq i32 %238, 37
  br i1 %239, label %226, label %232

240:                                              ; preds = %226, %221
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(296) %213, ptr noundef nonnull align 8 dereferenceable(296) %6, i32 296, i1 false) #22
  %241 = getelementptr i8, ptr %210, i32 300
  call void @llvm.memset.p0.i32(ptr align 8 %241, i8 0, i32 %218, i1 false) #22
  call void @llvm.lifetime.end.p0(i64 296, ptr nonnull %6) #22
  %242 = call ptr @nla_reserve(ptr noundef %0, i32 noundef 6, i32 noundef 48) #22
  %243 = icmp eq ptr %242, null
  br i1 %243, label %269, label %244

244:                                              ; preds = %240
  %245 = getelementptr i8, ptr %242, i32 4
  %246 = load i16, ptr %242, align 2
  %247 = zext i16 %246 to i32
  %248 = add nsw i32 %247, -4
  call fastcc void @snmp6_fill_stats(ptr noundef %245, ptr noundef %1, i32 noundef 6, i32 noundef %248)
  %249 = call ptr @nla_reserve(ptr noundef %0, i32 noundef 7, i32 noundef 16) #22
  %250 = icmp eq ptr %249, null
  br i1 %250, label %269, label %251

251:                                              ; preds = %244
  %252 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 24
  call void @_raw_read_lock_bh(ptr noundef %252) #22
  %253 = getelementptr i8, ptr %249, i32 4
  %254 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 30
  %255 = load i16, ptr %249, align 2
  %256 = zext i16 %255 to i32
  %257 = add nsw i32 %256, -4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %253, ptr align 4 %254, i32 %257, i1 false)
  call void @_raw_read_unlock_bh(ptr noundef %252) #22
  %258 = load i32, ptr %181, align 4
  %259 = trunc i32 %258 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #22
  store i8 %259, ptr %5, align 1
  %260 = call i32 @nla_put(ptr noundef %0, i32 noundef 8, i32 noundef 1, ptr noundef nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #22
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %269

262:                                              ; preds = %251
  %263 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 39
  %264 = load i32, ptr %263, align 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %270, label %266

266:                                              ; preds = %262
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store i32 %264, ptr %4, align 4
  %267 = call i32 @nla_put(ptr noundef %0, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %270, label %269

269:                                              ; preds = %266, %251, %244, %240, %209, %33, %13, %3
  br label %270

270:                                              ; preds = %269, %266, %262, %40
  %271 = phi i32 [ -90, %269 ], [ 0, %40 ], [ 0, %266 ], [ 0, %262 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #22
  ret i32 %271
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @snmp6_fill_stats(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [37 x i64], align 8
  switch i32 %2, label %61 [
    i32 3, label %6
    i32 6, label %33
  ]

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 33, i32 1
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 296, ptr nonnull %5) #22
  %9 = add i32 %3, -296
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv6/addrconf.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5618, 0\0A.popsection", ""() #22, !srcloc !43
  unreachable

12:                                               ; preds = %6
  %13 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(296) %13, i8 0, i32 288, i1 false) #22
  store i64 37, ptr %5, align 8
  %14 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #27
  %15 = load i32, ptr @nr_cpu_ids, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %21, label %31

17:                                               ; preds = %23
  %18 = tail call i32 @cpumask_next(i32 noundef %22, ptr noundef nonnull @__cpu_possible_mask) #27
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %17, %12
  %22 = phi i32 [ %18, %17 ], [ %14, %12 ]
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi i32 [ 1, %21 ], [ %29, %23 ]
  %25 = tail call i64 @snmp_get_cpu_field64(ptr noundef %8, i32 noundef %22, i32 noundef %24, i32 noundef 296) #22
  %26 = getelementptr [37 x i64], ptr %5, i32 0, i32 %24
  %27 = load i64, ptr %26, align 8
  %28 = add i64 %27, %25
  store i64 %28, ptr %26, align 8
  %29 = add nuw nsw i32 %24, 1
  %30 = icmp eq i32 %29, 37
  br i1 %30, label %17, label %23

31:                                               ; preds = %17, %12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(296) %5, i32 296, i1 false) #22
  %32 = getelementptr i64, ptr %0, i32 37
  tail call void @llvm.memset.p0.i32(ptr align 8 %32, i8 0, i32 %9, i1 false) #22
  call void @llvm.lifetime.end.p0(i64 296, ptr nonnull %5) #22
  br label %61

33:                                               ; preds = %4
  %34 = add i32 %3, -48
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37, !prof !9

36:                                               ; preds = %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv6/addrconf.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5601, 0\0A.popsection", ""() #22, !srcloc !44
  unreachable

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 33, i32 2
  %39 = load ptr, ptr %38, align 4
  store i64 6, ptr %0, align 1
  %40 = getelementptr i64, ptr %0, i32 1
  %41 = getelementptr %struct.atomic_t, ptr %39, i32 1
  %42 = load volatile i32, ptr %41, align 4
  %43 = sext i32 %42 to i64
  store i64 %43, ptr %40, align 1
  %44 = getelementptr i64, ptr %0, i32 2
  %45 = getelementptr %struct.atomic_t, ptr %39, i32 2
  %46 = load volatile i32, ptr %45, align 4
  %47 = sext i32 %46 to i64
  store i64 %47, ptr %44, align 1
  %48 = getelementptr i64, ptr %0, i32 3
  %49 = getelementptr %struct.atomic_t, ptr %39, i32 3
  %50 = load volatile i32, ptr %49, align 4
  %51 = sext i32 %50 to i64
  store i64 %51, ptr %48, align 1
  %52 = getelementptr i64, ptr %0, i32 4
  %53 = getelementptr %struct.atomic_t, ptr %39, i32 4
  %54 = load volatile i32, ptr %53, align 4
  %55 = sext i32 %54 to i64
  store i64 %55, ptr %52, align 1
  %56 = getelementptr i64, ptr %0, i32 5
  %57 = getelementptr %struct.atomic_t, ptr %39, i32 5
  %58 = load volatile i32, ptr %57, align 4
  %59 = sext i32 %58 to i64
  store i64 %59, ptr %56, align 1
  %60 = getelementptr i64, ptr %0, i32 6
  tail call void @llvm.memset.p0.i32(ptr align 8 %60, i8 0, i32 %34, i1 false) #22
  br label %61

61:                                               ; preds = %37, %31, %4
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @snmp_get_cpu_field64(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__ipv6_ifa_notify(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.in6_addr, align 4
  %4 = alloca %struct.in6_addr, align 4
  %5 = alloca %struct.fib6_config, align 4
  %6 = alloca %struct.in6_addr, align 4
  %7 = alloca %struct.inet6_fill_args, align 8
  %8 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 16
  %9 = icmp eq i32 %0, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @rtnl_is_locked() #22
  %12 = icmp eq i32 %11, 0
  %13 = load i1, ptr @__ipv6_ifa_notify.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %17, !prof !9

16:                                               ; preds = %10
  store i1 true, ptr @__ipv6_ifa_notify.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 6118, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str, i32 noundef 6118) #22
  br label %17

17:                                               ; preds = %16, %10, %2
  %18 = phi i32 [ 20, %2 ], [ %0, %16 ], [ %0, %10 ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #22
  %19 = getelementptr inbounds %struct.inet6_fill_args, ptr %7, i32 0, i32 2
  store i64 0, ptr %7, align 8
  store i32 %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.inet6_fill_args, ptr %7, i32 0, i32 3
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.inet6_fill_args, ptr %7, i32 0, i32 4
  store i32 -1, ptr %21, align 8
  %22 = getelementptr inbounds %struct.inet6_fill_args, ptr %7, i32 0, i32 5
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.inet6_fill_args, ptr %7, i32 0, i32 6
  store i32 0, ptr %23, align 8
  %24 = tail call ptr @__alloc_skb(i32 noundef 100, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %17
  %27 = call fastcc i32 @inet6_fill_ifaddr(ptr noundef nonnull %24, ptr noundef %1, ptr noundef nonnull %7) #22
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = icmp eq i32 %27, -90
  br i1 %30, label %31, label %32, !prof !9

31:                                               ; preds = %29
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5480, i32 noundef 9, ptr noundef null) #22
  br label %32

32:                                               ; preds = %31, %29
  tail call void @kfree_skb_reason(ptr noundef nonnull %24, i32 noundef 0) #22
  br label %34

33:                                               ; preds = %26
  tail call void @rtnl_notify(ptr noundef nonnull %24, ptr noundef nonnull @init_net, i32 noundef 0, i32 noundef 9, ptr noundef null, i32 noundef 2592) #22
  br label %36

34:                                               ; preds = %32, %17
  %35 = phi i32 [ %27, %32 ], [ -105, %17 ]
  tail call void @rtnl_set_sk_err(ptr noundef nonnull @init_net, i32 noundef 9, i32 noundef %35) #22
  br label %36

36:                                               ; preds = %34, %33
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #22
  switch i32 %0, label %217 [
    i32 20, label %37
    i32 21, label %134
  ]

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 17
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.fib6_info, ptr %39, i32 0, i32 2
  %43 = load volatile ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = tail call i32 @ip6_ins_rt(ptr noundef nonnull @init_net, ptr noundef nonnull %39) #22
  br label %56

47:                                               ; preds = %37
  %48 = load ptr, ptr %8, align 4
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 14
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %47
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %1, ptr noundef %49) #23
  br label %56

56:                                               ; preds = %54, %47, %45, %41
  %57 = load ptr, ptr %8, align 4
  %58 = getelementptr inbounds %struct.inet6_dev, ptr %57, i32 0, i32 32
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %92, label %61

61:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false) #22, !annotation !15
  %62 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 1
  %63 = load i32, ptr %62, align 8
  %64 = icmp ugt i32 %63, 126
  br i1 %64, label %91, label %65

65:                                               ; preds = %61
  %66 = lshr i32 %63, 3
  %67 = and i32 %63, 7
  %68 = sub nuw nsw i32 16, %66
  %69 = getelementptr i8, ptr %6, i32 %66
  call void @llvm.memset.p0.i32(ptr align 1 %69, i8 0, i32 %68, i1 false) #22
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %6, ptr align 4 %1, i32 %66, i1 false) #22
  %70 = icmp eq i32 %67, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = getelementptr [16 x i8], ptr %1, i32 0, i32 %66
  %73 = load i8, ptr %72, align 1
  %74 = lshr i32 65280, %67
  %75 = trunc i32 %74 to i8
  %76 = and i8 %73, %75
  store i8 %76, ptr %69, align 1
  br label %77

77:                                               ; preds = %71, %65
  %78 = load i32, ptr %6, align 4
  %79 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = or i32 %80, %78
  %82 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = or i32 %81, %83
  %85 = getelementptr inbounds [4 x i32], ptr %6, i32 0, i32 3
  %86 = load i32, ptr %85, align 4
  %87 = or i32 %84, %86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %77
  %90 = call i32 @__ipv6_dev_ac_inc(ptr noundef %57, ptr noundef nonnull %6) #22
  br label %91

91:                                               ; preds = %89, %77, %61
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #22
  br label %92

92:                                               ; preds = %91, %56
  %93 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 25
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr %struct.inet6_ifaddr, ptr %1, i32 0, i32 25, i32 0, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = or i32 %96, %94
  %98 = getelementptr %struct.inet6_ifaddr, ptr %1, i32 0, i32 25, i32 0, i32 0, i32 2
  %99 = load i32, ptr %98, align 4
  %100 = or i32 %97, %99
  %101 = getelementptr %struct.inet6_ifaddr, ptr %1, i32 0, i32 25, i32 0, i32 0, i32 3
  %102 = load i32, ptr %101, align 4
  %103 = or i32 %100, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %217, label %105

105:                                              ; preds = %92
  %106 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 2
  %107 = load i32, ptr %106, align 4
  %108 = load ptr, ptr %8, align 4
  %109 = load ptr, ptr %108, align 4
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %5) #22
  %110 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(132) %110, i8 0, i64 132, i1 false) #22
  store i32 254, ptr %5, align 4
  %111 = getelementptr inbounds %struct.fib6_config, ptr %5, i32 0, i32 1
  %112 = icmp eq i32 %107, 0
  %113 = select i1 %112, i32 256, i32 %107
  store i32 %113, ptr %111, align 4
  %114 = getelementptr inbounds %struct.fib6_config, ptr %5, i32 0, i32 2
  store i32 128, ptr %114, align 4
  %115 = getelementptr inbounds %struct.fib6_config, ptr %5, i32 0, i32 4
  %116 = getelementptr inbounds %struct.net_device, ptr %109, i32 0, i32 17
  %117 = load i32, ptr %116, align 4
  store i32 %117, ptr %115, align 4
  %118 = getelementptr inbounds %struct.fib6_config, ptr %5, i32 0, i32 5
  store i32 1, ptr %118, align 4
  %119 = getelementptr inbounds %struct.fib6_config, ptr %5, i32 0, i32 6
  store i32 2, ptr %119, align 4
  %120 = getelementptr inbounds %struct.fib6_config, ptr %5, i32 0, i32 7
  store i16 1, ptr %120, align 4
  %121 = getelementptr inbounds %struct.fib6_config, ptr %5, i32 0, i32 19, i32 1
  store ptr @init_net, ptr %121, align 4
  %122 = getelementptr inbounds %struct.fib6_config, ptr %5, i32 0, i32 10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %122, ptr noundef align 4 dereferenceable(16) %93, i32 16, i1 false) #22
  %123 = getelementptr inbounds %struct.net_device, ptr %109, i32 0, i32 32
  %124 = load i16, ptr %123, align 16
  %125 = icmp eq i16 %124, 776
  br i1 %125, label %126, label %132

126:                                              ; preds = %105
  %127 = getelementptr inbounds %struct.net_device, ptr %109, i32 0, i32 14
  %128 = load i32, ptr %127, align 8
  %129 = and i32 %128, 16
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %126
  store i32 2097153, ptr %118, align 4
  br label %132

132:                                              ; preds = %131, %126, %105
  %133 = call i32 @ip6_route_add(ptr noundef nonnull %5, i32 noundef 2592, ptr noundef null) #22
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %5) #22
  br label %217

134:                                              ; preds = %36
  %135 = load ptr, ptr %8, align 4
  %136 = getelementptr inbounds %struct.inet6_dev, ptr %135, i32 0, i32 32
  %137 = load i32, ptr %136, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %172, label %139

139:                                              ; preds = %134
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #22, !annotation !15
  %140 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 1
  %141 = load i32, ptr %140, align 8
  %142 = icmp ugt i32 %141, 126
  br i1 %142, label %170, label %143

143:                                              ; preds = %139
  %144 = lshr i32 %141, 3
  %145 = and i32 %141, 7
  %146 = sub nuw nsw i32 16, %144
  %147 = getelementptr i8, ptr %4, i32 %144
  call void @llvm.memset.p0.i32(ptr align 1 %147, i8 0, i32 %146, i1 false) #22
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %4, ptr align 4 %1, i32 %144, i1 false) #22
  %148 = icmp eq i32 %145, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %143
  %150 = getelementptr [16 x i8], ptr %1, i32 0, i32 %144
  %151 = load i8, ptr %150, align 1
  %152 = lshr i32 65280, %145
  %153 = trunc i32 %152 to i8
  %154 = and i8 %151, %153
  store i8 %154, ptr %147, align 1
  br label %155

155:                                              ; preds = %149, %143
  %156 = load i32, ptr %4, align 4
  %157 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 1
  %158 = load i32, ptr %157, align 4
  %159 = or i32 %158, %156
  %160 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 2
  %161 = load i32, ptr %160, align 4
  %162 = or i32 %159, %161
  %163 = getelementptr inbounds [4 x i32], ptr %4, i32 0, i32 3
  %164 = load i32, ptr %163, align 4
  %165 = or i32 %162, %164
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %155
  %168 = call i32 @__ipv6_dev_ac_dec(ptr noundef %135, ptr noundef nonnull %4) #22
  %169 = load ptr, ptr %8, align 4
  br label %170

170:                                              ; preds = %167, %155, %139
  %171 = phi ptr [ %135, %139 ], [ %135, %155 ], [ %169, %167 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  br label %172

172:                                              ; preds = %170, %134
  %173 = phi ptr [ %171, %170 ], [ %135, %134 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.net_device, ptr %174, i32 0, i32 14
  %176 = load i32, ptr %175, align 8
  %177 = and i32 %176, 136
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %172
  %180 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %181 = load i32, ptr %180, align 4
  %182 = or i32 %181, 255
  store i32 767, ptr %3, align 4
  %183 = getelementptr inbounds i32, ptr %3, i32 1
  store i32 0, ptr %183, align 4
  %184 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 2
  store i32 16777216, ptr %184, align 4
  %185 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 3
  store i32 %182, ptr %185, align 4
  %186 = call i32 @__ipv6_dev_mc_dec(ptr noundef %173, ptr noundef nonnull %3) #22
  br label %187

187:                                              ; preds = %179, %172
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  %188 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 25
  %189 = load i32, ptr %188, align 4
  %190 = getelementptr %struct.inet6_ifaddr, ptr %1, i32 0, i32 25, i32 0, i32 0, i32 1
  %191 = load i32, ptr %190, align 4
  %192 = or i32 %191, %189
  %193 = getelementptr %struct.inet6_ifaddr, ptr %1, i32 0, i32 25, i32 0, i32 0, i32 2
  %194 = load i32, ptr %193, align 4
  %195 = or i32 %192, %194
  %196 = getelementptr %struct.inet6_ifaddr, ptr %1, i32 0, i32 25, i32 0, i32 0, i32 3
  %197 = load i32, ptr %196, align 4
  %198 = or i32 %195, %197
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %207, label %200

200:                                              ; preds = %187
  %201 = load ptr, ptr %8, align 4
  %202 = load ptr, ptr %201, align 4
  %203 = call fastcc ptr @addrconf_get_prefix_route(ptr noundef %188, i32 noundef 128, ptr noundef %202, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
  %204 = icmp eq ptr %203, null
  br i1 %204, label %207, label %205

205:                                              ; preds = %200
  %206 = call i32 @ip6_del_rt(ptr noundef nonnull @init_net, ptr noundef nonnull %203, i1 noundef zeroext false) #22
  br label %207

207:                                              ; preds = %205, %200, %187
  %208 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 17
  %209 = load ptr, ptr %208, align 8
  %210 = icmp eq ptr %209, null
  br i1 %210, label %213, label %211

211:                                              ; preds = %207
  %212 = call i32 @ip6_del_rt(ptr noundef nonnull @init_net, ptr noundef nonnull %209, i1 noundef zeroext false) #22
  store ptr null, ptr %208, align 8
  br label %213

213:                                              ; preds = %211, %207
  %214 = load ptr, ptr @__fib6_flush_trees, align 4
  %215 = icmp eq ptr %214, null
  br i1 %215, label %217, label %216

216:                                              ; preds = %213
  call void %214(ptr noundef nonnull @init_net) #22
  br label %217

217:                                              ; preds = %216, %213, %132, %92, %36
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 29)) #22, !srcloc !12
  %218 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 29), ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 29), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 29)) #22, !srcloc !45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @inet6_fill_ifaddr(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifa_cacheinfo, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, ptr %2, align 4
  %9 = getelementptr inbounds %struct.inet6_fill_args, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.inet6_fill_args, ptr %2, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.inet6_fill_args, ptr %2, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %161

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %22 = load ptr, ptr %21, align 8
  %23 = ptrtoint ptr %20 to i32
  %24 = ptrtoint ptr %22 to i32
  %25 = sub i32 %23, %24
  %26 = icmp slt i32 %25, 24
  br i1 %26, label %161, label %27, !prof !9

27:                                               ; preds = %18
  %28 = tail call ptr @__nlmsg_put(ptr noundef %0, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef 8, i32 noundef %14) #22
  %29 = icmp eq ptr %28, null
  br i1 %29, label %161, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 1
  %32 = load i32, ptr %31, align 8
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 8
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 11
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  %39 = and i32 %38, 16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %30
  %42 = and i32 %38, 32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = and i32 %38, 64
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i8 0, i8 -56
  br label %48

48:                                               ; preds = %44, %41, %30
  %49 = phi i8 [ -2, %30 ], [ -3, %41 ], [ %47, %44 ]
  %50 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 16
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 17
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr i8, ptr %28, i32 16
  store i8 10, ptr %55, align 4
  %56 = getelementptr i8, ptr %28, i32 17
  store i8 %33, ptr %56, align 1
  %57 = trunc i32 %35 to i8
  %58 = getelementptr i8, ptr %28, i32 18
  store i8 %57, ptr %58, align 2
  %59 = getelementptr i8, ptr %28, i32 19
  store i8 %49, ptr %59, align 1
  %60 = getelementptr i8, ptr %28, i32 20
  store i32 %54, ptr %60, align 4
  %61 = getelementptr inbounds %struct.inet6_fill_args, ptr %2, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = icmp sgt i32 %62, -1
  br i1 %63, label %64, label %67

64:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  store i32 %62, ptr %7, align 4
  %65 = call i32 @nla_put(ptr noundef %0, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %150

67:                                               ; preds = %64, %48
  %68 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 6
  call void @_raw_spin_lock_bh(ptr noundef %68) #22
  %69 = load i32, ptr %34, align 4
  %70 = and i32 %69, 128
  %71 = icmp eq i32 %70, 0
  %72 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 4
  %73 = load i32, ptr %72, align 4
  br i1 %71, label %79, label %74

74:                                               ; preds = %67
  %75 = icmp eq i32 %73, -1
  br i1 %75, label %94, label %76

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 3
  %78 = load i32, ptr %77, align 8
  br label %83

79:                                               ; preds = %67
  %80 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 3
  %81 = load i32, ptr %80, align 8
  %82 = icmp eq i32 %73, -1
  br i1 %82, label %94, label %83

83:                                               ; preds = %79, %76
  %84 = phi i32 [ %78, %76 ], [ %81, %79 ]
  %85 = load volatile i32, ptr @jiffies, align 64
  %86 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 14
  %87 = load i32, ptr %86, align 4
  %88 = sub i32 %85, %87
  %89 = udiv i32 %88, 100
  %90 = call i32 @llvm.usub.sat.i32(i32 %73, i32 %89)
  %91 = icmp eq i32 %84, -1
  br i1 %91, label %94, label %92

92:                                               ; preds = %83
  %93 = call i32 @llvm.usub.sat.i32(i32 %84, i32 %89)
  br label %94

94:                                               ; preds = %92, %83, %79, %74
  %95 = phi i32 [ -1, %79 ], [ %90, %83 ], [ -1, %74 ], [ %90, %92 ]
  %96 = phi i32 [ %81, %79 ], [ -1, %83 ], [ -1, %74 ], [ %93, %92 ]
  call void @_raw_spin_unlock_bh(ptr noundef %68) #22
  %97 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 25
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr %struct.inet6_ifaddr, ptr %1, i32 0, i32 25, i32 0, i32 0, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = or i32 %100, %98
  %102 = getelementptr %struct.inet6_ifaddr, ptr %1, i32 0, i32 25, i32 0, i32 0, i32 2
  %103 = load i32, ptr %102, align 4
  %104 = or i32 %101, %103
  %105 = getelementptr %struct.inet6_ifaddr, ptr %1, i32 0, i32 25, i32 0, i32 0, i32 3
  %106 = load i32, ptr %105, align 4
  %107 = or i32 %104, %106
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %94
  %110 = call i32 @nla_put(ptr noundef %0, i32 noundef 2, i32 noundef 16, ptr noundef %1) #22
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %150, label %112

112:                                              ; preds = %109
  %113 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 16, ptr noundef %97) #22
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %150, label %118

115:                                              ; preds = %94
  %116 = call i32 @nla_put(ptr noundef %0, i32 noundef 1, i32 noundef 16, ptr noundef %1) #22
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %150, label %118

118:                                              ; preds = %115, %112
  %119 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 2
  %120 = load i32, ptr %119, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  store i32 %120, ptr %6, align 4
  %123 = call i32 @nla_put(ptr noundef %0, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %150

125:                                              ; preds = %122, %118
  %126 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 13
  %127 = load i32, ptr %126, align 8
  %128 = getelementptr inbounds %struct.inet6_ifaddr, ptr %1, i32 0, i32 14
  %129 = load i32, ptr %128, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #22
  %130 = mul i32 %127, 100
  %131 = add i32 %130, 3000000
  %132 = udiv i32 %131, 100
  %133 = getelementptr inbounds %struct.ifa_cacheinfo, ptr %5, i32 0, i32 2
  store i32 %132, ptr %133, align 4
  %134 = mul i32 %129, 100
  %135 = add i32 %134, 3000000
  %136 = udiv i32 %135, 100
  %137 = getelementptr inbounds %struct.ifa_cacheinfo, ptr %5, i32 0, i32 3
  store i32 %136, ptr %137, align 4
  store i32 %95, ptr %5, align 4
  %138 = getelementptr inbounds %struct.ifa_cacheinfo, ptr %5, i32 0, i32 1
  store i32 %96, ptr %138, align 4
  %139 = call i32 @nla_put(ptr noundef %0, i32 noundef 6, i32 noundef 16, ptr noundef nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #22
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %150, label %141

141:                                              ; preds = %125
  %142 = load i32, ptr %34, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store i32 %142, ptr %4, align 4
  %143 = call i32 @nla_put(ptr noundef %0, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %141
  %146 = load ptr, ptr %21, align 8
  %147 = ptrtoint ptr %146 to i32
  %148 = ptrtoint ptr %28 to i32
  %149 = sub i32 %147, %148
  store i32 %149, ptr %28, align 4
  br label %161

150:                                              ; preds = %141, %125, %122, %115, %112, %109, %64
  %151 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %152 = load ptr, ptr %151, align 4
  %153 = icmp ugt ptr %152, %28
  br i1 %153, label %154, label %156, !prof !9

154:                                              ; preds = %150
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 991, i32 noundef 9, ptr noundef null) #22
  %155 = load ptr, ptr %151, align 4
  br label %156

156:                                              ; preds = %154, %150
  %157 = phi ptr [ %155, %154 ], [ %152, %150 ]
  %158 = ptrtoint ptr %28 to i32
  %159 = ptrtoint ptr %157 to i32
  %160 = sub i32 %158, %159
  call void @skb_trim(ptr noundef %0, i32 noundef %160) #22
  br label %161

161:                                              ; preds = %156, %145, %27, %18, %3
  %162 = phi i32 [ -90, %156 ], [ 0, %145 ], [ -90, %27 ], [ -90, %18 ], [ -90, %3 ]
  ret i32 %162
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_dev_ac_inc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_dev_ac_dec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @addrconf_init_net(ptr noundef %0) #9 section ".init.text" {
  %2 = tail call ptr @kmemdup(ptr noundef nonnull @ipv6_devconf, i32 noundef 228, i32 noundef 3264) #22
  %3 = icmp eq ptr %2, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @kmemdup(ptr noundef nonnull @ipv6_devconf_dflt, i32 noundef 228, i32 noundef 3264) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr getelementptr inbounds (%struct.ipv6_params, ptr @ipv6_defaults, i32 0, i32 1), align 4
  %9 = getelementptr inbounds %struct.ipv6_devconf, ptr %5, i32 0, i32 5
  store i32 %8, ptr %9, align 4
  %10 = load i32, ptr @ipv6_defaults, align 4
  %11 = getelementptr inbounds %struct.ipv6_devconf, ptr %5, i32 0, i32 32
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ipv6_devconf, ptr %5, i32 0, i32 40
  store i8 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ipv6_devconf, ptr %2, i32 0, i32 40
  store i8 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 2
  store ptr %2, ptr %14, align 32
  %15 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 3
  store ptr %5, ptr %15, align 4
  %16 = tail call fastcc i32 @__addrconf_sysctl_register(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef null, ptr noundef nonnull %2)
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %7
  %19 = tail call fastcc i32 @__addrconf_sysctl_register(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef null, ptr noundef nonnull %5)
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.ipv6_devconf, ptr %2, i32 0, i32 53
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ctl_table_header, ptr %23, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef nonnull %23) #22
  store ptr null, ptr %22, align 4
  tail call void @kfree(ptr noundef %27) #22
  tail call void @inet6_netconf_notify_devconf(ptr noundef %0, i32 noundef 81, i32 noundef 0, i32 noundef -1, ptr noundef null) #22
  br label %28

28:                                               ; preds = %25, %21, %7
  %29 = phi i32 [ %16, %7 ], [ %19, %21 ], [ %19, %25 ]
  tail call void @kfree(ptr noundef nonnull %5) #22
  br label %30

30:                                               ; preds = %28, %4
  %31 = phi i32 [ %29, %28 ], [ -12, %4 ]
  tail call void @kfree(ptr noundef nonnull %2) #22
  br label %32

32:                                               ; preds = %30, %18, %1
  %33 = phi i32 [ 0, %18 ], [ %31, %30 ], [ -12, %1 ]
  ret i32 %33
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @addrconf_exit_net(ptr noundef %0) #12 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ipv6_devconf, ptr %3, i32 0, i32 53
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ctl_table_header, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef nonnull %5) #22
  store ptr null, ptr %4, align 4
  tail call void @kfree(ptr noundef %9) #22
  tail call void @inet6_netconf_notify_devconf(ptr noundef %0, i32 noundef 81, i32 noundef 0, i32 noundef -2, ptr noundef null) #22
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 36, i32 2
  %12 = load ptr, ptr %11, align 32
  %13 = getelementptr inbounds %struct.ipv6_devconf, ptr %12, i32 0, i32 53
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.ctl_table_header, ptr %14, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef nonnull %14) #22
  store ptr null, ptr %13, align 4
  tail call void @kfree(ptr noundef %18) #22
  tail call void @inet6_netconf_notify_devconf(ptr noundef %0, i32 noundef 81, i32 noundef 0, i32 noundef -1, ptr noundef null) #22
  br label %19

19:                                               ; preds = %16, %10
  %20 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %20) #22
  %21 = load ptr, ptr %11, align 32
  tail call void @kfree(ptr noundef %21) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__addrconf_sysctl_register(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [31 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %5) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(31) %5, i8 0, i32 31, i1 false), !annotation !15
  %6 = tail call ptr @kmemdup(ptr noundef nonnull @addrconf_sysctl, i32 noundef 1944, i32 noundef 3264) #22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %51, label %8

8:                                                ; preds = %4
  %9 = getelementptr %struct.ctl_table, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %33, label %12

12:                                               ; preds = %8
  %13 = ptrtoint ptr %3 to i32
  %14 = sub i32 %13, ptrtoint (ptr @ipv6_devconf to i32)
  br label %15

15:                                               ; preds = %28, %12
  %16 = phi ptr [ %10, %12 ], [ %31, %28 ]
  %17 = phi ptr [ %9, %12 ], [ %30, %28 ]
  %18 = phi i32 [ 0, %12 ], [ %29, %28 ]
  %19 = getelementptr i8, ptr %16, i32 %14
  store ptr %19, ptr %17, align 4
  %20 = getelementptr %struct.ctl_table, ptr %6, i32 %18, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = getelementptr %struct.ctl_table, ptr %6, i32 %18, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store ptr %2, ptr %20, align 4
  store ptr %0, ptr %24, align 4
  br label %28

28:                                               ; preds = %27, %23, %15
  %29 = add i32 %18, 1
  %30 = getelementptr %struct.ctl_table, ptr %6, i32 %29, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %15

33:                                               ; preds = %28, %8
  %34 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 31, ptr noundef nonnull @.str.23, ptr noundef %1)
  %35 = call ptr @register_net_sysctl(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  %36 = getelementptr inbounds %struct.ipv6_devconf, ptr %3, i32 0, i32 53
  store ptr %35, ptr %36, align 4
  %37 = icmp eq ptr %35, null
  br i1 %37, label %50, label %38

38:                                               ; preds = %33
  %39 = call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(4) @.str.21)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %38
  %42 = call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(8) @.str.22)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %2, align 4
  %46 = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 17
  %47 = load i32, ptr %46, align 4
  br label %48

48:                                               ; preds = %44, %41, %38
  %49 = phi i32 [ %47, %44 ], [ -1, %38 ], [ -2, %41 ]
  call void @inet6_netconf_notify_devconf(ptr noundef %0, i32 noundef 80, i32 noundef -1, i32 noundef %49, ptr noundef %3)
  br label %51

50:                                               ; preds = %33
  call void @kfree(ptr noundef nonnull %6) #22
  br label %51

51:                                               ; preds = %50, %48, %4
  %52 = phi i32 [ 0, %48 ], [ -105, %4 ], [ -105, %50 ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %5) #22
  ret i32 %52
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_net_sysctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @addrconf_sysctl_forward(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ctl_table, align 4
  %8 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %6, align 4
  %11 = load i64, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #22
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %7, ptr noundef align 4 dereferenceable(36) %0, i32 36, i1 false)
  %12 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 1
  store ptr %6, ptr %12, align 4
  %13 = call i32 @proc_dointvec(ptr noundef nonnull %7, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #22
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %78, label %15

15:                                               ; preds = %5
  %16 = load i32, ptr %6, align 4
  %17 = call i32 @rtnl_trylock() #22
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = tail call ptr @llvm.thread.pointer() #22
  call void @_set_bit(i32 noundef 0, ptr noundef %20) #22
  br label %80

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %9, align 4
  store i32 %16, ptr %9, align 4
  %25 = getelementptr inbounds %struct.net, ptr %23, i32 0, i32 36, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %9
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = icmp eq i32 %16, 0
  %30 = icmp eq i32 %24, 0
  %31 = xor i1 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  call void @inet6_netconf_notify_devconf(ptr noundef %23, i32 noundef 80, i32 noundef 2, i32 noundef -2, ptr noundef %9) #22
  br label %33

33:                                               ; preds = %32, %28
  call void @rtnl_unlock() #22
  br label %82

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.net, ptr %23, i32 0, i32 36, i32 2
  %36 = load ptr, ptr %35, align 32
  %37 = icmp eq ptr %36, %9
  br i1 %37, label %38, label %68

38:                                               ; preds = %34
  %39 = load i32, ptr %26, align 4
  store i32 %16, ptr %26, align 4
  %40 = icmp eq i32 %16, 0
  %41 = icmp eq i32 %39, 0
  %42 = xor i1 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load ptr, ptr %25, align 4
  call void @inet6_netconf_notify_devconf(ptr noundef %23, i32 noundef 80, i32 noundef 2, i32 noundef -2, ptr noundef %44) #22
  br label %45

45:                                               ; preds = %43, %38
  %46 = getelementptr inbounds %struct.net, ptr %23, i32 0, i32 16
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, %46
  br i1 %48, label %63, label %49

49:                                               ; preds = %60, %45
  %50 = phi ptr [ %61, %60 ], [ %47, %45 ]
  %51 = getelementptr i8, ptr %50, i32 428
  %52 = load volatile ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.inet6_dev, ptr %52, i32 0, i32 32
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  %58 = xor i1 %40, %57
  store i32 %16, ptr %55, align 4
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  call fastcc void @dev_forward_change(ptr noundef nonnull %52) #22
  br label %60

60:                                               ; preds = %59, %54, %49
  %61 = load ptr, ptr %50, align 8
  %62 = icmp eq ptr %61, %46
  br i1 %62, label %63, label %49

63:                                               ; preds = %60, %45
  %64 = icmp eq i32 %24, 0
  %65 = xor i1 %40, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load ptr, ptr %35, align 32
  call void @inet6_netconf_notify_devconf(ptr noundef %23, i32 noundef 80, i32 noundef 2, i32 noundef -1, ptr noundef %67) #22
  br label %75

68:                                               ; preds = %34
  %69 = icmp eq i32 %16, 0
  %70 = icmp eq i32 %24, 0
  %71 = xor i1 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 7
  %74 = load ptr, ptr %73, align 4
  call fastcc void @dev_forward_change(ptr noundef %74) #22
  br label %75

75:                                               ; preds = %72, %68, %66, %63
  call void @rtnl_unlock() #22
  %76 = icmp eq i32 %16, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %75
  call void @rt6_purge_dflt_routers(ptr noundef %23) #22
  br label %80

78:                                               ; preds = %5
  %79 = icmp eq i32 %13, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %78, %77, %75, %19
  %81 = phi i32 [ %13, %78 ], [ 1, %75 ], [ 1, %77 ], [ -513, %19 ]
  store i64 %11, ptr %4, align 8
  br label %82

82:                                               ; preds = %80, %78, %33
  %83 = phi i32 [ %81, %80 ], [ 0, %78 ], [ 0, %33 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @addrconf_sysctl_mtu(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ctl_table, align 4
  %8 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  store i32 1280, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #22
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %7, ptr noundef align 4 dereferenceable(36) %0, i32 28, i1 false)
  %10 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 7
  store ptr %6, ptr %10, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 20
  br label %15

15:                                               ; preds = %12, %5
  %16 = phi ptr [ %14, %12 ], [ null, %5 ]
  %17 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 8
  store ptr %16, ptr %17, align 4
  %18 = call i32 @proc_dointvec_minmax(ptr noundef nonnull %7, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_ms_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_douintvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @addrconf_sysctl_proxy_ndp(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @proc_dointvec(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #22
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %41, label %11

11:                                               ; preds = %5
  %12 = load i32, ptr %7, align 4
  %13 = icmp eq i32 %8, %12
  br i1 %13, label %41, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @rtnl_trylock() #22
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = tail call ptr @llvm.thread.pointer() #22
  tail call void @_set_bit(i32 noundef 0, ptr noundef %20) #22
  br label %41

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.net, ptr %16, i32 0, i32 36, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ipv6_devconf, ptr %23, i32 0, i32 27
  %25 = icmp eq ptr %7, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  tail call void @inet6_netconf_notify_devconf(ptr noundef %16, i32 noundef 80, i32 noundef 5, i32 noundef -2, ptr noundef %23)
  br label %40

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.net, ptr %16, i32 0, i32 36, i32 2
  %29 = load ptr, ptr %28, align 32
  %30 = getelementptr inbounds %struct.ipv6_devconf, ptr %29, i32 0, i32 27
  %31 = icmp eq ptr %7, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  tail call void @inet6_netconf_notify_devconf(ptr noundef %16, i32 noundef 80, i32 noundef 5, i32 noundef -1, ptr noundef %29)
  br label %40

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 7
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 17
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.inet6_dev, ptr %35, i32 0, i32 32
  tail call void @inet6_netconf_notify_devconf(ptr noundef %16, i32 noundef 80, i32 noundef 5, i32 noundef %38, ptr noundef %39)
  br label %40

40:                                               ; preds = %33, %32, %26
  tail call void @rtnl_unlock() #22
  br label %41

41:                                               ; preds = %40, %19, %11, %5
  %42 = phi i32 [ -513, %19 ], [ %9, %40 ], [ %9, %11 ], [ %9, %5 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @addrconf_sysctl_disable(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.netdev_notifier_info, align 8
  %7 = alloca %struct.netdev_notifier_info, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ctl_table, align 4
  %10 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %8, align 4
  %13 = load i64, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #22
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %9, ptr noundef align 4 dereferenceable(36) %0, i32 36, i1 false)
  %14 = getelementptr inbounds %struct.ctl_table, ptr %9, i32 0, i32 1
  store ptr %8, ptr %14, align 4
  %15 = call i32 @proc_dointvec(ptr noundef nonnull %9, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #22
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %90, label %17

17:                                               ; preds = %5
  %18 = load i32, ptr %8, align 4
  %19 = call i32 @rtnl_trylock() #22
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = tail call ptr @llvm.thread.pointer() #22
  call void @_set_bit(i32 noundef 0, ptr noundef %22) #22
  br label %92

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %11, align 4
  store i32 %18, ptr %11, align 4
  %27 = getelementptr inbounds %struct.net, ptr %25, i32 0, i32 36, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ipv6_devconf, ptr %28, i32 0, i32 32
  %30 = icmp eq ptr %29, %11
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  call void @rtnl_unlock() #22
  br label %94

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.net, ptr %25, i32 0, i32 36, i32 2
  %34 = load ptr, ptr %33, align 32
  %35 = getelementptr inbounds %struct.ipv6_devconf, ptr %34, i32 0, i32 32
  %36 = icmp eq ptr %35, %11
  br i1 %36, label %37, label %67

37:                                               ; preds = %32
  store i32 %18, ptr %29, align 4
  %38 = getelementptr inbounds %struct.net, ptr %25, i32 0, i32 16
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, %38
  br i1 %40, label %89, label %41

41:                                               ; preds = %37
  %42 = icmp eq i32 %18, 0
  %43 = getelementptr inbounds %struct.netdev_notifier_info, ptr %7, i32 0, i32 1
  br label %44

44:                                               ; preds = %64, %41
  %45 = phi ptr [ %39, %41 ], [ %65, %64 ]
  %46 = getelementptr i8, ptr %45, i32 428
  %47 = load volatile ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %64, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.inet6_dev, ptr %47, i32 0, i32 32, i32 32
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  %53 = xor i1 %42, %52
  store i32 %18, ptr %50, align 4
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  %55 = load ptr, ptr %47, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  store ptr %55, ptr %7, align 8
  store ptr null, ptr %43, align 4
  br i1 %42, label %61, label %58

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.net_device, ptr %55, i32 0, i32 69
  %60 = load volatile ptr, ptr %59, align 4
  call fastcc void @addrconf_ifdown(ptr noundef nonnull %55, i1 noundef zeroext false) #22
  br label %63

61:                                               ; preds = %57
  %62 = call i32 @addrconf_notify(ptr noundef null, i32 noundef 1, ptr noundef nonnull %7) #22
  br label %63

63:                                               ; preds = %61, %58, %54
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  br label %64

64:                                               ; preds = %63, %49, %44
  %65 = load ptr, ptr %45, align 8
  %66 = icmp eq ptr %65, %38
  br i1 %66, label %89, label %44

67:                                               ; preds = %32
  %68 = icmp eq i32 %18, 0
  %69 = icmp eq i32 %26, 0
  %70 = xor i1 %68, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 7
  %73 = load ptr, ptr %72, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %74 = icmp eq ptr %73, null
  br i1 %74, label %88, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %73, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %88, label %78

78:                                               ; preds = %75
  store ptr %76, ptr %6, align 8
  %79 = getelementptr inbounds %struct.netdev_notifier_info, ptr %6, i32 0, i32 1
  store ptr null, ptr %79, align 4
  %80 = getelementptr inbounds %struct.inet6_dev, ptr %73, i32 0, i32 32, i32 32
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.net_device, ptr %76, i32 0, i32 69
  %85 = load volatile ptr, ptr %84, align 4
  call fastcc void @addrconf_ifdown(ptr noundef nonnull %76, i1 noundef zeroext false) #22
  br label %88

86:                                               ; preds = %78
  %87 = call i32 @addrconf_notify(ptr noundef null, i32 noundef 1, ptr noundef nonnull %6) #22
  br label %88

88:                                               ; preds = %86, %83, %75, %71
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  br label %89

89:                                               ; preds = %88, %67, %64, %37
  call void @rtnl_unlock() #22
  br label %94

90:                                               ; preds = %5
  %91 = icmp eq i32 %15, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %90, %21
  %93 = phi i32 [ -513, %21 ], [ %15, %90 ]
  store i64 %13, ptr %4, align 8
  br label %94

94:                                               ; preds = %92, %90, %89, %31
  %95 = phi i32 [ %93, %92 ], [ 0, %90 ], [ 0, %31 ], [ 0, %89 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @addrconf_sysctl_stable_secret(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.in6_addr, align 4
  %7 = alloca [46 x i8], align 1
  %8 = alloca %struct.ctl_table, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !15
  call void @llvm.lifetime.start.p0(i64 46, ptr nonnull %7) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(46) %7, i8 0, i32 46, i1 false), !annotation !15
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #22
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %8, ptr noundef align 4 dereferenceable(36) %0, i32 36, i1 false)
  %9 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 36, i32 2
  %14 = load ptr, ptr %13, align 32
  %15 = getelementptr inbounds %struct.ipv6_devconf, ptr %14, i32 0, i32 40
  %16 = icmp eq ptr %15, %12
  br i1 %16, label %66, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.ctl_table, ptr %8, i32 0, i32 2
  store i32 46, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ctl_table, ptr %8, i32 0, i32 1
  store ptr %7, ptr %19, align 4
  %20 = call i32 @rtnl_trylock() #22
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = tail call ptr @llvm.thread.pointer() #22
  call void @_set_bit(i32 noundef 0, ptr noundef %23) #22
  br label %66

24:                                               ; preds = %17
  %25 = icmp ne i32 %1, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %24
  %27 = load i8, ptr %12, align 4, !range !19
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %64, label %29

29:                                               ; preds = %26, %24
  %30 = getelementptr inbounds %struct.ipv6_stable_secret, ptr %12, i32 0, i32 1
  %31 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 46, ptr noundef nonnull @.str.79, ptr noundef %30)
  %32 = icmp ugt i32 %31, 45
  br i1 %32, label %64, label %33

33:                                               ; preds = %29
  %34 = call i32 @proc_dostring(ptr noundef nonnull %8, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #22
  %35 = icmp eq i32 %34, 0
  %36 = and i1 %25, %35
  br i1 %36, label %37, label %64

37:                                               ; preds = %33
  %38 = call i32 @in6_pton(ptr noundef nonnull %7, i32 noundef -1, ptr noundef nonnull %6, i32 noundef -1, ptr noundef null) #22
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %64

40:                                               ; preds = %37
  store i8 1, ptr %12, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %30, ptr noundef nonnull align 4 dereferenceable(16) %6, i32 16, i1 false)
  %41 = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 36, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.ipv6_devconf, ptr %42, i32 0, i32 40
  %44 = load ptr, ptr %11, align 4
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 16
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, %47
  br i1 %49, label %64, label %50

50:                                               ; preds = %57, %46
  %51 = phi ptr [ %58, %57 ], [ %48, %46 ]
  %52 = getelementptr i8, ptr %51, i32 428
  %53 = load volatile ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.inet6_dev, ptr %53, i32 0, i32 32, i32 45
  store i32 2, ptr %56, align 4
  br label %57

57:                                               ; preds = %55, %50
  %58 = load ptr, ptr %51, align 8
  %59 = icmp eq ptr %58, %47
  br i1 %59, label %64, label %50

60:                                               ; preds = %40
  %61 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 7
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.inet6_dev, ptr %62, i32 0, i32 32, i32 45
  store i32 2, ptr %63, align 4
  br label %64

64:                                               ; preds = %60, %57, %46, %37, %33, %29, %26
  %65 = phi i32 [ 0, %60 ], [ %34, %33 ], [ -5, %26 ], [ -5, %29 ], [ -5, %37 ], [ 0, %46 ], [ 0, %57 ]
  call void @rtnl_unlock() #22
  br label %66

66:                                               ; preds = %64, %22, %5
  %67 = phi i32 [ %65, %64 ], [ -513, %22 ], [ -5, %5 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 46, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #22
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @addrconf_sysctl_ignore_routes_with_linkdown(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ctl_table, align 4
  %8 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %6, align 4
  %11 = load i64, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #22
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %7, ptr noundef align 4 dereferenceable(36) %0, i32 36, i1 false)
  %12 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 1
  store ptr %6, ptr %12, align 4
  %13 = call i32 @proc_dointvec(ptr noundef nonnull %7, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #22
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %70, label %15

15:                                               ; preds = %5
  %16 = load i32, ptr %6, align 4
  %17 = call i32 @rtnl_trylock() #22
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = tail call ptr @llvm.thread.pointer() #22
  call void @_set_bit(i32 noundef 0, ptr noundef %20) #22
  br label %72

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %9, align 4
  store i32 %16, ptr %9, align 4
  %25 = getelementptr inbounds %struct.net, ptr %23, i32 0, i32 36, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ipv6_devconf, ptr %26, i32 0, i32 24
  %28 = icmp eq ptr %27, %9
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = icmp eq i32 %16, 0
  %31 = icmp eq i32 %24, 0
  %32 = xor i1 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  call void @inet6_netconf_notify_devconf(ptr noundef %23, i32 noundef 80, i32 noundef 6, i32 noundef -2, ptr noundef %26) #22
  br label %34

34:                                               ; preds = %33, %29
  call void @rtnl_unlock() #22
  br label %74

35:                                               ; preds = %21
  %36 = getelementptr inbounds %struct.net, ptr %23, i32 0, i32 36, i32 2
  %37 = load ptr, ptr %36, align 32
  %38 = getelementptr inbounds %struct.ipv6_devconf, ptr %37, i32 0, i32 24
  %39 = icmp eq ptr %38, %9
  br i1 %39, label %40, label %69

40:                                               ; preds = %35
  store i32 %16, ptr %27, align 4
  %41 = getelementptr inbounds %struct.net, ptr %23, i32 0, i32 16
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %63, label %44

44:                                               ; preds = %40
  %45 = icmp eq i32 %16, 0
  br label %46

46:                                               ; preds = %60, %44
  %47 = phi ptr [ %42, %44 ], [ %61, %60 ]
  %48 = getelementptr i8, ptr %47, i32 428
  %49 = load volatile ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.inet6_dev, ptr %49, i32 0, i32 32, i32 24
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  %55 = xor i1 %45, %54
  store i32 %16, ptr %52, align 4
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.inet6_dev, ptr %49, i32 0, i32 32
  %58 = getelementptr i8, ptr %47, i32 84
  %59 = load i32, ptr %58, align 4
  call void @inet6_netconf_notify_devconf(ptr noundef nonnull @init_net, i32 noundef 80, i32 noundef 6, i32 noundef %59, ptr noundef %57) #22
  br label %60

60:                                               ; preds = %56, %51, %46
  %61 = load ptr, ptr %47, align 8
  %62 = icmp eq ptr %61, %41
  br i1 %62, label %63, label %46

63:                                               ; preds = %60, %40
  %64 = icmp eq i32 %16, 0
  %65 = icmp eq i32 %24, 0
  %66 = xor i1 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load ptr, ptr %36, align 32
  call void @inet6_netconf_notify_devconf(ptr noundef %23, i32 noundef 80, i32 noundef 6, i32 noundef -1, ptr noundef %68) #22
  br label %69

69:                                               ; preds = %67, %63, %35
  call void @rtnl_unlock() #22
  br label %72

70:                                               ; preds = %5
  %71 = icmp eq i32 %13, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %70, %69, %19
  %73 = phi i32 [ %13, %70 ], [ -513, %19 ], [ 1, %69 ]
  store i64 %11, ptr %4, align 8
  br label %74

74:                                               ; preds = %72, %70, %34
  %75 = phi i32 [ %73, %72 ], [ 0, %70 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @addrconf_sysctl_addr_gen_mode(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ctl_table, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  store i32 0, ptr %6, align 4, !annotation !15
  %8 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #22
  %12 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store ptr %6, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 2
  store i32 4, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 3
  %15 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 3
  %16 = load i16, ptr %15, align 4
  store i16 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %17, i8 0, i64 20, i1 false)
  %18 = call i32 @rtnl_trylock() #22
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = tail call ptr @llvm.thread.pointer() #22
  call void @_set_bit(i32 noundef 0, ptr noundef %21) #22
  br label %86

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %6, align 4
  %26 = call i32 @proc_douintvec(ptr noundef nonnull %7, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #22
  %27 = icmp eq i32 %26, 0
  %28 = icmp ne i32 %1, 0
  %29 = and i1 %28, %27
  br i1 %29, label %30, label %84

30:                                               ; preds = %22
  %31 = load i32, ptr %6, align 4
  %32 = icmp ugt i32 %31, 3
  br i1 %32, label %84, label %33

33:                                               ; preds = %30
  %34 = icmp eq ptr %9, null
  br i1 %34, label %53, label %35

35:                                               ; preds = %33
  %36 = icmp eq i32 %31, 2
  br i1 %36, label %37, label %47

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.inet6_dev, ptr %9, i32 0, i32 32, i32 40
  %39 = load i8, ptr %38, align 4, !range !19
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.net, ptr %11, i32 0, i32 36, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ipv6_devconf, ptr %43, i32 0, i32 40
  %45 = load i8, ptr %44, align 4, !range !19
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %84, label %47

47:                                               ; preds = %41, %37, %35
  %48 = getelementptr inbounds %struct.inet6_dev, ptr %9, i32 0, i32 32, i32 45
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, %31
  br i1 %50, label %81, label %51

51:                                               ; preds = %47
  store i32 %31, ptr %48, align 4
  %52 = load ptr, ptr %9, align 4
  call fastcc void @addrconf_dev_config(ptr noundef %52)
  br label %81

53:                                               ; preds = %33
  %54 = getelementptr inbounds %struct.net, ptr %11, i32 0, i32 36, i32 2
  %55 = load ptr, ptr %54, align 32
  %56 = getelementptr inbounds %struct.ipv6_devconf, ptr %55, i32 0, i32 45
  %57 = load ptr, ptr %23, align 4
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %59, label %81

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.net, ptr %11, i32 0, i32 36, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.ipv6_devconf, ptr %61, i32 0, i32 45
  store i32 %31, ptr %62, align 4
  %63 = getelementptr inbounds %struct.net, ptr %11, i32 0, i32 16
  %64 = load ptr, ptr %63, align 8
  %65 = icmp eq ptr %64, %63
  br i1 %65, label %81, label %66

66:                                               ; preds = %78, %59
  %67 = phi ptr [ %79, %78 ], [ %64, %59 ]
  %68 = getelementptr i8, ptr %67, i32 428
  %69 = load volatile ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %78, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.inet6_dev, ptr %69, i32 0, i32 32, i32 45
  %73 = load i32, ptr %72, align 4
  %74 = load i32, ptr %6, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %78, label %76

76:                                               ; preds = %71
  store i32 %74, ptr %72, align 4
  %77 = load ptr, ptr %69, align 4
  call fastcc void @addrconf_dev_config(ptr noundef %77)
  br label %78

78:                                               ; preds = %76, %71, %66
  %79 = load ptr, ptr %67, align 8
  %80 = icmp eq ptr %79, %63
  br i1 %80, label %81, label %66

81:                                               ; preds = %78, %59, %53, %51, %47
  %82 = load i32, ptr %6, align 4
  %83 = load ptr, ptr %23, align 4
  store i32 %82, ptr %83, align 4
  br label %84

84:                                               ; preds = %81, %41, %30, %22
  %85 = phi i32 [ 0, %81 ], [ %26, %22 ], [ -22, %30 ], [ -22, %41 ]
  call void @rtnl_unlock() #22
  br label %86

86:                                               ; preds = %84, %20
  %87 = phi i32 [ %85, %84 ], [ -513, %20 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @addrconf_sysctl_disable_policy(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ctl_table, align 4
  %8 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %6, align 4
  %11 = load i64, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #22
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %7, ptr noundef align 4 dereferenceable(36) %0, i32 36, i1 false)
  %12 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 1
  store ptr %6, ptr %12, align 4
  %13 = call i32 @proc_dointvec(ptr noundef nonnull %7, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #22
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %54, label %15

15:                                               ; preds = %5
  %16 = load i32, ptr %9, align 4
  %17 = load i32, ptr %6, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %54, label %19

19:                                               ; preds = %15
  %20 = call i32 @rtnl_trylock() #22
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = tail call ptr @llvm.thread.pointer() #22
  call void @_set_bit(i32 noundef 0, ptr noundef %23) #22
  br label %56

24:                                               ; preds = %19
  store i32 %17, ptr %9, align 4
  %25 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.net, ptr %26, i32 0, i32 36, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ipv6_devconf, ptr %28, i32 0, i32 46
  %30 = icmp eq ptr %29, %9
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  call void @rtnl_unlock() #22
  br label %58

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.net, ptr %26, i32 0, i32 36, i32 2
  %34 = load ptr, ptr %33, align 32
  %35 = getelementptr inbounds %struct.ipv6_devconf, ptr %34, i32 0, i32 46
  %36 = icmp eq ptr %35, %9
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.net, ptr %26, i32 0, i32 16
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, %38
  br i1 %40, label %53, label %41

41:                                               ; preds = %47, %37
  %42 = phi ptr [ %48, %47 ], [ %39, %37 ]
  %43 = getelementptr i8, ptr %42, i32 428
  %44 = load volatile ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  call fastcc void @addrconf_disable_policy_idev(ptr noundef nonnull %44, i32 noundef %17) #22
  br label %47

47:                                               ; preds = %46, %41
  %48 = load ptr, ptr %42, align 8
  %49 = icmp eq ptr %48, %38
  br i1 %49, label %53, label %41

50:                                               ; preds = %32
  %51 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 7
  %52 = load ptr, ptr %51, align 4
  call fastcc void @addrconf_disable_policy_idev(ptr noundef %52, i32 noundef %17) #22
  br label %53

53:                                               ; preds = %50, %47, %37
  call void @rtnl_unlock() #22
  br label %58

54:                                               ; preds = %15, %5
  %55 = icmp eq i32 %13, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %54, %22
  %57 = phi i32 [ -513, %22 ], [ %13, %54 ]
  store i64 %11, ptr %4, align 8
  br label %58

58:                                               ; preds = %56, %54, %53, %31
  %59 = phi i32 [ %57, %56 ], [ 0, %54 ], [ 0, %31 ], [ 0, %53 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dou8vec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_douintvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_trylock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dev_forward_change(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.in6_addr, align 4
  %3 = alloca %struct.in6_addr, align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %114, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 32
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void @dev_disable_lro(ptr noundef %6) #22
  br label %11

11:                                               ; preds = %10, %5
  %12 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 14
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 4096
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %11
  %17 = load i32, ptr %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @ipv6_dev_mc_inc(ptr noundef %6, ptr noundef nonnull @in6addr_linklocal_allrouters) #22
  %21 = tail call i32 @ipv6_dev_mc_inc(ptr noundef %6, ptr noundef nonnull @in6addr_interfacelocal_allrouters) #22
  %22 = tail call i32 @ipv6_dev_mc_inc(ptr noundef %6, ptr noundef nonnull @in6addr_sitelocal_allrouters) #22
  br label %27

23:                                               ; preds = %16
  %24 = tail call i32 @ipv6_dev_mc_dec(ptr noundef %6, ptr noundef nonnull @in6addr_linklocal_allrouters) #22
  %25 = tail call i32 @ipv6_dev_mc_dec(ptr noundef %6, ptr noundef nonnull @in6addr_interfacelocal_allrouters) #22
  %26 = tail call i32 @ipv6_dev_mc_dec(ptr noundef %6, ptr noundef nonnull @in6addr_sitelocal_allrouters) #22
  br label %27

27:                                               ; preds = %23, %19, %11
  %28 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %111, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 1
  %33 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 2
  %34 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 3
  %35 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 1
  %36 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 2
  %37 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 3
  br label %38

38:                                               ; preds = %108, %31
  %39 = phi ptr [ %29, %31 ], [ %109, %108 ]
  %40 = getelementptr i8, ptr %39, i32 -132
  %41 = getelementptr i8, ptr %39, i32 -88
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 64
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %108

45:                                               ; preds = %38
  %46 = load i32, ptr %7, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %78, label %48

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #22, !annotation !15
  %49 = getelementptr i8, ptr %39, i32 -116
  %50 = load i32, ptr %49, align 8
  %51 = icmp ugt i32 %50, 126
  br i1 %51, label %77, label %52

52:                                               ; preds = %48
  %53 = lshr i32 %50, 3
  %54 = and i32 %50, 7
  %55 = sub nuw nsw i32 16, %53
  %56 = getelementptr i8, ptr %3, i32 %53
  call void @llvm.memset.p0.i32(ptr align 1 %56, i8 0, i32 %55, i1 false) #22
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %3, ptr align 4 %40, i32 %53, i1 false) #22
  %57 = icmp eq i32 %54, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = getelementptr [16 x i8], ptr %40, i32 0, i32 %53
  %60 = load i8, ptr %59, align 1
  %61 = lshr i32 65280, %54
  %62 = trunc i32 %61 to i8
  %63 = and i8 %60, %62
  store i8 %63, ptr %56, align 1
  br label %64

64:                                               ; preds = %58, %52
  %65 = load i32, ptr %3, align 4
  %66 = load i32, ptr %32, align 4
  %67 = or i32 %66, %65
  %68 = load i32, ptr %33, align 4
  %69 = or i32 %67, %68
  %70 = load i32, ptr %34, align 4
  %71 = or i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %64
  %74 = getelementptr i8, ptr %39, i32 -16
  %75 = load ptr, ptr %74, align 4
  %76 = call i32 @__ipv6_dev_ac_inc(ptr noundef %75, ptr noundef nonnull %3) #22
  br label %77

77:                                               ; preds = %73, %64, %48
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  br label %108

78:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #22, !annotation !15
  %79 = getelementptr i8, ptr %39, i32 -116
  %80 = load i32, ptr %79, align 8
  %81 = icmp ugt i32 %80, 126
  br i1 %81, label %107, label %82

82:                                               ; preds = %78
  %83 = lshr i32 %80, 3
  %84 = and i32 %80, 7
  %85 = sub nuw nsw i32 16, %83
  %86 = getelementptr i8, ptr %2, i32 %83
  call void @llvm.memset.p0.i32(ptr align 1 %86, i8 0, i32 %85, i1 false) #22
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %2, ptr align 4 %40, i32 %83, i1 false) #22
  %87 = icmp eq i32 %84, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = getelementptr [16 x i8], ptr %40, i32 0, i32 %83
  %90 = load i8, ptr %89, align 1
  %91 = lshr i32 65280, %84
  %92 = trunc i32 %91 to i8
  %93 = and i8 %90, %92
  store i8 %93, ptr %86, align 1
  br label %94

94:                                               ; preds = %88, %82
  %95 = load i32, ptr %2, align 4
  %96 = load i32, ptr %35, align 4
  %97 = or i32 %96, %95
  %98 = load i32, ptr %36, align 4
  %99 = or i32 %97, %98
  %100 = load i32, ptr %37, align 4
  %101 = or i32 %99, %100
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %94
  %104 = getelementptr i8, ptr %39, i32 -16
  %105 = load ptr, ptr %104, align 4
  %106 = call i32 @__ipv6_dev_ac_dec(ptr noundef %105, ptr noundef nonnull %2) #22
  br label %107

107:                                              ; preds = %103, %94, %78
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #22
  br label %108

108:                                              ; preds = %107, %77, %38
  %109 = load ptr, ptr %39, align 4
  %110 = icmp eq ptr %109, %28
  br i1 %110, label %111, label %38

111:                                              ; preds = %108, %27
  %112 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 17
  %113 = load i32, ptr %112, align 4
  call void @inet6_netconf_notify_devconf(ptr noundef nonnull @init_net, i32 noundef 80, i32 noundef 2, i32 noundef %113, ptr noundef %7)
  br label %114

114:                                              ; preds = %111, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt6_purge_dflt_routers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_disable_lro(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_dev_mc_dec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @addrconf_notify(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 69
  %6 = load volatile ptr, ptr %5, align 4
  switch i32 %1, label %177 [
    i32 5, label %7
    i32 7, label %20
    i32 1, label %39
    i32 4, label %39
    i32 2, label %125
    i32 6, label %125
    i32 11, label %127
    i32 15, label %154
    i32 16, label %154
    i32 21, label %167
  ]

7:                                                ; preds = %3
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %177

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 20
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, 1279
  br i1 %12, label %13, label %177

13:                                               ; preds = %9
  %14 = tail call fastcc ptr @ipv6_add_dev(ptr noundef %4)
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %177

16:                                               ; preds = %13
  %17 = ptrtoint ptr %14 to i32
  %18 = sub i32 1, %17
  %19 = or i32 %18, 32768
  br label %177

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 20
  %22 = load i32, ptr %21, align 4
  %23 = icmp ult i32 %22, 1280
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 27), align 64
  %26 = icmp ne ptr %4, %25
  tail call fastcc void @addrconf_ifdown(ptr noundef %4, i1 noundef zeroext %26)
  br label %177

27:                                               ; preds = %20
  %28 = icmp eq ptr %6, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %27
  tail call void @rt6_mtu_change(ptr noundef %4, i32 noundef %22) #22
  %30 = load i32, ptr %21, align 4
  %31 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 32, i32 2
  store i32 %30, ptr %31, align 4
  br label %177

32:                                               ; preds = %27
  %33 = tail call fastcc ptr @ipv6_add_dev(ptr noundef %4)
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %177, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.inet6_dev, ptr %33, i32 0, i32 26
  %37 = load i32, ptr %36, align 4
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %177, label %39

39:                                               ; preds = %35, %3, %3
  %40 = phi ptr [ %6, %3 ], [ %6, %3 ], [ %33, %35 ]
  %41 = phi i32 [ 0, %3 ], [ 0, %3 ], [ 1, %35 ]
  %42 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 14
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 2048
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %177

46:                                               ; preds = %39
  %47 = icmp eq ptr %40, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.inet6_dev, ptr %40, i32 0, i32 32, i32 32
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %177

52:                                               ; preds = %48, %46
  switch i32 %1, label %92 [
    i32 1, label %53
    i32 4, label %71
  ]

53:                                               ; preds = %52
  tail call fastcc void @addrconf_permanent_addr(ptr noundef %4)
  %54 = tail call fastcc zeroext i1 @addrconf_link_ready(ptr noundef %4)
  br i1 %54, label %55, label %177

55:                                               ; preds = %53
  br i1 %47, label %56, label %62

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 20
  %58 = load i32, ptr %57, align 4
  %59 = icmp ugt i32 %58, 1279
  br i1 %59, label %60, label %92

60:                                               ; preds = %56
  %61 = tail call fastcc ptr @ipv6_add_dev(ptr noundef %4)
  br label %62

62:                                               ; preds = %60, %55
  %63 = phi ptr [ %40, %55 ], [ %61, %60 ]
  %64 = icmp eq ptr %63, null
  %65 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  %66 = or i1 %64, %65
  br i1 %66, label %92, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.inet6_dev, ptr %63, i32 0, i32 26
  %69 = load i32, ptr %68, align 4
  %70 = or i32 %69, -2147483648
  store i32 %70, ptr %68, align 4
  br label %92

71:                                               ; preds = %52
  %72 = tail call fastcc zeroext i1 @addrconf_link_ready(ptr noundef %4)
  br i1 %72, label %74, label %73

73:                                               ; preds = %71
  tail call void @rt6_sync_down_dev(ptr noundef %4, i32 noundef 4) #22
  br label %177

74:                                               ; preds = %71
  %75 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  %76 = or i1 %47, %75
  br i1 %76, label %90, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.inet6_dev, ptr %40, i32 0, i32 26
  %79 = load i32, ptr %78, align 4
  %80 = icmp sgt i32 %79, -1
  br i1 %80, label %88, label %81

81:                                               ; preds = %77
  tail call void @ipv6_mc_up(ptr noundef nonnull %40) #22
  %82 = getelementptr inbounds %struct.netdev_notifier_change_info, ptr %2, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, 128
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  tail call fastcc void @addrconf_dad_run(ptr noundef nonnull %40, i1 noundef zeroext true)
  br label %87

87:                                               ; preds = %86, %81
  tail call void @rt6_sync_up(ptr noundef %4, i8 noundef zeroext 16) #22
  br label %177

88:                                               ; preds = %77
  %89 = or i32 %79, -2147483648
  store i32 %89, ptr %78, align 4
  br label %90

90:                                               ; preds = %88, %74
  %91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %4) #23
  br label %92

92:                                               ; preds = %90, %67, %62, %56, %52
  %93 = phi ptr [ %63, %62 ], [ %63, %67 ], [ %40, %90 ], [ %40, %52 ], [ null, %56 ]
  %94 = phi i32 [ %41, %62 ], [ 1, %67 ], [ 1, %90 ], [ %41, %52 ], [ %41, %56 ]
  %95 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 32
  %96 = load i16, ptr %95, align 16
  switch i16 %96, label %99 [
    i16 776, label %97
    i16 772, label %98
  ]

97:                                               ; preds = %92
  tail call fastcc void @addrconf_sit_config(ptr noundef %4)
  br label %100

98:                                               ; preds = %92
  tail call fastcc void @init_loopback(ptr noundef %4)
  br label %100

99:                                               ; preds = %92
  tail call fastcc void @addrconf_dev_config(ptr noundef %4)
  br label %100

100:                                              ; preds = %99, %98, %97
  %101 = icmp eq ptr %93, null
  %102 = icmp ugt ptr %93, inttoptr (i32 -4096 to ptr)
  %103 = or i1 %101, %102
  br i1 %103, label %177, label %104

104:                                              ; preds = %100
  %105 = icmp eq i32 %94, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %104
  tail call fastcc void @addrconf_dad_run(ptr noundef nonnull %93, i1 noundef zeroext false)
  br label %107

107:                                              ; preds = %106, %104
  tail call void @rt6_sync_up(ptr noundef %4, i8 noundef zeroext 1) #22
  %108 = getelementptr inbounds %struct.inet6_dev, ptr %93, i32 0, i32 32, i32 2
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 20
  %111 = load i32, ptr %110, align 4
  %112 = icmp ne i32 %109, %111
  %113 = icmp ugt i32 %111, 1279
  %114 = and i1 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %107
  tail call void @rt6_mtu_change(ptr noundef %4, i32 noundef %111) #22
  %116 = load i32, ptr %110, align 4
  store i32 %116, ptr %108, align 4
  br label %117

117:                                              ; preds = %115, %107
  %118 = load volatile i32, ptr @jiffies, align 64
  %119 = getelementptr inbounds %struct.inet6_dev, ptr %93, i32 0, i32 37
  store i32 %118, ptr %119, align 4
  tail call void @inet6_ifinfo_notify(i32 noundef 16, ptr noundef nonnull %93)
  %120 = load i32, ptr %110, align 4
  %121 = icmp ult i32 %120, 1280
  br i1 %121, label %122, label %177

122:                                              ; preds = %117
  %123 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 27), align 64
  %124 = icmp ne ptr %4, %123
  tail call fastcc void @addrconf_ifdown(ptr noundef %4, i1 noundef zeroext %124)
  br label %177

125:                                              ; preds = %3, %3
  %126 = icmp ne i32 %1, 2
  tail call fastcc void @addrconf_ifdown(ptr noundef %4, i1 noundef zeroext %126)
  br label %177

127:                                              ; preds = %3
  %128 = icmp eq ptr %6, null
  br i1 %128, label %177, label %129

129:                                              ; preds = %127
  %130 = tail call i32 @snmp6_unregister_dev(ptr noundef nonnull %6) #22
  %131 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 32, i32 53
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %140, label %134

134:                                              ; preds = %129
  %135 = load ptr, ptr %6, align 4
  %136 = getelementptr inbounds %struct.net_device, ptr %135, i32 0, i32 17
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr inbounds %struct.ctl_table_header, ptr %132, i32 0, i32 2
  %139 = load ptr, ptr %138, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef nonnull %132) #22
  store ptr null, ptr %131, align 4
  tail call void @kfree(ptr noundef %139) #22
  tail call void @inet6_netconf_notify_devconf(ptr noundef nonnull @init_net, i32 noundef 81, i32 noundef 0, i32 noundef %137, ptr noundef null) #22
  br label %140

140:                                              ; preds = %134, %129
  %141 = getelementptr inbounds %struct.inet6_dev, ptr %6, i32 0, i32 31
  %142 = load ptr, ptr %141, align 4
  tail call void @neigh_sysctl_unregister(ptr noundef %142) #22
  %143 = tail call fastcc i32 @addrconf_sysctl_register(ptr noundef nonnull %6)
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %140
  %146 = sub i32 1, %143
  %147 = or i32 %146, 32768
  br label %177

148:                                              ; preds = %140
  %149 = tail call i32 @snmp6_register_dev(ptr noundef nonnull %6) #22
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %177, label %151

151:                                              ; preds = %148
  tail call fastcc void @addrconf_sysctl_unregister(ptr noundef nonnull %6)
  %152 = sub i32 1, %149
  %153 = or i32 %152, 32768
  br label %177

154:                                              ; preds = %3, %3
  %155 = icmp eq ptr %6, null
  br i1 %155, label %177, label %156

156:                                              ; preds = %154
  %157 = tail call i32 @rtnl_is_locked() #22
  %158 = icmp eq i32 %157, 0
  %159 = load i1, ptr @addrconf_type_change.__already_done, align 1
  %160 = xor i1 %159, true
  %161 = select i1 %158, i1 %160, i1 false
  br i1 %161, label %162, label %163, !prof !9

162:                                              ; preds = %156
  store i1 true, ptr @addrconf_type_change.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3712, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str, i32 noundef 3712) #22
  br label %163

163:                                              ; preds = %162, %156
  %164 = load volatile ptr, ptr %5, align 4
  switch i32 %1, label %177 [
    i32 16, label %165
    i32 15, label %166
  ]

165:                                              ; preds = %163
  tail call void @ipv6_mc_remap(ptr noundef %164) #22
  br label %177

166:                                              ; preds = %163
  tail call void @ipv6_mc_unmap(ptr noundef %164) #22
  br label %177

167:                                              ; preds = %3
  %168 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %2, i32 0, i32 1
  %169 = load ptr, ptr %168, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %177, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.net_device, ptr %169, i32 0, i32 15
  %173 = load i64, ptr %172, align 16
  %174 = and i64 %173, 262144
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %171
  tail call fastcc void @addrconf_ifdown(ptr noundef %4, i1 noundef zeroext false)
  br label %177

177:                                              ; preds = %176, %171, %167, %166, %165, %163, %154, %151, %148, %145, %127, %125, %122, %117, %100, %87, %73, %53, %48, %39, %35, %32, %29, %24, %16, %13, %9, %7, %3
  %178 = phi i32 [ %147, %145 ], [ %153, %151 ], [ %19, %16 ], [ 1, %53 ], [ 1, %167 ], [ 1, %171 ], [ 1, %176 ], [ 1, %154 ], [ 1, %127 ], [ 1, %148 ], [ 1, %100 ], [ 1, %122 ], [ 1, %117 ], [ 1, %48 ], [ 1, %39 ], [ 1, %35 ], [ 1, %32 ], [ 1, %7 ], [ 1, %9 ], [ 1, %13 ], [ 1, %3 ], [ 1, %125 ], [ 1, %87 ], [ 1, %73 ], [ 1, %29 ], [ 1, %24 ], [ 1, %163 ], [ 1, %165 ], [ 1, %166 ]
  ret i32 %178
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt6_mtu_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @addrconf_permanent_addr(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.fib6_config, align 4
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 69
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %113, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.inet6_dev, ptr %4, i32 0, i32 24
  tail call void @_raw_write_lock_bh(ptr noundef %7) #22
  %8 = getelementptr inbounds %struct.inet6_dev, ptr %4, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %112, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds i8, ptr %2, i32 12
  %13 = getelementptr inbounds %struct.fib6_config, ptr %2, i32 0, i32 1
  %14 = getelementptr inbounds %struct.fib6_config, ptr %2, i32 0, i32 2
  %15 = getelementptr inbounds %struct.fib6_config, ptr %2, i32 0, i32 4
  %16 = getelementptr inbounds %struct.fib6_config, ptr %2, i32 0, i32 5
  %17 = getelementptr inbounds %struct.fib6_config, ptr %2, i32 0, i32 6
  %18 = getelementptr inbounds %struct.fib6_config, ptr %2, i32 0, i32 7
  %19 = getelementptr inbounds %struct.fib6_config, ptr %2, i32 0, i32 19, i32 1
  %20 = getelementptr inbounds %struct.fib6_config, ptr %2, i32 0, i32 10
  br label %21

21:                                               ; preds = %110, %11
  %22 = phi ptr [ %9, %11 ], [ %24, %110 ]
  %23 = getelementptr i8, ptr %22, i32 -132
  %24 = load ptr, ptr %22, align 4
  %25 = getelementptr i8, ptr %22, i32 -88
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 128
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %110, label %29

29:                                               ; preds = %21
  %30 = getelementptr i8, ptr %22, i32 -12
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.fib6_info, ptr %31, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %56

37:                                               ; preds = %33, %29
  %38 = call ptr @addrconf_f6i_alloc(ptr noundef nonnull @init_net, ptr noundef nonnull %4, ptr noundef %23, i1 noundef zeroext false, i32 noundef 2592) #22
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %91, label %40

40:                                               ; preds = %37
  %41 = getelementptr i8, ptr %22, i32 -96
  call void @_raw_spin_lock(ptr noundef %41) #22
  %42 = load ptr, ptr %30, align 8
  store ptr %38, ptr %30, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !26
  %43 = load i16, ptr %41, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %41, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !27
  %45 = icmp eq ptr %42, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.fib6_info, ptr %42, i32 0, i32 5
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #22, !srcloc !12
  %48 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 1, ptr elementtype(i32) %47) #22, !srcloc !13
  %49 = extractvalue { i32, i32, i32 } %48, 0
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = icmp sgt i32 %49, 0
  br i1 %52, label %56, label %53, !prof !10

53:                                               ; preds = %51
  call void @refcount_warn_saturate(ptr noundef %47, i32 noundef 3) #22
  br label %56

54:                                               ; preds = %46
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  %55 = getelementptr inbounds %struct.fib6_info, ptr %42, i32 0, i32 19
  call void @call_rcu(ptr noundef %55, ptr noundef nonnull @fib6_info_destroy_rcu) #22
  br label %56

56:                                               ; preds = %54, %53, %51, %40, %33
  %57 = load i32, ptr %25, align 4
  %58 = and i32 %57, 512
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %56
  %61 = getelementptr i8, ptr %22, i32 -116
  %62 = load i32, ptr %61, align 8
  %63 = getelementptr i8, ptr %22, i32 -112
  %64 = load i32, ptr %63, align 4
  %65 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(132) %12, i8 0, i64 132, i1 false) #22
  store i32 254, ptr %2, align 4
  %66 = icmp eq i32 %64, 0
  %67 = select i1 %66, i32 256, i32 %64
  store i32 %67, ptr %13, align 4
  store i32 %62, ptr %14, align 4
  %68 = getelementptr inbounds %struct.net_device, ptr %65, i32 0, i32 17
  %69 = load i32, ptr %68, align 4
  store i32 %69, ptr %15, align 4
  store i32 1, ptr %16, align 4
  store i32 2, ptr %17, align 4
  store i16 1, ptr %18, align 4
  store ptr @init_net, ptr %19, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %20, ptr noundef align 4 dereferenceable(16) %23, i32 16, i1 false) #22
  %70 = getelementptr inbounds %struct.net_device, ptr %65, i32 0, i32 32
  %71 = load i16, ptr %70, align 16
  %72 = icmp eq i16 %71, 776
  br i1 %72, label %73, label %79

73:                                               ; preds = %60
  %74 = getelementptr inbounds %struct.net_device, ptr %65, i32 0, i32 14
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 16
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  store i32 2097153, ptr %16, align 4
  br label %79

79:                                               ; preds = %78, %73, %60
  %80 = call i32 @ip6_route_add(ptr noundef nonnull %2, i32 noundef 2592, ptr noundef null) #22
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #22
  br label %81

81:                                               ; preds = %79, %56
  %82 = getelementptr i8, ptr %22, i32 -92
  %83 = load i32, ptr %82, align 8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %110

85:                                               ; preds = %81
  %86 = getelementptr i8, ptr %22, i32 -96
  call void @_raw_spin_lock_bh(ptr noundef %86) #22
  %87 = load i32, ptr %82, align 8
  %88 = icmp eq i32 %87, 4
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  store i32 0, ptr %82, align 8
  call void @_raw_spin_unlock_bh(ptr noundef %86) #22
  call fastcc void @addrconf_mod_dad_work(ptr noundef %23, i32 noundef 0) #22
  br label %110

90:                                               ; preds = %85
  call void @_raw_spin_unlock_bh(ptr noundef %86) #22
  br label %110

91:                                               ; preds = %37
  %92 = icmp slt ptr %38, null
  br i1 %92, label %93, label %110

93:                                               ; preds = %91
  call void @_raw_write_unlock_bh(ptr noundef %7) #22
  %94 = getelementptr i8, ptr %22, i32 -100
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %94) #22, !srcloc !12
  %95 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %94, ptr %94, i32 1, ptr elementtype(i32) %94) #22, !srcloc !18
  %96 = extractvalue { i32, i32, i32 } %95, 0
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %102, label %98, !prof !9

98:                                               ; preds = %93
  %99 = add i32 %96, 1
  %100 = or i32 %99, %96
  %101 = icmp sgt i32 %100, -1
  br i1 %101, label %104, label %102, !prof !10

102:                                              ; preds = %98, %93
  %103 = phi i32 [ 2, %93 ], [ 1, %98 ]
  call void @refcount_warn_saturate(ptr noundef %94, i32 noundef %103) #22
  br label %104

104:                                              ; preds = %102, %98
  call fastcc void @ipv6_del_addr(ptr noundef %23)
  call void @_raw_write_lock_bh(ptr noundef %7) #22
  %105 = call i32 @net_ratelimit() #22
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr %4, align 4
  %109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %108, ptr noundef %23) #23
  br label %110

110:                                              ; preds = %107, %104, %91, %90, %89, %81, %21
  %111 = icmp eq ptr %24, %8
  br i1 %111, label %112, label %21

112:                                              ; preds = %110, %6
  call void @_raw_write_unlock_bh(ptr noundef %7) #22
  br label %113

113:                                              ; preds = %112, %1
  ret void
}

; Function Attrs: inlinehint nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @addrconf_link_ready(ptr nocapture noundef readonly %0) unnamed_addr #17 {
  %2 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 45
  %3 = load i8, ptr %2, align 4
  switch i8 %3, label %24 [
    i8 6, label %4
    i8 0, label %4
  ]

4:                                                ; preds = %1, %1
  %5 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 88
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %10 = load ptr, ptr %9, align 64
  %11 = getelementptr %struct.netdev_queue, ptr %10, i32 0, i32 2
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, @noop_qdisc
  br i1 %13, label %14, label %24

14:                                               ; preds = %18, %8
  %15 = phi i32 [ %16, %18 ], [ 0, %8 ]
  %16 = add nuw i32 %15, 1
  %17 = icmp eq i32 %16, %6
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr %struct.netdev_queue, ptr %10, i32 %16, i32 2
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, @noop_qdisc
  br i1 %21, label %14, label %22

22:                                               ; preds = %18, %14
  %23 = icmp ult i32 %16, %6
  br label %24

24:                                               ; preds = %22, %8, %4, %1
  %25 = phi i1 [ false, %1 ], [ false, %4 ], [ true, %8 ], [ %23, %22 ]
  ret i1 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt6_sync_down_dev(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @addrconf_dad_run(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 24
  tail call void @_raw_read_lock_bh(ptr noundef %4) #22
  %5 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %63, label %8

8:                                                ; preds = %58, %2
  %9 = phi ptr [ %61, %58 ], [ %6, %2 ]
  %10 = getelementptr i8, ptr %9, i32 -132
  %11 = getelementptr i8, ptr %9, i32 -96
  call void @_raw_spin_lock(ptr noundef %11) #22
  %12 = getelementptr i8, ptr %9, i32 -88
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 64
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %8
  %17 = getelementptr i8, ptr %9, i32 -92
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 1
  %20 = or i1 %19, %1
  br i1 %20, label %22, label %58

21:                                               ; preds = %8
  br i1 %1, label %23, label %58

22:                                               ; preds = %16
  br i1 %1, label %23, label %25

23:                                               ; preds = %22, %21
  %24 = getelementptr i8, ptr %9, i32 -92
  store i32 0, ptr %24, align 8
  br label %25

25:                                               ; preds = %23, %22
  %26 = getelementptr i8, ptr %9, i32 -16
  %27 = load ptr, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %28 = and i32 %13, 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = call i32 @prandom_u32() #22
  %32 = getelementptr inbounds %struct.inet6_dev, ptr %27, i32 0, i32 32, i32 10
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 1, i32 %33
  %36 = urem i32 %31, %35
  br label %37

37:                                               ; preds = %30, %25
  %38 = phi i32 [ %36, %30 ], [ 0, %25 ]
  store i64 0, ptr %3, align 8
  %39 = getelementptr inbounds %struct.inet6_dev, ptr %27, i32 0, i32 32, i32 44
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 2), align 32
  %44 = getelementptr inbounds %struct.ipv6_devconf, ptr %43, i32 0, i32 44
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42, %37
  br label %48

48:                                               ; preds = %48, %47
  call void @get_random_bytes(ptr noundef nonnull %3, i32 noundef 6) #22
  %49 = load i64, ptr %3, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %48, label %51

51:                                               ; preds = %48, %42
  %52 = phi i64 [ 0, %42 ], [ %49, %48 ]
  %53 = getelementptr i8, ptr %9, i32 -76
  store i64 %52, ptr %53, align 8
  %54 = getelementptr inbounds %struct.inet6_dev, ptr %27, i32 0, i32 32, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = trunc i32 %55 to i8
  %57 = getelementptr i8, ptr %9, i32 -84
  store i8 %56, ptr %57, align 8
  call fastcc void @addrconf_mod_dad_work(ptr noundef %10, i32 noundef %38) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  br label %58

58:                                               ; preds = %51, %21, %16
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !26
  %59 = load i16, ptr %11, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr %11, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !27
  %61 = load ptr, ptr %9, align 4
  %62 = icmp eq ptr %61, %5
  br i1 %62, label %63, label %8

63:                                               ; preds = %58, %2
  call void @_raw_read_unlock_bh(ptr noundef %4) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt6_sync_up(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @addrconf_sit_config(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.fib6_config, align 4
  %3 = alloca %struct.fib6_config, align 4
  %4 = alloca %struct.fib6_config, align 4
  %5 = alloca %struct.in6_addr, align 4
  %6 = tail call i32 @rtnl_is_locked() #22
  %7 = icmp eq i32 %6, 0
  %8 = load i1, ptr @addrconf_sit_config.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %1
  store i1 true, ptr @addrconf_sit_config.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3394, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str, i32 noundef 3394) #22
  br label %12

12:                                               ; preds = %11, %1
  %13 = tail call i32 @rtnl_is_locked() #22
  %14 = icmp eq i32 %13, 0
  %15 = load i1, ptr @ipv6_find_idev.__already_done, align 1
  %16 = xor i1 %15, true
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %19, !prof !9

18:                                               ; preds = %12
  store i1 true, ptr @ipv6_find_idev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 487, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str, i32 noundef 487) #22
  br label %19

19:                                               ; preds = %18, %12
  %20 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 69
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = tail call fastcc ptr @ipv6_add_dev(ptr noundef %0) #22
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %33, label %26

26:                                               ; preds = %23, %19
  %27 = phi ptr [ %21, %19 ], [ %24, %23 ]
  %28 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  tail call void @ipv6_mc_up(ptr noundef %27) #22
  br label %33

33:                                               ; preds = %32, %26, %23
  %34 = phi ptr [ %24, %23 ], [ %27, %32 ], [ %27, %26 ]
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %185, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 15
  %38 = load i64, ptr %37, align 16
  %39 = and i64 %38, 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  tail call fastcc void @addrconf_addr_gen(ptr noundef %34)
  br label %185

42:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #22
  %43 = tail call i32 @rtnl_is_locked() #22
  %44 = icmp eq i32 %43, 0
  %45 = load i1, ptr @add_v4_addrs.__already_done, align 1
  %46 = xor i1 %45, true
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %49, !prof !9

48:                                               ; preds = %42
  store i1 true, ptr @add_v4_addrs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3119, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str, i32 noundef 3119) #22
  br label %49

49:                                               ; preds = %48, %42
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 12, i1 false) #22
  %50 = load ptr, ptr %34, align 4
  %51 = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 51
  %52 = load i8, ptr %51, align 1
  %53 = icmp eq i8 %52, 16
  %54 = select i1 %53, i32 12, i32 0
  %55 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 3
  %56 = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 72
  %57 = load ptr, ptr %56, align 32
  %58 = getelementptr i8, ptr %57, i32 %54
  %59 = load i32, ptr %58, align 1
  store i32 %59, ptr %55, align 4
  %60 = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 14
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 16
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %49
  %65 = getelementptr inbounds %struct.inet6_dev, ptr %34, i32 0, i32 32, i32 45
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %167, label %68

68:                                               ; preds = %64
  store i32 33022, ptr %5, align 4
  br label %69

69:                                               ; preds = %68, %49
  %70 = phi i32 [ 1, %68 ], [ 2097153, %49 ]
  %71 = phi i32 [ 64, %68 ], [ 96, %49 ]
  %72 = phi i32 [ 32, %68 ], [ 128, %49 ]
  %73 = icmp eq i32 %59, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 32
  %76 = icmp eq ptr %75, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %76, label %167, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds i8, ptr %3, i32 12
  %79 = getelementptr inbounds %struct.fib6_config, ptr %3, i32 0, i32 1
  %80 = getelementptr inbounds %struct.fib6_config, ptr %3, i32 0, i32 2
  %81 = getelementptr inbounds %struct.fib6_config, ptr %3, i32 0, i32 4
  %82 = getelementptr inbounds %struct.fib6_config, ptr %3, i32 0, i32 5
  %83 = getelementptr inbounds %struct.fib6_config, ptr %3, i32 0, i32 6
  %84 = getelementptr inbounds %struct.fib6_config, ptr %3, i32 0, i32 7
  %85 = getelementptr inbounds %struct.fib6_config, ptr %3, i32 0, i32 19, i32 1
  %86 = getelementptr inbounds %struct.fib6_config, ptr %3, i32 0, i32 10
  br label %111

87:                                               ; preds = %69
  call fastcc void @add_addr(ptr noundef %34, ptr noundef nonnull %5, i32 noundef %71, i32 noundef %72) #22
  %88 = load ptr, ptr %34, align 4
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #22
  %89 = getelementptr inbounds i8, ptr %4, i32 12
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(132) %89, i8 0, i64 132, i1 false) #22
  store i32 254, ptr %4, align 4
  %90 = getelementptr inbounds %struct.fib6_config, ptr %4, i32 0, i32 1
  store i32 256, ptr %90, align 4
  %91 = getelementptr inbounds %struct.fib6_config, ptr %4, i32 0, i32 2
  store i32 %71, ptr %91, align 4
  %92 = getelementptr inbounds %struct.fib6_config, ptr %4, i32 0, i32 4
  %93 = getelementptr inbounds %struct.net_device, ptr %88, i32 0, i32 17
  %94 = load i32, ptr %93, align 4
  store i32 %94, ptr %92, align 4
  %95 = getelementptr inbounds %struct.fib6_config, ptr %4, i32 0, i32 5
  store i32 %70, ptr %95, align 4
  %96 = getelementptr inbounds %struct.fib6_config, ptr %4, i32 0, i32 6
  store i32 2, ptr %96, align 4
  %97 = getelementptr inbounds %struct.fib6_config, ptr %4, i32 0, i32 7
  store i16 1, ptr %97, align 4
  %98 = getelementptr inbounds %struct.fib6_config, ptr %4, i32 0, i32 19, i32 1
  store ptr @init_net, ptr %98, align 4
  %99 = getelementptr inbounds %struct.fib6_config, ptr %4, i32 0, i32 10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %99, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 16, i1 false) #22
  %100 = getelementptr inbounds %struct.net_device, ptr %88, i32 0, i32 32
  %101 = load i16, ptr %100, align 16
  %102 = icmp eq i16 %101, 776
  br i1 %102, label %103, label %109

103:                                              ; preds = %87
  %104 = getelementptr inbounds %struct.net_device, ptr %88, i32 0, i32 14
  %105 = load i32, ptr %104, align 8
  %106 = and i32 %105, 16
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %103
  store i32 2097153, ptr %95, align 4
  br label %109

109:                                              ; preds = %108, %103, %87
  %110 = call i32 @ip6_route_add(ptr noundef nonnull %4, i32 noundef 3264, ptr noundef null) #22
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #22
  br label %167

111:                                              ; preds = %164, %77
  %112 = phi ptr [ %75, %77 ], [ %165, %164 ]
  %113 = getelementptr i8, ptr %112, i32 424
  %114 = load ptr, ptr %113, align 16
  %115 = icmp eq ptr %114, null
  br i1 %115, label %164, label %116

116:                                              ; preds = %111
  %117 = getelementptr i8, ptr %112, i32 64
  %118 = load i32, ptr %117, align 8
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %164, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.in_device, ptr %114, i32 0, i32 4
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %164, label %125

125:                                              ; preds = %159, %121
  %126 = phi ptr [ %162, %159 ], [ %123, %121 ]
  %127 = phi i32 [ %160, %159 ], [ %72, %121 ]
  %128 = getelementptr inbounds %struct.in_ifaddr, ptr %126, i32 0, i32 4
  %129 = load i32, ptr %128, align 4
  store i32 %129, ptr %55, align 4
  %130 = getelementptr inbounds %struct.in_ifaddr, ptr %126, i32 0, i32 9
  %131 = load i8, ptr %130, align 4
  %132 = icmp eq i8 %131, -3
  br i1 %132, label %159, label %133

133:                                              ; preds = %125
  %134 = icmp ugt i8 %131, -3
  br i1 %134, label %135, label %143

135:                                              ; preds = %133
  %136 = load ptr, ptr %34, align 4
  %137 = getelementptr inbounds %struct.net_device, ptr %136, i32 0, i32 14
  %138 = load i32, ptr %137, align 8
  %139 = and i32 %138, 16
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %159

141:                                              ; preds = %135
  %142 = or i32 %127, 16
  br label %143

143:                                              ; preds = %141, %133
  %144 = phi i32 [ %142, %141 ], [ %127, %133 ]
  call fastcc void @add_addr(ptr noundef %34, ptr noundef nonnull %5, i32 noundef %71, i32 noundef %144) #22
  %145 = load ptr, ptr %34, align 4
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(132) %78, i8 0, i64 132, i1 false) #22
  store i32 254, ptr %3, align 4
  store i32 256, ptr %79, align 4
  store i32 %71, ptr %80, align 4
  %146 = getelementptr inbounds %struct.net_device, ptr %145, i32 0, i32 17
  %147 = load i32, ptr %146, align 4
  store i32 %147, ptr %81, align 4
  store i32 %70, ptr %82, align 4
  store i32 2, ptr %83, align 4
  store i16 1, ptr %84, align 4
  store ptr @init_net, ptr %85, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %86, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 16, i1 false) #22
  %148 = getelementptr inbounds %struct.net_device, ptr %145, i32 0, i32 32
  %149 = load i16, ptr %148, align 16
  %150 = icmp eq i16 %149, 776
  br i1 %150, label %151, label %157

151:                                              ; preds = %143
  %152 = getelementptr inbounds %struct.net_device, ptr %145, i32 0, i32 14
  %153 = load i32, ptr %152, align 8
  %154 = and i32 %153, 16
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %151
  store i32 2097153, ptr %82, align 4
  br label %157

157:                                              ; preds = %156, %151, %143
  %158 = call i32 @ip6_route_add(ptr noundef nonnull %3, i32 noundef 3264, ptr noundef null) #22
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #22
  br label %159

159:                                              ; preds = %157, %135, %125
  %160 = phi i32 [ %127, %125 ], [ %127, %135 ], [ %144, %157 ]
  %161 = getelementptr inbounds %struct.in_ifaddr, ptr %126, i32 0, i32 1
  %162 = load ptr, ptr %161, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %125

164:                                              ; preds = %159, %121, %116, %111
  %165 = load ptr, ptr %112, align 8
  %166 = icmp eq ptr %165, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %166, label %167, label %111

167:                                              ; preds = %164, %109, %74, %64
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #22
  %168 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %169 = load i32, ptr %168, align 8
  %170 = and i32 %169, 16
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %185, label %172

172:                                              ; preds = %167
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #22
  %173 = getelementptr inbounds i8, ptr %2, i32 12
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(132) %173, i8 0, i64 132, i1 false) #22
  store i32 255, ptr %2, align 4
  %174 = getelementptr inbounds %struct.fib6_config, ptr %2, i32 0, i32 1
  store i32 256, ptr %174, align 4
  %175 = getelementptr inbounds %struct.fib6_config, ptr %2, i32 0, i32 2
  store i32 8, ptr %175, align 4
  %176 = getelementptr inbounds %struct.fib6_config, ptr %2, i32 0, i32 4
  %177 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 17
  %178 = load i32, ptr %177, align 4
  store i32 %178, ptr %176, align 4
  %179 = getelementptr inbounds %struct.fib6_config, ptr %2, i32 0, i32 5
  store i32 1, ptr %179, align 4
  %180 = getelementptr inbounds %struct.fib6_config, ptr %2, i32 0, i32 6
  store i32 2, ptr %180, align 4
  %181 = getelementptr inbounds %struct.fib6_config, ptr %2, i32 0, i32 7
  store i16 5, ptr %181, align 4
  %182 = getelementptr inbounds %struct.fib6_config, ptr %2, i32 0, i32 19, i32 1
  store ptr @init_net, ptr %182, align 4
  %183 = getelementptr inbounds %struct.fib6_config, ptr %2, i32 0, i32 10
  store i32 255, ptr %183, align 4
  %184 = call i32 @ip6_route_add(ptr noundef nonnull %2, i32 noundef 3264, ptr noundef null) #22
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #22
  br label %185

185:                                              ; preds = %172, %167, %41, %33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @init_loopback(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @rtnl_is_locked() #22
  %3 = icmp eq i32 %2, 0
  %4 = load i1, ptr @init_loopback.__already_done, align 1
  %5 = xor i1 %4, true
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %8, !prof !9

7:                                                ; preds = %1
  store i1 true, ptr @init_loopback.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3179, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str, i32 noundef 3179) #22
  br label %8

8:                                                ; preds = %7, %1
  %9 = tail call i32 @rtnl_is_locked() #22
  %10 = icmp eq i32 %9, 0
  %11 = load i1, ptr @ipv6_find_idev.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !9

14:                                               ; preds = %8
  store i1 true, ptr @ipv6_find_idev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 487, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str, i32 noundef 487) #22
  br label %15

15:                                               ; preds = %14, %8
  %16 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 69
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = tail call fastcc ptr @ipv6_add_dev(ptr noundef %0) #22
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %29, label %22

22:                                               ; preds = %19, %15
  %23 = phi ptr [ %17, %15 ], [ %20, %19 ]
  %24 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  tail call void @ipv6_mc_up(ptr noundef %23) #22
  br label %29

29:                                               ; preds = %28, %22, %19
  %30 = phi ptr [ %20, %19 ], [ %23, %28 ], [ %23, %22 ]
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call fastcc void @add_addr(ptr noundef %30, ptr noundef nonnull @in6addr_loopback, i32 noundef 128, i32 noundef 16)
  br label %33

33:                                               ; preds = %32, %29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @addrconf_dev_config(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @rtnl_is_locked() #22
  %3 = icmp eq i32 %2, 0
  %4 = load i1, ptr @addrconf_dev_config.__already_done, align 1
  %5 = xor i1 %4, true
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %8, !prof !9

7:                                                ; preds = %1
  store i1 true, ptr @addrconf_dev_config.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3357, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str, i32 noundef 3357) #22
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 32
  %10 = load i16, ptr %9, align 16
  switch i16 %10, label %11 [
    i16 1, label %23
    i16 774, label %23
    i16 7, label %23
    i16 32, label %23
    i16 24, label %23
    i16 769, label %23
    i16 825, label %23
    i16 768, label %23
    i16 -2, label %23
    i16 519, label %23
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 69
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  %16 = or i1 %14, %15
  br i1 %16, label %35, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 4097
  %21 = icmp eq i32 %20, 4097
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  tail call void @ipv6_mc_up(ptr noundef nonnull %13) #22
  br label %35

23:                                               ; preds = %8, %8, %8, %8, %8, %8, %8, %8, %8, %8
  %24 = tail call fastcc ptr @addrconf_add_dev(ptr noundef %0)
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = load i16, ptr %9, align 16
  %28 = icmp eq i16 %27, -2
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.inet6_dev, ptr %24, i32 0, i32 32, i32 45
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 3, ptr %30, align 4
  br label %34

34:                                               ; preds = %33, %29, %26
  tail call fastcc void @addrconf_addr_gen(ptr noundef %24)
  br label %35

35:                                               ; preds = %34, %23, %22, %17, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snmp6_unregister_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @addrconf_sysctl_unregister(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 32, i32 53
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 17
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ctl_table_header, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef nonnull %3) #22
  store ptr null, ptr %2, align 4
  tail call void @kfree(ptr noundef %10) #22
  tail call void @inet6_netconf_notify_devconf(ptr noundef nonnull @init_net, i32 noundef 81, i32 noundef 0, i32 noundef %8, ptr noundef null) #22
  br label %11

11:                                               ; preds = %5, %1
  %12 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 31
  %13 = load ptr, ptr %12, align 4
  tail call void @neigh_sysctl_unregister(ptr noundef %13) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @addrconf_sysctl_register(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(8) @.str.22) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(4) @.str.21) #22
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 31
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @neigh_sysctl_register(ptr noundef %2, ptr noundef %10, ptr noundef nonnull @ndisc_ifinfo_sysctl_change) #22
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 32
  %16 = tail call fastcc i32 @__addrconf_sysctl_register(ptr noundef nonnull @init_net, ptr noundef %14, ptr noundef %0, ptr noundef %15)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %9, align 4
  tail call void @neigh_sysctl_unregister(ptr noundef %19) #22
  br label %20

20:                                               ; preds = %18, %13, %8, %5, %1
  %21 = phi i32 [ -22, %5 ], [ %11, %8 ], [ %16, %18 ], [ 0, %13 ], [ -22, %1 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snmp6_register_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @addrconf_addr_gen(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.in6_addr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #22
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 15
  %5 = load i64, ptr %4, align 16
  %6 = and i64 %5, 262144
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 14
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 2048
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %8
  store i32 33022, ptr %2, align 4
  %14 = getelementptr inbounds i32, ptr %2, i32 1
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 2
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 3
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 32, i32 45
  %18 = load i32, ptr %17, align 4
  switch i32 %18, label %33 [
    i32 3, label %19
    i32 2, label %25
    i32 0, label %28
  ]

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 32, i32 40
  %21 = load i8, ptr %20, align 4, !range !19
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 32, i32 40, i32 1
  tail call void @get_random_bytes(ptr noundef %24, i32 noundef 16) #22
  store i8 1, ptr %20, align 4
  br label %25

25:                                               ; preds = %23, %19, %13
  %26 = call fastcc i32 @ipv6_generate_stable_address(ptr noundef nonnull %2, i8 noundef zeroext 0, ptr noundef %0)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %33

28:                                               ; preds = %13
  %29 = call fastcc i32 @ipv6_generate_eui64(ptr noundef %15, ptr noundef %3)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %25
  %32 = phi i32 [ 2048, %25 ], [ 0, %28 ]
  call void @addrconf_add_linklocal(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %32)
  br label %33

33:                                               ; preds = %31, %28, %25, %13, %8, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @add_addr(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.ifa6_config, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #22
  %6 = getelementptr inbounds i8, ptr %5, i32 28
  store i32 0, ptr %6, align 4, !annotation !15
  store ptr %1, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ifa6_config, ptr %5, i32 0, i32 1
  store i32 %2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ifa6_config, ptr %5, i32 0, i32 2
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ifa6_config, ptr %5, i32 0, i32 3
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ifa6_config, ptr %5, i32 0, i32 4
  store i32 128, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ifa6_config, ptr %5, i32 0, i32 5
  store i32 -1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ifa6_config, ptr %5, i32 0, i32 6
  store i32 -1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ifa6_config, ptr %5, i32 0, i32 7
  %14 = trunc i32 %3 to i16
  store i16 %14, ptr %13, align 4
  %15 = call fastcc ptr @ipv6_add_addr(ptr noundef %0, ptr noundef nonnull %5, i1 noundef zeroext true, ptr noundef null)
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %41, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.inet6_ifaddr, ptr %15, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %18) #22
  %19 = getelementptr inbounds %struct.inet6_ifaddr, ptr %15, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, -65
  store i32 %21, ptr %19, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %18) #22
  %22 = load ptr, ptr @__fib6_flush_trees, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  tail call void %22(ptr noundef nonnull @init_net) #22
  br label %25

25:                                               ; preds = %24, %17
  %26 = getelementptr inbounds %struct.inet6_ifaddr, ptr %15, i32 0, i32 16
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.inet6_dev, ptr %27, i32 0, i32 27
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32, !prof !10

31:                                               ; preds = %25
  tail call fastcc void @__ipv6_ifa_notify(i32 noundef 20, ptr noundef %15) #22
  br label %32

32:                                               ; preds = %31, %25
  %33 = getelementptr inbounds %struct.inet6_ifaddr, ptr %15, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #22, !srcloc !12
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #22, !srcloc !13
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = icmp sgt i32 %35, 0
  br i1 %38, label %41, label %39, !prof !10

39:                                               ; preds = %37
  tail call void @refcount_warn_saturate(ptr noundef %33, i32 noundef 3) #22
  br label %41

40:                                               ; preds = %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  tail call void @inet6_ifa_finish_destroy(ptr noundef %15) #22
  br label %41

41:                                               ; preds = %40, %39, %37, %4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_sysctl_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_sysctl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ndisc_ifinfo_sysctl_change(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_mc_remap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_mc_unmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dostring(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in6_pton(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @addrconf_disable_policy_idev(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 24
  tail call void @_raw_read_lock_bh(ptr noundef %3) #22
  %4 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %56, label %7

7:                                                ; preds = %2
  %8 = icmp eq i32 %1, 0
  %9 = select i1 %8, i8 0, i8 4
  %10 = select i1 %8, i16 0, i16 4
  br label %11

11:                                               ; preds = %51, %7
  %12 = phi ptr [ %5, %7 ], [ %54, %51 ]
  %13 = getelementptr i8, ptr %12, i32 -96
  tail call void @_raw_spin_lock(ptr noundef %13) #22
  %14 = getelementptr i8, ptr %12, i32 -12
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %51, label %17

17:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %18 = load ptr, ptr %14, align 8
  %19 = getelementptr inbounds %struct.fib6_info, ptr %18, i32 0, i32 18
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, -5
  %22 = or i8 %21, %9
  store i8 %22, ptr %19, align 1
  %23 = getelementptr inbounds %struct.fib6_info, ptr %15, i32 1, i32 9
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %50, label %26

26:                                               ; preds = %17
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %28 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #27
  %29 = icmp ult i32 %28, %27
  br i1 %29, label %30, label %50

30:                                               ; preds = %48, %26
  %31 = phi ptr [ %49, %48 ], [ %24, %26 ]
  %32 = phi i32 [ %46, %48 ], [ %28, %26 ]
  %33 = ptrtoint ptr %31 to i32
  %34 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, %33
  %37 = inttoptr i32 %36 to ptr
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.dst_entry, ptr %38, i32 0, i32 7
  %42 = load i16, ptr %41, align 4
  %43 = and i16 %42, -5
  %44 = or i16 %43, %10
  store i16 %44, ptr %41, align 4
  br label %45

45:                                               ; preds = %40, %30
  %46 = tail call i32 @cpumask_next(i32 noundef %32, ptr noundef nonnull @__cpu_possible_mask) #27
  %47 = icmp ult i32 %46, %27
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load ptr, ptr %23, align 4
  br label %30

50:                                               ; preds = %45, %26, %17
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  br label %51

51:                                               ; preds = %50, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !26
  %52 = load i16, ptr %13, align 4
  %53 = add i16 %52, 1
  store i16 %53, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !27
  %54 = load ptr, ptr %12, align 4
  %55 = icmp eq ptr %54, %4
  br i1 %55, label %56, label %11

56:                                               ; preds = %51, %2
  tail call void @_raw_read_unlock_bh(ptr noundef %3) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @addrconf_rs_timer(ptr noundef %0) #0 {
  %2 = alloca %struct.in6_addr, align 4
  %3 = getelementptr i8, ptr %0, i32 -616
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !15
  %5 = getelementptr i8, ptr %0, i32 -292
  tail call void @_raw_write_lock(ptr noundef %5) #22
  %6 = getelementptr i8, ptr %0, i32 -280
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %51

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 -284
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %51, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %0, i32 -244
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr i8, ptr %0, i32 -232
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 2
  %20 = icmp ne i32 %18, 0
  %21 = select i1 %16, i1 %20, i1 %19
  %22 = and i32 %11, 32
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %51

25:                                               ; preds = %13
  %26 = getelementptr i8, ptr %0, i32 24
  %27 = load i8, ptr %26, align 4
  %28 = add i8 %27, 1
  store i8 %28, ptr %26, align 4
  %29 = zext i8 %27 to i32
  %30 = getelementptr i8, ptr %0, i32 -216
  %31 = load i32, ptr %30, align 4
  %32 = icmp ugt i32 %31, %29
  br i1 %32, label %33, label %51

33:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !21
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %5, i32 0) #22, !srcloc !22
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !25
  %34 = call i32 @ipv6_get_lladdr(ptr noundef %4, ptr noundef nonnull %2, i32 noundef 64)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  call void @ndisc_send_rs(ptr noundef %4, ptr noundef nonnull %2, ptr noundef nonnull @in6addr_linklocal_allrouters) #22
  call void @_raw_write_lock(ptr noundef %5) #22
  %37 = getelementptr i8, ptr %0, i32 20
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr i8, ptr %0, i32 -208
  %40 = load i32, ptr %39, align 4
  %41 = call fastcc i32 @rfc3315_s14_backoff_update(i32 noundef %38, i32 noundef %40)
  store i32 %41, ptr %37, align 4
  %42 = load i8, ptr %26, align 4
  %43 = zext i8 %42 to i32
  %44 = load i32, ptr %30, align 4
  %45 = icmp eq i32 %44, %43
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = getelementptr i8, ptr %0, i32 -204
  %48 = load i32, ptr %47, align 4
  br label %49

49:                                               ; preds = %46, %36
  %50 = phi i32 [ %48, %46 ], [ %41, %36 ]
  call fastcc void @addrconf_mod_rs_timer(ptr noundef %3, i32 noundef %50)
  br label %51

51:                                               ; preds = %49, %25, %13, %9, %1
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !21
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %5, i32 0) #22, !srcloc !22
  call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !25
  br label %52

52:                                               ; preds = %51, %33
  %53 = getelementptr i8, ptr %0, i32 -288
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %53) #22, !srcloc !12
  %54 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %53, ptr %53, i32 1, ptr elementtype(i32) %53) #22, !srcloc !13
  %55 = extractvalue { i32, i32, i32 } %54, 0
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = icmp sgt i32 %55, 0
  br i1 %58, label %61, label %59, !prof !10

59:                                               ; preds = %57
  call void @refcount_warn_saturate(ptr noundef %53, i32 noundef 3) #22
  br label %61

60:                                               ; preds = %52
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  call void @in6_dev_finish_destroy(ptr noundef %3) #22
  br label %61

61:                                               ; preds = %60, %59, %57
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @neigh_parms_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_parms_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_mc_init_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_mc_destroy_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rfc3315_s14_backoff_update(i32 noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = tail call i32 @prandom_u32() #22
  %4 = urem i32 %3, 200001
  %5 = add nuw nsw i32 %4, 1900000
  %6 = zext i32 %5 to i64
  %7 = sext i32 %0 to i64
  %8 = mul nsw i64 %6, %7
  %9 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %8) #25, !srcloc !40
  %10 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %8, i64 %9, i32 0) #25, !srcloc !41
  %11 = extractvalue { i64, i32 } %10, 0
  %12 = lshr i64 %11, 18
  %13 = trunc i64 %12 to i32
  %14 = icmp sgt i32 %13, %1
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = tail call i32 @prandom_u32() #22
  %17 = urem i32 %16, 200001
  %18 = add nuw nsw i32 %17, 900000
  %19 = zext i32 %18 to i64
  %20 = sext i32 %1 to i64
  %21 = mul nsw i64 %19, %20
  %22 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %21) #25, !srcloc !40
  %23 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %21, i64 %22, i32 0) #25, !srcloc !41
  %24 = extractvalue { i64, i32 } %23, 0
  %25 = lshr i64 %24, 18
  %26 = trunc i64 %25 to i32
  br label %27

27:                                               ; preds = %15, %2
  %28 = phi i32 [ %26, %15 ], [ %13, %2 ]
  ret i32 %28
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #18

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet6_fill_link_af(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 69
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @inet6_fill_ifla6_attrs(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %2)
  %9 = icmp slt i32 %8, 0
  %10 = select i1 %9, i32 -90, i32 0
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ -61, %3 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @inet6_get_link_af_size(ptr noundef %0, i32 noundef %1) #20 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 69
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, i32 0, i32 648
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet6_validate_link_af(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [10 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !15
  %5 = icmp eq ptr %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 69
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %46, label %10

10:                                               ; preds = %6, %3
  %11 = phi ptr [ %8, %6 ], [ null, %3 ]
  %12 = getelementptr i8, ptr %1, i32 4
  %13 = load i16, ptr %1, align 2
  %14 = zext i16 %13 to i32
  %15 = add nsw i32 %14, -4
  %16 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef 9, ptr noundef %12, i32 noundef %15, ptr noundef nonnull @inet6_af_policy, i32 noundef 0, ptr noundef %2) #22
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %10
  %19 = getelementptr inbounds [10 x ptr], ptr %4, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ne ptr %20, null
  %22 = getelementptr inbounds [10 x ptr], ptr %4, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = icmp ne ptr %23, null
  %25 = select i1 %21, i1 true, i1 %24
  %26 = select i1 %25, i1 %24, i1 false
  %27 = select i1 %25, i32 0, i32 -22
  br i1 %26, label %28, label %46

28:                                               ; preds = %18
  %29 = getelementptr i8, ptr %23, i32 4
  %30 = load i8, ptr %29, align 1
  %31 = icmp ugt i8 %30, 3
  %32 = or i1 %5, %31
  %33 = select i1 %31, i32 -22, i32 0
  br i1 %32, label %46, label %34

34:                                               ; preds = %28
  %35 = icmp eq i8 %30, 2
  br i1 %35, label %36, label %46

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.inet6_dev, ptr %11, i32 0, i32 32, i32 40
  %38 = load i8, ptr %37, align 4, !range !19
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 3), align 4
  %42 = getelementptr inbounds %struct.ipv6_devconf, ptr %41, i32 0, i32 40
  %43 = load i8, ptr %42, align 4, !range !19
  %44 = icmp eq i8 %43, 0
  %45 = select i1 %44, i32 -22, i32 0
  br label %46

46:                                               ; preds = %40, %36, %34, %28, %18, %10, %6
  %47 = phi i32 [ -97, %6 ], [ %16, %10 ], [ %27, %18 ], [ %33, %28 ], [ 0, %36 ], [ 0, %34 ], [ %45, %40 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #22
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet6_set_link_af(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2) #0 {
  %4 = alloca %struct.in6_addr, align 4
  %5 = alloca [10 x ptr], align 4
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 69
  %7 = load volatile ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %5, i8 0, i32 40, i1 false), !annotation !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %129, label %9

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %1, i32 4
  %11 = load i16, ptr %1, align 2
  %12 = zext i16 %11 to i32
  %13 = add nsw i32 %12, -4
  %14 = call i32 @__nla_parse(ptr noundef nonnull %5, i32 noundef 9, ptr noundef %10, i32 noundef %13, ptr noundef null, i32 noundef 0, ptr noundef null) #22
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %129, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds [10 x ptr], ptr %5, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %120, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %18, i32 4
  %22 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #22, !annotation !15
  %23 = call i32 @rtnl_is_locked() #22
  %24 = icmp eq i32 %23, 0
  %25 = load i1, ptr @inet6_set_iftoken.__already_done, align 1
  %26 = xor i1 %25, true
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %29, !prof !9

28:                                               ; preds = %20
  store i1 true, ptr @inet6_set_iftoken.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5731, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str, i32 noundef 5731) #22
  br label %29

29:                                               ; preds = %28, %20
  %30 = icmp eq ptr %21, null
  br i1 %30, label %118, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 14
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  call void @do_trace_netlink_extack(ptr noundef nonnull @inet6_set_iftoken.__msg) #22
  %37 = icmp eq ptr %2, null
  br i1 %37, label %118, label %116

38:                                               ; preds = %31
  %39 = and i32 %33, 128
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  call void @do_trace_netlink_extack(ptr noundef nonnull @inet6_set_iftoken.__msg.83) #22
  %42 = icmp eq ptr %2, null
  br i1 %42, label %118, label %116

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.inet6_dev, ptr %7, i32 0, i32 32
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  %47 = getelementptr inbounds %struct.inet6_dev, ptr %7, i32 0, i32 32, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 2
  %50 = icmp ne i32 %48, 0
  %51 = select i1 %46, i1 %50, i1 %49
  br i1 %51, label %54, label %52

52:                                               ; preds = %43
  call void @do_trace_netlink_extack(ptr noundef nonnull @inet6_set_iftoken.__msg.84) #22
  %53 = icmp eq ptr %2, null
  br i1 %53, label %118, label %116

54:                                               ; preds = %43
  %55 = getelementptr inbounds %struct.inet6_dev, ptr %7, i32 0, i32 32, i32 7
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  call void @do_trace_netlink_extack(ptr noundef nonnull @inet6_set_iftoken.__msg.85) #22
  %59 = icmp eq ptr %2, null
  br i1 %59, label %118, label %116

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.inet6_dev, ptr %7, i32 0, i32 24
  call void @_raw_write_lock_bh(ptr noundef %61) #22
  %62 = getelementptr %struct.inet6_dev, ptr %7, i32 0, i32 30, i32 0, i32 0, i32 2
  %63 = getelementptr i8, ptr %18, i32 12
  %64 = load i64, ptr %63, align 1
  store i64 %64, ptr %62, align 1
  call void @_raw_write_unlock_bh(ptr noundef %61) #22
  %65 = load i32, ptr %21, align 4
  %66 = getelementptr i8, ptr %18, i32 8
  %67 = load i32, ptr %66, align 4
  %68 = or i32 %67, %65
  %69 = load i32, ptr %63, align 4
  %70 = or i32 %68, %69
  %71 = getelementptr i8, ptr %18, i32 16
  %72 = load i32, ptr %71, align 4
  %73 = or i32 %70, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %95, label %75

75:                                               ; preds = %60
  %76 = getelementptr inbounds %struct.inet6_dev, ptr %7, i32 0, i32 27
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.inet6_dev, ptr %7, i32 0, i32 26
  %81 = load i32, ptr %80, align 4
  %82 = icmp sgt i32 %81, -1
  br i1 %82, label %94, label %83

83:                                               ; preds = %79
  %84 = call i32 @ipv6_get_lladdr(ptr noundef %22, ptr noundef nonnull %4, i32 noundef 68) #22
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %83
  call void @ndisc_send_rs(ptr noundef %22, ptr noundef nonnull %4, ptr noundef nonnull @in6addr_linklocal_allrouters) #22
  call void @_raw_write_lock_bh(ptr noundef %61) #22
  %87 = load i32, ptr %80, align 4
  %88 = or i32 %87, 16
  store i32 %88, ptr %80, align 4
  %89 = getelementptr inbounds %struct.inet6_dev, ptr %7, i32 0, i32 32, i32 8
  %90 = load i32, ptr %89, align 4
  %91 = call fastcc i32 @rfc3315_s14_backoff_init(i32 noundef %90) #22
  %92 = getelementptr inbounds %struct.inet6_dev, ptr %7, i32 0, i32 35
  store i32 %91, ptr %92, align 4
  %93 = getelementptr inbounds %struct.inet6_dev, ptr %7, i32 0, i32 36
  store i8 1, ptr %93, align 4
  call fastcc void @addrconf_mod_rs_timer(ptr noundef nonnull %7, i32 noundef %91) #22
  br label %98

94:                                               ; preds = %79
  call void @_raw_write_lock_bh(ptr noundef %61) #22
  br label %98

95:                                               ; preds = %60
  call void @_raw_write_lock_bh(ptr noundef %61) #22
  br label %98

96:                                               ; preds = %75
  call void @_raw_write_lock_bh(ptr noundef %61) #22
  br label %98

97:                                               ; preds = %83
  call void @_raw_write_lock_bh(ptr noundef %61) #22
  br label %98

98:                                               ; preds = %97, %96, %95, %94, %86
  %99 = getelementptr inbounds %struct.inet6_dev, ptr %7, i32 0, i32 2
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, %99
  br i1 %101, label %119, label %102

102:                                              ; preds = %111, %98
  %103 = phi ptr [ %114, %111 ], [ %100, %98 ]
  %104 = getelementptr i8, ptr %103, i32 -96
  call void @_raw_spin_lock(ptr noundef %104) #22
  %105 = getelementptr i8, ptr %103, i32 24
  %106 = load i8, ptr %105, align 4, !range !19
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %102
  %109 = getelementptr i8, ptr %103, i32 -108
  store i32 0, ptr %109, align 8
  %110 = getelementptr i8, ptr %103, i32 -104
  store i32 0, ptr %110, align 4
  br label %111

111:                                              ; preds = %108, %102
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !26
  %112 = load i16, ptr %104, align 4
  %113 = add i16 %112, 1
  store i16 %113, ptr %104, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !27
  %114 = load ptr, ptr %103, align 4
  %115 = icmp eq ptr %114, %99
  br i1 %115, label %119, label %102

116:                                              ; preds = %58, %52, %41, %36
  %117 = phi ptr [ @inet6_set_iftoken.__msg, %36 ], [ @inet6_set_iftoken.__msg.83, %41 ], [ @inet6_set_iftoken.__msg.84, %52 ], [ @inet6_set_iftoken.__msg.85, %58 ]
  store ptr %117, ptr %2, align 4
  br label %118

118:                                              ; preds = %116, %58, %52, %41, %36, %29
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  br label %129

119:                                              ; preds = %111, %98
  call void @_raw_write_unlock_bh(ptr noundef %61) #22
  call void @inet6_ifinfo_notify(i32 noundef 16, ptr noundef nonnull %7) #22
  call fastcc void @addrconf_verify_rtnl() #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  br label %120

120:                                              ; preds = %119, %16
  %121 = getelementptr inbounds [10 x ptr], ptr %5, i32 0, i32 8
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %129, label %124

124:                                              ; preds = %120
  %125 = getelementptr i8, ptr %122, i32 4
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i32
  %128 = getelementptr inbounds %struct.inet6_dev, ptr %7, i32 0, i32 32, i32 45
  store i32 %127, ptr %128, align 4
  br label %129

129:                                              ; preds = %124, %120, %118, %9, %3
  %130 = phi i32 [ -97, %3 ], [ -22, %9 ], [ 0, %124 ], [ 0, %120 ], [ -22, %118 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #22
  ret i32 %130
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @modify_prefix_route(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.fib6_config, align 4
  %6 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 25
  %7 = select i1 %3, ptr %6, ptr %0
  %8 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 16
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = tail call fastcc ptr @addrconf_get_prefix_route(ptr noundef %7, i32 noundef %9, ptr noundef %12, i32 noundef 0, i32 noundef 65536, i1 noundef zeroext true)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %73, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.inet6_ifaddr, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 256, i32 %17
  %20 = getelementptr inbounds %struct.fib6_info, ptr %13, i32 0, i32 12
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %19
  br i1 %22, label %56, label %23

23:                                               ; preds = %15
  %24 = tail call i32 @ip6_del_rt(ptr noundef nonnull @init_net, ptr noundef nonnull %13, i1 noundef zeroext false) #22
  %25 = load i32, ptr %8, align 8
  %26 = load i32, ptr %16, align 4
  %27 = load ptr, ptr %10, align 4
  %28 = load ptr, ptr %27, align 4
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %5) #22
  %29 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(132) %29, i8 0, i64 132, i1 false) #22
  store i32 254, ptr %5, align 4
  %30 = getelementptr inbounds %struct.fib6_config, ptr %5, i32 0, i32 1
  %31 = icmp eq i32 %26, 0
  %32 = select i1 %31, i32 256, i32 %26
  store i32 %32, ptr %30, align 4
  %33 = getelementptr inbounds %struct.fib6_config, ptr %5, i32 0, i32 2
  store i32 %25, ptr %33, align 4
  %34 = getelementptr inbounds %struct.fib6_config, ptr %5, i32 0, i32 4
  %35 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 17
  %36 = load i32, ptr %35, align 4
  store i32 %36, ptr %34, align 4
  %37 = getelementptr inbounds %struct.fib6_config, ptr %5, i32 0, i32 5
  %38 = or i32 %2, 1
  store i32 %38, ptr %37, align 4
  %39 = getelementptr inbounds %struct.fib6_config, ptr %5, i32 0, i32 6
  store i32 2, ptr %39, align 4
  %40 = getelementptr inbounds %struct.fib6_config, ptr %5, i32 0, i32 7
  store i16 1, ptr %40, align 4
  %41 = getelementptr inbounds %struct.fib6_config, ptr %5, i32 0, i32 14
  store i32 %1, ptr %41, align 4
  %42 = getelementptr inbounds %struct.fib6_config, ptr %5, i32 0, i32 19, i32 1
  store ptr @init_net, ptr %42, align 4
  %43 = getelementptr inbounds %struct.fib6_config, ptr %5, i32 0, i32 10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %43, ptr noundef align 4 dereferenceable(16) %7, i32 16, i1 false) #22
  %44 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 32
  %45 = load i16, ptr %44, align 16
  %46 = icmp eq i16 %45, 776
  br i1 %46, label %47, label %54

47:                                               ; preds = %23
  %48 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 14
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, 16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = or i32 %2, 2097153
  store i32 %53, ptr %37, align 4
  br label %54

54:                                               ; preds = %52, %47, %23
  %55 = call i32 @ip6_route_add(ptr noundef nonnull %5, i32 noundef 3264, ptr noundef null) #22
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %5) #22
  br label %73

56:                                               ; preds = %15
  %57 = icmp eq i32 %1, 0
  %58 = getelementptr inbounds %struct.fib6_info, ptr %13, i32 0, i32 9
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, -4194305
  %61 = select i1 %57, i32 0, i32 4194304
  %62 = or i32 %60, %61
  store i32 %62, ptr %58, align 4
  %63 = getelementptr inbounds %struct.fib6_info, ptr %13, i32 0, i32 6
  store i32 %1, ptr %63, align 4
  %64 = getelementptr inbounds %struct.fib6_info, ptr %13, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %64) #22, !srcloc !12
  %65 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %64, ptr %64, i32 1, ptr elementtype(i32) %64) #22, !srcloc !13
  %66 = extractvalue { i32, i32, i32 } %65, 0
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %71, label %68

68:                                               ; preds = %56
  %69 = icmp sgt i32 %66, 0
  br i1 %69, label %73, label %70, !prof !10

70:                                               ; preds = %68
  tail call void @refcount_warn_saturate(ptr noundef %64, i32 noundef 3) #22
  br label %73

71:                                               ; preds = %56
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  %72 = getelementptr inbounds %struct.fib6_info, ptr %13, i32 0, i32 19
  tail call void @call_rcu(ptr noundef %72, ptr noundef nonnull @fib6_info_destroy_rcu) #22
  br label %73

73:                                               ; preds = %71, %70, %68, %54, %4
  %74 = phi i32 [ -2, %4 ], [ 0, %54 ], [ 0, %68 ], [ 0, %70 ], [ 0, %71 ]
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtnl_get_net_ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_unicast(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_strict_get_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nlmsg_parse_deprecated_strict(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #3 {
  %7 = load i32, ptr %0, align 4
  %8 = add i32 %1, 16
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #22
  %11 = icmp eq ptr %5, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %10
  store ptr @__nlmsg_parse.__msg, ptr %5, align 4
  br label %21

13:                                               ; preds = %6
  %14 = getelementptr i8, ptr %0, i32 16
  %15 = add i32 %1, 3
  %16 = and i32 %15, -4
  %17 = getelementptr i8, ptr %14, i32 %16
  %18 = sub i32 -16, %16
  %19 = add i32 %18, %7
  %20 = tail call i32 @__nla_parse(ptr noundef %2, i32 noundef %3, ptr noundef %17, i32 noundef %19, ptr noundef %4, i32 noundef 3, ptr noundef %5) #22
  br label %21

21:                                               ; preds = %13, %12, %10
  %22 = phi i32 [ %20, %13 ], [ -22, %12 ], [ -22, %10 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @inet6_dump_addr(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [11 x ptr], align 4
  %5 = alloca %struct.inet6_fill_args, align 4
  %6 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #22
  %8 = load ptr, ptr %1, align 4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 3, i32 12
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %5, align 4
  %11 = getelementptr inbounds %struct.inet6_fill_args, ptr %5, i32 0, i32 1
  %12 = getelementptr inbounds %struct.nlmsghdr, ptr %7, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.inet6_fill_args, ptr %5, i32 0, i32 2
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.inet6_fill_args, ptr %5, i32 0, i32 3
  store i32 2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.inet6_fill_args, ptr %5, i32 0, i32 4
  store i32 -1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.inet6_fill_args, ptr %5, i32 0, i32 5
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.inet6_fill_args, ptr %5, i32 0, i32 6
  store i32 %2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 13
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr %struct.netlink_callback, ptr %1, i32 0, i32 13, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 12
  %26 = load i8, ptr %25, align 4, !range !19
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %143, label %28

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %4, i8 0, i32 44, i1 false) #22, !annotation !15
  %33 = load i32, ptr %7, align 4
  %34 = icmp ult i32 %33, 24
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @inet6_valid_dump_ifaddr_req.__msg) #22
  %36 = icmp eq ptr %32, null
  br i1 %36, label %124, label %122

37:                                               ; preds = %28
  %38 = getelementptr i8, ptr %7, i32 17
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = getelementptr i8, ptr %7, i32 18
  %43 = load i8, ptr %42, align 2
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = getelementptr i8, ptr %7, i32 19
  %47 = load i8, ptr %46, align 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45, %41, %37
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @inet6_valid_dump_ifaddr_req.__msg.90) #22
  %50 = icmp eq ptr %32, null
  br i1 %50, label %124, label %122

51:                                               ; preds = %45
  %52 = getelementptr i8, ptr %7, i32 20
  %53 = load i32, ptr %52, align 4
  store i32 %53, ptr %17, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 8
  %57 = load i16, ptr %56, align 2
  %58 = or i16 %57, 32
  store i16 %58, ptr %56, align 2
  store i32 34, ptr %15, align 4
  %59 = load i32, ptr %7, align 4
  %60 = icmp ult i32 %59, 24
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #22
  %62 = icmp eq ptr %32, null
  br i1 %62, label %124, label %122

63:                                               ; preds = %55, %51
  %64 = phi i32 [ %59, %55 ], [ %33, %51 ]
  %65 = getelementptr i8, ptr %7, i32 24
  %66 = add i32 %64, -24
  %67 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef 10, ptr noundef %65, i32 noundef %66, ptr noundef nonnull @ifa_ipv6_policy, i32 noundef 3, ptr noundef %32) #22
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %124, label %69

69:                                               ; preds = %63
  %70 = load ptr, ptr %4, align 4
  %71 = icmp eq ptr %70, null
  %72 = getelementptr inbounds [11 x ptr], ptr %4, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  %75 = select i1 %71, i1 %74, i1 false
  %76 = getelementptr inbounds [11 x ptr], ptr %4, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  %79 = select i1 %75, i1 %78, i1 false
  %80 = getelementptr inbounds [11 x ptr], ptr %4, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  %83 = select i1 %79, i1 %82, i1 false
  %84 = getelementptr inbounds [11 x ptr], ptr %4, i32 0, i32 4
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  %87 = select i1 %83, i1 %86, i1 false
  %88 = getelementptr inbounds [11 x ptr], ptr %4, i32 0, i32 5
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  %91 = select i1 %87, i1 %90, i1 false
  %92 = getelementptr inbounds [11 x ptr], ptr %4, i32 0, i32 6
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  %95 = select i1 %91, i1 %94, i1 false
  %96 = getelementptr inbounds [11 x ptr], ptr %4, i32 0, i32 7
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  %99 = select i1 %95, i1 %98, i1 false
  %100 = getelementptr inbounds [11 x ptr], ptr %4, i32 0, i32 8
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  %103 = select i1 %99, i1 %102, i1 false
  %104 = getelementptr inbounds [11 x ptr], ptr %4, i32 0, i32 9
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  %107 = select i1 %103, i1 %106, i1 false
  br i1 %107, label %118, label %116

108:                                              ; preds = %118
  %109 = getelementptr i8, ptr %120, i32 4
  %110 = load i32, ptr %109, align 4
  store i32 %110, ptr %16, align 4
  %111 = call ptr @rtnl_get_net_ns_capable(ptr noundef %30, i32 noundef %110) #22
  %112 = icmp ugt ptr %111, inttoptr (i32 -4096 to ptr)
  br i1 %112, label %113, label %126

113:                                              ; preds = %108
  store i32 -1, ptr %16, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @inet6_valid_dump_ifaddr_req.__msg.91) #22
  %114 = icmp eq ptr %32, null
  br i1 %114, label %128, label %115

115:                                              ; preds = %113
  store ptr @inet6_valid_dump_ifaddr_req.__msg.91, ptr %32, align 4
  br label %128

116:                                              ; preds = %69
  call void @do_trace_netlink_extack(ptr noundef nonnull @inet6_valid_dump_ifaddr_req.__msg.92) #22
  %117 = icmp eq ptr %32, null
  br i1 %117, label %124, label %122

118:                                              ; preds = %69
  %119 = getelementptr inbounds [11 x ptr], ptr %4, i32 0, i32 10
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %126, label %108

122:                                              ; preds = %116, %61, %49, %35
  %123 = phi ptr [ @inet6_valid_dump_ifaddr_req.__msg, %35 ], [ @inet6_valid_dump_ifaddr_req.__msg.90, %49 ], [ @__nlmsg_parse.__msg, %61 ], [ @inet6_valid_dump_ifaddr_req.__msg.92, %116 ]
  store ptr %123, ptr %32, align 4
  br label %124

124:                                              ; preds = %122, %116, %63, %61, %49, %35
  %125 = phi i32 [ -22, %61 ], [ -22, %116 ], [ %67, %63 ], [ -22, %49 ], [ -22, %35 ], [ -22, %122 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #22
  br label %199

126:                                              ; preds = %118, %108
  %127 = phi ptr [ %111, %108 ], [ @init_net, %118 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #22
  br label %131

128:                                              ; preds = %115, %113
  %129 = ptrtoint ptr %111 to i32
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #22
  %130 = icmp slt ptr %111, null
  br i1 %130, label %199, label %131

131:                                              ; preds = %128, %126
  %132 = phi ptr [ %127, %126 ], [ @init_net, %128 ]
  br i1 %54, label %143, label %133

133:                                              ; preds = %131
  %134 = call ptr @__dev_get_by_index(ptr noundef %132, i32 noundef %53) #22
  %135 = icmp eq ptr %134, null
  br i1 %135, label %199, label %136

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.net_device, ptr %134, i32 0, i32 69
  %138 = load volatile ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %199, label %140

140:                                              ; preds = %136
  %141 = call fastcc i32 @in6_dump_addrs(ptr noundef nonnull %138, ptr noundef %0, ptr noundef %1, i32 noundef %24, ptr noundef nonnull %5)
  %142 = call i32 @llvm.smin.i32(i32 %141, i32 0)
  br label %199

143:                                              ; preds = %131, %3
  %144 = phi ptr [ @init_net, %3 ], [ %132, %131 ]
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !16
  %145 = getelementptr inbounds %struct.net, ptr %144, i32 0, i32 36, i32 29
  %146 = load volatile i32, ptr %145, align 4
  %147 = getelementptr inbounds %struct.net, ptr %144, i32 0, i32 3
  %148 = load i32, ptr %147, align 4
  %149 = xor i32 %148, %146
  %150 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 11
  store i32 %149, ptr %150, align 4
  %151 = icmp slt i32 %20, 256
  br i1 %151, label %152, label %196

152:                                              ; preds = %143
  %153 = getelementptr inbounds %struct.net, ptr %144, i32 0, i32 24
  br label %154

154:                                              ; preds = %191, %152
  %155 = phi i32 [ %22, %152 ], [ 0, %191 ]
  %156 = phi i32 [ %24, %152 ], [ %192, %191 ]
  %157 = phi i32 [ %20, %152 ], [ %194, %191 ]
  %158 = load ptr, ptr %153, align 4
  %159 = getelementptr %struct.hlist_head, ptr %158, i32 %157
  %160 = load volatile ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  %162 = getelementptr i8, ptr %160, i32 -560
  %163 = icmp eq ptr %162, null
  %164 = or i1 %161, %163
  br i1 %164, label %191, label %165

165:                                              ; preds = %154
  %166 = icmp sgt i32 %157, %20
  br label %167

167:                                              ; preds = %182, %165
  %168 = phi i32 [ 0, %165 ], [ %184, %182 ]
  %169 = phi i32 [ %156, %165 ], [ %183, %182 ]
  %170 = phi ptr [ %162, %165 ], [ %188, %182 ]
  %171 = icmp slt i32 %168, %155
  br i1 %171, label %182, label %172

172:                                              ; preds = %167
  %173 = icmp sgt i32 %168, %155
  %174 = select i1 %166, i1 true, i1 %173
  %175 = select i1 %174, i32 0, i32 %169
  %176 = getelementptr inbounds %struct.net_device, ptr %170, i32 0, i32 69
  %177 = load volatile ptr, ptr %176, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %182, label %179

179:                                              ; preds = %172
  %180 = call fastcc i32 @in6_dump_addrs(ptr noundef nonnull %177, ptr noundef %0, ptr noundef %1, i32 noundef %175, ptr noundef nonnull %5)
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %196, label %182

182:                                              ; preds = %179, %172, %167
  %183 = phi i32 [ %169, %167 ], [ %175, %179 ], [ %175, %172 ]
  %184 = add i32 %168, 1
  %185 = getelementptr inbounds %struct.net_device, ptr %170, i32 0, i32 85
  %186 = load volatile ptr, ptr %185, align 16
  %187 = icmp eq ptr %186, null
  %188 = getelementptr i8, ptr %186, i32 -560
  %189 = icmp eq ptr %188, null
  %190 = or i1 %187, %189
  br i1 %190, label %191, label %167

191:                                              ; preds = %182, %154
  %192 = phi i32 [ %156, %154 ], [ %183, %182 ]
  %193 = phi i32 [ 0, %154 ], [ %184, %182 ]
  %194 = add nsw i32 %157, 1
  %195 = icmp eq i32 %194, 256
  br i1 %195, label %196, label %154

196:                                              ; preds = %191, %179, %143
  %197 = phi i32 [ %20, %143 ], [ %157, %179 ], [ 256, %191 ]
  %198 = phi i32 [ %22, %143 ], [ %168, %179 ], [ %193, %191 ]
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  store i32 %197, ptr %19, align 4
  store i32 %198, ptr %21, align 4
  br label %199

199:                                              ; preds = %196, %140, %136, %133, %128, %124
  %200 = phi i32 [ %129, %128 ], [ %142, %140 ], [ 0, %136 ], [ 0, %196 ], [ -19, %133 ], [ %125, %124 ]
  %201 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %202 = load i32, ptr %201, align 8
  %203 = icmp eq i32 %202, 0
  %204 = select i1 %203, i32 %200, i32 %202
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #22
  ret i32 %204
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @in6_dump_addrs(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.ifa_cacheinfo, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifa_cacheinfo, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 24
  tail call void @_raw_read_lock_bh(ptr noundef %10) #22
  %11 = getelementptr inbounds %struct.inet6_fill_args, ptr %4, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %292 [
    i32 0, label %13
    i32 1, label %49
    i32 2, label %152
  ]

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.inet6_fill_args, ptr %4, i32 0, i32 2
  store i32 20, ptr %14, align 4
  %15 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %292, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %20 = getelementptr inbounds %struct.netlink_callback, ptr %2, i32 0, i32 10
  %21 = getelementptr inbounds %struct.netlink_callback, ptr %2, i32 0, i32 11
  br label %22

22:                                               ; preds = %44, %18
  %23 = phi ptr [ %16, %18 ], [ %47, %44 ]
  %24 = phi i32 [ 0, %18 ], [ %46, %44 ]
  %25 = phi i32 [ 1, %18 ], [ %45, %44 ]
  %26 = icmp slt i32 %24, %3
  br i1 %26, label %44, label %27

27:                                               ; preds = %22
  %28 = getelementptr i8, ptr %23, i32 -132
  %29 = tail call fastcc i32 @inet6_fill_ifaddr(ptr noundef %1, ptr noundef %28, ptr noundef %4)
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %292, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %19, align 4
  %33 = load i32, ptr %20, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %21, align 4
  %37 = icmp eq i32 %36, %33
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.nlmsghdr, ptr %32, i32 0, i32 2
  %40 = load i16, ptr %39, align 2
  %41 = or i16 %40, 16
  store i16 %41, ptr %39, align 2
  br label %42

42:                                               ; preds = %38, %35, %31
  %43 = load i32, ptr %21, align 4
  store i32 %43, ptr %20, align 4
  br label %44

44:                                               ; preds = %42, %22
  %45 = phi i32 [ %25, %22 ], [ %29, %42 ]
  %46 = add i32 %24, 1
  %47 = load ptr, ptr %23, align 4
  %48 = icmp eq ptr %47, %15
  br i1 %48, label %292, label %22

49:                                               ; preds = %5
  tail call void @_raw_read_unlock_bh(ptr noundef %10) #22
  %50 = getelementptr inbounds %struct.inet6_fill_args, ptr %4, i32 0, i32 2
  store i32 58, ptr %50, align 4
  %51 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 3
  %52 = load volatile ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %149, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.inet6_fill_args, ptr %4, i32 0, i32 1
  %56 = getelementptr inbounds %struct.inet6_fill_args, ptr %4, i32 0, i32 3
  %57 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %58 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %59 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %60 = getelementptr inbounds %struct.inet6_fill_args, ptr %4, i32 0, i32 4
  %61 = getelementptr inbounds %struct.ifa_cacheinfo, ptr %8, i32 0, i32 2
  %62 = getelementptr inbounds %struct.ifa_cacheinfo, ptr %8, i32 0, i32 3
  %63 = getelementptr inbounds %struct.ifa_cacheinfo, ptr %8, i32 0, i32 1
  br label %64

64:                                               ; preds = %135, %54
  %65 = phi ptr [ %52, %54 ], [ %139, %135 ]
  %66 = phi i32 [ 0, %54 ], [ %138, %135 ]
  %67 = phi i32 [ 1, %54 ], [ %136, %135 ]
  %68 = icmp slt i32 %66, %3
  br i1 %68, label %135, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.ifmcaddr6, ptr %65, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.net_device, ptr %72, i32 0, i32 17
  %74 = load i32, ptr %73, align 4
  %75 = call i32 @__ipv6_addr_type(ptr noundef nonnull %65) #22
  %76 = and i32 %75, 64
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %77, i8 0, i8 -56
  %79 = load i32, ptr %4, align 4
  %80 = load i32, ptr %55, align 4
  %81 = load i32, ptr %50, align 4
  %82 = load i32, ptr %56, align 4
  %83 = load i32, ptr %57, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %149

85:                                               ; preds = %69
  %86 = load ptr, ptr %58, align 4
  %87 = load ptr, ptr %59, align 8
  %88 = ptrtoint ptr %86 to i32
  %89 = ptrtoint ptr %87 to i32
  %90 = sub i32 %88, %89
  %91 = icmp slt i32 %90, 24
  br i1 %91, label %149, label %92, !prof !9

92:                                               ; preds = %85
  %93 = call ptr @__nlmsg_put(ptr noundef %1, i32 noundef %79, i32 noundef %80, i32 noundef %81, i32 noundef 8, i32 noundef %82) #22
  %94 = icmp eq ptr %93, null
  br i1 %94, label %149, label %95

95:                                               ; preds = %92
  %96 = load i32, ptr %60, align 4
  %97 = icmp sgt i32 %96, -1
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  store i32 %96, ptr %9, align 4
  %99 = call i32 @nla_put(ptr noundef %1, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %103 = load ptr, ptr %102, align 4
  %104 = icmp ugt ptr %103, %93
  br i1 %104, label %141, label %144, !prof !9

105:                                              ; preds = %98, %95
  %106 = getelementptr i8, ptr %93, i32 16
  store i8 10, ptr %106, align 4
  %107 = getelementptr i8, ptr %93, i32 17
  store i8 -128, ptr %107, align 1
  %108 = getelementptr i8, ptr %93, i32 18
  store i8 -128, ptr %108, align 2
  %109 = getelementptr i8, ptr %93, i32 19
  store i8 %78, ptr %109, align 1
  %110 = getelementptr i8, ptr %93, i32 20
  store i32 %74, ptr %110, align 4
  %111 = call i32 @nla_put(ptr noundef %1, i32 noundef 7, i32 noundef 16, ptr noundef nonnull %65) #22
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %126, label %113

113:                                              ; preds = %105
  %114 = getelementptr inbounds %struct.ifmcaddr6, ptr %65, i32 0, i32 12
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr inbounds %struct.ifmcaddr6, ptr %65, i32 0, i32 13
  %117 = load i32, ptr %116, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #22
  %118 = mul i32 %115, 100
  %119 = add i32 %118, 3000000
  %120 = udiv i32 %119, 100
  store i32 %120, ptr %61, align 4
  %121 = mul i32 %117, 100
  %122 = add i32 %121, 3000000
  %123 = udiv i32 %122, 100
  store i32 %123, ptr %62, align 4
  store i32 -1, ptr %8, align 4
  store i32 -1, ptr %63, align 4
  %124 = call i32 @nla_put(ptr noundef %1, i32 noundef 6, i32 noundef 16, ptr noundef nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #22
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %113, %105
  %127 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %128 = load ptr, ptr %127, align 4
  %129 = icmp ugt ptr %128, %93
  br i1 %129, label %141, label %144, !prof !9

130:                                              ; preds = %113
  %131 = load ptr, ptr %59, align 8
  %132 = ptrtoint ptr %131 to i32
  %133 = ptrtoint ptr %93 to i32
  %134 = sub i32 %132, %133
  store i32 %134, ptr %93, align 4
  br label %135

135:                                              ; preds = %130, %64
  %136 = phi i32 [ %67, %64 ], [ 0, %130 ]
  %137 = getelementptr inbounds %struct.ifmcaddr6, ptr %65, i32 0, i32 2
  %138 = add i32 %66, 1
  %139 = load volatile ptr, ptr %137, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %149, label %64

141:                                              ; preds = %126, %101
  %142 = phi ptr [ %102, %101 ], [ %127, %126 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 991, i32 noundef 9, ptr noundef null) #22
  %143 = load ptr, ptr %142, align 4
  br label %144

144:                                              ; preds = %141, %126, %101
  %145 = phi ptr [ %103, %101 ], [ %128, %126 ], [ %143, %141 ]
  %146 = ptrtoint ptr %93 to i32
  %147 = ptrtoint ptr %145 to i32
  %148 = sub i32 %146, %147
  call void @skb_trim(ptr noundef %1, i32 noundef %148) #22
  br label %149

149:                                              ; preds = %144, %135, %92, %85, %69, %49
  %150 = phi i32 [ 0, %49 ], [ %66, %144 ], [ %138, %135 ], [ %66, %92 ], [ %66, %85 ], [ %66, %69 ]
  %151 = phi i32 [ 1, %49 ], [ -90, %144 ], [ %136, %135 ], [ -90, %92 ], [ -90, %85 ], [ -90, %69 ]
  call void @_raw_read_lock_bh(ptr noundef %10) #22
  br label %292

152:                                              ; preds = %5
  %153 = getelementptr inbounds %struct.inet6_fill_args, ptr %4, i32 0, i32 2
  store i32 62, ptr %153, align 4
  %154 = getelementptr inbounds %struct.inet6_dev, ptr %0, i32 0, i32 23
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %292, label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.inet6_fill_args, ptr %4, i32 0, i32 1
  %159 = getelementptr inbounds %struct.inet6_fill_args, ptr %4, i32 0, i32 3
  %160 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %161 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %162 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %163 = getelementptr inbounds %struct.inet6_fill_args, ptr %4, i32 0, i32 4
  %164 = getelementptr inbounds %struct.ifa_cacheinfo, ptr %6, i32 0, i32 2
  %165 = getelementptr inbounds %struct.ifa_cacheinfo, ptr %6, i32 0, i32 3
  %166 = getelementptr inbounds %struct.ifa_cacheinfo, ptr %6, i32 0, i32 1
  br label %167

167:                                              ; preds = %286, %157
  %168 = phi ptr [ %155, %157 ], [ %290, %286 ]
  %169 = phi i32 [ 0, %157 ], [ %289, %286 ]
  %170 = phi i32 [ 1, %157 ], [ %287, %286 ]
  %171 = icmp slt i32 %169, %3
  br i1 %171, label %286, label %172

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.ifacaddr6, ptr %168, i32 0, i32 1
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.fib6_info, ptr %174, i32 0, i32 20
  %176 = load ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %201, label %178

178:                                              ; preds = %172
  %179 = getelementptr inbounds %struct.nexthop, ptr %176, i32 0, i32 9
  %180 = load i8, ptr %179, align 2, !range !19
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %192, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.nexthop, ptr %176, i32 0, i32 12
  %184 = load volatile ptr, ptr %183, align 4
  %185 = getelementptr inbounds %struct.nh_group, ptr %184, i32 0, i32 1
  %186 = load i16, ptr %185, align 4
  %187 = icmp eq i16 %186, 0
  br i1 %187, label %203, label %188

188:                                              ; preds = %182
  %189 = getelementptr inbounds %struct.nh_group, ptr %184, i32 0, i32 8
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %203, label %192

192:                                              ; preds = %188, %178
  %193 = phi ptr [ %190, %188 ], [ %176, %178 ]
  %194 = getelementptr inbounds %struct.nexthop, ptr %193, i32 0, i32 12
  %195 = load volatile ptr, ptr %194, align 4
  %196 = getelementptr inbounds %struct.nh_info, ptr %195, i32 0, i32 2
  %197 = load i8, ptr %196, align 4
  %198 = icmp eq i8 %197, 10
  %199 = getelementptr inbounds %struct.nh_info, ptr %195, i32 0, i32 5
  %200 = select i1 %198, ptr %199, ptr null
  br label %203

201:                                              ; preds = %172
  %202 = getelementptr inbounds %struct.fib6_info, ptr %174, i32 0, i32 21
  br label %203

203:                                              ; preds = %201, %192, %188, %182
  %204 = phi ptr [ %202, %201 ], [ null, %188 ], [ %200, %192 ], [ null, %182 ]
  %205 = load ptr, ptr %204, align 4
  %206 = icmp eq ptr %205, null
  br i1 %206, label %210, label %207

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.net_device, ptr %205, i32 0, i32 17
  %209 = load i32, ptr %208, align 4
  br label %210

210:                                              ; preds = %207, %203
  %211 = phi i32 [ %209, %207 ], [ 1, %203 ]
  %212 = call i32 @__ipv6_addr_type(ptr noundef nonnull %168) #22
  %213 = and i32 %212, 64
  %214 = icmp eq i32 %213, 0
  %215 = select i1 %214, i8 0, i8 -56
  %216 = load i32, ptr %4, align 4
  %217 = load i32, ptr %158, align 4
  %218 = load i32, ptr %153, align 4
  %219 = load i32, ptr %159, align 4
  %220 = load i32, ptr %160, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %292

222:                                              ; preds = %210
  %223 = load ptr, ptr %161, align 4
  %224 = load ptr, ptr %162, align 8
  %225 = ptrtoint ptr %223 to i32
  %226 = ptrtoint ptr %224 to i32
  %227 = sub i32 %225, %226
  %228 = icmp slt i32 %227, 24
  br i1 %228, label %292, label %229, !prof !9

229:                                              ; preds = %222
  %230 = call ptr @__nlmsg_put(ptr noundef %1, i32 noundef %216, i32 noundef %217, i32 noundef %218, i32 noundef 8, i32 noundef %219) #22
  %231 = icmp eq ptr %230, null
  br i1 %231, label %292, label %232

232:                                              ; preds = %229
  %233 = load i32, ptr %163, align 4
  %234 = icmp sgt i32 %233, -1
  br i1 %234, label %235, label %249

235:                                              ; preds = %232
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  store i32 %233, ptr %7, align 4
  %236 = call i32 @nla_put(ptr noundef %1, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %249, label %238

238:                                              ; preds = %235
  %239 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %240 = load ptr, ptr %239, align 4
  %241 = icmp ugt ptr %240, %230
  br i1 %241, label %242, label %244, !prof !9

242:                                              ; preds = %238
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 991, i32 noundef 9, ptr noundef null) #22
  %243 = load ptr, ptr %239, align 4
  br label %244

244:                                              ; preds = %242, %238
  %245 = phi ptr [ %243, %242 ], [ %240, %238 ]
  %246 = ptrtoint ptr %230 to i32
  %247 = ptrtoint ptr %245 to i32
  %248 = sub i32 %246, %247
  call void @skb_trim(ptr noundef %1, i32 noundef %248) #22
  br label %292

249:                                              ; preds = %235, %232
  %250 = getelementptr i8, ptr %230, i32 16
  store i8 10, ptr %250, align 4
  %251 = getelementptr i8, ptr %230, i32 17
  store i8 -128, ptr %251, align 1
  %252 = getelementptr i8, ptr %230, i32 18
  store i8 -128, ptr %252, align 2
  %253 = getelementptr i8, ptr %230, i32 19
  store i8 %215, ptr %253, align 1
  %254 = getelementptr i8, ptr %230, i32 20
  store i32 %211, ptr %254, align 4
  %255 = call i32 @nla_put(ptr noundef %1, i32 noundef 5, i32 noundef 16, ptr noundef nonnull %168) #22
  %256 = icmp slt i32 %255, 0
  br i1 %256, label %270, label %257

257:                                              ; preds = %249
  %258 = getelementptr inbounds %struct.ifacaddr6, ptr %168, i32 0, i32 6
  %259 = load i32, ptr %258, align 4
  %260 = getelementptr inbounds %struct.ifacaddr6, ptr %168, i32 0, i32 7
  %261 = load i32, ptr %260, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #22
  %262 = mul i32 %259, 100
  %263 = add i32 %262, 3000000
  %264 = udiv i32 %263, 100
  store i32 %264, ptr %164, align 4
  %265 = mul i32 %261, 100
  %266 = add i32 %265, 3000000
  %267 = udiv i32 %266, 100
  store i32 %267, ptr %165, align 4
  store i32 -1, ptr %6, align 4
  store i32 -1, ptr %166, align 4
  %268 = call i32 @nla_put(ptr noundef %1, i32 noundef 6, i32 noundef 16, ptr noundef nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #22
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %281

270:                                              ; preds = %257, %249
  %271 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %272 = load ptr, ptr %271, align 4
  %273 = icmp ugt ptr %272, %230
  br i1 %273, label %274, label %276, !prof !9

274:                                              ; preds = %270
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 991, i32 noundef 9, ptr noundef null) #22
  %275 = load ptr, ptr %271, align 4
  br label %276

276:                                              ; preds = %274, %270
  %277 = phi ptr [ %275, %274 ], [ %272, %270 ]
  %278 = ptrtoint ptr %230 to i32
  %279 = ptrtoint ptr %277 to i32
  %280 = sub i32 %278, %279
  call void @skb_trim(ptr noundef %1, i32 noundef %280) #22
  br label %292

281:                                              ; preds = %257
  %282 = load ptr, ptr %162, align 8
  %283 = ptrtoint ptr %282 to i32
  %284 = ptrtoint ptr %230 to i32
  %285 = sub i32 %283, %284
  store i32 %285, ptr %230, align 4
  br label %286

286:                                              ; preds = %281, %167
  %287 = phi i32 [ %170, %167 ], [ 0, %281 ]
  %288 = getelementptr inbounds %struct.ifacaddr6, ptr %168, i32 0, i32 2
  %289 = add i32 %169, 1
  %290 = load ptr, ptr %288, align 4
  %291 = icmp eq ptr %290, null
  br i1 %291, label %292, label %167

292:                                              ; preds = %286, %276, %244, %229, %222, %210, %152, %149, %44, %27, %13, %5
  %293 = phi i32 [ 1, %5 ], [ %151, %149 ], [ -90, %244 ], [ -90, %276 ], [ 1, %13 ], [ 1, %152 ], [ %29, %27 ], [ %45, %44 ], [ %287, %286 ], [ -90, %229 ], [ -90, %222 ], [ -90, %210 ]
  %294 = phi i32 [ 0, %5 ], [ %150, %149 ], [ %169, %244 ], [ %169, %276 ], [ 0, %13 ], [ 0, %152 ], [ %24, %27 ], [ %46, %44 ], [ %289, %286 ], [ %169, %229 ], [ %169, %222 ], [ %169, %210 ]
  call void @_raw_read_unlock_bh(ptr noundef %10) #22
  %295 = getelementptr %struct.netlink_callback, ptr %2, i32 0, i32 13, i32 0, i32 2
  store i32 %294, ptr %295, align 4
  ret i32 %293
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt6_disable_ip(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_ac_destroy_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv6_mc_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_ifdown(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @addrconf_verify_work(ptr nocapture noundef readnone %0) #0 {
  tail call void @rtnl_lock() #22
  tail call fastcc void @addrconf_verify_rtnl()
  tail call void @rtnl_unlock() #22
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { inlinehint nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { nounwind readonly }
attributes #19 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #20 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #21 = { argmemonly nofree nounwind readonly willreturn }
attributes #22 = { nounwind }
attributes #23 = { cold nounwind }
attributes #24 = { nounwind allocsize(2) }
attributes #25 = { nounwind readnone }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind readonly willreturn }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148196351}
!12 = !{i64 592512, i64 2148082483, i64 2148082509, i64 2148082556, i64 2148082578, i64 2148082606, i64 2148082626}
!13 = !{i64 2148098510, i64 2148098542, i64 2148098571, i64 2148098605, i64 2148098636, i64 2148098659}
!14 = !{i64 2149487062}
!15 = !{!"auto-init"}
!16 = !{i64 2149060537}
!17 = !{i64 2149060754}
!18 = !{i64 2148096153, i64 2148096185, i64 2148096214, i64 2148096248, i64 2148096279, i64 2148096302}
!19 = !{i8 0, i8 2}
!20 = !{i64 2148905807}
!21 = !{i64 2149420224}
!22 = !{i64 1923438}
!23 = !{i64 2149408971}
!24 = !{i64 2149409046, i64 2149409073, i64 2149409120, i64 2149409142, i64 2149409170, i64 2149409190}
!25 = !{i64 2149458193}
!26 = !{i64 2149413147}
!27 = !{i64 2149436150}
!28 = !{i64 578575, i64 578599, i64 578620, i64 578637, i64 578654}
!29 = !{i64 2150139764, i64 2150139789}
!30 = !{i64 2635876}
!31 = !{i64 2636073}
!32 = !{i64 2150121352}
!33 = !{i64 487751, i64 487812}
!34 = !{i64 506451}
!35 = !{i64 490768}
!36 = !{i64 2157488173}
!37 = !{i32 0, i32 33}
!38 = !{i64 2149161841}
!39 = !{i64 2149085778}
!40 = !{i64 1022044, i64 1022071}
!41 = !{i64 1022739, i64 1022766, i64 1022799, i64 1022820, i64 1022847, i64 1022873}
!42 = !{i64 2158096947, i64 2158101493, i64 2158096984, i64 2158097040, i64 2158097074, i64 2158097098, i64 2158097139, i64 2158097160, i64 2158097188, i64 2158097222}
!43 = !{i64 2158104512, i64 2158104997, i64 2158104549, i64 2158104605, i64 2158104639, i64 2158104663, i64 2158104704, i64 2158104725, i64 2158104753, i64 2158104787}
!44 = !{i64 2158102660, i64 2158103145, i64 2158102697, i64 2158102753, i64 2158102787, i64 2158102811, i64 2158102852, i64 2158102873, i64 2158102901, i64 2158102935}
!45 = !{i64 2148094695, i64 2148094721, i64 2148094750, i64 2148094784, i64 2148094815, i64 2148094838}
